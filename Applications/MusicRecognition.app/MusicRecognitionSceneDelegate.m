@interface MusicRecognitionSceneDelegate
- (_TtC16MusicRecognition29MusicRecognitionSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation MusicRecognitionSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100015454(v8);
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