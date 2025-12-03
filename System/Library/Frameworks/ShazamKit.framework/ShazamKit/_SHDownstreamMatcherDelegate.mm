@interface _SHDownstreamMatcherDelegate
- (SHMatcherController)worker;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
@end

@implementation _SHDownstreamMatcherDelegate

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  matcherCopy = matcher;
  worker = [(_SHDownstreamMatcherDelegate *)self worker];
  [worker downstreamMatcher:matcherCopy didProduceResponse:responseCopy];
}

- (SHMatcherController)worker
{
  WeakRetained = objc_loadWeakRetained(&self->_worker);

  return WeakRetained;
}

@end