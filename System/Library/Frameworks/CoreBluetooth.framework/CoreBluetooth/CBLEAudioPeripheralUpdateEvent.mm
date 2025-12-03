@interface CBLEAudioPeripheralUpdateEvent
- (CBLEAudioPeripheralUpdateEvent)initWithError:(int64_t)error withError:(id)withError;
- (CBLEAudioPeripheralUpdateEvent)initWithEventType:(int64_t)type;
- (CBLEAudioPeripheralUpdateEvent)initWithValue:(int64_t)value withValue:(id)withValue;
@end

@implementation CBLEAudioPeripheralUpdateEvent

- (CBLEAudioPeripheralUpdateEvent)initWithEventType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = CBLEAudioPeripheralUpdateEvent;
  v4 = [(CBLEAudioPeripheralUpdateEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = type;
    v6 = v4;
  }

  return v5;
}

- (CBLEAudioPeripheralUpdateEvent)initWithValue:(int64_t)value withValue:(id)withValue
{
  withValueCopy = withValue;
  v12.receiver = self;
  v12.super_class = CBLEAudioPeripheralUpdateEvent;
  v8 = [(CBLEAudioPeripheralUpdateEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_eventType = value;
    objc_storeStrong(&v8->_updatedValue, withValue);
    v10 = v9;
  }

  return v9;
}

- (CBLEAudioPeripheralUpdateEvent)initWithError:(int64_t)error withError:(id)withError
{
  withErrorCopy = withError;
  v12.receiver = self;
  v12.super_class = CBLEAudioPeripheralUpdateEvent;
  v8 = [(CBLEAudioPeripheralUpdateEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_eventType = error;
    objc_storeStrong(&v8->_error, withError);
    v10 = v9;
  }

  return v9;
}

@end