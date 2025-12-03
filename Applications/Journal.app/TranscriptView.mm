@interface TranscriptView
- (_TtC7Journal14TranscriptView)initWithCoder:(id)coder;
- (_TtC7Journal14TranscriptView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation TranscriptView

- (_TtC7Journal14TranscriptView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIAttachment) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal14TranscriptView_shouldShowWaitingUI) = 0;
  v4 = self + OBJC_IVAR____TtC7Journal14TranscriptView_activeSegmentRange;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Journal14TranscriptView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end