@interface PosterGestureTutorialAnimationPackageView
- (CGSize)intrinsicContentSize;
- (_TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation PosterGestureTutorialAnimationPackageView

- (_TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_package) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_animating) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_packageLayer) = 0;
  result = sub_2A8D4();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_packageLayer);
  if (v3)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v8 = self;
    v9 = v3;
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    MidX = CGRectGetMidX(v12);
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    [v9 setPosition:{MidX, CGRectGetMinY(v13)}];
    CATransform3DMakeScale(&v11, 0.333333333, 0.333333333, 1.0);
    [v9 setTransform:&v11];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_packageLayer);
  if (v2)
  {
    v3 = self;
    v4 = v2;
    [v4 bounds];
    v6 = v5 * 0.333333333;
    [v4 bounds];
    v8 = v7;

    v9 = v8 * 0.333333333;
  }

  else
  {
    v6 = UIViewNoIntrinsicMetric;
    v9 = UIViewNoIntrinsicMetric;
  }

  v10 = v6;
  result.height = v9;
  result.width = v10;
  return result;
}

@end