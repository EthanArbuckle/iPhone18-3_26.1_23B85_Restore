@interface ArcadeFooterCollectionViewCell
- (void)buttonTapped;
- (void)didTapFootnoteWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation ArcadeFooterCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_417324();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock);
  if (v2)
  {
    v3 = self;
    v4 = sub_F714(v2);
    v2(v4);

    sub_F704(v2);
  }
}

- (void)didTapFootnoteWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_419134();
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  v6 = sub_769640();
  v7 = a4;
  v8 = self;
  sub_417CA8(v6, a4);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  sub_769640();
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted) = 0;
  v7 = qword_93C420;
  v8 = a4;
  v9 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  [*(v6 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel) setTextColor:qword_946630];
  isa = sub_769630().super.isa;

  v11.receiver = v9;
  v11.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  [(ArcadeFooterCollectionViewCell *)&v11 touchesEnded:isa withEvent:v8];
}

@end