@interface LibraryViewController
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)scrollForNavigationTap;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSArray)keyCommands;
- (UICollectionView)collectionView;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TtC9Shortcuts21LibraryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)axCreateButton;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (void)axDeleteWorkflowAction:(id)a3;
- (void)axDuplicateWorkflowAction:(id)a3;
- (void)axEditWorkflowAction:(id)a3;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)createWorkflow:(id)a3;
- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6;
- (void)deleteSelected:(id)a3;
- (void)deleteSelectedWorkflowsFromKeyboard;
- (void)deselectAllCells;
- (void)didBecomeActive:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)duplicateSelected;
- (void)duplicateSelectedWorkflowsFromKeyboard;
- (void)finishEditing;
- (void)handleEscapeKeyboardPress;
- (void)keyboardWillChange:(id)a3;
- (void)moveSelected;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openSelectedWorkflowFromKeyboard;
- (void)presentAutoShortcutAppSettings;
- (void)removeSelected:(id)a3;
- (void)runWorkflowFromKeyPress;
- (void)selectAllCells;
- (void)setCollectionView:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)showShortcutDetails;
- (void)startEditing;
- (void)syncUnavailableItemPressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation LibraryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10000E338();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_100017470();
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  sub_1000174F0();
}

- (BOOL)canBecomeFirstResponder
{
  v2 = self;
  v3 = sub_100017574();

  return v3 & 1;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = self;
  sub_100017A58();
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  sub_10001AFB0(self, a2, a3, a4, a5, sub_10001B050);
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  sub_10001AFB0(self, a2, a3, a4, a5, sub_10001BB78);
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
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
  v2 = self;
  sub_1000214DC();
}

- (void)didBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000272D0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_10009C194();
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002A4DC();
}

- (void)startEditing
{
  v2 = self;
  sub_100067758();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1000677B4(a3, a4);
}

- (void)finishEditing
{
  v2 = self;
  sub_100067C54();
}

- (void)moveSelected
{
  v2 = self;
  sub_100067E58(v2);
}

- (void)removeSelected:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100067F40(v4);
}

- (void)deleteSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100068108(v4);
}

- (void)duplicateSelected
{
  v2 = self;
  sub_100068A48();
}

- (void)selectAllCells
{
  v2 = self;
  sub_100068ED4();
}

- (void)deselectAllCells
{
  v2 = self;
  sub_10006981C();
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  type metadata accessor for IndexPath();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  v9 = sub_100085340();

  return v9;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_100087FF4(v10, v9, a5);

  swift_unknownObjectRelease();
}

- (void)showShortcutDetails
{
  v2 = self;
  sub_10008BAE8(v2);
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  sub_100097A8C(v12, v13, v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_100002FC4(0, &qword_100102428);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  sub_100097E9C(v13, a4);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  sub_100002FC4(0, &qword_100102428);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1000983E8(v7, a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = sub_10002E87C(&qword_100100010);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (a5)
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
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = sub_1000984F4(v14, a4, v11);

  swift_unknownObjectRelease();
  sub_100083220(v11, &qword_100100010);

  return v16;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100098F48(v6, a4);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100099F18(v7, a4);

  swift_unknownObjectRelease();
}

- (UICollectionView)collectionView
{
  v2 = self;
  v3 = sub_10000E968();

  return v3;
}

- (void)setCollectionView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10009AB54(v4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
  sub_10009C200();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v11 = a5;
    v12 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (a5)
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

- (void)keyboardWillChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10009D190(v4);
}

- (void)createWorkflow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10009D360();
}

- (void)presentAutoShortcutAppSettings
{
  v2 = self;
  sub_10009D574();
}

- (void)syncUnavailableItemPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10009D8F4();
}

- (NSArray)keyCommands
{
  v2 = self;
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
  v2 = self;
  sub_10009E160(v2);
}

- (void)deleteSelectedWorkflowsFromKeyboard
{
  v2 = self;
  sub_10009E10C(v2);
}

- (void)openSelectedWorkflowFromKeyboard
{
  v2 = self;
  sub_10009E370(v2);
}

- (void)handleEscapeKeyboardPress
{
  v2 = self;
  sub_10009E464();
}

- (void)runWorkflowFromKeyPress
{
  v2 = self;
  sub_10009E500(v2);
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

  sub_10009E664();
  v8 = v7;

  sub_1000069B0(v10, &unk_100100140);
  return v8 & 1;
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_10009EFE8();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)axCreateButton
{
  v2 = self;
  sub_1000A0270();
  v4 = v3;

  return v4;
}

- (void)axDeleteWorkflowAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A02B8(v4);
}

- (void)axDuplicateWorkflowAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A07A0(v4);
}

- (void)axEditWorkflowAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A08C8();
}

- (_TtC9Shortcuts21LibraryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1000A0934();
}

- (BOOL)scrollForNavigationTap
{
  v2 = self;
  v3 = sub_1000A0C10();

  return v3;
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
  sub_1000B1470();
}

@end