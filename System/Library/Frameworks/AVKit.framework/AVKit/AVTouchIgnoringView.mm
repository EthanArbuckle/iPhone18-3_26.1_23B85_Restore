@interface AVTouchIgnoringView
- (AVLayoutItemAttributes)layoutAttributes;
- (AVTouchIgnoringView)initWithFrame:(CGRect)a3;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateLayoutItem;
- (void)layoutAttributesDidChange;
- (void)setCollapsed:(BOOL)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setRemoved:(BOOL)a3;
@end

@implementation AVTouchIgnoringView

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateLayoutItem
{
  v3 = [(AVTouchIgnoringView *)self layoutAttributes];
  if ([(AVTouchIgnoringView *)self isIncluded])
  {
    v4 = [(AVTouchIgnoringView *)self isRemoved]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [v3 setIncluded:v4];

  v5 = [(AVTouchIgnoringView *)self layoutAttributes];
  [v5 setCollapsed:{-[AVTouchIgnoringView isCollapsed](self, "isCollapsed")}];
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    self->_removed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVTouchIgnoringView *)self isCollapsed]|| ![(AVTouchIgnoringView *)self isIncluded])
  {
    return 1;
  }

  return [(AVTouchIgnoringView *)self isRemoved];
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVTouchIgnoringView *)self layoutAttributes];
  -[AVTouchIgnoringView setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (AVLayoutItemAttributes)layoutAttributes
{
  layoutAttributes = self->_layoutAttributes;
  if (!layoutAttributes)
  {
    v4 = objc_alloc_init(AVLayoutItemAttributes);
    v5 = self->_layoutAttributes;
    self->_layoutAttributes = v4;

    layoutAttributes = self->_layoutAttributes;
  }

  return layoutAttributes;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVTouchIgnoringView;
  v5 = [(AVTouchIgnoringView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (AVTouchIgnoringView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AVTouchIgnoringView;
  result = [(AVTouchIgnoringView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_collapsed = 0;
    result->_included = 1;
    result->_removed = 0;
  }

  return result;
}

@end