@interface ADClient
- (void)determineAppInstallationAttributionWithCompletionHandler:(id)handler;
- (void)lookupAdConversionDetails:(id)details;
- (void)requestAttributionDetailsWithBlock:(void *)completionHandler;
- (void)segmentDataForSignedInUserWithBlock:(id)block;
@end

@implementation ADClient

- (void)requestAttributionDetailsWithBlock:(void *)completionHandler
{
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
  }
}

- (void)determineAppInstallationAttributionWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)lookupAdConversionDetails:(id)details
{
  if (details)
  {
    (*(details + 2))(details, 0, 0);
  }
}

- (void)segmentDataForSignedInUserWithBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, @"1", 0, 0, 0.0);
  }
}

@end