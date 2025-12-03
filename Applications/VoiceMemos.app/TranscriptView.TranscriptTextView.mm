@interface TranscriptView.TranscriptTextView
- (_TtCC10VoiceMemos14TranscriptView18TranscriptTextView)initWithCoder:(id)coder;
- (_TtCC10VoiceMemos14TranscriptView18TranscriptTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation TranscriptView.TranscriptTextView

- (_TtCC10VoiceMemos14TranscriptView18TranscriptTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *&self->findInteractionObserver[OBJC_IVAR____TtCC10VoiceMemos14TranscriptView18TranscriptTextView_findInteractionObserver] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for TranscriptView.TranscriptTextView();
  return [(TranscriptView.TranscriptTextView *)&v11 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtCC10VoiceMemos14TranscriptView18TranscriptTextView)initWithCoder:(id)coder
{
  *&self->findInteractionObserver[OBJC_IVAR____TtCC10VoiceMemos14TranscriptView18TranscriptTextView_findInteractionObserver] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for TranscriptView.TranscriptTextView();
  coderCopy = coder;
  v6 = [(TranscriptView.TranscriptTextView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end