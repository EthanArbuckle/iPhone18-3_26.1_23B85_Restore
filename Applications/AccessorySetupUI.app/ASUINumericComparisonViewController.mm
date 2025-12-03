@interface ASUINumericComparisonViewController
- (_TtC16AccessorySetupUI35ASUINumericComparisonViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation ASUINumericComparisonViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ASUINumericComparisonViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (_TtC16AccessorySetupUI35ASUINumericComparisonViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_type] = 8;
  v6 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_routingContext];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *&self->type[OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_router] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(ASUINumericComparisonViewController *)&v8 initWithContentView:view];
}

@end