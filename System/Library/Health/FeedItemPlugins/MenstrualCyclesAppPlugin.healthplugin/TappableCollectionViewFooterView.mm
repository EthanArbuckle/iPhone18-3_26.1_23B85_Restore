@interface TappableCollectionViewFooterView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView)initWithFrame:(CGRect)a3;
@end

@implementation TappableCollectionViewFooterView

- (_TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_footerTextView;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7D60]) init];
  v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_highlightedText);
  *v9 = 0;
  v9[1] = 0;
  v10 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_tapCompletion);
  *v10 = nullsub_1;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = type metadata accessor for TappableCollectionViewFooterView();
  v11 = [(TappableCollectionViewFooterView *)&v13 initWithFrame:x, y, width, height];
  sub_29E292128();

  return v11;
}

- (_TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_footerTextView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7D60]) init];
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_highlightedText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32TappableCollectionViewFooterView_tapCompletion);
  *v6 = nullsub_1;
  v6[1] = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v10 = sub_29E2BC904();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BC8D4();
  v14 = a3;
  v15 = self;
  LOBYTE(length) = sub_29E292B4C(v13, location, length);

  (*(v11 + 8))(v13, v10);
  return length & 1;
}

@end