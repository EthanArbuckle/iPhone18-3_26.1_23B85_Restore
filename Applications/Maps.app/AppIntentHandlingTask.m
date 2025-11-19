@interface AppIntentHandlingTask
- (AppIntentHandlingTask)initWithMapsAction:(id)a3;
- (void)performTask;
@end

@implementation AppIntentHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v3 = [[RichMapsActivity alloc] initWithMapsAction:self->_mapsAction];
  [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v3];
}

- (AppIntentHandlingTask)initWithMapsAction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AppIntentHandlingTask;
  v6 = [(AppIntentHandlingTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapsAction, a3);
  }

  return v7;
}

@end