@interface ICTagAssignmentViewController
- (ICTagAssignmentViewController)initWithCoder:(id)a3;
- (ICTagAssignmentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ICTagAssignmentViewController)initWithSelectedNotes:(id)a3 managedObjectContext:(id)a4 completion:(id)a5;
- (void)dismissActionWithSender:(id)a3;
- (void)dismissAndSaveActionWithSender:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ICTagAssignmentViewController

- (ICTagAssignmentViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___cancelBarButtonItem) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___doneBarButtonItem) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (ICTagAssignmentViewController)initWithSelectedNotes:(id)a3 managedObjectContext:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1000054A4(0, &qword_1006C1420);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return sub_10027259C(v7, a4, sub_1001C57CC, v8);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100272848();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(ICTagAssignmentViewController *)&v7 viewWillAppear:v3];
  v5 = sub_100272278();
  [v5 layoutIfNeeded];

  sub_100272A7C();
  v6 = sub_100272498(&OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___doneBarButtonItem, &selRef_dismissAndSaveActionWithSender_, 0);
  [v6 setEnabled:0];
}

- (void)dismissActionWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = *&v4->$__lazy_storage_$_collectionView[OBJC_IVAR___ICTagAssignmentViewController_completion];
  v7[4] = *(&v4->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController_completion);
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10028DCE8;
  v7[3] = &unk_100652200;
  v6 = _Block_copy(v7);

  [(ICTagAssignmentViewController *)v4 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);

  sub_100009F60(v8);
}

- (void)dismissAndSaveActionWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1003EBB9C(0, 0);
  v5 = *&v4->$__lazy_storage_$_collectionView[OBJC_IVAR___ICTagAssignmentViewController_completion];
  v7[4] = *(&v4->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController_completion);
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10028DCE8;
  v7[3] = &unk_1006521D8;
  v6 = _Block_copy(v7);

  [(ICTagAssignmentViewController *)v4 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);

  sub_100009F60(v8);
}

- (ICTagAssignmentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end