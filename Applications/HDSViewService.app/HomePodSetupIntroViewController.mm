@interface HomePodSetupIntroViewController
- (_TtC14HDSViewService31HomePodSetupIntroViewController)initWithContentView:(id)view;
- (void)handleTapOnInfoButton;
- (void)viewDidLoad;
@end

@implementation HomePodSetupIntroViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100073804();
}

- (void)handleTapOnInfoButton
{
  selfCopy = self;
  infoButton = [(HomePodSetupIntroViewController *)selfCopy infoButton];
  if (infoButton && (v3 = infoButton, v4 = [infoButton isActive], v3, v4))
  {
    sub_1000746B0();
  }

  else
  {
    sub_100074BF8();
  }
}

- (_TtC14HDSViewService31HomePodSetupIntroViewController)initWithContentView:(id)view
{
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_audioPlayer] = 0;
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView] = 0;
  self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupIntroViewController();
  return [(HomePodSetupIconContentViewController *)&v5 initWithContentView:view];
}

@end