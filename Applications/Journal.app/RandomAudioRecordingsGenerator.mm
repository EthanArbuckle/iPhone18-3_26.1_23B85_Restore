@interface RandomAudioRecordingsGenerator
- (_TtC7Journal30RandomAudioRecordingsGenerator)init;
@end

@implementation RandomAudioRecordingsGenerator

- (_TtC7Journal30RandomAudioRecordingsGenerator)init
{
  v3 = OBJC_IVAR____TtC7Journal30RandomAudioRecordingsGenerator_synthesizer;
  *(&self->super.isa + v3) = [objc_allocWithZone(AVSpeechSynthesizer) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for RandomAudioRecordingsGenerator();
  return [(RandomAudioRecordingsGenerator *)&v5 init];
}

@end