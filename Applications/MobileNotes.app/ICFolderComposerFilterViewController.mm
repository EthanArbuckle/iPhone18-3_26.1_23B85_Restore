@interface ICFolderComposerFilterViewController
- (ICFolderComposerFilterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doneActionWithSender:(id)sender;
- (void)splitViewWillTransitionToSizeWithNotification:(id)notification;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICFolderComposerFilterViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002B2174();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002B2640(appear);
}

- (void)doneActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1002B3AA4();
}

- (void)splitViewWillTransitionToSizeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1002B35C8(notificationCopy);
}

- (ICFolderComposerFilterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end