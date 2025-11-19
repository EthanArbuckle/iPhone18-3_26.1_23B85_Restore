@interface CBLEAudioHearingAidUpdateEvent
- (CBLEAudioHearingAidUpdateEvent)initWithEventType:(int64_t)a3;
- (CBLEAudioHearingAidUpdateEvent)initWithValue:(int64_t)a3 withValue:(id)a4;
@end

@implementation CBLEAudioHearingAidUpdateEvent

- (CBLEAudioHearingAidUpdateEvent)initWithEventType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CBLEAudioHearingAidUpdateEvent;
  v3 = [(CBLEAudioPeripheralUpdateEvent *)&v7 initWithEventType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (CBLEAudioHearingAidUpdateEvent)initWithValue:(int64_t)a3 withValue:(id)a4
{
  v8.receiver = self;
  v8.super_class = CBLEAudioHearingAidUpdateEvent;
  v4 = [(CBLEAudioPeripheralUpdateEvent *)&v8 initWithValue:a3 withValue:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end