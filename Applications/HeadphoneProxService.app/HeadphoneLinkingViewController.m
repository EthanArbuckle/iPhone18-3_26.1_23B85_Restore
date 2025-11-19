@interface HeadphoneLinkingViewController
- (_TtC20HeadphoneProxService30HeadphoneLinkingViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneLinkingViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeadphoneLinkingViewController();
  v2 = v3.receiver;
  [(HeadphoneLinkingViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (_TtC20HeadphoneProxService30HeadphoneLinkingViewController)initWithContentView:(id)a3
{
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&self->appleIDInfo[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_type] = 28;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HeadphoneLinkingViewController();
  return [(HeadphoneLinkingViewController *)&v7 initWithContentView:a3];
}

@end