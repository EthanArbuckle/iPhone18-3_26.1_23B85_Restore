@interface FolderComposerJoinCell
- (_TtC11MobileNotes22FolderComposerJoinCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation FolderComposerJoinCell

- (_TtC11MobileNotes22FolderComposerJoinCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___buttonHorizontalMargin;
  *v7 = 0;
  v7[8] = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes22FolderComposerJoinCell____lazy_storage___textView) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for FolderComposerJoinCell();
  height = [(FolderComposerJoinCell *)&v11 initWithFrame:x, y, width, height];
  sub_1000054A4(0, &qword_1006BDAB0);
  v9 = height;
  static UITraitCollection.traitsAffectingSizeAndColor.getter();
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v9;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10024EA44();

  (*(v5 + 8))(v7, v4);
}

@end