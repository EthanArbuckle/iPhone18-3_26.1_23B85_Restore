@interface AUGenericViewClumpBackground
- (UIColor)tintColor;
- (_TtC12CoreAudioKit28AUGenericViewClumpBackground)initWithCoder:(id)a3;
- (_TtC12CoreAudioKit28AUGenericViewClumpBackground)initWithFrame:(CGRect)a3;
- (void)setTintColor:(id)a3;
@end

@implementation AUGenericViewClumpBackground

- (_TtC12CoreAudioKit28AUGenericViewClumpBackground)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AUGenericViewClumpBackground();
  v7 = [(AUGenericViewClumpBackground *)&v9 initWithFrame:x, y, width, height];
  sub_23717E048();

  return v7;
}

- (_TtC12CoreAudioKit28AUGenericViewClumpBackground)initWithCoder:(id)a3
{
  result = sub_2371969DC();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUGenericViewClumpBackground();
  v2 = [(AUGenericViewClumpBackground *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUGenericViewClumpBackground();
  v4 = a3;
  v5 = v6.receiver;
  [(AUGenericViewClumpBackground *)&v6 setTintColor:v4];
  sub_23717E334();
}

@end