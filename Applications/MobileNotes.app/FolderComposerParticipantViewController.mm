@interface FolderComposerParticipantViewController
- (_TtC11MobileNotes39FolderComposerParticipantViewController)initWithCoder:(id)coder;
- (_TtC11MobileNotes39FolderComposerParticipantViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FolderComposerParticipantViewController

- (_TtC11MobileNotes39FolderComposerParticipantViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003D89D4();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1003DB69C(v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC11MobileNotes39FolderComposerParticipantViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end