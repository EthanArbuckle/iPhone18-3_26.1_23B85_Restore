@interface ASUITransportsRestrictedViewController
- (_TtC16AccessorySetupUI38ASUITransportsRestrictedViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASUITransportsRestrictedViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ASUITransportsRestrictedViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (_TtC16AccessorySetupUI38ASUITransportsRestrictedViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_type] = 1;
  *&self->type[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_router] = 0;
  swift_unknownObjectWeakInit();
  v6 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_restrictedCapabilities] = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(ASUITransportsRestrictedViewController *)&v8 initWithContentView:a3];
}

@end