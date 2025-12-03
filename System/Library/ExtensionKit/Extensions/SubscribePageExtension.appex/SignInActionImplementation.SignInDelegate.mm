@interface SignInActionImplementation.SignInDelegate
- (_TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate)init;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation SignInActionImplementation.SignInDelegate

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_100016C60(0, &qword_1009402D0);
  v6 = sub_100752F44();
  controllerCopy = controller;
  selfCopy = self;
  sub_1005C8D78(controllerCopy, v6);
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1005C90B8(cancelCopy);
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