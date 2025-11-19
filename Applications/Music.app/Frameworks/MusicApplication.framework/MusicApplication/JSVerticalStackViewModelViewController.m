@interface JSVerticalStackViewModelViewController
- (NSData)playActivityRecommendationData;
- (NSString)playActivityFeatureName;
- (_TtC16MusicApplication38JSVerticalStackViewModelViewController)initWithCoder:(id)a3;
@end

@implementation JSVerticalStackViewModelViewController

- (_TtC16MusicApplication38JSVerticalStackViewModelViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_lastSeenScrollableHeight) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)playActivityFeatureName
{
  v2 = *&stru_68.segname[(swift_isaMask & **(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack)) + 8];
  v3 = self;
  v2();

  v4 = sub_AB9260();

  return v4;
}

- (NSData)playActivityRecommendationData
{
  v2 = *(&stru_68.offset + (swift_isaMask & **(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack)));
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

@end