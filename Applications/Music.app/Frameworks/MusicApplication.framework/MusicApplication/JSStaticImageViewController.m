@interface JSStaticImageViewController
- (NSData)playActivityRecommendationData;
- (NSString)playActivityFeatureName;
- (_TtC16MusicApplication27JSStaticImageViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication27JSStaticImageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSStaticImageViewController

- (_TtC16MusicApplication27JSStaticImageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_tapGestureRecognizerHandler) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_artworkCatalog) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_expectedImageAspectRatio) = 0x3FF0000000000000;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)playActivityFeatureName
{
  v2 = *&stru_68.segname[(swift_isaMask & **(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_staticImageViewModel)) + 8];
  v3 = self;
  v2();

  v4 = sub_AB9260();

  return v4;
}

- (NSData)playActivityRecommendationData
{
  v2 = *(&stru_68.offset + (swift_isaMask & **(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_staticImageViewModel)));
  v3 = self;
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

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_417850();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_417A14();
}

- (_TtC16MusicApplication27JSStaticImageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end