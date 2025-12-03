@interface SRCarPlayVisualResponseViewController
- (void)cancelSpeechSynthesis;
- (void)delayAutodismiss;
- (void)emitInstrumentationEvent:(id)event;
- (void)hideBackgroundBehindSiri;
- (void)informHostOfBackgroundColor:(id)color;
- (void)informHostOfBackgroundMaterial:(int64_t)material;
- (void)informHostOfViewResize:(CGSize)resize;
- (void)navigateWithAceCommand:(id)command;
- (void)navigateWithResponseData:(id)data;
- (void)performAceCommand:(id)command;
- (void)performShowResponse:(id)response;
- (void)restartSpeechSynthesis;
- (void)scrollViewDidScroll:(id)scroll;
- (void)snippetFocusDidChange:(int64_t)change;
- (void)viewDidLoad;
@end

@implementation SRCarPlayVisualResponseViewController

- (void)informHostOfViewResize:(CGSize)resize
{
  height = resize.height;
  width = resize.width;
  selfCopy = self;
  sub_1000112B8(width, height);
}

- (void)emitInstrumentationEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1000155A4(eventCopy);
}

- (void)snippetFocusDidChange:(int64_t)change
{
  selfCopy = self;
  sub_100015F34(change);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100017A64();
}

- (void)performAceCommand:(id)command
{
  swift_getObjectType();
  commandCopy = command;
  selfCopy = self;
  sub_1000ACA7C(commandCopy, 0, selfCopy);
}

- (void)performShowResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_1000A9E6C();
  sub_10001717C(v5, v7);
}

- (void)navigateWithResponseData:(id)data
{
  dataCopy = data;
  selfCopy = self;
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

- (void)navigateWithAceCommand:(id)command
{
  v4 = qword_10018D798;
  commandCopy = command;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006160(v6, qword_10018EE28);
  v7 = static os_log_type_t.error.getter();
  sub_10000AABC(v7, 0x10uLL, 0xD00000000000001ALL, 0x8000000100118DB0, 0xD00000000000004ELL, 0x8000000100118DD0);
  swift_getObjectType();
  sub_1000ACA7C(commandCopy, 1, selfCopy);
}

- (void)informHostOfBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1000AA380(color);
}

- (void)informHostOfBackgroundMaterial:(int64_t)material
{
  selfCopy = self;
  sub_1000AA988(material);
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
    selfCopy = self;
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
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)delayAutodismiss
{
  selfCopy = self;
  sub_1000AB08C();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1000ACEF0();
}

- (void)hideBackgroundBehindSiri
{
  selfCopy = self;
  sub_1000ABA8C();
}

@end