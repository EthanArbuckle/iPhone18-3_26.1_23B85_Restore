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
  sub_10056DD5C();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock);
  if (v2)
  {
    v3 = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (void)didTapFootnoteWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10056FA28();
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v6 = sub_100753484();
  v7 = a4;
  v8 = self;
  sub_10056E6E0(v6, a4);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  sub_100753484();
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_isHighlighted) = 0;
  v7 = qword_100920308;
  v8 = a4;
  v9 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel) setTextColor:qword_100929680];
  isa = sub_100753474().super.isa;

  v11.receiver = v9;
  v11.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  [(ArcadeFooterCollectionViewCell *)&v11 touchesEnded:isa withEvent:v8];
}

@end