@interface TerminateAssertion
- (_TtC28LocalAuthenticationUIService18TerminateAssertion)init;
- (void)dealloc;
@end

@implementation TerminateAssertion

- (_TtC28LocalAuthenticationUIService18TerminateAssertion)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TerminateAssertion *)&v6 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminateAssertion_completion);
  if (v5)
  {
    v6 = v4[1];
    v7 = self;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v5);
    v5(v7);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
    v8 = *v4;
    v9 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  }

  else
  {
    v10 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(TerminateAssertion *)&v11 dealloc];
}

@end