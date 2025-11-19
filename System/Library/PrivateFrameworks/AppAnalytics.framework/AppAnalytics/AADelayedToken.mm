@interface AADelayedToken
- (AADelayedToken)init;
- (void)commit;
@end

@implementation AADelayedToken

- (void)commit
{
  if ((*(&self->super.isa + OBJC_IVAR___AADelayedToken_sealed) & 1) == 0)
  {
    *(&self->super.isa + OBJC_IVAR___AADelayedToken_sealed) = 1;
    v3 = *(&self->super.isa + OBJC_IVAR___AADelayedToken_block);
    v4 = *&self->block[OBJC_IVAR___AADelayedToken_block];
    v5 = self;
    v3();
  }
}

- (AADelayedToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end