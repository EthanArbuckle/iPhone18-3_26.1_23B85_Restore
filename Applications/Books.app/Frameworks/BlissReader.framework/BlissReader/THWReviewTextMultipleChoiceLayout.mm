@interface THWReviewTextMultipleChoiceLayout
- (BOOL)imageIsAtSide;
- (BOOL)p_contentIsScrollable;
- (CGRect)answersFrame;
- (CGRect)contentFrame;
- (CGRect)imageFrame;
- (CGSize)answersSize;
- (CGSize)contentSize;
- (CGSize)imageSize;
- (CGSize)minContentSize;
- (CGSize)p_answersSizeForWidth:(double)a3;
- (CGSize)p_maxSizeWithImageSize:(CGSize)a3;
- (THWReviewTextMultipleChoiceLayout)initWithQuestion:(id)a3 index:(unint64_t)a4 delegate:(id)a5;
- (UIEdgeInsets)stackedControlContainerInsets:(id)a3;
- (double)p_binSearchAnswersWidth:(double)a3 maxWidth:(double)a4 naturalWidth:(double)a5 height:(double)a6;
- (double)stackedControlContainerMinHeight:(id)a3;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)layoutForChoiceIndex:(unint64_t)a3;
- (id)layoutGeometryForLayout:(id)a3;
- (int)p_imagePlacement;
- (void)dealloc;
- (void)invalidateSize;
- (void)p_invalidateCachedGeometry;
- (void)p_setupAnswerLayouts;
@end

@implementation THWReviewTextMultipleChoiceLayout

