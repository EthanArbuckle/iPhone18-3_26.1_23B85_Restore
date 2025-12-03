@interface ArtworkLoader
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
@end

@implementation ArtworkLoader

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSURLSession *)selfCopy->_enforcedSession isEqual:sessionCopy])
  {
    enforcedSession = selfCopy->_enforcedSession;
    selfCopy->_enforcedSession = 0;
  }

  if ([(NSURLSession *)selfCopy->_unenforcedSession isEqual:sessionCopy])
  {
    unenforcedSession = selfCopy->_unenforcedSession;
    selfCopy->_unenforcedSession = 0;
  }

  objc_sync_exit(selfCopy);
}

@end