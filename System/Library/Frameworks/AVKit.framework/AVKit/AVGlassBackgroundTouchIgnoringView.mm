@interface AVGlassBackgroundTouchIgnoringView
- (AVGlassBackgroundTouchIgnoringView)initWithFrame:(CGRect)frame;
- (AVLayoutItemAttributes)layoutAttributes;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (void)_updateLayoutItem;
- (void)didMoveToWindow;
- (void)layoutAttributesDidChange;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setIncluded:(BOOL)included;
- (void)setRemoved:(BOOL)removed;
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
  layoutAttributes = [(AVGlassBackgroundTouchIgnoringView *)self layoutAttributes];
  if ([(AVGlassBackgroundTouchIgnoringView *)self isIncluded])
  {
    v4 = [(AVGlassBackgroundTouchIgnoringView *)self isRemoved]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [layoutAttributes setIncluded:v4];

  layoutAttributes2 = [(AVGlassBackgroundTouchIgnoringView *)self layoutAttributes];
  [layoutAttributes2 setCollapsed:{-[AVGlassBackgroundTouchIgnoringView isCollapsed](self, "isCollapsed")}];
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVGlassBackgroundTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVGlassBackgroundTouchIgnoringView *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
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
  layoutAttributes = [(AVGlassBackgroundTouchIgnoringView *)self layoutAttributes];
  -[AVGlassBackgroundTouchIgnoringView setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
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

- (AVGlassBackgroundTouchIgnoringView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = AVGlassBackgroundTouchIgnoringView;
  result = [(AVGlassBackedView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_collapsed = 0;
    result->_included = 1;
    result->_removed = 0;
  }

  return result;
}

@end