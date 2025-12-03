@interface CBLEAudioHearingAidUpdateEvent
- (CBLEAudioHearingAidUpdateEvent)initWithEventType:(int64_t)type;
- (CBLEAudioHearingAidUpdateEvent)initWithValue:(int64_t)value withValue:(id)withValue;
@end

@implementation CBLEAudioHearingAidUpdateEvent

- (CBLEAudioHearingAidUpdateEvent)initWithEventType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = CBLEAudioHearingAidUpdateEvent;
  v3 = [(CBLEAudioPeripheralUpdateEvent *)&v7 initWithEventType:type];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (CBLEAudioHearingAidUpdateEvent)initWithValue:(int64_t)value withValue:(id)withValue
{
  v8.receiver = self;
  v8.super_class = CBLEAudioHearingAidUpdateEvent;
  v4 = [(CBLEAudioPeripheralUpdateEvent *)&v8 initWithValue:value withValue:withValue];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end