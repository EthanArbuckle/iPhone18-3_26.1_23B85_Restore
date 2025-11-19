@interface SignInActionImplementation.SignInDelegate
- (_TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate)init;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation SignInActionImplementation.SignInDelegate

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_100016F40(0, &unk_100945180);
  v6 = sub_10076FE4C();
  v7 = a3;
  v8 = self;
  sub_1005B0C2C(v7, v6);
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005B0F6C(v4);
}

- (_TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SignInActionImplementation.SignInDelegate *)&v5 init];
}

@end