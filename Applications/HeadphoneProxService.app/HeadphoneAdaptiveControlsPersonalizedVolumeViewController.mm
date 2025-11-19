@interface HeadphoneAdaptiveControlsPersonalizedVolumeViewController
- (_TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneAdaptiveControlsPersonalizedVolumeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000AFA50();
}

- (_TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_type] = 10;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneAdaptiveControlsPersonalizedVolumeViewController *)&v7 initWithContentView:a3];
}

@end