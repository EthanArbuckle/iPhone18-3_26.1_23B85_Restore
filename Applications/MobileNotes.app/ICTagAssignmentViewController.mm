@interface ICTagAssignmentViewController
- (ICTagAssignmentViewController)initWithCoder:(id)coder;
- (ICTagAssignmentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ICTagAssignmentViewController)initWithSelectedNotes:(id)notes managedObjectContext:(id)context completion:(id)completion;
- (void)dismissActionWithSender:(id)sender;
- (void)dismissAndSaveActionWithSender:(id)sender;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICTagAssignmentViewController

- (ICTagAssignmentViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___cancelBarButtonItem) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___doneBarButtonItem) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (ICTagAssignmentViewController)initWithSelectedNotes:(id)notes managedObjectContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_1000054A4(0, &qword_1006C1420);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return sub_10027259C(v7, context, sub_1001C57CC, v8);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100272848();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(ICTagAssignmentViewController *)&v7 viewWillAppear:appearCopy];
  v5 = sub_100272278();
  [v5 layoutIfNeeded];

  sub_100272A7C();
  v6 = sub_100272498(&OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___doneBarButtonItem, &selRef_dismissAndSaveActionWithSender_, 0);
  [v6 setEnabled:0];
}

- (void)dismissActionWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = *&selfCopy->$__lazy_storage_$_collectionView[OBJC_IVAR___ICTagAssignmentViewController_completion];
  v7[4] = *(&selfCopy->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController_completion);
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10028DCE8;
  v7[3] = &unk_100652200;
  v6 = _Block_copy(v7);

  [(ICTagAssignmentViewController *)selfCopy dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);

  sub_100009F60(v8);
}

- (void)dismissAndSaveActionWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1003EBB9C(0, 0);
  v5 = *&selfCopy->$__lazy_storage_$_collectionView[OBJC_IVAR___ICTagAssignmentViewController_completion];
  v7[4] = *(&selfCopy->super.super.super.isa + OBJC_IVAR___ICTagAssignmentViewController_completion);
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10028DCE8;
  v7[3] = &unk_1006521D8;
  v6 = _Block_copy(v7);

  [(ICTagAssignmentViewController *)selfCopy dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);

  sub_100009F60(v8);
}

- (ICTagAssignmentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end