@interface ASUIPasskeyDisplayViewController
- (_TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASUIPasskeyDisplayViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100037AE0();
}

- (_TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_type] = 7;
  v6 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *&self->type[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_router] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(ASUIPasskeyDisplayViewController *)&v8 initWithContentView:a3];
}

@end