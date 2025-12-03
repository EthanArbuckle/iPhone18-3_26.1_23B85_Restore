@interface MusicRecognitionSceneDelegate
- (_TtC16MusicRecognition29MusicRecognitionSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation MusicRecognitionSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100015454(sceneCopy);
}

- (_TtC16MusicRecognition29MusicRecognitionSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_musicRecognitionPlatterViewController) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MusicRecognitionSceneDelegate *)&v5 init];
}

@end