@interface _AConnectURLHandlingTask
- (void)performTask;
@end

@implementation _AConnectURLHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v4 = objc_alloc_init(AppleConnectAction);
  v3 = [[RichMapsActivity alloc] initWithMapsAction:v4];
  [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v3];
}

@end