@interface CRLCanvasSizingGuideUILayer
- (id)initForLayout:(id)a3 withICC:(id)a4 showWidth:(BOOL)a5 showHeight:(BOOL)a6;
- (id)initForRect:(CGRect)a3 withICC:(id)a4 showWidth:(BOOL)a5 showHeight:(BOOL)a6;
@end

@implementation CRLCanvasSizingGuideUILayer

- (id)initForRect:(CGRect)a3 withICC:(id)a4 showWidth:(BOOL)a5 showHeight:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v18.receiver = self;
  v18.super_class = CRLCanvasSizingGuideUILayer;
  v14 = [(CRLCanvasSizingGuideUILayer *)&v18 init];
  if (v14)
  {
    if (v7)
    {
      v15 = [[CRLCanvasSpacingGuideUILayer alloc] initWithSpacingRect:0 ofOrientation:v13 icc:0 useVisibleRect:x, y - (15.0 + 7.0), width, 15.0];
      [(CRLCanvasSizingGuideUILayer *)v14 addSublayer:v15];
    }

    if (v6)
    {
      v16 = [[CRLCanvasSpacingGuideUILayer alloc] initWithSpacingRect:1 ofOrientation:v13 icc:0 useVisibleRect:x - (15.0 + 7.0), y, 15.0, height];
      [(CRLCanvasSizingGuideUILayer *)v14 addSublayer:v16];
    }
  }

  return v14;
}

- (id)initForLayout:(id)a3 withICC:(id)a4 showWidth:(BOOL)a5 showHeight:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  [v11 viewScale];
  v13 = v12;
  [v10 boundsForStandardKnobs];
  v14 = [(CRLCanvasSizingGuideUILayer *)self initForRect:v11 withICC:v7 showWidth:v6 showHeight:?];

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (v10)
  {
    [v10 transformInRoot];
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