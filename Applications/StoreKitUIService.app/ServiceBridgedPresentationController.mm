@interface ServiceBridgedPresentationController
+ (id)sharedController;
- (id)removeSavedViewController;
@end

@implementation ServiceBridgedPresentationController

+ (id)sharedController
{
  if (qword_100069538 != -1)
  {
    sub_10002C1D0();
  }

  v3 = qword_100069530;

  return v3;
}

- (id)removeSavedViewController
{
  v3 = [(ServiceBridgedPresentationController *)self savedViewController];
  [(ServiceBridgedPresentationController *)self setSavedViewController:0];

  return v3;
}

@end