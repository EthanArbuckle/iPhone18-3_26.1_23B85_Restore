@interface CBLEAudioPeripheralUpdateEvent
- (CBLEAudioPeripheralUpdateEvent)initWithError:(int64_t)a3 withError:(id)a4;
- (CBLEAudioPeripheralUpdateEvent)initWithEventType:(int64_t)a3;
- (CBLEAudioPeripheralUpdateEvent)initWithValue:(int64_t)a3 withValue:(id)a4;
@end

@implementation CBLEAudioPeripheralUpdateEvent

- (CBLEAudioPeripheralUpdateEvent)initWithEventType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CBLEAudioPeripheralUpdateEvent;
  v4 = [(CBLEAudioPeripheralUpdateEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = a3;
    v6 = v4;
  }

  return v5;
}

- (CBLEAudioPeripheralUpdateEvent)initWithValue:(int64_t)a3 withValue:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CBLEAudioPeripheralUpdateEvent;
  v8 = [(CBLEAudioPeripheralUpdateEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_eventType = a3;
    objc_storeStrong(&v8->_updatedValue, a4);
    v10 = v9;
  }

  return v9;
}

- (CBLEAudioPeripheralUpdateEvent)initWithError:(int64_t)a3 withError:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CBLEAudioPeripheralUpdateEvent;
  v8 = [(CBLEAudioPeripheralUpdateEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_eventType = a3;
    objc_storeStrong(&v8->_error, a4);
    v10 = v9;
  }

  return v9;
}

@end