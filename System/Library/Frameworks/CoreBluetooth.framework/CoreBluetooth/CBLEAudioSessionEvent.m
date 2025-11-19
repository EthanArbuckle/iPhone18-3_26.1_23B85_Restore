@interface CBLEAudioSessionEvent
- (CBLEAudioSessionEvent)initWithEventType:(int64_t)a3 withError:(id)a4;
@end

@implementation CBLEAudioSessionEvent

- (CBLEAudioSessionEvent)initWithEventType:(int64_t)a3 withError:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CBLEAudioSessionEvent;
  v8 = [(CBLEAudioSessionEvent *)&v12 init];
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