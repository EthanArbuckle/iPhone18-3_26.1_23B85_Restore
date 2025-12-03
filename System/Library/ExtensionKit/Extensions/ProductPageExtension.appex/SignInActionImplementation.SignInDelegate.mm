@interface SignInActionImplementation.SignInDelegate
- (_TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate)init;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation SignInActionImplementation.SignInDelegate

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_100016F40(0, &unk_100945180);
  v6 = sub_10076FE4C();
  controllerCopy = controller;
  selfCopy = self;
  sub_1005B0C2C(controllerCopy, v6);
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1005B0F6C(cancelCopy);
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