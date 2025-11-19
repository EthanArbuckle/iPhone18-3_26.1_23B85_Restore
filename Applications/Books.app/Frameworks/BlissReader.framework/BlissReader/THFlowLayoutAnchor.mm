@interface THFlowLayoutAnchor
- (CGPoint)deltaFromOriginalOffset;
- (CGPoint)originalAbsoluteOffset;
- (THFlowLayoutAnchor)initWithPageController:(id)a3 absoluteOffset:(CGPoint)a4;
- (void)dealloc;
@end

@implementation THFlowLayoutAnchor

- (THFlowLayoutAnchor)initWithPageController:(id)a3 absoluteOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v16.receiver = self;
  v16.super_class = THFlowLayoutAnchor;
  v7 = [(THFlowLayoutAnchor *)&v16 init];
  if (v7)
  {
    v7->_pageController = a3;
    v7->_originalAbsoluteOffset.x = x;
    v7->_originalAbsoluteOffset.y = y;
    [a3 i_rectForSectionLayout];
    TSDSubtractPoints();
    v9 = v8;
    v10 = [a3 bodyIndexClosestToPoint:?];
    v7->_bodyIndex = v10;
    [a3 bodyTopAtIndex:v10];
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