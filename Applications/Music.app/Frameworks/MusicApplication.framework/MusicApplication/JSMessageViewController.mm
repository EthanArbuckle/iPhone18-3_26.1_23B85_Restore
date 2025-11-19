@interface JSMessageViewController
- (NSData)playActivityRecommendationData;
- (NSString)playActivityFeatureName;
- (_TtC16MusicApplication23JSMessageViewController)initWithCoder:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSMessageViewController

- (_TtC16MusicApplication23JSMessageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication23JSMessageViewController____lazy_storage___noContentView) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)playActivityFeatureName
{
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

- (NSData)playActivityRecommendationData
{
  v2 = JSViewModel.playActivityRecommendationData.getter();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    isa = sub_AB3250().super.isa;
    sub_466A4(v5, v6);
    v4 = isa;
  }

  return v4;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_4EA3CC();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_4EA628();
}

@end