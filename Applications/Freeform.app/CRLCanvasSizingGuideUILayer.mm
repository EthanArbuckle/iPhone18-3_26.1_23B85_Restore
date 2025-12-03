@interface CRLCanvasSizingGuideUILayer
- (id)initForLayout:(id)layout withICC:(id)c showWidth:(BOOL)width showHeight:(BOOL)height;
- (id)initForRect:(CGRect)rect withICC:(id)c showWidth:(BOOL)width showHeight:(BOOL)height;
@end

@implementation CRLCanvasSizingGuideUILayer

- (id)initForRect:(CGRect)rect withICC:(id)c showWidth:(BOOL)width showHeight:(BOOL)height
{
  heightCopy = height;
  widthCopy = width;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cCopy = c;
  v18.receiver = self;
  v18.super_class = CRLCanvasSizingGuideUILayer;
  v14 = [(CRLCanvasSizingGuideUILayer *)&v18 init];
  if (v14)
  {
    if (widthCopy)
    {
      v15 = [[CRLCanvasSpacingGuideUILayer alloc] initWithSpacingRect:0 ofOrientation:cCopy icc:0 useVisibleRect:x, y - (15.0 + 7.0), width, 15.0];
      [(CRLCanvasSizingGuideUILayer *)v14 addSublayer:v15];
    }

    if (heightCopy)
    {
      height = [[CRLCanvasSpacingGuideUILayer alloc] initWithSpacingRect:1 ofOrientation:cCopy icc:0 useVisibleRect:x - (15.0 + 7.0), y, 15.0, height];
      [(CRLCanvasSizingGuideUILayer *)v14 addSublayer:height];
    }
  }

  return v14;
}

- (id)initForLayout:(id)layout withICC:(id)c showWidth:(BOOL)width showHeight:(BOOL)height
{
  heightCopy = height;
  widthCopy = width;
  layoutCopy = layout;
  cCopy = c;
  [cCopy viewScale];
  v13 = v12;
  [layoutCopy boundsForStandardKnobs];
  v14 = [(CRLCanvasSizingGuideUILayer *)self initForRect:cCopy withICC:widthCopy showWidth:heightCopy showHeight:?];

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (layoutCopy)
  {
    [layoutCopy transformInRoot];
    v15 = *&v20;
  }

  else
  {
    v15 = 0.0;
  }

  *&v20 = sub_1004C31F4(v13 * v15);
  *(&v20 + 1) = sub_1004C31F4(v13 * *(&v20 + 1));
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  [v14 setAffineTransform:v17];

  return v14;
}

@end