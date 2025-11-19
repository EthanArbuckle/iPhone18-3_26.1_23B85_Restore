@interface HeadphoneHeadGesturesUpsellViewController
- (_TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneHeadGesturesUpsellViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10008CF20();
}

- (_TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  v7 = a3;
  *&self->PRXCardContentViewController_opaque[v6] = static HeadphoneProxFeatureManager.shared.getter();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___topAsset] = 0;
  *&self->headphoneProxFeatureManager[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_type] = 13;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(HeadphoneHeadGesturesUpsellViewController *)&v10 initWithContentView:v7];

  return v8;
}

@end