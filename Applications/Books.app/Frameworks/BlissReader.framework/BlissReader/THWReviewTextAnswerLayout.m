@interface THWReviewTextAnswerLayout
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)labelFrame;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGSize)adjustedInsets;
- (THWReviewTextAnswerLayout)initWithChoice:(id)a3 index:(unint64_t)a4 delegate:(id)a5;
- (double)p_maxTextWidth;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (double)textWidth;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)p_wpLayout;
- (void)dealloc;
- (void)setHorizontalOffset:(double)a3;
@end

@implementation THWReviewTextAnswerLayout

- (THWReviewTextAnswerLayout)initWithChoice:(id)a3 index:(unint64_t)a4 delegate:(id)a5
{
  v11.receiver = self;
  v11.super_class = THWReviewTextAnswerLayout;
  v8 = [(THWReviewTextAnswerLayout *)&v11 initWithInfo:0];
  v9 = v8;
  if (v8)
  {
    v8->_index = a4;
    v8->_choice = a3;
    v9->_delegate = a5;
    v9->_styleProvider = [[THWReviewTextAnswerStyleProvider alloc] initWithIndex:a4 storage:[(THWReviewChoice *)v9->_choice contentStorage] listLabelStyle:[(THWReviewTextAnswerLayoutDelegate *)v9->_delegate reviewTextAnswerLayoutListLabelParagraphStyle:v9]];
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
  height = a4.height;
  width = a4.width;
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

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  if (a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

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

- (void)setHorizontalOffset:(double)a3
{
  if (self->_horizontalOffset != a3)
  {
    [-[THWReviewTextAnswerLayout p_wpLayout](self "p_wpLayout")];
    self->_horizontalOffset = a3;
  }
}

- (CGRect)labelFrame
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v6 = [(THWReviewTextAnswerLayout *)self p_wpLayout];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(v6 "columns")];
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