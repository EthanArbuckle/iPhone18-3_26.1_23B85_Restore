@interface CRLCanvasAbstractGuide
- (CGRect)snappingObjectFrame;
- (CRLCanvasAbstractGuide)init;
- (void)dealloc;
- (void)setGuideColor:(CGColor *)a3;
- (void)setSnappingObjectFrame:(CGRect)a3;
@end

@implementation CRLCanvasAbstractGuide

- (CRLCanvasAbstractGuide)init
{
  v6.receiver = self;
  v6.super_class = CRLCanvasAbstractGuide;
  v2 = [(CRLCanvasAbstractGuide *)&v6 init];
  if (v2)
  {
    v3 = +[CRLCanvasGuideController guideColor];
    v2->mGuideColor = CGColorRetain([v3 CGColor]);

    size = CGRectNull.size;
    v2->mSnappingObjectFrame.origin = CGRectNull.origin;
    v2->mSnappingObjectFrame.size = size;
  }

  return v2;
}

- (void)setGuideColor:(CGColor *)a3
{
  mGuideColor = self->mGuideColor;
  if (mGuideColor)
  {
    CGColorRelease(mGuideColor);
  }

  self->mGuideColor = CGColorRetain(a3);
}

- (void)setSnappingObjectFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!sub_10011EE4C(self->mSnappingObjectFrame.origin.x, self->mSnappingObjectFrame.origin.y, self->mSnappingObjectFrame.size.width, self->mSnappingObjectFrame.size.height, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height))
  {
    self->mSnappingObjectFrame.origin.x = x;
    self->mSnappingObjectFrame.origin.y = y;
    self->mSnappingObjectFrame.size.width = width;
    self->mSnappingObjectFrame.size.height = height;
    self->mLocationInvalidated = 1;
  }
}

- (void)dealloc
{
  mGuideColor = self->mGuideColor;
  if (mGuideColor)
  {
    CGColorRelease(mGuideColor);
  }

  v4.receiver = self;
  v4.super_class = CRLCanvasAbstractGuide;
  [(CRLCanvasAbstractGuide *)&v4 dealloc];
}

- (CGRect)snappingObjectFrame
{
  x = self->mSnappingObjectFrame.origin.x;
  y = self->mSnappingObjectFrame.origin.y;
  width = self->mSnappingObjectFrame.size.width;
  height = self->mSnappingObjectFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end