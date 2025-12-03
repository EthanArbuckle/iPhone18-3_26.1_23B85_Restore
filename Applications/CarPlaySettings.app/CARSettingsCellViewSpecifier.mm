@interface CARSettingsCellViewSpecifier
- (BOOL)canBecomeFocused;
- (CARSettingsCellViewProtocol)cellView;
- (CARSettingsCellViewSpecifier)initWithView:(id)view actionBlock:(id)block;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (void)setFocused:(BOOL)focused;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation CARSettingsCellViewSpecifier

- (CARSettingsCellViewSpecifier)initWithView:(id)view actionBlock:(id)block
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = CARSettingsCellViewSpecifier;
  v8 = [(CARSettingsCellSpecifier *)&v11 initWithTitle:0 image:0 icon:0 accessoryType:0 actionBlock:block];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_view, view);
  }

  return v9;
}

- (CGSize)intrinsicContentSize
{
  view = [(CARSettingsCellViewSpecifier *)self view];
  [view intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(CARSettingsCellViewSpecifier *)self view];
  [view systemLayoutSizeFittingSize:{width, height}];
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
  view = [(CARSettingsCellViewSpecifier *)self view];
  v4 = [view conformsToProtocol:&OBJC_PROTOCOL___CARSettingsCellViewProtocol];

  if (v4)
  {
    view2 = [(CARSettingsCellViewSpecifier *)self view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

- (BOOL)canBecomeFocused
{
  view = [(CARSettingsCellViewSpecifier *)self view];
  canBecomeFocused = [view canBecomeFocused];

  return canBecomeFocused;
}

- (void)setFocused:(BOOL)focused
{
  if (self->_focused != focused)
  {
    focusedCopy = focused;
    self->_focused = focused;
    cellView = [(CARSettingsCellViewSpecifier *)self cellView];
    [cellView setCellFocused:focusedCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    cellView = [(CARSettingsCellViewSpecifier *)self cellView];
    [cellView setCellHighlighted:highlightedCopy];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    selectedCopy = selected;
    self->_selected = selected;
    cellView = [(CARSettingsCellViewSpecifier *)self cellView];
    [cellView setCellSelected:selectedCopy];
  }
}

@end