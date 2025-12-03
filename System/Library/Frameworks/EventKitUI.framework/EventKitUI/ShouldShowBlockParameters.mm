@interface ShouldShowBlockParameters
- (ShouldShowBlockParameters)initWithEvents:(id)events presentationController:(id)controller;
@end

@implementation ShouldShowBlockParameters

- (ShouldShowBlockParameters)initWithEvents:(id)events presentationController:(id)controller
{
  eventsCopy = events;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ShouldShowBlockParameters;
  v9 = [(ShouldShowBlockParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_events, events);
    objc_storeStrong(&v10->_presentationController, controller);
  }

  return v10;
}

@end