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
  sub_10035C4EC();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001CE50(v2);
    v2(v4);

    sub_1000167E0(v2);
  }
}

- (void)didTapFootnoteWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_10035E170();
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v6 = sub_10077039C();
  eventCopy = event;
  selfCopy = self;
  sub_10035CE70(v6, event);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  sub_10077039C();
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted) = 0;
  v7 = qword_10093F800;
  eventCopy = event;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  [*(v6 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel) setTextColor:qword_100949F38];
  isa = sub_10077038C().super.isa;

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  [(ArcadeFooterCollectionViewCell *)&v11 touchesEnded:isa withEvent:eventCopy];
}

@end