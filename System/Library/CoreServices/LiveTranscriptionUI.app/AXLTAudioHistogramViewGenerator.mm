@interface AXLTAudioHistogramViewGenerator
- (NSArray)histogram;
- (_TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator)init;
- (double)height;
- (id)viewController;
- (void)setHeight:(double)height;
- (void)setHistogram:(id)histogram;
@end

@implementation AXLTAudioHistogramViewGenerator

- (double)height
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config);
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  static Published.subscript.getter();

  return v6;
}

- (void)setHeight:(double)height
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (NSArray)histogram
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config);
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  static Published.subscript.getter();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setHistogram:(id)histogram
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (_TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator)init
{
  v3 = OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config;
  v4 = type metadata accessor for AudioHistogramConfig();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_100042454();
  *(&self->super.isa + v3) = v7;

  sub_100044C40(v13);
  v8 = (self + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView);
  v9 = v13[3];
  v8[2] = v13[2];
  v8[3] = v9;
  v8[4] = v13[4];
  v10 = v13[1];
  *v8 = v13[0];
  v8[1] = v10;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return [(AXLTAudioHistogramViewGenerator *)&v12 init];
}

- (id)viewController
{
  v2 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView];
  v3 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 32];
  v11 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 16];
  v12 = v3;
  v4 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 32];
  v13 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 48];
  v5 = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView];
  v10[0] = *(&self->super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView);
  v10[1] = v5;
  v9[7] = v11;
  v9[8] = v4;
  v9[9] = *&self->audioHistogramView[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 48];
  v9[5] = v10[0];
  v9[6] = v2;
  v6 = objc_allocWithZone(sub_100003968(&qword_100064088, &qword_100049CE8));
  sub_100044D98(v10, v9);
  v7 = UIHostingController.init(rootView:)();

  return v7;
}

@end