@interface Sidebar.Button
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation Sidebar.Button

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_10003A064(&selRef_isHighlighted);

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_10003A0FC(highlighted, &selRef_setHighlighted_);
}

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = sub_10003A064(&selRef_isSelected);

  return v3 & 1;
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_10003A0FC(selected, &selRef_setSelected_);
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  selfCopy = self;
  sub_10003A27C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end