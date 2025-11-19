@interface SignInActionImplementation.SignInDelegate
- (_TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate)init;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation SignInActionImplementation.SignInDelegate

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_BE70(0, &unk_955620);
  v6 = sub_7690F0();
  v7 = a3;
  v8 = self;
  sub_62884C(v7, v6);
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_628B8C(v4);
}

- (_TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate_outcome) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SignInActionImplementation.SignInDelegate *)&v5 init];
}

@end