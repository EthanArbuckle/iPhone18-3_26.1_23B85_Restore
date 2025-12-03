@interface SSSPendingScreenshotRecord
- (SSSPendingScreenshotRecord)initWithScreenshot:(id)screenshot deliveryCompletionBlock:(id)block;
@end

@implementation SSSPendingScreenshotRecord

- (SSSPendingScreenshotRecord)initWithScreenshot:(id)screenshot deliveryCompletionBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = SSSPendingScreenshotRecord;
  blockCopy = block;
  screenshotCopy = screenshot;
  v7 = [(SSSPendingScreenshotRecord *)&v9 init];
  [(SSSPendingScreenshotRecord *)v7 setScreenshot:screenshotCopy, v9.receiver, v9.super_class];

  [(SSSPendingScreenshotRecord *)v7 setDeliveryCompletionBlock:blockCopy];
  return v7;
}

@end