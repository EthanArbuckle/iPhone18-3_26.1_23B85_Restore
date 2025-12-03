@interface StickerPickerServiceSceneDelegate
- (_TtC20StickerPickerService33StickerPickerServiceSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
@end

@implementation StickerPickerServiceSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10000A2BC(sceneCopy);
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  sceneCopy = scene;
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_10000A494(sceneCopy, space);

  swift_unknownObjectRelease();
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000093DC(disconnectCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10000A6A4(activeCopy, "sceneDidBecomeActive %@");
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10000A6A4(activeCopy, "sceneWillResignActive %@");
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1000096CC(foregroundCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10000A7EC(backgroundCopy);
}

- (_TtC20StickerPickerService33StickerPickerServiceSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickerPickerServiceSceneDelegate();
  return [(StickerPickerServiceSceneDelegate *)&v3 init];
}

@end