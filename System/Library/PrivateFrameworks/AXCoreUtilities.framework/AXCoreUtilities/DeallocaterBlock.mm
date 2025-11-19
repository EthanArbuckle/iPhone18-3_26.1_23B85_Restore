@interface DeallocaterBlock
- (_TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock)init;
- (void)dealloc;
@end

@implementation DeallocaterBlock

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock_block);
  v2 = *&self->block[OBJC_IVAR____TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock_block];
  v4 = self;

  v3(v5);

  v6.receiver = v4;
  v6.super_class = type metadata accessor for DeallocaterBlock();
  [(DeallocaterBlock *)&v6 dealloc];
}

- (_TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end