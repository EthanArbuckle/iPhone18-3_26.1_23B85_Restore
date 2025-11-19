@interface ADClient
- (void)determineAppInstallationAttributionWithCompletionHandler:(id)a3;
- (void)lookupAdConversionDetails:(id)a3;
- (void)requestAttributionDetailsWithBlock:(void *)completionHandler;
- (void)segmentDataForSignedInUserWithBlock:(id)a3;
@end

@implementation ADClient

- (void)requestAttributionDetailsWithBlock:(void *)completionHandler
{
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
  }
}

- (void)determineAppInstallationAttributionWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)lookupAdConversionDetails:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)segmentDataForSignedInUserWithBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, @"1", 0, 0, 0.0);
  }
}

@end