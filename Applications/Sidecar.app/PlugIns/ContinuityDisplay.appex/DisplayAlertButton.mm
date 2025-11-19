@interface DisplayAlertButton
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation DisplayAlertButton

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  v9 = sub_100021F74(x, y);

  return v9;
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_1000222A4(&selRef_isHighlighted);

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_10002233C(a3, &selRef_setHighlighted_);
}

- (BOOL)isSelected
{
  v2 = self;
  v3 = sub_1000222A4(&selRef_isSelected);

  return v3 & 1;
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_10002233C(a3, &selRef_setSelected_);
}

@end