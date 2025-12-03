@interface HeadphoneControlCenterTrainingViewController
- (_TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation HeadphoneControlCenterTrainingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000ACDB4();
}

- (_TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->PRXFeatureTourContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView] = 0;
  *&self->PRXFeatureTourContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_horizontalConstraint] = 0;
  *&self->trainingView[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXFeatureTourContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_type] = 4;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneControlCenterTrainingViewController *)&v7 initWithContentView:view];
}

@end