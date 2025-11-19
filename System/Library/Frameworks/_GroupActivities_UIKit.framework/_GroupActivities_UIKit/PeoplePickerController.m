@interface PeoplePickerController
- (void)hostViewController:(id)a3 didPrepareToHost:(id)a4;
@end

@implementation PeoplePickerController

- (void)hostViewController:(id)a3 didPrepareToHost:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerController.hostViewController(_:didPrepareToHost:)(v6, v7);
}

@end