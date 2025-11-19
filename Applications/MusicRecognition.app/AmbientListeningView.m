@interface AmbientListeningView
- (void)layoutSubviews;
@end

@implementation AmbientListeningView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(AmbientListeningView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayer];
  [*&v2[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayerView] bounds];
  [v3 setFrame:?];
}

@end