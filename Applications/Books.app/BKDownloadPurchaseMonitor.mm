@interface BKDownloadPurchaseMonitor
- (void)downloadQueue:(id)queue purchaseAttemptForRequest:(id)request;
- (void)downloadQueue:(id)queue purchasedDidCompleteWithResponse:(id)response;
- (void)downloadQueue:(id)queue purchasedDidFailWithResponse:(id)response;
@end

@implementation BKDownloadPurchaseMonitor

- (void)downloadQueue:(id)queue purchaseAttemptForRequest:(id)request
{
  queueCopy = queue;
  requestCopy = request;
  selfCopy = self;
  sub_1006CF000(request);
}

- (void)downloadQueue:(id)queue purchasedDidCompleteWithResponse:(id)response
{
  queueCopy = queue;
  responseCopy = response;
  selfCopy = self;
  sub_1006CF44C(response);
}

- (void)downloadQueue:(id)queue purchasedDidFailWithResponse:(id)response
{
  queueCopy = queue;
  responseCopy = response;
  selfCopy = self;
  sub_1006CFCA8(response);
}

@end