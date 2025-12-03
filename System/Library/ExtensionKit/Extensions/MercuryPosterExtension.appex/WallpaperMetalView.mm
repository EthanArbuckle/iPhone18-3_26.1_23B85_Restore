@interface WallpaperMetalView
+ (Class)layerClass;
- (_TtC22MercuryPosterExtension18WallpaperMetalView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)displayLayer:(id)layer;
@end

@implementation WallpaperMetalView

- (void)displayLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_100004EF4();
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_displayLink);
  if (v2)
  {
    selfCopy = self;
    [v2 invalidate];
    v4.receiver = selfCopy;
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

- (_TtC22MercuryPosterExtension18WallpaperMetalView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end