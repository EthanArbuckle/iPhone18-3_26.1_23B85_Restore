@interface LibraryViewController
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)scrollForNavigationTap;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSArray)keyCommands;
- (UICollectionView)collectionView;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC9Shortcuts21LibraryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)axCreateButton;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)axDeleteWorkflowAction:(id)action;
- (void)axDuplicateWorkflowAction:(id)action;
- (void)axEditWorkflowAction:(id)action;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)createWorkflow:(id)workflow;
- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed;
- (void)deleteSelected:(id)selected;
- (void)deleteSelectedWorkflowsFromKeyboard;
- (void)deselectAllCells;
- (void)didBecomeActive:(id)active;
- (void)didMoveToParentViewController:(id)controller;
- (void)duplicateSelected;
- (void)duplicateSelectedWorkflowsFromKeyboard;
- (void)finishEditing;
- (void)handleEscapeKeyboardPress;
- (void)keyboardWillChange:(id)change;
- (void)moveSelected;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openSelectedWorkflowFromKeyboard;
- (void)presentAutoShortcutAppSettings;
- (void)removeSelected:(id)selected;
- (void)runWorkflowFromKeyPress;
- (void)selectAllCells;
- (void)setCollectionView:(id)view;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)showShortcutDetails;
- (void)startEditing;
- (void)syncUnavailableItemPressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation LibraryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000E338();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100017470();
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  sub_1000174F0();
}

- (BOOL)canBecomeFirstResponder
{
  selfCopy = self;
  v3 = sub_100017574();

  return v3 & 1;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_100017A58();
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_10001A258();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  sub_10001AFB0(self, a2, view, layout, section, sub_10001B050);
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  sub_10001AFB0(self, a2, view, layout, section, sub_10001BB78);
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_10001BF28();
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1000214DC();
}

- (void)didBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000272D0();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10009C194();
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10002A4DC();
}

- (void)startEditing
{
  selfCopy = self;
  sub_100067758();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_1000677B4(editing, animated);
}

- (void)finishEditing
{
  selfCopy = self;
  sub_100067C54();
}

- (void)moveSelected
{
  selfCopy = self;
  sub_100067E58(selfCopy);
}

- (void)removeSelected:(id)selected
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100067F40(v4);
}

- (void)deleteSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  sub_100068108(selectedCopy);
}

- (void)duplicateSelected
{
  selfCopy = self;
  sub_100068A48();
}

- (void)selectAllCells
{
  selfCopy = self;
  sub_100068ED4();
}

- (void)deselectAllCells
{
  selfCopy = self;
  sub_10006981C();
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v9 = sub_100085340();

  return v9;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100087FF4(selfCopy, configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)showShortcutDetails
{
  selfCopy = self;
  sub_10008BAE8(selfCopy);
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100097A8C(selfCopy, v13, v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_100002FC4(0, &qword_100102428);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100097E9C(viewCopy, session);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  sub_100002FC4(0, &qword_100102428);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1000983E8(selfCopy, session);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = sub_10002E87C(&qword_100100010);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    v13 = 1;
  }

  sub_1000042A8(v11, v13, 1, v12);
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_1000984F4(viewCopy, update, v11);

  swift_unknownObjectRelease();
  sub_100083220(v11, &qword_100100010);

  return v16;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100098F48(viewCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100099F18(selfCopy, end);

  swift_unknownObjectRelease();
}

- (UICollectionView)collectionView
{
  selfCopy = self;
  v3 = sub_10000E968();

  return v3;
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10009AB54(viewCopy);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10009C200();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100009E14(&qword_1000FF828, type metadata accessor for NSKeyValueChangeKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  sub_10009C294();

  sub_1000069B0(v13, &unk_100100140);
}

- (void)keyboardWillChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10009D190(changeCopy);
}

- (void)createWorkflow:(id)workflow
{
  workflowCopy = workflow;
  selfCopy = self;
  sub_10009D360();
}

- (void)presentAutoShortcutAppSettings
{
  selfCopy = self;
  sub_10009D574();
}

- (void)syncUnavailableItemPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_10009D8F4();
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_10009DDA0();

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

- (void)duplicateSelectedWorkflowsFromKeyboard
{
  selfCopy = self;
  sub_10009E160(selfCopy);
}

- (void)deleteSelectedWorkflowsFromKeyboard
{
  selfCopy = self;
  sub_10009E10C(selfCopy);
}

- (void)openSelectedWorkflowFromKeyboard
{
  selfCopy = self;
  sub_10009E370(selfCopy);
}

- (void)handleEscapeKeyboardPress
{
  selfCopy = self;
  sub_10009E464();
}

- (void)runWorkflowFromKeyPress
{
  selfCopy = self;
  sub_10009E500(selfCopy);
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

  sub_10009E664();
  v8 = v7;

  sub_1000069B0(v10, &unk_100100140);
  return v8 & 1;
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_10009EFE8();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)axCreateButton
{
  selfCopy = self;
  sub_1000A0270();
  v4 = v3;

  return v4;
}

- (void)axDeleteWorkflowAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1000A02B8(actionCopy);
}

- (void)axDuplicateWorkflowAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1000A07A0(actionCopy);
}

- (void)axEditWorkflowAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1000A08C8();
}

- (_TtC9Shortcuts21LibraryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1000A0934();
}

- (BOOL)scrollForNavigationTap
{
  selfCopy = self;
  v3 = sub_1000A0C10();

  return v3;
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
  sub_1000B1470();
}

@end