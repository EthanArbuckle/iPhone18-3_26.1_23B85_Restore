@interface ModalSignInViewControllerDelegateForPreviews
- (_TtC9AuthKitUIP33_477519CF0058A88A0508C0A799EDF62844ModalSignInViewControllerDelegateForPreviews)init;
- (void)signInViewController:(id)controller willPerformAuthenticationWithContext:(id)context completionHandler:(id)handler;
@end

@implementation ModalSignInViewControllerDelegateForPreviews

- (void)signInViewController:(id)controller willPerformAuthenticationWithContext:(id)context completionHandler:(id)handler
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9AuthKitUIP33_477519CF0058A88A0508C0A799EDF62844ModalSignInViewControllerDelegateForPreviews_capturedSignInCall);
  if (v5)
  {
    v6 = *&self->capturedSignInCall[OBJC_IVAR____TtC9AuthKitUIP33_477519CF0058A88A0508C0A799EDF62844ModalSignInViewControllerDelegateForPreviews_capturedSignInCall];
    selfCopy = self;
    v8 = sub_22243F444(v5, v6);
    v5(v8);

    sub_22243F454(v5, v6);
  }
}

- (_TtC9AuthKitUIP33_477519CF0058A88A0508C0A799EDF62844ModalSignInViewControllerDelegateForPreviews)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC9AuthKitUIP33_477519CF0058A88A0508C0A799EDF62844ModalSignInViewControllerDelegateForPreviews_capturedSignInCall);
  v4 = type metadata accessor for ModalSignInViewControllerDelegateForPreviews();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ModalSignInViewControllerDelegateForPreviews *)&v6 init];
}

@end