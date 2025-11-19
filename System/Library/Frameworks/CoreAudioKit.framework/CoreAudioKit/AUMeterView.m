@interface AUMeterView
- (UIColor)tintColor;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation AUMeterView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUMeterView();
  v2 = [(AUMeterView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUMeterView();
  v4 = a3;
  v5 = v6.receiver;
  [(AUMeterView *)&v6 setTintColor:v4];
  sub_237110534();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_237110878();
}

@end