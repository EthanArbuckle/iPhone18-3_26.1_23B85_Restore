@interface HeadphoneUnsupportedViewController
- (_TtC20HeadphoneProxService34HeadphoneUnsupportedViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneUnsupportedViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10008C1C4();
}

- (_TtC20HeadphoneProxService34HeadphoneUnsupportedViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_viewModel;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v7 - 8) + 56))(&self->super.PRXCardContentViewController_opaque[v6], 1, 1, v7);
  v8 = &self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_presenter];
  *v8 = 0;
  *(v8 + 1) = 0;
  self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_type] = 26;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(SoftwareUpdateRequiredViewController *)&v10 initWithContentView:a3];
}

@end