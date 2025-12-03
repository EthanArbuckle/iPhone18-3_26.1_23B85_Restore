@interface TranscriptWaitingViewTextAttachment
- (_TtC7Journal35TranscriptWaitingViewTextAttachment)init;
- (_TtC7Journal35TranscriptWaitingViewTextAttachment)initWithCoder:(id)coder;
- (_TtC7Journal35TranscriptWaitingViewTextAttachment)initWithData:(id)data ofType:(id)type;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
@end

@implementation TranscriptWaitingViewTextAttachment

- (_TtC7Journal35TranscriptWaitingViewTextAttachment)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider) = 0;
  if (qword_100ACFC38 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();

  v6.receiver = self;
  v6.super_class = type metadata accessor for TranscriptWaitingViewTextAttachment();
  v4 = [(TranscriptWaitingViewTextAttachment *)&v6 initWithData:0 ofType:v3];

  [(TranscriptWaitingViewTextAttachment *)v4 setAllowsTextAttachmentView:1];
  return v4;
}

- (_TtC7Journal35TranscriptWaitingViewTextAttachment)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider) = 0;
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
  v12 = sub_10031C7FC(view, location, container);

  swift_unknownObjectRelease();

  return v12;
}

- (_TtC7Journal35TranscriptWaitingViewTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000340DC(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end