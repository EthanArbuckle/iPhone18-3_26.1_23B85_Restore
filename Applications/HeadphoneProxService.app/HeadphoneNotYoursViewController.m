@interface HeadphoneNotYoursViewController
- (_TtC20HeadphoneProxService31HeadphoneNotYoursViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HeadphoneNotYoursViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeadphoneNotYoursViewController();
  v2 = v3.receiver;
  [(HeadphoneNotYoursViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B3C28(a3);
}

- (_TtC20HeadphoneProxService31HeadphoneNotYoursViewController)initWithContentView:(id)a3
{
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&self->PRXCardContentViewController_opaque[v5], 1, 1, v6);
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction] = 0;
  *&self->movieView[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_type] = 20;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HeadphoneNotYoursViewController();
  return [(HeadphoneNotYoursViewController *)&v8 initWithContentView:a3];
}

@end