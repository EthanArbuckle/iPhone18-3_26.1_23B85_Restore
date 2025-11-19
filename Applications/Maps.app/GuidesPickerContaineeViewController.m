@interface GuidesPickerContaineeViewController
- (_TtC4Maps35GuidesPickerContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps35GuidesPickerContaineeViewController)initWithCollectionEditSession:(id)a3 delegate:(id)a4 showsAddToLibrarySection:(BOOL)a5;
- (_TtC4Maps35GuidesPickerContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps43GuidesPickerContaineeViewControllerDelegate_)delegate;
- (void)setCollectionSession:(id)a3;
- (void)viewDidLoad;
@end

@implementation GuidesPickerContaineeViewController

- (void)setCollectionSession:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_collectionSession);
  *(self + OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_collectionSession) = a3;
  v3 = a3;
}

- (_TtP4Maps43GuidesPickerContaineeViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps35GuidesPickerContaineeViewController)initWithCollectionEditSession:(id)a3 delegate:(id)a4 showsAddToLibrarySection:(BOOL)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = sub_100310A60(a3, a4, a5);

  swift_unknownObjectRelease();
  return v9;
}

- (_TtC4Maps35GuidesPickerContaineeViewController)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_collectionSession) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100310160();
}

- (_TtC4Maps35GuidesPickerContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end