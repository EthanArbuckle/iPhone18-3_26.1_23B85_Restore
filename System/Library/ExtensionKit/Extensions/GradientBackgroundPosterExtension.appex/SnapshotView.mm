@interface SnapshotView
- (_TtC33GradientBackgroundPosterExtension12SnapshotView)initWithCoder:(id)coder;
- (_TtC33GradientBackgroundPosterExtension12SnapshotView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SnapshotView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100006784();
}

- (_TtC33GradientBackgroundPosterExtension12SnapshotView)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotManagerSet) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_timer) = 0;
  result = sub_100041DCC();
  __break(1u);
  return result;
}

- (_TtC33GradientBackgroundPosterExtension12SnapshotView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotManagerSet) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_timer) = 0;
  type metadata accessor for SnapshotView();
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0x30);
  v5 = *((swift_isaMask & self->super.super.super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

@end