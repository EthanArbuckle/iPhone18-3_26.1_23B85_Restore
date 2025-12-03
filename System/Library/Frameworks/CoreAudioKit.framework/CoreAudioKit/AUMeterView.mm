@interface AUMeterView
- (UIColor)tintColor;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation AUMeterView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUMeterView();
  tintColor = [(AUMeterView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUMeterView();
  colorCopy = color;
  v5 = v6.receiver;
  [(AUMeterView *)&v6 setTintColor:colorCopy];
  sub_237110534();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_237110878();
}

@end