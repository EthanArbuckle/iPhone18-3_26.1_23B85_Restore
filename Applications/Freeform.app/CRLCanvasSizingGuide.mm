@interface CRLCanvasSizingGuide
- (CRLCanvasSizingGuide)initWithType:(int64_t)a3 frame:(CGRect)a4;
- (id)description;
- (id)renderableWithICC:(id)a3;
@end

@implementation CRLCanvasSizingGuide

- (CRLCanvasSizingGuide)initWithType:(int64_t)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13.receiver = self;
  v13.super_class = CRLCanvasSizingGuide;
  v9 = [(CRLCanvasAbstractGuide *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->mAlignmentFrame.origin.x = x;
    v9->mAlignmentFrame.origin.y = y;
    v9->mAlignmentFrame.size.width = width;
    v9->mAlignmentFrame.size.height = height;
    v9->mIsHorizontal = a3 == 0;
    if (a3)
    {
      v11 = height;
    }

    else
    {
      v11 = width;
    }

    [(CRLCanvasAbstractGuide *)v9 setOffset:v11];
  }

  return v10;
}

- (id)renderableWithICC:(id)a3
{
  v4 = a3;
  v5 = +[CRLCanvasRenderable renderable];
  v6 = [[CRLCanvasSizingGuideUILayer alloc] initForRect:v4 withICC:self->mIsHorizontal showWidth:!self->mIsHorizontal showHeight:self->mAlignmentFrame.origin.x, self->mAlignmentFrame.origin.y, self->mAlignmentFrame.size.width, self->mAlignmentFrame.size.height];
  v7 = [CRLCanvasRenderable renderableFromLayer:v6];
  [v5 addSubrenderable:v7];

  v8 = [CRLCanvasSizingGuideUILayer alloc];
  [(CRLCanvasAbstractGuide *)self snappingObjectFrame];
  v9 = [(CRLCanvasSizingGuideUILayer *)v8 initForRect:v4 withICC:self->mIsHorizontal showWidth:!self->mIsHorizontal showHeight:?];

  v10 = [CRLCanvasRenderable renderableFromLayer:v9];
  [v5 addSubrenderable:v10];

  return v5;
}

- (id)description
{
  if (self->mIsHorizontal)
  {
    v2 = @"Horizontal";
  }

  else
  {
    v2 = @"Vertical";
  }

  return [NSString stringWithFormat:@"<CRLCanvasSizingGuide %p: %@ sizing guide with offset %f>", self, v2, *&self->super.mOffset];
}

@end