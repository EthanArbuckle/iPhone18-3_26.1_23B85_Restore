@interface AdaptiveGlyphTextViewObserver
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver)init;
- (id)textDroppableView:(id)view proposalForDrop:(id)drop;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)textViewDidChange:(id)change;
@end

@implementation AdaptiveGlyphTextViewObserver

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_28A84(changeCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  v7 = sub_48414();
  v9 = v8;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(v7) = sub_29C40(viewCopy, v7, v9);

  return v7 & 1;
}

- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions
{
  sub_61D4(0, &qword_635B0, UIMenuElement_ptr);
  v7 = sub_48544();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_29E34(viewCopy, v7);

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

- (id)textDroppableView:(id)view proposalForDrop:(id)drop
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_2A62C(drop);

  swift_unknownObjectRelease();

  return v8;
}

@end