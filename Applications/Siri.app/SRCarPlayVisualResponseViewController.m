@interface SRCarPlayVisualResponseViewController
- (void)cancelSpeechSynthesis;
- (void)delayAutodismiss;
- (void)emitInstrumentationEvent:(id)a3;
- (void)hideBackgroundBehindSiri;
- (void)informHostOfBackgroundColor:(id)a3;
- (void)informHostOfBackgroundMaterial:(int64_t)a3;
- (void)informHostOfViewResize:(CGSize)a3;
- (void)navigateWithAceCommand:(id)a3;
- (void)navigateWithResponseData:(id)a3;
- (void)performAceCommand:(id)a3;
- (void)performShowResponse:(id)a3;
- (void)restartSpeechSynthesis;
- (void)scrollViewDidScroll:(id)a3;
- (void)snippetFocusDidChange:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation SRCarPlayVisualResponseViewController

- (void)informHostOfViewResize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1000112B8(width, height);
}

- (void)emitInstrumentationEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000155A4(v4);
}

- (void)snippetFocusDidChange:(int64_t)a3
{
  v4 = self;
  sub_100015F34(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100017A64();
}

- (void)performAceCommand:(id)a3
{
  swift_getObjectType();
  v5 = a3;
  v6 = self;
  sub_1000ACA7C(v5, 0, v6);
}

- (void)performShowResponse:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_1000A9E6C();
  sub_10001717C(v5, v7);
}

- (void)navigateWithResponseData:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006160(v9, qword_10018EE28);
  v10 = static os_log_type_t.error.getter();
  sub_10000AABC(v10, 0x10uLL, 0xD00000000000001CLL, 0x8000000100118EC0, 0xD00000000000004ELL, 0x8000000100118DD0);
  sub_1000A9E6C();

  sub_10001717C(v6, v8);
}

- (void)navigateWithAceCommand:(id)a3
{
  v4 = qword_10018D798;
  v5 = a3;
  v8 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006160(v6, qword_10018EE28);
  v7 = static os_log_type_t.error.getter();
  sub_10000AABC(v7, 0x10uLL, 0xD00000000000001ALL, 0x8000000100118DB0, 0xD00000000000004ELL, 0x8000000100118DD0);
  swift_getObjectType();
  sub_1000ACA7C(v5, 1, v8);
}

- (void)informHostOfBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000AA380(a3);
}

- (void)informHostOfBackgroundMaterial:(int64_t)a3
{
  v4 = self;
  sub_1000AA988(a3);
}

- (void)cancelSpeechSynthesis
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_proceedToNextCommandAtSpeechSynthesisEnd) = 0;
  v3 = self + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(*(v4 + 8) + 16);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)restartSpeechSynthesis
{
  v3 = self + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(*(v4 + 8) + 48);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)delayAutodismiss
{
  v2 = self;
  sub_1000AB08C();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000ACEF0();
}

- (void)hideBackgroundBehindSiri
{
  v2 = self;
  sub_1000ABA8C();
}

@end