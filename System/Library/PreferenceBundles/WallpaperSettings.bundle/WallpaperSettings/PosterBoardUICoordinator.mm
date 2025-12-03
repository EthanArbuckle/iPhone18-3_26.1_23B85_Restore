@interface PosterBoardUICoordinator
- (_TtC17WallpaperSettings24PosterBoardUICoordinator)init;
- (void)modalController:(id)controller didDismissSheetWithResponse:(id)response;
- (void)modalController:(id)controller willDismissSheetWithResponse:(id)response;
- (void)start;
@end

@implementation PosterBoardUICoordinator

- (void)start
{
  selfCopy = self;
  sub_5D2C();
}

- (_TtC17WallpaperSettings24PosterBoardUICoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)modalController:(id)controller willDismissSheetWithResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  selfCopy = self;
  sub_6410(responseCopy);
}

- (void)modalController:(id)controller didDismissSheetWithResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  selfCopy = self;
  sub_6884();
}

@end