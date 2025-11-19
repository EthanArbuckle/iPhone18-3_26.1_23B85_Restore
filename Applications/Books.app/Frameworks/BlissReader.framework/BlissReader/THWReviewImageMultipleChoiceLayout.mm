@interface THWReviewImageMultipleChoiceLayout
- (CGRect)contentFrame;
- (CGRect)p_frameForChoiceIndex:(unint64_t)a3;
- (CGSize)minContentSize;
- (CGSize)p_imageSize;
- (THWReviewImageMultipleChoiceLayout)initWithQuestion:(id)a3 index:(unint64_t)a4 delegate:(id)a5;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)layoutForChoiceIndex:(unint64_t)a3;
- (id)layoutGeometryForLayout:(id)a3;
- (unint64_t)columnCount;
- (unint64_t)rowCount;
- (void)dealloc;
- (void)invalidateSize;
- (void)p_layoutContentFrame;
- (void)p_setupAnswerLayouts;
@end

@implementation THWReviewImageMultipleChoiceLayout

- (THWReviewImageMultipleChoiceLayout)initWithQuestion:(id)a3 index:(unint64_t)a4 delegate:(id)a5
{
  v12.receiver = self;
  v12.super_class = THWReviewImageMultipleChoiceLayout;
  v8 = [(THWReviewImageMultipleChoiceLayout *)&v12 initWithInfo:0];
  v9 = v8;
  if (v8)
  {
    size = CGRectNull.size;
    v8->_contentFrame.origin = CGRectNull.origin;
    v8->_contentFrame.size = size;
    v8->_questionIndex = a4;
    v8->_question = a3;
    v9->_delegate = a5;
    [(THWReviewImageMultipleChoiceLayout *)v9 p_setupAnswerLayouts];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewImageMultipleChoiceLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)dependentLayouts
{
  v3 = +[NSMutableArray array];
  v5.receiver = self;
  v5.super_class = THWReviewImageMultipleChoiceLayout;
  [v3 addObjectsFromArray:{-[THWReviewImageMultipleChoiceLayout dependentLayouts](&v5, "dependentLayouts")}];
  [(THWReviewImageMultipleChoiceLayout *)self addDescendentLayoutsToArray:v3];
  return v3;
}

- (void)invalidateSize
{
  v4.receiver = self;
  v4.super_class = THWReviewImageMultipleChoiceLayout;
  [(THWReviewImageMultipleChoiceLayout *)&v4 invalidateSize];
  size = CGRectNull.size;
  self->_contentFrame.origin = CGRectNull.origin;
  self->_contentFrame.size = size;
  self->_rowCount = 0;
  self->_columnCount = 0;
}

- (CGSize)minContentSize
{
  [(THWReviewQuestionLayoutDelegate *)self->_delegate questionAnswersLayoutSize:self];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)p_layoutContentFrame
{
  [(THWReviewImageMultipleChoiceLayout *)self minContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutMode:self];
  v8 = [(NSArray *)[(THWReviewQuestion *)self->_question choices] count];
  [(THWReviewImageMultipleChoiceLayout *)self p_imageSize];
  v11 = v9;
  if (v8 < 2)
  {
    v12 = 1;
    self->_rowCount = 1;
    goto LABEL_8;
  }

  if (v8 == 2)
  {
    if (v7 == &dword_0 + 2 || !v7 && (v9 = v4 / (v9 * 2.0 + 6.0), v9 >= v6 / (v10 * 2.0 + 6.0)))
    {
      self->_rowCount = 1;
      v12 = 2;
    }

    else
    {
      self->_rowCount = 2;
      v12 = 1;
    }

LABEL_8:
    self->_columnCount = v12;
    if ((v7 - 1) >= 2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v8 >= 9)
  {
    v13 = v8 + 1;
    if (v7 != &dword_0 + 1)
    {
      self->_rowCount = v13 / 3;
      v12 = 3;
      goto LABEL_8;
    }

    v14 = v13 >> 1;
    goto LABEL_20;
  }

  if (v7 != &dword_0 + 1)
  {
    self->_rowCount = 2;
    v12 = (v8 + 1) >> 1;
    goto LABEL_8;
  }

  v9 = v9 / v10;
  if (v11 / v10 <= 1.5)
  {
    v14 = (v8 + 1) >> 1;
LABEL_20:
    self->_rowCount = v14;
    v15 = 2;
    goto LABEL_21;
  }

  self->_rowCount = v8;
  v15 = 1;
LABEL_21:
  self->_columnCount = v15;
LABEL_22:
  [(THWReviewQuestionLayoutDelegate *)self->_delegate questionLayoutSize:self, v9];
LABEL_23:
  TSDShrinkSizeToFitInSize();
  p_contentFrame = &self->_contentFrame;
  TSDRectWithSize();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  TSDRectWithSize();
  THIntegralCenterRectInRect(v18, v20, v22, v24, v25, v26, v27, v28);
  p_contentFrame->origin.x = v29;
  p_contentFrame->origin.y = v30;
  p_contentFrame->size.width = v31;
  p_contentFrame->size.height = v32;
}

- (CGRect)contentFrame
{
  p_contentFrame = &self->_contentFrame;
  if (CGRectIsNull(self->_contentFrame))
  {
    [(THWReviewImageMultipleChoiceLayout *)self p_layoutContentFrame];
  }

  x = p_contentFrame->origin.x;
  y = p_contentFrame->origin.y;
  width = p_contentFrame->size.width;
  height = p_contentFrame->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (unint64_t)rowCount
{
  if (CGRectIsNull(self->_contentFrame))
  {
    [(THWReviewImageMultipleChoiceLayout *)self p_layoutContentFrame];
  }

  return self->_rowCount;
}

- (unint64_t)columnCount
{
  if (CGRectIsNull(self->_contentFrame))
  {
    [(THWReviewImageMultipleChoiceLayout *)self p_layoutContentFrame];
  }

  return self->_columnCount;
}

- (id)computeLayoutGeometry
{
  [(THWReviewImageMultipleChoiceLayout *)self contentFrame];
  v2 = [TSDLayoutGeometry alloc];
  TSDRectWithSize();
  v3 = [v2 initWithFrame:?];

  return v3;
}

- (id)layoutGeometryForLayout:(id)a3
{
  v4 = TSUProtocolCast();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ([v4 tag])
  {
    return 0;
  }

  -[THWReviewImageMultipleChoiceLayout p_frameForChoiceIndex:](self, "p_frameForChoiceIndex:", [v5 index]);
  v11 = [[TSDLayoutGeometry alloc] initWithFrame:{v7, v8, v9, v10}];

  return v11;
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
    v3 = [(NSArray *)[(THWReviewQuestion *)self->_question choices] count];
    v4 = [NSMutableArray arrayWithCapacity:v3];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v6 = [(THWControlLayout *)[THWButtonControlLayout alloc] initWithTag:0 index:i];
        [(NSMutableArray *)v4 addObject:v6];
      }
    }

    self->_answerLayouts = [(NSMutableArray *)v4 copy];
  }
}

