@interface ASUIDeviceOTANameChoiceViewController
- (_TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASUIDeviceOTANameChoiceViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ASUIDeviceOTANameChoiceViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{3, v3.receiver, v3.super_class}];
}

- (_TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_type] = 2;
  *&self->type[OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_router] = 0;
  swift_unknownObjectWeakInit();
  v6 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_routingContext];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_deviceOTANameChoices] = _swiftEmptyArrayStorage;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(ASUIDeviceOTANameChoiceViewController *)&v8 initWithContentView:a3];
}

@end