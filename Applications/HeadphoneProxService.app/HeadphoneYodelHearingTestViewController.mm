@interface HeadphoneYodelHearingTestViewController
- (_TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation HeadphoneYodelHearingTestViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100013B04();
}

- (_TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v6] = static HeadphoneProxFeatureManager.shared.getter();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset] = 0;
  *&self->headphoneProxFeatureManager[OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController_type] = 35;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(HeadphoneYodelHearingTestViewController *)&v10 initWithContentView:viewCopy];

  return v8;
}

@end