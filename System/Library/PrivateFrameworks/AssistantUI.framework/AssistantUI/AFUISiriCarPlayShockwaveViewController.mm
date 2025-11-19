@interface AFUISiriCarPlayShockwaveViewController
- (void)initializeEdgeLightForRequest:(id)a3;
- (void)playShockwave;
- (void)viewDidLoad;
@end

@implementation AFUISiriCarPlayShockwaveViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_241437360();
}

- (void)initializeEdgeLightForRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2414384B8(v4);
}

- (void)playShockwave
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isDirectActionActivation) & 1) == 0)
  {
    v5 = self;
    sub_2414861B0();
    v3 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_shockwaveViewController);
    if (v3)
    {
      v4 = v3;
      [v4 setState_];
      sub_241486514(2);
    }
  }
}

@end