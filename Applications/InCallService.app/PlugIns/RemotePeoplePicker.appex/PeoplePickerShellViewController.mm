@interface PeoplePickerShellViewController
- (_TtC18RemotePeoplePicker31PeoplePickerShellViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation PeoplePickerShellViewController

- (void)viewDidLoad
{
  v2 = self;
  PeoplePickerShellViewController.viewDidLoad()();
}

- (_TtC18RemotePeoplePicker31PeoplePickerShellViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000074E4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return PeoplePickerShellViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  PeoplePickerShellViewController.messageComposeViewController(_:didFinishWith:)(v6, a4);
}

@end