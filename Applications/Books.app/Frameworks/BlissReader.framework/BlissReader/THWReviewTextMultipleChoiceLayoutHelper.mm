@interface THWReviewTextMultipleChoiceLayoutHelper
- (CGPoint)stackedControlContainerOrigin:(id)origin;
- (CGSize)answerStackSize;
- (CGSize)answerStackSizeForWidth:(double)width;
- (THWReviewTextMultipleChoiceLayoutHelper)initWithQuestion:(id)question;
- (UIEdgeInsets)stackedControlContainerInsets:(id)insets;
- (id)reviewTextAnswerLayoutListLabelParagraphStyle:(id)style;
- (void)_setupAnswerLayouts;
- (void)dealloc;
@end

@implementation THWReviewTextMultipleChoiceLayoutHelper

- (THWReviewTextMultipleChoiceLayoutHelper)initWithQuestion:(id)question
{
  v6.receiver = self;
  v6.super_class = THWReviewTextMultipleChoiceLayoutHelper;
  v4 = [(THWReviewTextMultipleChoiceLayoutHelper *)&v6 init];
  if (v4)
  {
    v4->_question = question;
    [(THWReviewTextMultipleChoiceLayoutHelper *)v4 _setupAnswerLayouts];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewTextMultipleChoiceLayoutHelper;
  [(THWReviewTextMultipleChoiceLayoutHelper *)&v3 dealloc];
}

- (CGSize)answerStackSizeForWidth:(double)width
{
  [(THWReviewTextMultipleChoiceLayoutHelper *)self answerLayoutWidth];
  if (v5 != width)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    [(THWReviewTextMultipleChoiceLayoutHelper *)self setAnswerLayoutWidth:width];
    v6 = [[THWStackedControlContainer alloc] initWithDelegate:self];
    v18 = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_154F74;
    v9[3] = &unk_45DF98;
    v9[4] = v6;
    v9[5] = &v10;
    v9[6] = &v14;
    [TSDLayoutController temporaryLayoutControllerForInfos:[NSArray arrayWithObjects:&v18 count:1] useInBlock:v9];

    [(THWReviewTextMultipleChoiceLayoutHelper *)self setAnswerStackSize:v15[3], v11[3]];
    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
  }

  [(THWReviewTextMultipleChoiceLayoutHelper *)self answerStackSize];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGPoint)stackedControlContainerOrigin:(id)origin
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)stackedControlContainerInsets:(id)insets
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

- (id)reviewTextAnswerLayoutListLabelParagraphStyle:(id)style
{
  question = [(THWReviewTextMultipleChoiceLayoutHelper *)self question];

  return [(THWReviewQuestion *)question choiceNumberStyle];
}

- (void)_setupAnswerLayouts
{
  if (!self->_answerLayouts)
  {
    choices = [(THWReviewQuestion *)self->_question choices];
    v4 = [NSMutableArray arrayWithCapacity:[(NSArray *)choices count]];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSArray *)choices countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(choices);
          }

          v10 = [[THWReviewTextAnswerLayout alloc] initWithChoice:*(*(&v11 + 1) + 8 * v9) index:v7 delegate:self];
          [(NSMutableArray *)v4 addObject:v10];

          ++v7;
          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [(NSArray *)choices countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    self->_answerLayouts = [(NSMutableArray *)v4 copy];
  }
}

- (CGSize)answerStackSize
{
  width = self->_answerStackSize.width;
  height = self->_answerStackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end