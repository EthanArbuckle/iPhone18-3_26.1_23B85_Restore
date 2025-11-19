@interface BKDownloadPurchaseMonitor
- (void)downloadQueue:(id)a3 purchaseAttemptForRequest:(id)a4;
- (void)downloadQueue:(id)a3 purchasedDidCompleteWithResponse:(id)a4;
- (void)downloadQueue:(id)a3 purchasedDidFailWithResponse:(id)a4;
@end

@implementation BKDownloadPurchaseMonitor

- (void)downloadQueue:(id)a3 purchaseAttemptForRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1006CF000(a4);
}

- (void)downloadQueue:(id)a3 purchasedDidCompleteWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1006CF44C(a4);
}

- (void)downloadQueue:(id)a3 purchasedDidFailWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1006CFCA8(a4);
}

@end