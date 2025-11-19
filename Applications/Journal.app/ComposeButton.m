@interface ComposeButton
- (_TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton)initWithCoder:(id)a3;
- (_TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton)initWithFrame:(CGRect)a3;
@end

@implementation ComposeButton

- (_TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (self + OBJC_IVAR____TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton_buttonTapped);
  *v7 = DebugData.init(name:);
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ComposeButton();
  v8 = [(ComposeButton *)&v10 initWithFrame:x, y, width, height];
  sub_100011B44();

  return v8;
}

- (_TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton_buttonTapped);
  *v4 = DebugData.init(name:);
  v4[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ComposeButton();
  v5 = a3;
  v6 = [(ComposeButton *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_100011B44();
  }

  return v7;
}

@end