@interface AudioStream
- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error;
- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)stream:(id)stream didStartSynchronizer:(BOOL)synchronizer error:(id)error;
@end

@implementation AudioStream

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  streamCopy = stream;
  selfCopy = self;
  errorCopy = error;
  AudioStream.stream(_:didStart:error:)(stream, start);
}

- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error
{
  pauseCopy = pause;
  streamCopy = stream;
  selfCopy = self;
  errorCopy = error;
  AudioStream.stream(_:didPause:error:)(errorCopy, pauseCopy, error);
}

- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error
{
  resumeCopy = resume;
  streamCopy = stream;
  selfCopy = self;
  errorCopy = error;
  AudioStream.stream(_:didResume:error:)(errorCopy, resumeCopy, error);
}

- (void)stream:(id)stream didStartSynchronizer:(BOOL)synchronizer error:(id)error
{
  synchronizerCopy = synchronizer;
  streamCopy = stream;
  selfCopy = self;
  errorCopy = error;
  AudioStream.stream(_:didStartSynchronizer:error:)(errorCopy, synchronizerCopy, error);
}

@end