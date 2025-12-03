@interface PeoplePickerShellViewController
- (_TtC18RemotePeoplePicker31PeoplePickerShellViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)viewDidLoad;
@end

@implementation PeoplePickerShellViewController

- (void)viewDidLoad
{
  selfCopy = self;
  PeoplePickerShellViewController.viewDidLoad()();
}

- (_TtC18RemotePeoplePicker31PeoplePickerShellViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000074E4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return PeoplePickerShellViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  PeoplePickerShellViewController.messageComposeViewController(_:didFinishWith:)(controllerCopy, result);
}

@end