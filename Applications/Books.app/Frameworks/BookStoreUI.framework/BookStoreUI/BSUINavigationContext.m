@interface BSUINavigationContext
- (BSUINavigationContext)init;
- (BSUINavigationContext)initWithIsInModal:(BOOL)a3;
@end

@implementation BSUINavigationContext

- (BSUINavigationContext)initWithIsInModal:(BOOL)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___BSUINavigationContext_impl) = a3;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(BSUINavigationContext *)&v7 init];
}

- (BSUINavigationContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end