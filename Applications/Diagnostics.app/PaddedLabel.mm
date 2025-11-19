@interface PaddedLabel
- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4;
- (CGSize)intrinsicContentSize;
- (_TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel)initWithCoder:(id)a3;
- (_TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation PaddedLabel

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for PaddedLabel();
  v2 = v10.receiver;
  [(PaddedLabel *)&v10 intrinsicContentSize];
  v4 = *&v2[OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding + 24];
  v5 = v3 + *&v2[OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding] + *&v2[OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding + 16];
  v7 = v6 + *&v2[OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding + 8];

  v8 = v7 + v4;
  v9 = v5;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  v4 = sub_100112DB0(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding), *&self->padding[OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding]);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PaddedLabel();
  v11 = self;
  [(PaddedLabel *)&v12 drawTextInRect:v4, v6, v8, v10];
}

- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4
{
  v6 = sub_100112DB0(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding), *&self->padding[OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v26.receiver = self;
  v26.super_class = type metadata accessor for PaddedLabel();
  v13 = self;
  [(PaddedLabel *)&v26 textRectForBounds:a4 limitedToNumberOfLines:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (_TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = *&UIEdgeInsetsZero.bottom;
  v8 = (self + OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding);
  *v8 = *&UIEdgeInsetsZero.top;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PaddedLabel();
  return [(PaddedLabel *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PaddedLabel();
  v6 = a3;
  v7 = [(PaddedLabel *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end