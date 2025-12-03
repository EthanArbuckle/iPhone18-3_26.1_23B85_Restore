@interface AUGenericViewClumpBackground
- (UIColor)tintColor;
- (_TtC12CoreAudioKit28AUGenericViewClumpBackground)initWithCoder:(id)coder;
- (_TtC12CoreAudioKit28AUGenericViewClumpBackground)initWithFrame:(CGRect)frame;
- (void)setTintColor:(id)color;
@end

@implementation AUGenericViewClumpBackground

- (_TtC12CoreAudioKit28AUGenericViewClumpBackground)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AUGenericViewClumpBackground();
  height = [(AUGenericViewClumpBackground *)&v9 initWithFrame:x, y, width, height];
  sub_23717E048();

  return height;
}

- (_TtC12CoreAudioKit28AUGenericViewClumpBackground)initWithCoder:(id)coder
{
  result = sub_2371969DC();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUGenericViewClumpBackground();
  tintColor = [(AUGenericViewClumpBackground *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUGenericViewClumpBackground();
  colorCopy = color;
  v5 = v6.receiver;
  [(AUGenericViewClumpBackground *)&v6 setTintColor:colorCopy];
  sub_23717E334();
}

@end