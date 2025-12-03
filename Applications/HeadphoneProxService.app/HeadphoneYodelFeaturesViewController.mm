@interface HeadphoneYodelFeaturesViewController
- (_TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation HeadphoneYodelFeaturesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100037A94();
}

- (_TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v6] = static HeadphoneProxFeatureManager.shared.getter();
  v8 = OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_builder;
  type metadata accessor for ProxBulltedListBuilder();
  v9 = swift_allocObject();
  *(v9 + 16) = _swiftEmptyArrayStorage;
  *&self->PRXCardContentViewController_opaque[v8] = v9;
  *&self->headphoneProxFeatureManager[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_type] = 33;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(HeadphoneYodelFeaturesViewController *)&v12 initWithContentView:viewCopy];

  return v10;
}

@end