@interface ASUIDoneViewController
- (_TtC16AccessorySetupUI22ASUIDoneViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASUIDoneViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ASUIDoneViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{3, v3.receiver, v3.super_class}];
}

- (_TtC16AccessorySetupUI22ASUIDoneViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_type] = 11;
  *&self->type[OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_router] = 0;
  swift_unknownObjectWeakInit();
  v6 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_routingContext];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(ASUIDoneViewController *)&v8 initWithContentView:a3];
}

@end