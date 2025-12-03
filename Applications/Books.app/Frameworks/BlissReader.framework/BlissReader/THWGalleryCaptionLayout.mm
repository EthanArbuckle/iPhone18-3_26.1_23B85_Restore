@interface THWGalleryCaptionLayout
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)adjustedInsets;
- (THWGalleryCaptionLayout)initWithDelegate:(id)delegate;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)p_wpLayoutParent;
- (id)styleProviderForLayout:(id)layout;
- (void)captionStorageUpdated;
@end

@implementation THWGalleryCaptionLayout

- (THWGalleryCaptionLayout)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = THWGalleryCaptionLayout;
  result = [(THWGalleryCaptionLayout *)&v5 initWithInfo:0];
  if (result)
  {
    result->_delegate = delegate;
  }

  return result;
}

- (id)computeLayoutGeometry
{
  [(THWGalleryCaptionLayoutDelegate *)self->_delegate galleryCaptionPosition];
  v4 = v3;
  [(THWGalleryCaptionLayoutDelegate *)self->_delegate galleryCaptionMargin];
  v6 = v5;
  [(THWGalleryCaptionLayoutDelegate *)self->_delegate galleryCaptionWidth];
  v8 = v7;
  v9 = [-[THWGalleryCaptionLayout children](self "children")];
  if (v9)
  {
    [v9 frame];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [[TSDLayoutGeometry alloc] initWithFrame:{v6, v4, v8 + v6 * -2.0, v11}];

  return v12;
}

- (id)childInfosForLayout
{
  result = [(THWGalleryCaptionLayoutDelegate *)self->_delegate galleryCaptionStorage];
  if (result)
  {

    return [NSArray arrayWithObject:result];
  }

  return result;
}

- (void)captionStorageUpdated
{
  [(THWGalleryCaptionLayout *)self invalidateFrame];

  [(THWGalleryCaptionLayout *)self invalidateChildren];
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
  height = size.height;
  [(THWGalleryCaptionLayoutDelegate *)self->_delegate galleryCaptionMargin:layout];
  v7 = v6;
  [(THWGalleryCaptionLayoutDelegate *)self->_delegate galleryCaptionWidth];
  v9 = v8 + v7 * -2.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = height;
  result.size.height = v12;
  result.size.width = v9;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)styleProviderForLayout:(id)layout
{
  p_wpLayoutParent = [(THWGalleryCaptionLayout *)self p_wpLayoutParent];

  return [p_wpLayoutParent styleProviderForLayout:layout];
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
  if (index)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

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

- (id)p_wpLayoutParent
{
  [(THWGalleryCaptionLayout *)self parent];

  return TSUProtocolCast();
}

@end