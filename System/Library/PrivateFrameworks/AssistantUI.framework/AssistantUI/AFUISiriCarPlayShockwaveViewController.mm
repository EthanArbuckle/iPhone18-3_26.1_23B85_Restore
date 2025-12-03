@interface AFUISiriCarPlayShockwaveViewController
- (void)initializeEdgeLightForRequest:(id)request;
- (void)playShockwave;
- (void)viewDidLoad;
@end

@implementation AFUISiriCarPlayShockwaveViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_241437360();
}

- (void)initializeEdgeLightForRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_2414384B8(requestCopy);
}

- (void)playShockwave
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isDirectActionActivation) & 1) == 0)
  {
    selfCopy = self;
    sub_2414861B0();
    v3 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_shockwaveViewController);
    if (v3)
    {
      v4 = v3;
      [v4 setState_];
      sub_241486514(2);
    }
  }
}

@end