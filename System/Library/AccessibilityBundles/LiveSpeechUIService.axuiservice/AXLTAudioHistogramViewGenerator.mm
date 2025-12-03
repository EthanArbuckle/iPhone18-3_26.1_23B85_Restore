@interface AXLTAudioHistogramViewGenerator
- (NSArray)histogram;
- (_TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator)init;
- (double)height;
- (id)viewController;
- (void)setHeight:(double)height;
- (void)setHistogram:(id)histogram;
@end

@implementation AXLTAudioHistogramViewGenerator

- (double)height
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  sub_B9B10();

  return v5;
}

- (void)setHeight:(double)height
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B20();
}

- (NSArray)histogram
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  sub_B9B10();

  v4.super.isa = sub_BB0E0().super.isa;

  return v4.super.isa;
}

- (void)setHistogram:(id)histogram
{
  sub_BB0F0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B20();
}

- (_TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator)init
{
  v3 = OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_config;
  type metadata accessor for AudioHistogramConfig();
  v4 = swift_allocObject();
  sub_87840();
  *(&self->super.isa + v3) = v4;

  sub_89DF8(v10);
  v5 = (self + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView);
  v6 = v10[3];
  v5[2] = v10[2];
  v5[3] = v6;
  v5[4] = v10[4];
  v7 = v10[1];
  *v5 = v10[0];
  v5[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return [(AXLTAudioHistogramViewGenerator *)&v9 init];
}

- (id)viewController
{
  v2 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView];
  v3 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 32];
  v11 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 16];
  v12 = v3;
  v4 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 32];
  v13 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 48];
  v5 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView];
  v10[0] = *(&self->super.isa + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView);
  v10[1] = v5;
  v9[7] = v11;
  v9[8] = v4;
  v9[9] = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 48];
  v9[5] = v10[0];
  v9[6] = v2;
  v6 = objc_allocWithZone(sub_2E50(&qword_FB088));
  sub_89F50(v10, v9);
  v7 = sub_BA370();

  return v7;
}

@end