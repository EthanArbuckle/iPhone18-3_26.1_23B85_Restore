@interface AMSUIPurchaseSIWATask
- (AMSUIPurchaseSIWATask)initWithPurchaseSIWA:(id)a presentingWindow:(id)window bag:(id)bag;
@end

@implementation AMSUIPurchaseSIWATask

- (AMSUIPurchaseSIWATask)initWithPurchaseSIWA:(id)a presentingWindow:(id)window bag:(id)bag
{
  windowCopy = window;
  v13.receiver = self;
  v13.super_class = AMSUIPurchaseSIWATask;
  v10 = [(AMSPurchaseSIWATask *)&v13 initWithPurchaseSIWA:a bag:bag];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_presentingWindow, window);
  }

  return v11;
}

@end