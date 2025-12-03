@interface WFMainViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (NSArray)keyCommands;
- (NSUndoManager)undoManager;
- (WFMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)runCoordinator:(id)coordinator userInterfaceForWorkflow:(id)workflow;
- (id)sourceItemForDismissal;
- (id)sourceViewForDismissing:(id)dismissing;
- (void)beginSearching;
- (void)composeViewController:(id)controller didDuplicateWorkflow:(id)workflow;
- (void)composeViewControllerRequestsDismissal:(id)dismissal;
- (void)createFolderFromKeyboard;
- (void)createNewAutomation;
- (void)createWorkflowFromKeyboard;
- (void)didBecomeActive:(id)active;
- (void)find:(id)find;
- (void)highlightAutomationWithTriggerID:(id)d;
- (void)importShortcutFileWithResult:(id)result options:(unint64_t)options completion:(id)completion;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)runCoordinator:(id)coordinator accessibilityAnnounce:(id)announce;
- (void)runCoordinator:(id)coordinator didChangeRunningStateWithProgress:(double)progress waiting:(BOOL)waiting cancelled:(BOOL)cancelled forWorkflow:(id)workflow;
- (void)runCoordinator:(id)coordinator didFinishRunningWorkflow:(id)workflow withError:(id)error;
- (void)runCoordinator:(id)coordinator showSettingsForWorkflow:(id)workflow inDatabase:(id)database presentingViewController:(id)controller;
- (void)runWorkflowFromState:(id)state source:(id)source;
- (void)switchToAutomationsViewController;
- (void)switchToFirstFolderWithSender:(id)sender;
- (void)switchToFolderWithSender:(id)sender;
- (void)switchToGalleryViewController;
- (void)switchToLastFolder;
- (void)switchToNextViewController;
- (void)switchToPreviousViewController;
- (void)switchToShortcutsViewController;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)toggleSidebarDisplay;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation WFMainViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100004840();
}

- (NSUndoManager)undoManager
{
  v2 = sub_10000568C();

  return v2;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10000E048(change);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1000176DC();
}

- (void)didBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000257A8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100033FCC(appear);
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100034098(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (NSArray)keyCommands
{
  selfCopy = self;
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
  selfCopy = self;
  sub_10003A0E0();
}

- (void)switchToShortcutsViewController
{
  selfCopy = self;
  sub_10003A130();
}

- (void)switchToAutomationsViewController
{
  selfCopy = self;
  sub_10003A184();
}

- (void)createNewAutomation
{
  selfCopy = self;
  sub_10003A2D8();
}

- (void)switchToGalleryViewController
{
  selfCopy = self;
  sub_10003A544();
}

- (void)switchToFirstFolderWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10003A6D8(senderCopy);
}

- (void)switchToFolderWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10003A744();
}

- (void)switchToLastFolder
{
  selfCopy = self;
  sub_10003ADEC();
}

- (void)switchToNextViewController
{
  selfCopy = self;
  sub_10003B000();
}

- (void)switchToPreviousViewController
{
  selfCopy = self;
  sub_10003B4D0();
}

- (void)find:(id)find
{
  if (find)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10003B87C();

  sub_1000069B0(v6, &unk_100100140);
}

- (void)beginSearching
{
  selfCopy = self;
  sub_10003B954();
}

- (void)createWorkflowFromKeyboard
{
  selfCopy = self;
  sub_10003B9B4();
}

- (void)toggleSidebarDisplay
{
  selfCopy = self;
  sub_10003BA78();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  sub_10003BB2C();
  v8 = v7;

  sub_1000069B0(v10, &unk_100100140);
  return v8 & 1;
}

- (WFMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_10003BE3C();
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_10003CA90();
  v10 = v9;

  return v10 & 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_10003CE20();
}

- (id)runCoordinator:(id)coordinator userInterfaceForWorkflow:(id)workflow
{
  coordinatorCopy = coordinator;
  workflowCopy = workflow;
  selfCopy = self;
  sub_10003D230();
  v10 = v9;

  return v10;
}

- (void)runCoordinator:(id)coordinator showSettingsForWorkflow:(id)workflow inDatabase:(id)database presentingViewController:(id)controller
{
  coordinatorCopy = coordinator;
  workflowCopy = workflow;
  databaseCopy = database;
  controllerCopy = controller;
  selfCopy = self;
  sub_10003D714();
}

- (void)runCoordinator:(id)coordinator accessibilityAnnounce:(id)announce
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_10003D7C8();
}

- (id)sourceViewForDismissing:(id)dismissing
{
  dismissingCopy = dismissing;
  selfCopy = self;
  sub_10003DA00();
  v7 = v6;

  return v7;
}

- (id)sourceItemForDismissal
{
  selfCopy = self;
  sub_10003DC40();
  v4 = v3;

  return v4;
}

- (void)composeViewControllerRequestsDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  selfCopy = self;
  sub_10003CA78(dismissalCopy);
}

- (void)composeViewController:(id)controller didDuplicateWorkflow:(id)workflow
{
  controllerCopy = controller;
  workflowCopy = workflow;
  selfCopy = self;
  sub_10003DD14();
}

- (void)runCoordinator:(id)coordinator didChangeRunningStateWithProgress:(double)progress waiting:(BOOL)waiting cancelled:(BOOL)cancelled forWorkflow:(id)workflow
{
  waitingCopy = waiting;
  coordinatorCopy = coordinator;
  workflowCopy = workflow;
  selfCopy = self;
  sub_10003DE00(progress, selfCopy, waitingCopy, cancelled);
}

- (void)runCoordinator:(id)coordinator didFinishRunningWorkflow:(id)workflow withError:(id)error
{
  coordinatorCopy = coordinator;
  workflowCopy = workflow;
  selfCopy = self;
  errorCopy = error;
  sub_10003E0F0();
}

- (void)runWorkflowFromState:(id)state source:(id)source
{
  stateCopy = state;
  sourceCopy = source;
  selfCopy = self;
  sub_10003E7E4();
}

- (void)highlightAutomationWithTriggerID:(id)d
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10003EB90();
}

- (void)importShortcutFileWithResult:(id)result options:(unint64_t)options completion:(id)completion
{
  v7 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v7;
  resultCopy = result;
  selfCopy = self;
  sub_10003ED60();
}

@end