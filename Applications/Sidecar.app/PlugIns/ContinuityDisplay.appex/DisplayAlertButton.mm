@interface DisplayAlertButton
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation DisplayAlertButton

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_100021F74(x, y);

  return v9;
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_1000222A4(&selRef_isHighlighted);

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_10002233C(highlighted, &selRef_setHighlighted_);
}

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = sub_1000222A4(&selRef_isSelected);

  return v3 & 1;
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_10002233C(selected, &selRef_setSelected_);
}

@end