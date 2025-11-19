@interface THWReviewDraggablePlacardLayout
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGSize)adjustedInsets;
- (NSString)contentImageAccessibilityDescription;
- (THWReviewDraggablePlacardLayout)initWithIndex:(unint64_t)a3 choice:(id)a4 delegate:(id)a5;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)p_wpLayout;
- (void)dealloc;
- (void)invalidatePlacement;
- (void)setContentImage:(id)a3;
- (void)setContentStorage:(id)a3;
- (void)setPlacement:(int)a3;
@end

@implementation THWReviewDraggablePlacardLayout

- (THWReviewDraggablePlacardLayout)initWithIndex:(unint64_t)a3 choice:(id)a4 delegate:(id)a5
{
  v11.receiver = self;
  v11.super_class = THWReviewDraggablePlacardLayout;
  v8 = [(THWReviewDraggablePlacardLayout *)&v11 initWithInfo:0];
  v9 = v8;
  if (v8)
  {
    v8->_index = a3;
    v8->_choice = a4;
    v9->_delegate = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewDraggablePlacardLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (void)setPlacement:(int)a3
{
  if (self->_placement != a3)
  {
    self->_placement = a3;
    if (self->_contentStorage)
    {
      [(THWReviewDraggablePlacardLayout *)self invalidatePlacement];
    }
  }
}

- (void)invalidatePlacement
{
  [(THWReviewDraggablePlacardLayout *)self invalidateFrame];
  v3 = [(THWReviewDraggablePlacardLayout *)self p_wpLayout];

  [v3 invalidateSize];
}

- (id)p_wpLayout
{
  if (!self->_contentStorage)
  {
    return 0;
  }

  objc_opt_class();
  [-[THWReviewDraggablePlacardLayout layoutController](self "layoutController")];

  return TSUDynamicCast();
}

- (id)computeLayoutGeometry
{
  delegate = self->_delegate;
  if (delegate)
  {
    [(THWReviewDraggablePlacardLayoutDelegate *)delegate draggablePlacardLayoutInsets:self];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = TSDEdgeInsetsZero[0].f64[0];
    v7 = TSDEdgeInsetsZero[0].f64[1];
    v9 = TSDEdgeInsetsZero[1].f64[0];
    v11 = TSDEdgeInsetsZero[1].f64[1];
  }

  contentImage = self->_contentImage;
  if (contentImage)
  {
    v13 = self->_delegate;
    [(TSUImage *)contentImage size];
    if (v13)
    {
      [(THWReviewDraggablePlacardLayoutDelegate *)v13 draggablePlacardLayout:self imageSizeForSize:?];
    }

    width = v11 + v7 + v14;
    height = v9 + v5 + v15;
  }

  else if (self->_contentStorage)
  {
    v18 = [(THWReviewDraggablePlacardLayout *)self p_wpLayout];
    [v18 frame];
    v20 = v19;
    v22 = v5 + v21;
    v23 = self->_delegate;
    if (self->_placement)
    {
      if (v23)
      {
        [(THWReviewDraggablePlacardLayoutDelegate *)v23 draggablePlacardLayoutTextInsets:self];
      }

      else
      {
        v24 = TSDEdgeInsetsZero[0].f64[1];
        v25 = TSDEdgeInsetsZero[1].f64[1];
      }

      width = v20 + v24 + v25;
    }

    else
    {
      [(THWReviewDraggablePlacardLayoutDelegate *)v23 draggablePlacardLayoutTextWidth:self];
      width = v11 + v7 + v26;
    }

    height = v9 + v22;
    [v18 frame];
    TSDSubtractPoints();
    [v18 offsetGeometryBy:?];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v27 = self->_delegate;
  if (v27)
  {
    [(THWReviewDraggablePlacardLayoutDelegate *)v27 draggablePlacardLayout:self originForSize:width, height];
  }

  TSDRectWithOriginAndSize();
  v32 = [[TSDLayoutGeometry alloc] initWithFrame:{v28, v29, v30, v31}];

  return v32;
}

- (id)childInfosForLayout
{
  if (self->_contentStorage)
  {
    return [NSArray arrayWithObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)setContentStorage:(id)a3
{
  contentImage = self->_contentImage;
  if (contentImage)
  {

    self->_contentImage = 0;
    p_contentStorage = &self->_contentStorage;
    contentStorage = self->_contentStorage;
    if (contentStorage == a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    p_contentStorage = &self->_contentStorage;
    contentStorage = self->_contentStorage;
    if (contentStorage == a3)
    {
      return;
    }
  }

  *p_contentStorage = a3;
LABEL_6:

  [(THWContainerLayout *)self invalidate];
}

- (void)setContentImage:(id)a3
{
  contentStorage = self->_contentStorage;
  if (contentStorage)
  {

    self->_contentStorage = 0;
    p_contentImage = &self->_contentImage;
    contentImage = self->_contentImage;
    if (contentImage == a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    p_contentImage = &self->_contentImage;
    contentImage = self->_contentImage;
    if (contentImage == a3)
    {
      return;
    }
  }

  *p_contentImage = a3;
LABEL_6:

  [(THWContainerLayout *)self invalidate];
}

- (NSString)contentImageAccessibilityDescription
{
  v2 = [(THWReviewDraggablePlacardLayout *)self choice];

  return [(THWReviewChoice *)v2 accessibilityDescription];
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  width = a4.width;
  delegate = self->_delegate;
  if (delegate)
  {
    [(THWReviewDraggablePlacardLayoutDelegate *)delegate draggablePlacardLayoutInsets:self, a4.width, a4.height];
    v8 = v7;
    v10 = v9;
    delegate = self->_delegate;
  }

  else
  {
    v8 = TSDEdgeInsetsZero[0].f64[0];
    v10 = TSDEdgeInsetsZero[1].f64[0];
  }

  [(THWReviewDraggablePlacardLayoutDelegate *)delegate draggablePlacardLayoutTextHeight:self];
  v12 = v11;
  v13 = v8;
  v14 = v10;
  v15 = width;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGSize)adjustedInsets
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  if (a5)
  {
    *a5 = a4;
  }

  if (a6)
  {
    *a6 = 0.0;
  }

  return 0.0;
}

@end