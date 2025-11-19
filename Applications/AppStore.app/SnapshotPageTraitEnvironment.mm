@interface SnapshotPageTraitEnvironment
- (CGSize)pageContainerSize;
- (_TtC8AppStore28SnapshotPageTraitEnvironment)init;
@end

@implementation SnapshotPageTraitEnvironment

- (CGSize)pageContainerSize
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize);
  v3 = *(&self->traitCollection + OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC8AppStore28SnapshotPageTraitEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end