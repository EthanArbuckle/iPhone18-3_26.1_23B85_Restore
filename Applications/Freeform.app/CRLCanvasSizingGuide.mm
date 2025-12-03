@interface CRLCanvasSizingGuide
- (CRLCanvasSizingGuide)initWithType:(int64_t)type frame:(CGRect)frame;
- (id)description;
- (id)renderableWithICC:(id)c;
@end

@implementation CRLCanvasSizingGuide

- (CRLCanvasSizingGuide)initWithType:(int64_t)type frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    v9->mIsHorizontal = type == 0;
    if (type)
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

- (id)renderableWithICC:(id)c
{
  cCopy = c;
  v5 = +[CRLCanvasRenderable renderable];
  v6 = [[CRLCanvasSizingGuideUILayer alloc] initForRect:cCopy withICC:self->mIsHorizontal showWidth:!self->mIsHorizontal showHeight:self->mAlignmentFrame.origin.x, self->mAlignmentFrame.origin.y, self->mAlignmentFrame.size.width, self->mAlignmentFrame.size.height];
  v7 = [CRLCanvasRenderable renderableFromLayer:v6];
  [v5 addSubrenderable:v7];

  v8 = [CRLCanvasSizingGuideUILayer alloc];
  [(CRLCanvasAbstractGuide *)self snappingObjectFrame];
  v9 = [(CRLCanvasSizingGuideUILayer *)v8 initForRect:cCopy withICC:self->mIsHorizontal showWidth:!self->mIsHorizontal showHeight:?];

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