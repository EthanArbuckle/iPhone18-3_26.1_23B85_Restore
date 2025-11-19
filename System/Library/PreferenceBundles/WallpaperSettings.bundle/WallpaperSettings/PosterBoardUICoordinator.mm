@interface PosterBoardUICoordinator
- (_TtC17WallpaperSettings24PosterBoardUICoordinator)init;
- (void)modalController:(id)a3 didDismissSheetWithResponse:(id)a4;
- (void)modalController:(id)a3 willDismissSheetWithResponse:(id)a4;
- (void)start;
@end

@implementation PosterBoardUICoordinator

- (void)start
{
  v2 = self;
  sub_5D2C();
}

- (_TtC17WallpaperSettings24PosterBoardUICoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)modalController:(id)a3 willDismissSheetWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_6410(v7);
}

- (void)modalController:(id)a3 didDismissSheetWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_6884();
}

@end