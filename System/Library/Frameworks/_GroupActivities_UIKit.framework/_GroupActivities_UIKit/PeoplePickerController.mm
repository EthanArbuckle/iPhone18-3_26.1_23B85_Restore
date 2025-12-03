@interface PeoplePickerController
- (void)hostViewController:(id)controller didPrepareToHost:(id)host;
@end

@implementation PeoplePickerController

- (void)hostViewController:(id)controller didPrepareToHost:(id)host
{
  controllerCopy = controller;
  hostCopy = host;
  selfCopy = self;
  PeoplePickerController.hostViewController(_:didPrepareToHost:)(controllerCopy, hostCopy);
}

@end