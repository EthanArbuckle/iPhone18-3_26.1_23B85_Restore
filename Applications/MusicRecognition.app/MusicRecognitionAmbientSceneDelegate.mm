@interface MusicRecognitionAmbientSceneDelegate
- (_TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation MusicRecognitionAmbientSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100019130(sceneCopy);
}

- (_TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_musicRecognitionAmbientViewController) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MusicRecognitionAmbientSceneDelegate *)&v5 init];
}

@end