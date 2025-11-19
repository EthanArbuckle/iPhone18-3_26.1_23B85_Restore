@interface Artwork.View
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCV11MusicCoreUI7Artwork4View)initWithCoder:(id)a3;
- (_TtCV11MusicCoreUI7Artwork4View)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation Artwork.View

- (_TtCV11MusicCoreUI7Artwork4View)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(&self->super.super.super.isa + v6) = [objc_allocWithZone(UIImageView) init];
  v7 = self + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v7 = 0;
  v7[8] = -1;
  result = sub_1005740F8();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  Artwork.View.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v3 = (self + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration);
  swift_beginAccess();
  if (*(v3 + 48) == 2 && *(v3 + 64) == 2)
  {
    v4 = v3[7];
    v5 = v3[5];
    v6 = self;
    v7 = v5;
    v8 = v4;
  }

  else
  {
    v9 = self;
    v7 = 0.0;
    v8 = 0.0;
  }

  Artwork.View.fittingImageSize(in:)(v7, v8);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = self + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  v7 = v6[48];
  if (v7 == 255)
  {
    v8 = self;
    Artwork.View.fittingImageSize(in:)(width, height);
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = *(v6 + 7);
    v14 = *(v6 + 5);
    v15 = v6[64];
    v16 = self;
    sub_100368034(width, height, v14, v7);
    v10 = v17;
    sub_100368034(width, height, v13, v15);
    v12 = v18;
  }

  v19 = v10;
  v20 = v12;
  result.height = v20;
  result.width = v19;
  return result;
}

- (_TtCV11MusicCoreUI7Artwork4View)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end