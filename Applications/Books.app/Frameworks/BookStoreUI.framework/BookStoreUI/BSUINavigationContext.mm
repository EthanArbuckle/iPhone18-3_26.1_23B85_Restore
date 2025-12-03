@interface BSUINavigationContext
- (BSUINavigationContext)init;
- (BSUINavigationContext)initWithIsInModal:(BOOL)modal;
@end

@implementation BSUINavigationContext

- (BSUINavigationContext)initWithIsInModal:(BOOL)modal
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___BSUINavigationContext_impl) = modal;
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