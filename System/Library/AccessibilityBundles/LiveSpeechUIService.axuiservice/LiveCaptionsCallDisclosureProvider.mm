@interface LiveCaptionsCallDisclosureProvider
- (_TtC19LiveSpeechUIService34LiveCaptionsCallDisclosureProvider)init;
- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
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

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_2FCA0(a4);
}

- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_2FE04();
}

@end