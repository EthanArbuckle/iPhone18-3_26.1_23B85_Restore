@interface EARLanguageDetector
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)runLanguageDetectionWithResultStream:(id)stream samplingRate:(unint64_t)rate reply:(id)reply;
@end

@implementation EARLanguageDetector

- (void)runLanguageDetectionWithResultStream:(id)stream samplingRate:(unint64_t)rate reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  streamCopy = stream;
  selfCopy = self;
  sub_100011C64(streamCopy, rate, selfCopy, v8);
  _Block_release(v8);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100011F58(listenerCopy, connectionCopy);

  return v9;
}

@end