@interface AVTouchIgnoringView
- (AVLayoutItemAttributes)layoutAttributes;
- (AVTouchIgnoringView)initWithFrame:(CGRect)frame;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateLayoutItem;
- (void)layoutAttributesDidChange;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setIncluded:(BOOL)included;
- (void)setRemoved:(BOOL)removed;
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
  layoutAttributes = [(AVTouchIgnoringView *)self layoutAttributes];
  if ([(AVTouchIgnoringView *)self isIncluded])
  {
    v4 = [(AVTouchIgnoringView *)self isRemoved]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [layoutAttributes setIncluded:v4];

  layoutAttributes2 = [(AVTouchIgnoringView *)self layoutAttributes];
  [layoutAttributes2 setCollapsed:{-[AVTouchIgnoringView isCollapsed](self, "isCollapsed")}];
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
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
  layoutAttributes = [(AVTouchIgnoringView *)self layoutAttributes];
  -[AVTouchIgnoringView setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = AVTouchIgnoringView;
  v5 = [(AVTouchIgnoringView *)&v9 hitTest:event withEvent:test.x, test.y];
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

- (AVTouchIgnoringView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = AVTouchIgnoringView;
  result = [(AVTouchIgnoringView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_collapsed = 0;
    result->_included = 1;
    result->_removed = 0;
  }

  return result;
}

@end