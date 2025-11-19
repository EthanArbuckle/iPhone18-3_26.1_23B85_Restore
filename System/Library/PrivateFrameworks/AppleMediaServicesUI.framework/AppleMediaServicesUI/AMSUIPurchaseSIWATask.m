@interface AMSUIPurchaseSIWATask
- (AMSUIPurchaseSIWATask)initWithPurchaseSIWA:(id)a3 presentingWindow:(id)a4 bag:(id)a5;
@end

@implementation AMSUIPurchaseSIWATask

- (AMSUIPurchaseSIWATask)initWithPurchaseSIWA:(id)a3 presentingWindow:(id)a4 bag:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = AMSUIPurchaseSIWATask;
  v10 = [(AMSPurchaseSIWATask *)&v13 initWithPurchaseSIWA:a3 bag:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_presentingWindow, a4);
  }

  return v11;
}

@end