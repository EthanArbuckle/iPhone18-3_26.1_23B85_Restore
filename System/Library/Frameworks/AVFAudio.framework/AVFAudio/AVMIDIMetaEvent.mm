@interface AVMIDIMetaEvent
- (AVMIDIMetaEvent)initWithMetaEvent:(MIDIMetaEvent *)event;
- (AVMIDIMetaEvent)initWithType:(AVMIDIMetaEventType)type data:(NSData *)data;
- (void)dealloc;
@end

@implementation AVMIDIMetaEvent

- (void)dealloc
{
  free(self->_event);
  v3.receiver = self;
  v3.super_class = AVMIDIMetaEvent;
  [(AVMIDIMetaEvent *)&v3 dealloc];
}

- (AVMIDIMetaEvent)initWithMetaEvent:(MIDIMetaEvent *)event
{
  v8.receiver = self;
  v8.super_class = AVMIDIMetaEvent;
  v4 = [(AVMIDIMetaEvent *)&v8 init];
  if (v4)
  {
    v5 = malloc_type_malloc(event->dataLength + 11, 0x100004005A209FEuLL);
    *v5 = event->metaEventType;
    v5[3] = 0;
    *(v5 + 1) = 0;
    dataLength = event->dataLength;
    *(v5 + 1) = dataLength;
    memcpy(v5 + 8, event->data, dataLength);
    v4->_event = v5;
  }

  return v4;
}

- (AVMIDIMetaEvent)initWithType:(AVMIDIMetaEventType)type data:(NSData *)data
{
  v4 = type;
  v6 = data;
  v11.receiver = self;
  v11.super_class = AVMIDIMetaEvent;
  v7 = [(AVMIDIMetaEvent *)&v11 init];
  if (v7)
  {
    v8 = [(NSData *)v6 length];
    v9 = malloc_type_malloc(v8 + 11, 0x100004005A209FEuLL);
    *v9 = v4;
    v9[3] = 0;
    *(v9 + 1) = 0;
    *(v9 + 1) = v8;
    memcpy(v9 + 8, [(NSData *)v6 bytes], v8);
    v7->_event = v9;
  }

  return v7;
}

@end