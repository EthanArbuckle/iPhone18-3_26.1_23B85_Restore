@interface LiveCaptionsCallDisclosureProvider
- (_TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider)init;
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
@end

@implementation LiveCaptionsCallDisclosureProvider

- (_TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider)init
{
  *(&self->super.isa + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider____lazy_storage___synth) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_session) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider_player) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LiveCaptionsCallDisclosureProvider();
  return [(LiveCaptionsCallDisclosureProvider *)&v3 init];
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  playingCopy = playing;
  selfCopy = self;
  sub_2FCA0(successfully);
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  occurCopy = occur;
  selfCopy = self;
  errorCopy = error;
  sub_2FE04();
}

@end