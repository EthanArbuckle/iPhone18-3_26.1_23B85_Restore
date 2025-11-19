@interface HeadphoneSpatialAudioProfileViewController
- (_TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneSpatialAudioProfileViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000B2B34();
}

- (_TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_type] = 25;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneSpatialAudioProfileViewController *)&v7 initWithContentView:a3];
}

@end