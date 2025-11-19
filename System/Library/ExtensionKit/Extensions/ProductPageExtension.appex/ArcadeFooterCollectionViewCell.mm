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
  sub_10035C4EC();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock);
  if (v2)
  {
    v3 = self;
    v4 = sub_10001CE50(v2);
    v2(v4);

    sub_1000167E0(v2);
  }
}

- (void)didTapFootnoteWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10035E170();
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v6 = sub_10077039C();
  v7 = a4;
  v8 = self;
  sub_10035CE70(v6, a4);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  sub_10077039C();
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted) = 0;
  v7 = qword_10093F800;
  v8 = a4;
  v9 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  [*(v6 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel) setTextColor:qword_100949F38];
  isa = sub_10077038C().super.isa;

  v11.receiver = v9;
  v11.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  [(ArcadeFooterCollectionViewCell *)&v11 touchesEnded:isa withEvent:v8];
}

@end