@interface LiveSpeechCaptionsViewsCoordinator
- (_TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator)init;
@end

@implementation LiveSpeechCaptionsViewsCoordinator

- (_TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator)init
{
  v2 = (self + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (self + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.isa + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechViewToFront);
  *v4 = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsAdjustFrame);
  *v5 = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
  v5[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechWindowState) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LiveSpeechCaptionsViewsCoordinator();
  return [(LiveSpeechCaptionsViewsCoordinator *)&v7 init];
}

@end