@interface AppIntentHandlingTask
- (AppIntentHandlingTask)initWithMapsAction:(id)action;
- (void)performTask;
@end

@implementation AppIntentHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v3 = [[RichMapsActivity alloc] initWithMapsAction:self->_mapsAction];
  [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v3];
}

- (AppIntentHandlingTask)initWithMapsAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = AppIntentHandlingTask;
  v6 = [(AppIntentHandlingTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapsAction, action);
  }

  return v7;
}

@end