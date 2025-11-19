@interface _ShareUserLocationShortcutHandlingTask
- (void)performTask;
@end

@implementation _ShareUserLocationShortcutHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v4 = objc_alloc_init(ShareUserLocationAction);
  [(MapsAction *)v4 setUserLocationAccuracy:kCLLocationAccuracyBest];
  v3 = [[RichMapsActivity alloc] initWithMapsAction:v4];
  [(ShortcutHandlingTask *)self taskFinished:v3];
}

@end