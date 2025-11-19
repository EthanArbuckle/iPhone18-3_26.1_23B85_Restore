@interface ASUIPasskeyEntryViewController
- (_TtC16AccessorySetupUI30ASUIPasskeyEntryViewController)initWithContentView:(id)a3;
- (void)textDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASUIPasskeyEntryViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ASUIPasskeyEntryViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (void)textDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100030CE4(v4);
}

- (_TtC16AccessorySetupUI30ASUIPasskeyEntryViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_type] = 6;
  v6 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_routingContext];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *&self->type[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_router] = 0;
  swift_unknownObjectWeakInit();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_numberOfDigits] = 6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(ASUIPasskeyEntryViewController *)&v8 initWithContentView:a3];
}

@end