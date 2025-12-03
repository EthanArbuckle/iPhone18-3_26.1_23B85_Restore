@interface WFSidebarViewController
- (WFSidebarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addFolder;
- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed;
- (void)didMoveToParentViewController:(id)controller;
- (void)endEditing;
- (void)keyboardWillChange:(id)change;
- (void)presentFolderEditorWithSender:(id)sender;
- (void)startEditing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFSidebarViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000A2188();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000A2A34(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000A2BC4(appear);
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000A2CE8(controller);
}

- (void)keyboardWillChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1000A2DA8(changeCopy);
}

- (void)startEditing
{
  selfCopy = self;
  sub_1000A3404(1);
}

- (void)endEditing
{
  selfCopy = self;
  sub_1000A3404(0);
}

- (void)addFolder
{
  selfCopy = self;
  sub_1000A39D0();
}

- (void)presentFolderEditorWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1000A3A8C();
}

- (WFSidebarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1000A3B50();
}

- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed
{
  sub_100002FC4(0, &qword_1001002D8);
  sub_1000A4FA8();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  changeCopy = change;
  selfCopy = self;
  sub_1000A3CB8();
}

@end