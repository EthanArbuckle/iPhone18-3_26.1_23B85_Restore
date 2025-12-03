@interface THFlowLayoutAnchor
- (CGPoint)deltaFromOriginalOffset;
- (CGPoint)originalAbsoluteOffset;
- (THFlowLayoutAnchor)initWithPageController:(id)controller absoluteOffset:(CGPoint)offset;
- (void)dealloc;
@end

@implementation THFlowLayoutAnchor

- (THFlowLayoutAnchor)initWithPageController:(id)controller absoluteOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v16.receiver = self;
  v16.super_class = THFlowLayoutAnchor;
  v7 = [(THFlowLayoutAnchor *)&v16 init];
  if (v7)
  {
    v7->_pageController = controller;
    v7->_originalAbsoluteOffset.x = x;
    v7->_originalAbsoluteOffset.y = y;
    [controller i_rectForSectionLayout];
    TSDSubtractPoints();
    v9 = v8;
    v10 = [controller bodyIndexClosestToPoint:?];
    v7->_bodyIndex = v10;
    [controller bodyTopAtIndex:v10];
    v7->_offsetFromBodyTop = v9 - v11;
    [(THFlowLayoutAnchor *)v7 deltaFromOriginalOffset];
    if (v13 != CGPointZero.x || v12 != CGPointZero.y)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THFlowLayoutAnchor;
  [(THFlowLayoutAnchor *)&v3 dealloc];
}

- (CGPoint)deltaFromOriginalOffset
{
  [(THFlowPageController *)self->_pageController i_rectForSectionLayout];
  [(THFlowPageController *)self->_pageController bodyTopAtIndex:self->_bodyIndex];

  TSDSubtractPoints();
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)originalAbsoluteOffset
{
  x = self->_originalAbsoluteOffset.x;
  y = self->_originalAbsoluteOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end