@interface WallpaperMetalView
+ (Class)layerClass;
- (_TtC22MercuryPosterExtension18WallpaperMetalView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)displayLayer:(id)a3;
@end

@implementation WallpaperMetalView

- (void)displayLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100004EF4();
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink);
  if (v2)
  {
    v3 = self;
    [v2 invalidate];
    v4.receiver = v3;
    v4.super_class = type metadata accessor for WallpaperMetalView(0);
    [(WallpaperMetalView *)&v4 dealloc];
  }

  else
  {
    __break(1u);
  }
}

+ (Class)layerClass
{
  sub_100012904(0, &unk_1001311E0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC22MercuryPosterExtension18WallpaperMetalView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end