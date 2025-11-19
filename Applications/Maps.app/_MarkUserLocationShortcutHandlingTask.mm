@interface _MarkUserLocationShortcutHandlingTask
- (void)performTask;
@end

@implementation _MarkUserLocationShortcutHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v4 = objc_alloc_init(MarkUserLocationAction);
  [(MapsAction *)v4 setUserLocationAccuracy:kCLLocationAccuracyBest];
  v3 = [[RichMapsActivity alloc] initWithMapsAction:v4];
  [(ShortcutHandlingTask *)self taskFinished:v3];
}

@end