@interface SSSPendingScreenshotRecord
- (SSSPendingScreenshotRecord)initWithScreenshot:(id)a3 deliveryCompletionBlock:(id)a4;
@end

@implementation SSSPendingScreenshotRecord

- (SSSPendingScreenshotRecord)initWithScreenshot:(id)a3 deliveryCompletionBlock:(id)a4
{
  v9.receiver = self;
  v9.super_class = SSSPendingScreenshotRecord;
  v5 = a4;
  v6 = a3;
  v7 = [(SSSPendingScreenshotRecord *)&v9 init];
  [(SSSPendingScreenshotRecord *)v7 setScreenshot:v6, v9.receiver, v9.super_class];

  [(SSSPendingScreenshotRecord *)v7 setDeliveryCompletionBlock:v5];
  return v7;
}

@end