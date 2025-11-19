@interface _SHDownstreamMatcherDelegate
- (SHMatcherController)worker;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
@end

@implementation _SHDownstreamMatcherDelegate

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_SHDownstreamMatcherDelegate *)self worker];
  [v8 downstreamMatcher:v7 didProduceResponse:v6];
}

- (SHMatcherController)worker
{
  WeakRetained = objc_loadWeakRetained(&self->_worker);

  return WeakRetained;
}

@end