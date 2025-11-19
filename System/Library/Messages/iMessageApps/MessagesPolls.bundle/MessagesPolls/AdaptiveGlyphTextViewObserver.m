@interface AdaptiveGlyphTextViewObserver
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver)init;
- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)textViewDidChange:(id)a3;
@end

@implementation AdaptiveGlyphTextViewObserver

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_28A84(v4);
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v7 = sub_48414();
  v9 = v8;
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = sub_29C40(v10, v7, v9);

  return v7 & 1;
}

- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  sub_61D4(0, &qword_635B0, UIMenuElement_ptr);
  v7 = sub_48544();
  v8 = a3;
  v9 = self;
  v10 = sub_29E34(v8, v7);

  return v10;
}

- (_TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver)init
{
  v3 = self + OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_fieldUpdater;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_focusDelegate);
  v5 = type metadata accessor for AdaptiveGlyphTextViewObserver();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(AdaptiveGlyphTextViewObserver *)&v7 init];
}

- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_2A62C(a4);

  swift_unknownObjectRelease();

  return v8;
}

@end