@interface AVAUPresetEvent
- (AVAUPresetEvent)initWithAUPresetEvent:(AUPresetEvent *)event;
- (AVAUPresetEvent)initWithScope:(UInt32)scope element:(UInt32)element dictionary:(NSDictionary *)presetDictionary;
- (void)dealloc;
@end

@implementation AVAUPresetEvent

- (void)dealloc
{
  preset = self->_event.preset;
  if (preset)
  {
    CFRelease(preset);
  }

  v4.receiver = self;
  v4.super_class = AVAUPresetEvent;
  [(AVAUPresetEvent *)&v4 dealloc];
}

- (AVAUPresetEvent)initWithAUPresetEvent:(AUPresetEvent *)event
{
  v8.receiver = self;
  v8.super_class = AVAUPresetEvent;
  v4 = [(AVAUPresetEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_event.scope = *&event->scope;
    preset = event->preset;
    v5->_event.preset = preset;
    CFRetain(preset);
  }

  return v5;
}

- (AVAUPresetEvent)initWithScope:(UInt32)scope element:(UInt32)element dictionary:(NSDictionary *)presetDictionary
{
  v8 = presetDictionary;
  v12.receiver = self;
  v12.super_class = AVAUPresetEvent;
  v9 = [(AVAUPresetEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_event.scope = scope;
    v9->_event.element = element;
    v9->_event.preset = [(NSDictionary *)v8 copy];
  }

  return v10;
}

@end