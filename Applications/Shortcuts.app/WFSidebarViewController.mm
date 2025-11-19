@interface WFSidebarViewController
- (WFSidebarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addFolder;
- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6;
- (void)didMoveToParentViewController:(id)a3;
- (void)endEditing;
- (void)keyboardWillChange:(id)a3;
- (void)presentFolderEditorWithSender:(id)a3;
- (void)startEditing;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFSidebarViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000A2188();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000A2A34(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000A2BC4(a3);
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000A2CE8(a3);
}

- (void)keyboardWillChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A2DA8(v4);
}

- (void)startEditing
{
  v2 = self;
  sub_1000A3404(1);
}

- (void)endEditing
{
  v2 = self;
  sub_1000A3404(0);
}

- (void)addFolder
{
  v2 = self;
  sub_1000A39D0();
}

- (void)presentFolderEditorWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A3A8C();
}

- (WFSidebarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1000A3B50();
}

- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6
{
  sub_100002FC4(0, &qword_1001002D8);
  sub_1000A4FA8();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  sub_1000A3CB8();
}

@end