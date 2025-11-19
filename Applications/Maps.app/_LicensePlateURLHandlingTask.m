@interface _LicensePlateURLHandlingTask
- (void)performTask;
@end

@implementation _LicensePlateURLHandlingTask

- (void)performTask
{
  v4 = objc_alloc_init(ShowLPROnboardingAction);
  v3 = [[RichMapsActivity alloc] initWithMapsAction:v4];
  [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v3];
  [GEOAPPortal captureUserAction:2115 target:672 value:0];
}

@end