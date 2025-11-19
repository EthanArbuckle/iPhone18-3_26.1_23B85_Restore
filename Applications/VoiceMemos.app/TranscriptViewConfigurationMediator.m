@interface TranscriptViewConfigurationMediator
- (_TtC10VoiceMemos35TranscriptViewConfigurationMediator)init;
- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4;
- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4 didChangeDuration:(double)a5;
@end

@implementation TranscriptViewConfigurationMediator

- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10010D70C();
  swift_unknownObjectRelease();
}

- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4 didChangeDuration:(double)a5
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_10010D70C();
  swift_unknownObjectRelease();
}

- (_TtC10VoiceMemos35TranscriptViewConfigurationMediator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end