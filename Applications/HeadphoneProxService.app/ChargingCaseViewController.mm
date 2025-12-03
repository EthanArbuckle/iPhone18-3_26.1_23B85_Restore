@interface ChargingCaseViewController
- (_TtC20HeadphoneProxService26ChargingCaseViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation ChargingCaseViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100026A8C();
}

- (_TtC20HeadphoneProxService26ChargingCaseViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  v6 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_presenter];
  *v6 = 0;
  *(v6 + 1) = 0;
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_type] = 39;
  v7 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_contentProvider];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_flowController] = 0;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_headphoneModel;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&self->PRXCardContentViewController_opaque[v8], 1, 1, v9);
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(ChargingCaseViewController *)&v11 initWithContentView:view];
}

@end