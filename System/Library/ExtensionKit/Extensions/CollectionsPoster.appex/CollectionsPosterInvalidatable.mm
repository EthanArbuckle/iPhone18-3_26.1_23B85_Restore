@interface CollectionsPosterInvalidatable
- (_TtC17CollectionsPoster30CollectionsPosterInvalidatable)init;
- (void)wk_invalidate;
@end

@implementation CollectionsPosterInvalidatable

- (_TtC17CollectionsPoster30CollectionsPosterInvalidatable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)wk_invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17CollectionsPoster30CollectionsPosterInvalidatable_posterKitInvalidatable);
  selfCopy = self;
  [objc_msgSend(v2 "assertion")];
  swift_unknownObjectRelease();
}

@end