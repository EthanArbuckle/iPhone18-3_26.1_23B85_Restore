@interface CARResolvedWallpaperView
- (_TtC15CarPlaySettings24CARResolvedWallpaperView)initWithCoder:(id)coder;
- (_TtC15CarPlaySettings24CARResolvedWallpaperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)updateDimmingView;
@end

@implementation CARResolvedWallpaperView

- (_TtC15CarPlaySettings24CARResolvedWallpaperView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperID);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(CARResolvedWallpaperView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_dimView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)updateDimmingView
{
  selfCopy = self;
  sub_100055280();
}

- (_TtC15CarPlaySettings24CARResolvedWallpaperView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end