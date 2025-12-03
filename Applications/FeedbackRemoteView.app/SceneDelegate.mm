@interface SceneDelegate
- (_TtC18FeedbackRemoteView13SceneDelegate)init;
- (void)setWindow:(id)window;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC18FeedbackRemoteView13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC18FeedbackRemoteView13SceneDelegate_window) = window;
  windowCopy = window;
}

- (_TtC18FeedbackRemoteView13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18FeedbackRemoteView13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end