- (THWReviewTextMultipleChoiceLayout)initWithQuestion:(id)a3 index:(unint64_t)a4 delegate:(id)a5
{
  v11.receiver = self;
  v11.super_class = THWReviewTextMultipleChoiceLayout;
  v8 = [(THWReviewTextMultipleChoiceLayout *)&v11 initWithInfo:0];
  v9 = v8;
  if (v8)
  {
    [(THWReviewTextMultipleChoiceLayout *)v8 p_invalidateCachedGeometry];
    v9->_questionIndex = a4;
    v9->_question = a3;
    v9->_answerStack = [[THWStackedControlContainer alloc] initWithDelegate:v9];
    v9->_delegate = a5;
    [(THWReviewTextMultipleChoiceLayout *)v9 p_setupAnswerLayouts];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewTextMultipleChoiceLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (void)invalidateSize
{
  v3.receiver = self;
  v3.super_class = THWReviewTextMultipleChoiceLayout;
  [(THWReviewTextMultipleChoiceLayout *)&v3 invalidateSize];
  [(THWReviewTextMultipleChoiceLayout *)self p_invalidateCachedGeometry];
}

- (void)p_invalidateCachedGeometry
{
  v2 = CGSizeZero;
  self->_answersSize = CGSizeZero;
  self->_imageSize = v2;
  self->_contentSize = v2;
  origin = CGRectNull.origin;
  size = CGRectNull.size;
  self->_imageFrame.origin = CGRectNull.origin;
  self->_imageFrame.size = size;
  self->_answersFrame.origin = origin;
  self->_answersFrame.size = size;
  self->_contentFrame.origin = origin;
  self->_contentFrame.size = size;
}

- (CGSize)minContentSize
{
  [(THWReviewQuestionLayoutDelegate *)self->_delegate questionAnswersLayoutSize:self];
  result.height = v3;
  result.width = v2;
  return result;
}

- (int)p_imagePlacement
{
  v3 = [(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imagePlacement];
  v4 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  if (v4 == &dword_0 + 2)
  {
    return 2;
  }

  if (v4 == &dword_0 + 1)
  {
    return 1;
  }

  return v3;
}

- (BOOL)imageIsAtSide
{
  v3 = [(THWReviewTextMultipleChoiceLayout *)self p_imagePlacement];
  v4 = [(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageInfo];
  v6 = v3 == 2 || v3 == 4;
  return v4 && v6;
}

- (CGSize)p_answersSizeForWidth:(double)a3
{
  v4 = [[THWReviewTextMultipleChoiceLayoutHelper alloc] initWithQuestion:[(THWReviewTextMultipleChoiceLayout *)self question]];
  [(THWReviewTextMultipleChoiceLayoutHelper *)v4 answerStackSizeForWidth:a3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)p_binSearchAnswersWidth:(double)a3 maxWidth:(double)a4 naturalWidth:(double)a5 height:(double)a6
{
  if (a4 - a3 < 1.0)
  {
    return a4;
  }

  [(THWReviewTextMultipleChoiceLayout *)self p_answersSizeForWidth:(a3 + a4) * 0.5];
  if (v13 > a6 && v12 < a5)
  {
    v15 = (a3 + a4) * 0.5;
    v16 = a4;
  }

  else
  {
    v15 = a3;
    v16 = (a3 + a4) * 0.5;
  }

  [(THWReviewTextMultipleChoiceLayout *)self p_binSearchAnswersWidth:v15 maxWidth:v16 naturalWidth:a5 height:a6];
  return result;
}

- (CGSize)p_maxSizeWithImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(THWReviewTextMultipleChoiceLayout *)self minContentSize];
  v6 = v5 * 0.5;
  if (width <= v6)
  {
    v6 = width;
  }

  else
  {
    height = v6 / (width / height);
  }

  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)p_contentIsScrollable
{
  v3 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  result = [(THWReviewQuestionLayoutDelegate *)self->_delegate isExpanded];
  if ((v3 - 1) >= 2)
  {
    return 0;
  }

  return result;
}

- (CGSize)answersSize
{
  p_answersSize = &self->_answersSize;
  width = self->_answersSize.width;
  height = self->_answersSize.height;
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    [(THWReviewTextMultipleChoiceLayout *)self minContentSize];
    v8 = v7;
    v10 = v9;
    [(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageSize];
    v12 = v11;
    v13 = [(THWReviewTextMultipleChoiceLayout *)self p_contentIsScrollable];
    v14 = [(THWReviewTextMultipleChoiceLayout *)self imageIsAtSide];
    v15 = v8;
    if (v13)
    {
      if (v14)
      {
        v15 = v8 - v12 + -15.0 >= 150.0 ? v8 - v12 + -15.0 : 150.0;
        [(THWReviewTextMultipleChoiceLayout *)self p_answersSizeForWidth:1.79769313e308];
        if (v16 > v15)
        {
          v17 = v8 * 0.5;
          if (v12 < v8 * 0.5)
          {
            v17 = v12;
          }

          v18 = v8 - v17 + -15.0;
          if (v16 >= v18)
          {
            v15 = v18;
          }

          else
          {
            v15 = v16;
          }
        }
      }
    }

    else if (v14)
    {
      v15 = v8 - v12 + -15.0;
      if ([(THWReviewQuestionLayoutDelegate *)self->_delegate isExpanded])
      {
        if (v15 < 150.0)
        {
          v15 = 150.0;
        }

        [(THWReviewTextMultipleChoiceLayout *)self p_answersHeightForWidth:v15];
        if (v19 > v10)
        {
          v20 = fmin(v12, 150.0);
          [(THWReviewTextMultipleChoiceLayout *)self p_answersSizeForWidth:1.79769313e308];
          if (v15 >= v8 + -15.0 - v20)
          {
            v22 = v15;
          }

          else
          {
            v22 = v8 + -15.0 - v20;
          }

          [(THWReviewTextMultipleChoiceLayout *)self p_binSearchAnswersWidth:v15 maxWidth:v22 naturalWidth:v21 height:v10];
          v15 = ceil(v23);
        }
      }
    }

    [(THWReviewTextMultipleChoiceLayout *)self p_answersSizeForWidth:v15];
    width = v24 + 2.0;
    p_answersSize->width = width;
    p_answersSize->height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)imageSize
{
  [(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageSize];
  v4 = v3;
  v6 = v5;
  p_imageSize = &self->_imageSize;
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    if (![(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageInfo]|| v4 == 0.0 || v6 == 0.0)
    {
      width = p_imageSize->width;
      height = self->_imageSize.height;
    }

    else
    {
      [(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageSize];
      v12 = v11;
      v14 = v13;
      v15 = v11 / v13;
      [(THWReviewTextMultipleChoiceLayout *)self minContentSize];
      v17 = v16;
      v19 = v18;
      [(THWReviewTextMultipleChoiceLayout *)self answersSize];
      v21 = v20;
      v23 = v22;
      if ([(THWReviewQuestionLayoutDelegate *)[(THWReviewTextMultipleChoiceLayout *)self delegate] isExpanded])
      {
        if ([(THWReviewTextMultipleChoiceLayout *)self imageIsAtSide])
        {
          if ([(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self]== &dword_0 + 2)
          {
            [(THWReviewTextMultipleChoiceLayout *)self p_maxSizeWithImageSize:v12, v14];
            v12 = v24;
            v14 = v25;
          }

          else
          {
            v12 = v17 - v21 + -15.0;
            v14 = v12 / v15;
          }
        }

        else
        {
          v26 = fmax(v19 - v23 + -6.0, 150.0);
          if (v14 > v26)
          {
            v14 = v26;
            v12 = v15 * v26;
          }
        }
      }

      if (v12 > v17)
      {
        v14 = v17 / v15;
        v12 = v17;
      }

      if (v14 > v19)
      {
        if ([(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self]== &dword_0 + 2)
        {
          [(THWReviewTextMultipleChoiceLayout *)self p_maxSizeWithImageSize:v12, v14];
          v12 = v27;
          v14 = v28;
        }

        else
        {
          v12 = v19 * v15;
          v14 = v19;
        }
      }

      [(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageSize];
      v29 = width / v15;
      if (v12 <= width)
      {
        v29 = v14;
        width = v12;
      }

      if (v29 > height)
      {
        width = v15 * height;
      }

      else
      {
        height = v29;
      }

      p_imageSize->width = width;
      self->_imageSize.height = height;
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)contentSize
{
  p_contentSize = &self->_contentSize;
  height = self->_contentSize.height;
  if (self->_contentSize.width == CGSizeZero.width && height == CGSizeZero.height)
  {
    [(THWReviewTextMultipleChoiceLayout *)self minContentSize];
    p_contentSize->width = v6;
    p_contentSize->height = v7;
    [(THWReviewTextMultipleChoiceLayout *)self imageSize];
    v9 = v8;
    [(THWReviewTextMultipleChoiceLayout *)self answersSize];
    v11 = v10;
    v12 = [(THWReviewTextMultipleChoiceLayout *)self p_imagePlacement];
    if (v12 > 2)
    {
      if (v12 != 3)
      {
        if (v12 != 4)
        {
          goto LABEL_9;
        }

LABEL_12:
        v13 = p_contentSize->height;
        if (v13 < v11)
        {
          v13 = v11;
        }

        if (v13 >= v9)
        {
          height = v13;
        }

        else
        {
          height = v9;
        }

LABEL_19:
        p_contentSize->height = height;
        goto LABEL_20;
      }
    }

    else if (v12 != 1)
    {
      if (v12 != 2)
      {
LABEL_9:
        height = p_contentSize->height;
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    height = v9 + v11 + 6.0;
    if (p_contentSize->height >= height)
    {
      height = p_contentSize->height;
    }

    goto LABEL_19;
  }

LABEL_20:
  width = p_contentSize->width;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)imageFrame
{
  p_imageFrame = &self->_imageFrame;
  if (CGRectIsNull(self->_imageFrame))
  {
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    p_imageFrame->origin = CGRectZero.origin;
    p_imageFrame->size = size;
    v4 = [(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageInfo];
    [(THWReviewTextMultipleChoiceLayout *)self imageSize];
    v6 = v5;
    v8 = v7;
    [(THWReviewTextMultipleChoiceLayout *)self answersSize];
    if (!v4 || v6 <= 0.0 || v8 <= 0.0)
    {
      goto LABEL_20;
    }

    v11 = v9;
    v12 = v10;
    v13 = [(THWReviewTextMultipleChoiceLayout *)self delegate];
    TSDRectWithSize();
    p_imageFrame->origin.x = v14;
    p_imageFrame->origin.y = v15;
    p_imageFrame->size.width = v16;
    p_imageFrame->size.height = v17;
    [(THWReviewTextMultipleChoiceLayout *)self minContentSize];
    TSDRectWithSize();
    TSDCenterRectOverRect();
    p_imageFrame->size.width = v20;
    p_imageFrame->size.height = v21;
    if (v18 < 0.0)
    {
      v18 = 0.0;
    }

    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    p_imageFrame->origin.x = v18;
    p_imageFrame->origin.y = v19;
    [(THWReviewTextMultipleChoiceLayout *)self contentSize];
    v23 = v22;
    v25 = v24;
    v26 = [(THWReviewTextMultipleChoiceLayout *)self p_imagePlacement];
    if (v26 > 2)
    {
      if ((v26 - 3) >= 2)
      {
LABEL_20:
        TSDRoundedRect();
        p_imageFrame->origin.x = x;
        p_imageFrame->origin.y = y;
        p_imageFrame->size.width = width;
        p_imageFrame->size.height = height;
        goto LABEL_25;
      }
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        p_imageFrame->origin.y = 0.0;
        if ([(THWReviewQuestionLayoutDelegate *)v13 isExpanded])
        {
          v32 = v25 - v8 - v12 + -6.0;
          if (v32 < 0.0)
          {
            v32 = 0.0;
          }

          p_imageFrame->origin.y = p_imageFrame->origin.y + v32 * 0.25;
        }
      }

      else if (v26 == 2)
      {
        p_imageFrame->origin.x = v23 - p_imageFrame->size.width;
        if ([(THWReviewQuestionLayoutDelegate *)v13 isExpanded])
        {
          v27 = v23 - v6 - v11 + -15.0;
          if (v27 < 0.0)
          {
            v27 = 0.0;
          }

          p_imageFrame->origin.x = p_imageFrame->origin.x + v27 * -0.25;
        }
      }

      goto LABEL_20;
    }

    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    p_imageFrame->origin = origin;
    p_imageFrame->size = size;
    goto LABEL_20;
  }

  x = p_imageFrame->origin.x;
  y = p_imageFrame->origin.y;
  width = p_imageFrame->size.width;
  height = p_imageFrame->size.height;
LABEL_25:
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)answersFrame
{
  p_answersFrame = &self->_answersFrame;
  if (CGRectIsNull(self->_answersFrame))
  {
    [(THWReviewTextMultipleChoiceLayout *)self answersSize];
    v5 = v4;
    TSDRectWithSize();
    p_answersFrame->origin.x = v6;
    p_answersFrame->origin.y = v7;
    p_answersFrame->size.width = v8;
    p_answersFrame->size.height = v9;
    [(THWReviewTextMultipleChoiceLayout *)self minContentSize];
    TSDRectWithSize();
    TSDCenterRectOverRect();
    p_answersFrame->size.width = v12;
    p_answersFrame->size.height = v13;
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    p_answersFrame->origin.x = v10;
    p_answersFrame->origin.y = v11;
    if (![(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageInfo])
    {
      goto LABEL_20;
    }

    [(THWReviewTextMultipleChoiceLayout *)self imageFrame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(THWReviewTextMultipleChoiceLayout *)self imageSize];
    v23 = v22;
    [(THWReviewTextMultipleChoiceLayout *)self contentSize];
    v25 = v24;
    v27 = v26;
    v28 = [(THWReviewTextMultipleChoiceLayout *)self p_imagePlacement];
    if (v28 > 2)
    {
      if ((v28 - 3) >= 2)
      {
LABEL_20:
        TSDRoundedRect();
        p_answersFrame->origin.x = x;
        p_answersFrame->origin.y = y;
        p_answersFrame->size.width = width;
        p_answersFrame->size.height = height;
        goto LABEL_21;
      }
    }

    else if (v28)
    {
      if (v28 == 1)
      {
        v36.origin.x = v15;
        v36.origin.y = v17;
        v36.size.width = v19;
        v36.size.height = v21;
        v37.origin.y = CGRectGetMaxY(v36) + 6.0;
        p_answersFrame->origin.y = v37.origin.y;
        v37.origin.x = p_answersFrame->origin.x;
        v37.size.width = p_answersFrame->size.width;
        v37.size.height = p_answersFrame->size.height;
        v34 = (v27 - CGRectGetMaxY(v37)) * 0.5;
        if (v34 < 0.0)
        {
          v34 = 0.0;
        }

        v35 = p_answersFrame->origin.y + v34;
        p_answersFrame->origin.x = (v25 - v5) * 0.5;
        p_answersFrame->origin.y = v35;
      }

      else if (v28 == 2)
      {
        v29 = v25 - v5 - v23 + -15.0;
        if (v29 < 0.0)
        {
          v29 = 0.0;
        }

        p_answersFrame->origin.x = v29 * 0.5;
      }

      goto LABEL_20;
    }

    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_20;
  }

  x = p_answersFrame->origin.x;
  y = p_answersFrame->origin.y;
  width = p_answersFrame->size.width;
  height = p_answersFrame->size.height;
LABEL_21:
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentFrame
{
  p_contentFrame = &self->_contentFrame;
  if (CGRectIsNull(self->_contentFrame))
  {
    [(THWReviewTextMultipleChoiceLayout *)self contentSize];
    TSDRectWithSize();
    p_contentFrame->origin.x = v4;
    p_contentFrame->origin.y = v5;
    p_contentFrame->size.width = v6;
    p_contentFrame->size.height = v7;
    [(THWReviewTextMultipleChoiceLayout *)self minContentSize];
    TSDRectWithSize();
    TSDCenterRectOverRect();
    p_contentFrame->size.width = width;
    p_contentFrame->size.height = height;
    if (x < 0.0)
    {
      x = 0.0;
    }

    if (y < 0.0)
    {
      y = 0.0;
    }

    p_contentFrame->origin.x = x;
    p_contentFrame->origin.y = y;
  }

  else
  {
    x = p_contentFrame->origin.x;
    y = p_contentFrame->origin.y;
    width = p_contentFrame->size.width;
    height = p_contentFrame->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)childInfosForLayout
{
  v3 = [NSMutableArray arrayWithObject:self->_answerStack];
  v4 = [(THWReviewQuestion *)[(THWReviewTextMultipleChoiceLayout *)self question] imageInfo];
  if (v4)
  {
    [(NSMutableArray *)v3 addObject:v4];
  }

  return v3;
}

- (id)dependentLayouts
{
  v3 = +[NSMutableArray array];
  v5.receiver = self;
  v5.super_class = THWReviewTextMultipleChoiceLayout;
  [v3 addObjectsFromArray:{-[THWReviewTextMultipleChoiceLayout dependentLayouts](&v5, "dependentLayouts")}];
  if (self->_answerLayouts)
  {
    [v3 addObjectsFromArray:?];
  }

  [(THWReviewTextMultipleChoiceLayout *)self addDescendentLayoutsToArray:v3];
  return v3;
}

- (id)computeLayoutGeometry
{
  [(THWReviewTextMultipleChoiceLayout *)self contentSize];
  v2 = [TSDLayoutGeometry alloc];
  TSDRectWithSize();
  v3 = [v2 initWithFrame:?];

  return v3;
}

- (id)layoutGeometryForLayout:(id)a3
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    [(THWReviewTextMultipleChoiceLayout *)self imageFrame];
    v9 = [[TSDLayoutGeometry alloc] initWithFrame:{v5, v6, v7, v8}];

    return v9;
  }

  return result;
}

- (UIEdgeInsets)stackedControlContainerInsets:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)stackedControlContainerMinHeight:(id)a3
{
  [(THWReviewTextMultipleChoiceLayout *)self answersSize];
  v5 = v4;
  [(THWReviewTextMultipleChoiceLayout *)self minContentSize];
  if (v5 >= v6)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (id)layoutForChoiceIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_answerLayouts count]<= a3)
  {
    return 0;
  }

  answerLayouts = self->_answerLayouts;

  return [(NSArray *)answerLayouts objectAtIndex:a3];
}

- (void)p_setupAnswerLayouts
{
  if (!self->_answerLayouts)
  {
    v3 = [(THWReviewQuestion *)self->_question choices];
    v4 = [NSMutableArray arrayWithCapacity:[(NSArray *)v3 count]];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = [[THWReviewTextAnswerLayout alloc] initWithChoice:*(*(&v11 + 1) + 8 * v9) index:v7 delegate:self];
          [(NSMutableArray *)v4 addObject:v10];

          ++v7;
          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    self->_answerLayouts = [(NSMutableArray *)v4 copy];
  }
}

@end