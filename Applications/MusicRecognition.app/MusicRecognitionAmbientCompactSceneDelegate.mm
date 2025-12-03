@interface MusicRecognitionAmbientCompactSceneDelegate
- (_TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation MusicRecognitionAmbientCompactSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10007A9BC(sceneCopy);
}

- (_TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MusicRecognitionAmbientCompactSceneDelegate *)&v5 init];
}

@end