@interface SceneDelegate
- (_TtC18FeedbackRemoteView13SceneDelegate)init;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC18FeedbackRemoteView13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC18FeedbackRemoteView13SceneDelegate_window) = a3;
  v3 = a3;
}

- (_TtC18FeedbackRemoteView13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18FeedbackRemoteView13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end