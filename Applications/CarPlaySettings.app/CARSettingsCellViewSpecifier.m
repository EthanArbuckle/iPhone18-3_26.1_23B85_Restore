@interface CARSettingsCellViewSpecifier
- (BOOL)canBecomeFocused;
- (CARSettingsCellViewProtocol)cellView;
- (CARSettingsCellViewSpecifier)initWithView:(id)a3 actionBlock:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (void)setFocused:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation CARSettingsCellViewSpecifier

- (CARSettingsCellViewSpecifier)initWithView:(id)a3 actionBlock:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CARSettingsCellViewSpecifier;
  v8 = [(CARSettingsCellSpecifier *)&v11 initWithTitle:0 image:0 icon:0 accessoryType:0 actionBlock:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_view, a3);
  }

  return v9;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CARSettingsCellViewSpecifier *)self view];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CARSettingsCellViewSpecifier *)self view];
  [v5 systemLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CARSettingsCellViewProtocol)cellView
{
  v3 = [(CARSettingsCellViewSpecifier *)self view];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___CARSettingsCellViewProtocol];

  if (v4)
  {
    v5 = [(CARSettingsCellViewSpecifier *)self view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canBecomeFocused
{
  v2 = [(CARSettingsCellViewSpecifier *)self view];
  v3 = [v2 canBecomeFocused];

  return v3;
}

- (void)setFocused:(BOOL)a3
{
  if (self->_focused != a3)
  {
    v4 = a3;
    self->_focused = a3;
    v5 = [(CARSettingsCellViewSpecifier *)self cellView];
    [v5 setCellFocused:v4];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v4 = a3;
    self->_highlighted = a3;
    v5 = [(CARSettingsCellViewSpecifier *)self cellView];
    [v5 setCellHighlighted:v4];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    v4 = a3;
    self->_selected = a3;
    v5 = [(CARSettingsCellViewSpecifier *)self cellView];
    [v5 setCellSelected:v4];
  }
}

@end