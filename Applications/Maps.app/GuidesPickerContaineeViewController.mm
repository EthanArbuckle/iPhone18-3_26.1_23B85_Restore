@interface GuidesPickerContaineeViewController
- (_TtC4Maps35GuidesPickerContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps35GuidesPickerContaineeViewController)initWithCollectionEditSession:(id)session delegate:(id)delegate showsAddToLibrarySection:(BOOL)section;
- (_TtC4Maps35GuidesPickerContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps43GuidesPickerContaineeViewControllerDelegate_)delegate;
- (void)setCollectionSession:(id)session;
- (void)viewDidLoad;
@end

@implementation GuidesPickerContaineeViewController

- (void)setCollectionSession:(id)session
{
  v4 = *(self + OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_collectionSession);
  *(self + OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_collectionSession) = session;
  sessionCopy = session;
}

- (_TtP4Maps43GuidesPickerContaineeViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps35GuidesPickerContaineeViewController)initWithCollectionEditSession:(id)session delegate:(id)delegate showsAddToLibrarySection:(BOOL)section
{
  sessionCopy = session;
  swift_unknownObjectRetain();
  v9 = sub_100310A60(session, delegate, section);

  swift_unknownObjectRelease();
  return v9;
}

- (_TtC4Maps35GuidesPickerContaineeViewController)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____TtC4Maps35GuidesPickerContaineeViewController_collectionSession) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100310160();
}

- (_TtC4Maps35GuidesPickerContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end