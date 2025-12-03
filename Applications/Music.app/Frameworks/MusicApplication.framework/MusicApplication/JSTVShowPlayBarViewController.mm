@interface JSTVShowPlayBarViewController
- (NSData)playActivityRecommendationData;
- (NSString)playActivityFeatureName;
- (_TtC16MusicApplication29JSTVShowPlayBarViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication29JSTVShowPlayBarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSTVShowPlayBarViewController

- (_TtC16MusicApplication29JSTVShowPlayBarViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_contentItem) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_episode) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2907DC();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_291214();
}

- (NSString)playActivityFeatureName
{
  v2 = *&stru_68.segname[(swift_isaMask & **(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarViewModel)) + 8];
  selfCopy = self;
  v2();

  v4 = sub_AB9260();

  return v4;
}

- (NSData)playActivityRecommendationData
{
  v2 = *(&stru_68.offset + (swift_isaMask & **(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarViewModel)));
  selfCopy = self;
  v4 = v2();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    isa = sub_AB3250().super.isa;
    sub_466A4(v4, v6);
    v7 = isa;
  }

  return v7;
}

- (_TtC16MusicApplication29JSTVShowPlayBarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end