- (CGSize)p_imageSize
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(THWReviewQuestion *)self->_question choices];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) contentImage];
        if (v9)
        {
          [v9 size];
          width = v10;
          height = v11;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)p_frameForChoiceIndex:(unint64_t)a3
{
  [(THWReviewImageMultipleChoiceLayout *)self contentFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(THWReviewImageMultipleChoiceLayout *)self rowCount];
  v14 = [(THWReviewImageMultipleChoiceLayout *)self columnCount];
  v15 = (v10 + (v14 - 1) * -6.0) / v14;
  v16 = floorf(v15);
  v17 = ldiv(a3, v14);
  v18 = v6 + v17.rem * (v16 + 6.0);
  if (v17.quot + 1 >= v13)
  {
    v19 = [(NSArray *)[(THWReviewQuestion *)self->_question choices] count];
    v20 = v18 + floorf(v16 * 0.5);
    if (v14 * v13 != v19)
    {
      v18 = v20;
    }
  }

  v21 = (v12 + (v13 - 1) * -6.0) / v13;
  v22 = floorf(v21);
  v23 = v8 + v17.quot * (v22 + 6.0);
  v24 = v18;
  v25 = v16;
  result.size.height = v22;
  result.size.width = v25;
  result.origin.y = v23;
  result.origin.x = v24;
  return result;
}

@end