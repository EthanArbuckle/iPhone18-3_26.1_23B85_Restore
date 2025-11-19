@interface DKViewControllerDelegateResponder
- (_TtC11Diagnostics33DKViewControllerDelegateResponder)init;
- (void)setStatusBarStyle:(int64_t)a3;
@end

@implementation DKViewControllerDelegateResponder

- (void)setStatusBarStyle:(int64_t)a3
{
  v4 = objc_opt_self();
  v5 = [objc_msgSend(v4 "currentPlatform")];
  swift_unknownObjectRelease();
  if (v5)
  {
    [objc_msgSend(v4 "currentPlatform")];

    swift_unknownObjectRelease();
  }
}

- (_TtC11Diagnostics33DKViewControllerDelegateResponder)init
{
  v2 = self + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle;
  *v2 = 0;
  v2[8] = 1;
  v3 = self + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle;
  *v3 = 0;
  v3[8] = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DKViewControllerDelegateResponder();
  return [(DKViewControllerDelegateResponder *)&v5 init];
}

@end