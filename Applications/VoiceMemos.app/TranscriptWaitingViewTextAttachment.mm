@interface TranscriptWaitingViewTextAttachment
- (BOOL)isEqual:(id)a3;
- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)init;
- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)initWithCoder:(id)a3;
- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)initWithData:(id)a3 ofType:(id)a4;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
@end

@implementation TranscriptWaitingViewTextAttachment

- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10VoiceMemos35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider) = 0;

  v3 = String._bridgeToObjectiveC()();

  v6.receiver = self;
  v6.super_class = type metadata accessor for TranscriptWaitingViewTextAttachment();
  v4 = [(TranscriptWaitingViewTextAttachment *)&v6 initWithData:0 ofType:v3];

  [(TranscriptWaitingViewTextAttachment *)v4 setAllowsTextAttachmentView:1];
  return v4;
}

- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10VoiceMemos35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = self;
  v12 = sub_10010D228(a3, a4, a5);

  swift_unknownObjectRelease();

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10010CE3C(v8);

  sub_10010D150(v8);
  return v6;
}

- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000D4388(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end