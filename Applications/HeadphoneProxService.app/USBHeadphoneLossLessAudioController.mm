@interface USBHeadphoneLossLessAudioController
- (_TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation USBHeadphoneLossLessAudioController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000B18E4();
}

- (_TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_featureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v6] = static HeadphoneProxFeatureManager.shared.getter();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView] = 0;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_model;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&self->PRXCardContentViewController_opaque[v8], 1, 1, v9);
  *&self->featureManager[OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_type] = 36;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(USBHeadphoneLossLessAudioController *)&v12 initWithContentView:viewCopy];

  return v10;
}

@end