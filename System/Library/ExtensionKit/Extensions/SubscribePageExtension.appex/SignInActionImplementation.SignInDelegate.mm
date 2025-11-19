@interface SignInActionImplementation.SignInDelegate
- (_TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate)init;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation SignInActionImplementation.SignInDelegate

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_100016C60(0, &qword_1009402D0);
  v6 = sub_100752F44();
  v7 = a3;
  v8 = self;
  sub_1005C8D78(v7, v6);
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005C90B8(v4);
}

- (_TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate_outcome) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SignInActionImplementation.SignInDelegate *)&v5 init];
}

@end