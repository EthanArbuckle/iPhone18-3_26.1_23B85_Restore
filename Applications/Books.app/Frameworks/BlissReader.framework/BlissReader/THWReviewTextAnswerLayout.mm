@interface THWReviewTextAnswerLayout
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)labelFrame;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)adjustedInsets;
- (THWReviewTextAnswerLayout)initWithChoice:(id)choice index:(unint64_t)index delegate:(id)delegate;
- (double)p_maxTextWidth;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (double)textWidth;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)p_wpLayout;
- (void)dealloc;
- (void)setHorizontalOffset:(double)offset;
@end

@implementation THWReviewTextAnswerLayout

- (THWReviewTextAnswerLayout)initWithChoice:(id)choice index:(unint64_t)index delegate:(id)delegate
{
  v11.receiver = self;
  v11.super_class = THWReviewTextAnswerLayout;
  v8 = [(THWReviewTextAnswerLayout *)&v11 initWithInfo:0];
  v9 = v8;
  if (v8)
  {
    v8->_index = index;
    v8->_choice = choice;
    v9->_delegate = delegate;
    v9->_styleProvider = [[THWReviewTextAnswerStyleProvider alloc] initWithIndex:index storage:[(THWReviewChoice *)v9->_choice contentStorage] listLabelStyle:[(THWReviewTextAnswerLayoutDelegate *)v9->_delegate reviewTextAnswerLayoutListLabelParagraphStyle:v9]];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewTextAnswerLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)childInfosForLayout
{
  result = [(THWReviewChoice *)self->_choice contentStorage];
  if (result)
  {

    return [NSArray arrayWithObject:result];
  }

  return result;
}

- (id)computeLayoutGeometry
{
  [-[THWReviewTextAnswerLayout p_wpLayout](self "p_wpLayout")];
  v4 = v3;
  [(THWReviewTextAnswerLayout *)self p_maxTextWidth];
  if (v4 < 6.0)
  {
    v4 = 6.0;
  }

  v6 = [[TSDLayoutGeometry alloc] initWithFrame:{0.0, 0.0, v5, v4}];

  return v6;
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
  width = size.width;
  horizontalOffset = self->_horizontalOffset;
  v7 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v7;
  result.origin.x = horizontalOffset;
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

- (double)p_maxTextWidth
{
  delegate = self->_delegate;
  if (!delegate)
  {
    return 100.0;
  }

  [(THWReviewTextAnswerLayoutDelegate *)delegate reviewTextAnswerLayoutWidth:self];
  return result;
}

- (id)p_wpLayout
{
  result = [(THWReviewChoice *)self->_choice contentStorage];
  if (result)
  {
    v4 = result;
    objc_opt_class();
    [-[THWReviewTextAnswerLayout layoutController](self "layoutController")];

    return TSUDynamicCast();
  }

  return result;
}

- (double)textWidth
{
  v2 = [-[THWReviewTextAnswerLayout p_wpLayout](self "p_wpLayout")];

  [v2 size];
  return result;
}

- (void)setHorizontalOffset:(double)offset
{
  if (self->_horizontalOffset != offset)
  {
    [-[THWReviewTextAnswerLayout p_wpLayout](self "p_wpLayout")];
    self->_horizontalOffset = offset;
  }
}

- (CGRect)labelFrame
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  p_wpLayout = [(THWReviewTextAnswerLayout *)self p_wpLayout];
  if (p_wpLayout)
  {
    v7 = p_wpLayout;
    v8 = [objc_msgSend(p_wpLayout "columns")];
    if ([v8 countLines])
    {
      [v8 labelBoundsOfLineFragmentAtIndex:0];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [v7 transform];
      v22.origin.x = v10;
      v22.origin.y = v12;
      v22.size.width = v14;
      v22.size.height = v16;
      v23 = CGRectApplyAffineTransform(v22, &v21);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
    }
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end