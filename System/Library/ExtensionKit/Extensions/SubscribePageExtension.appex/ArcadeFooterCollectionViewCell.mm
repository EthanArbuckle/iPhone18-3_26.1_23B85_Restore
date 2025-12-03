@interface ArcadeFooterCollectionViewCell
- (void)buttonTapped;
- (void)didTapFootnoteWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation ArcadeFooterCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10056DD5C();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (void)didTapFootnoteWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_10056FA28();
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v6 = sub_100753484();
  eventCopy = event;
  selfCopy = self;
  sub_10056E6E0(v6, event);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  sub_100753484();
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_isHighlighted) = 0;
  v7 = qword_100920308;
  eventCopy = event;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel) setTextColor:qword_100929680];
  isa = sub_100753474().super.isa;

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  [(ArcadeFooterCollectionViewCell *)&v11 touchesEnded:isa withEvent:eventCopy];
}

@end