@interface AVGlassBackgroundTouchIgnoringView
- (AVGlassBackgroundTouchIgnoringView)initWithFrame:(CGRect)a3;
- (AVLayoutItemAttributes)layoutAttributes;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (void)_updateLayoutItem;
- (void)didMoveToWindow;
- (void)layoutAttributesDidChange;
- (void)setCollapsed:(BOOL)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setRemoved:(BOOL)a3;
@end

@implementation AVGlassBackgroundTouchIgnoringView

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
  v3 = [(AVGlassBackgroundTouchIgnoringView *)self layoutAttributes];
  if ([(AVGlassBackgroundTouchIgnoringView *)self isIncluded])
  {
    v4 = [(AVGlassBackgroundTouchIgnoringView *)self isRemoved]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [v3 setIncluded:v4];

  v5 = [(AVGlassBackgroundTouchIgnoringView *)self layoutAttributes];
  [v5 setCollapsed:{-[AVGlassBackgroundTouchIgnoringView isCollapsed](self, "isCollapsed")}];
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVGlassBackgroundTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    self->_removed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVGlassBackgroundTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVGlassBackgroundTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVGlassBackgroundTouchIgnoringView *)self isCollapsed]|| ![(AVGlassBackgroundTouchIgnoringView *)self isIncluded])
  {
    return 1;
  }

  return [(AVGlassBackgroundTouchIgnoringView *)self isRemoved];
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVGlassBackgroundTouchIgnoringView *)self layoutAttributes];
  -[AVGlassBackgroundTouchIgnoringView setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
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

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVGlassBackgroundTouchIgnoringView;
  [(AVGlassBackedView *)&v3 didMoveToWindow];
  [(AVView *)self setIgnoresTouches:1];
}

- (AVGlassBackgroundTouchIgnoringView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AVGlassBackgroundTouchIgnoringView;
  result = [(AVGlassBackedView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_collapsed = 0;
    result->_included = 1;
    result->_removed = 0;
  }

  return result;
}

@end