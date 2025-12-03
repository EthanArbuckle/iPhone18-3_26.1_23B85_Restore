@interface CBLEAudioSessionEvent
- (CBLEAudioSessionEvent)initWithEventType:(int64_t)type withError:(id)error;
@end

@implementation CBLEAudioSessionEvent

- (CBLEAudioSessionEvent)initWithEventType:(int64_t)type withError:(id)error
{
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = CBLEAudioSessionEvent;
  v8 = [(CBLEAudioSessionEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_eventType = type;
    objc_storeStrong(&v8->_error, error);
    v10 = v9;
  }

  return v9;
}

@end