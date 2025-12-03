@interface ComposeButton
- (_TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton)initWithCoder:(id)coder;
- (_TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton)initWithFrame:(CGRect)frame;
@end

@implementation ComposeButton

- (_TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (self + OBJC_IVAR____TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton_buttonTapped);
  *v7 = DebugData.init(name:);
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ComposeButton();
  height = [(ComposeButton *)&v10 initWithFrame:x, y, width, height];
  sub_100011B44();

  return height;
}

- (_TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton_buttonTapped);
  *v4 = DebugData.init(name:);
  v4[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ComposeButton();
  coderCopy = coder;
  v6 = [(ComposeButton *)&v10 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_100011B44();
  }

  return v7;
}

@end