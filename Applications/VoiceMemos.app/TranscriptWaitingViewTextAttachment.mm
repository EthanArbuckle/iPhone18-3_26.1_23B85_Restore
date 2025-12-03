@interface TranscriptWaitingViewTextAttachment
- (BOOL)isEqual:(id)equal;
- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)init;
- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)initWithCoder:(id)coder;
- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)initWithData:(id)data ofType:(id)type;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
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

- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10VoiceMemos35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewCopy = view;
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  v12 = sub_10010D228(view, location, container);

  swift_unknownObjectRelease();

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_10010CE3C(v8);

  sub_10010D150(v8);
  return v6;
}

- (_TtC10VoiceMemos35TranscriptWaitingViewTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000D4388(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end