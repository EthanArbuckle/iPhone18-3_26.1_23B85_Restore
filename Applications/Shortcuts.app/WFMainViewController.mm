@interface WFMainViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (NSArray)keyCommands;
- (NSUndoManager)undoManager;
- (WFMainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)runCoordinator:(id)a3 userInterfaceForWorkflow:(id)a4;
- (id)sourceItemForDismissal;
- (id)sourceViewForDismissing:(id)a3;
- (void)beginSearching;
- (void)composeViewController:(id)a3 didDuplicateWorkflow:(id)a4;
- (void)composeViewControllerRequestsDismissal:(id)a3;
- (void)createFolderFromKeyboard;
- (void)createNewAutomation;
- (void)createWorkflowFromKeyboard;
- (void)didBecomeActive:(id)a3;
- (void)find:(id)a3;
- (void)highlightAutomationWithTriggerID:(id)a3;
- (void)importShortcutFileWithResult:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)runCoordinator:(id)a3 accessibilityAnnounce:(id)a4;
- (void)runCoordinator:(id)a3 didChangeRunningStateWithProgress:(double)a4 waiting:(BOOL)a5 cancelled:(BOOL)a6 forWorkflow:(id)a7;
- (void)runCoordinator:(id)a3 didFinishRunningWorkflow:(id)a4 withError:(id)a5;
- (void)runCoordinator:(id)a3 showSettingsForWorkflow:(id)a4 inDatabase:(id)a5 presentingViewController:(id)a6;
- (void)runWorkflowFromState:(id)a3 source:(id)a4;
- (void)switchToAutomationsViewController;
- (void)switchToFirstFolderWithSender:(id)a3;
- (void)switchToFolderWithSender:(id)a3;
- (void)switchToGalleryViewController;
- (void)switchToLastFolder;
- (void)switchToNextViewController;
- (void)switchToPreviousViewController;
- (void)switchToShortcutsViewController;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)toggleSidebarDisplay;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WFMainViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100004840();
}

- (NSUndoManager)undoManager
{
  v2 = sub_10000568C();

  return v2;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000E048(a3);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1000176DC();
}

- (void)didBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000257A8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100033FCC(a3);
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100034098(v6, a4);

  swift_unknownObjectRelease();
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = sub_100039ED0();

  if (v3)
  {
    sub_100002FC4(0, &unk_1001026A0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)createFolderFromKeyboard
{
  v2 = self;
  sub_10003A0E0();
}

- (void)switchToShortcutsViewController
{
  v2 = self;
  sub_10003A130();
}

- (void)switchToAutomationsViewController
{
  v2 = self;
  sub_10003A184();
}

- (void)createNewAutomation
{
  v2 = self;
  sub_10003A2D8();
}

- (void)switchToGalleryViewController
{
  v2 = self;
  sub_10003A544();
}

- (void)switchToFirstFolderWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003A6D8(v4);
}

- (void)switchToFolderWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003A744();
}

- (void)switchToLastFolder
{
  v2 = self;
  sub_10003ADEC();
}

- (void)switchToNextViewController
{
  v2 = self;
  sub_10003B000();
}

- (void)switchToPreviousViewController
{
  v2 = self;
  sub_10003B4D0();
}

- (void)find:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10003B87C();

  sub_1000069B0(v6, &unk_100100140);
}

- (void)beginSearching
{
  v2 = self;
  sub_10003B954();
}

- (void)createWorkflowFromKeyboard
{
  v2 = self;
  sub_10003B9B4();
}

- (void)toggleSidebarDisplay
{
  v2 = self;
  sub_10003BA78();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v6 = self;
  }

  sub_10003BB2C();
  v8 = v7;

  sub_1000069B0(v10, &unk_100100140);
  return v8 & 1;
}

- (WFMainViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_10003BE3C();
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003CA90();
  v10 = v9;

  return v10 & 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003CE20();
}

- (id)runCoordinator:(id)a3 userInterfaceForWorkflow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003D230();
  v10 = v9;

  return v10;
}

- (void)runCoordinator:(id)a3 showSettingsForWorkflow:(id)a4 inDatabase:(id)a5 presentingViewController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_10003D714();
}

- (void)runCoordinator:(id)a3 accessibilityAnnounce:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_10003D7C8();
}

- (id)sourceViewForDismissing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003DA00();
  v7 = v6;

  return v7;
}

- (id)sourceItemForDismissal
{
  v2 = self;
  sub_10003DC40();
  v4 = v3;

  return v4;
}

- (void)composeViewControllerRequestsDismissal:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003CA78(v4);
}

- (void)composeViewController:(id)a3 didDuplicateWorkflow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003DD14();
}

- (void)runCoordinator:(id)a3 didChangeRunningStateWithProgress:(double)a4 waiting:(BOOL)a5 cancelled:(BOOL)a6 forWorkflow:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a7;
  v14 = self;
  sub_10003DE00(a4, v14, v9, a6);
}

- (void)runCoordinator:(id)a3 didFinishRunningWorkflow:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_10003E0F0();
}

- (void)runWorkflowFromState:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003E7E4();
}

- (void)highlightAutomationWithTriggerID:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10003EB90();
}

- (void)importShortcutFileWithResult:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v7;
  v8 = a3;
  v9 = self;
  sub_10003ED60();
}

@end