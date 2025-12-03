@interface THWReviewDraggablePlacardLayout
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)adjustedInsets;
- (NSString)contentImageAccessibilityDescription;
- (THWReviewDraggablePlacardLayout)initWithIndex:(unint64_t)index choice:(id)choice delegate:(id)delegate;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)p_wpLayout;
- (void)dealloc;
- (void)invalidatePlacement;
- (void)setContentImage:(id)image;
- (void)setContentStorage:(id)storage;
- (void)setPlacement:(int)placement;
@end

@implementation THWReviewDraggablePlacardLayout

- (THWReviewDraggablePlacardLayout)initWithIndex:(unint64_t)index choice:(id)choice delegate:(id)delegate
{
  v11.receiver = self;
  v11.super_class = THWReviewDraggablePlacardLayout;
  v8 = [(THWReviewDraggablePlacardLayout *)&v11 initWithInfo:0];
  v9 = v8;
  if (v8)
  {
    v8->_index = index;
    v8->_choice = choice;
    v9->_delegate = delegate;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewDraggablePlacardLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (void)setPlacement:(int)placement
{
  if (self->_placement != placement)
  {
    self->_placement = placement;
    if (self->_contentStorage)
    {
      [(THWReviewDraggablePlacardLayout *)self invalidatePlacement];
    }
  }
}

- (void)invalidatePlacement
{
  [(THWReviewDraggablePlacardLayout *)self invalidateFrame];
  p_wpLayout = [(THWReviewDraggablePlacardLayout *)self p_wpLayout];

  [p_wpLayout invalidateSize];
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
    p_wpLayout = [(THWReviewDraggablePlacardLayout *)self p_wpLayout];
    [p_wpLayout frame];
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
    [p_wpLayout frame];
    TSDSubtractPoints();
    [p_wpLayout offsetGeometryBy:?];
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

- (void)setContentStorage:(id)storage
{
  contentImage = self->_contentImage;
  if (contentImage)
  {

    self->_contentImage = 0;
    p_contentStorage = &self->_contentStorage;
    contentStorage = self->_contentStorage;
    if (contentStorage == storage)
    {
      goto LABEL_6;
    }
  }

  else
  {
    p_contentStorage = &self->_contentStorage;
    contentStorage = self->_contentStorage;
    if (contentStorage == storage)
    {
      return;
    }
  }

  *p_contentStorage = storage;
LABEL_6:

  [(THWContainerLayout *)self invalidate];
}

- (void)setContentImage:(id)image
{
  contentStorage = self->_contentStorage;
  if (contentStorage)
  {

    self->_contentStorage = 0;
    p_contentImage = &self->_contentImage;
    contentImage = self->_contentImage;
    if (contentImage == image)
    {
      goto LABEL_6;
    }
  }

  else
  {
    p_contentImage = &self->_contentImage;
    contentImage = self->_contentImage;
    if (contentImage == image)
    {
      return;
    }
  }

  *p_contentImage = image;
LABEL_6:

  [(THWContainerLayout *)self invalidate];
}

- (NSString)contentImageAccessibilityDescription
{
  choice = [(THWReviewDraggablePlacardLayout *)self choice];

  return [(THWReviewChoice *)choice accessibilityDescription];
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
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

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  width = size.width;
  delegate = self->_delegate;
  if (delegate)
  {
    [(THWReviewDraggablePlacardLayoutDelegate *)delegate draggablePlacardLayoutInsets:self, size.width, size.height];
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

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap
{
  if (outWidth)
  {
    *outWidth = width;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 0.0;
}

@end