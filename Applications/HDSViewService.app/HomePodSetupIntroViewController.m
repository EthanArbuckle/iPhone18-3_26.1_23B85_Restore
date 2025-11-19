@interface HomePodSetupIntroViewController
- (_TtC14HDSViewService31HomePodSetupIntroViewController)initWithContentView:(id)a3;
- (void)handleTapOnInfoButton;
- (void)viewDidLoad;
@end

@implementation HomePodSetupIntroViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100073804();
}

- (void)handleTapOnInfoButton
{
  v5 = self;
  v2 = [(HomePodSetupIntroViewController *)v5 infoButton];
  if (v2 && (v3 = v2, v4 = [v2 isActive], v3, v4))
  {
    sub_1000746B0();
  }

  else
  {
    sub_100074BF8();
  }
}

- (_TtC14HDSViewService31HomePodSetupIntroViewController)initWithContentView:(id)a3
{
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_audioPlayer] = 0;
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView] = 0;
  self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupIntroViewController();
  return [(HomePodSetupIconContentViewController *)&v5 initWithContentView:a3];
}

@end