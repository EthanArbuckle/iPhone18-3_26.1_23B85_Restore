@interface TranscriptView.TranscriptTextView
- (_TtCC10VoiceMemos14TranscriptView18TranscriptTextView)initWithCoder:(id)a3;
- (_TtCC10VoiceMemos14TranscriptView18TranscriptTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation TranscriptView.TranscriptTextView

- (_TtCC10VoiceMemos14TranscriptView18TranscriptTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&self->findInteractionObserver[OBJC_IVAR____TtCC10VoiceMemos14TranscriptView18TranscriptTextView_findInteractionObserver] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for TranscriptView.TranscriptTextView();
  return [(TranscriptView.TranscriptTextView *)&v11 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtCC10VoiceMemos14TranscriptView18TranscriptTextView)initWithCoder:(id)a3
{
  *&self->findInteractionObserver[OBJC_IVAR____TtCC10VoiceMemos14TranscriptView18TranscriptTextView_findInteractionObserver] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for TranscriptView.TranscriptTextView();
  v5 = a3;
  v6 = [(TranscriptView.TranscriptTextView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end