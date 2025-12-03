@interface TSWReviewDescription
- (TSWReviewDescription)initWithContext:(id)context;
- (id)questionAtIndex:(unint64_t)index;
- (int64_t)numberOfQuestions;
- (unint64_t)indexOfQuestion:(id)question;
- (void)addQuestion:(id)question;
- (void)dealloc;
- (void)setQuestionDescriptions:(id)descriptions;
- (void)setReviewQuestionNumberStyle:(id)style;
@end

@implementation TSWReviewDescription

- (void)setQuestionDescriptions:(id)descriptions
{
  [(TSWReviewDescription *)self willModify];
  descriptionsCopy = descriptions;

  self->mQuestionDescriptions = descriptions;
}

- (void)setReviewQuestionNumberStyle:(id)style
{
  [(TSWReviewDescription *)self willModify];
  styleCopy = style;

  self->mQuestionNumberStyle = style;
}

- (TSWReviewDescription)initWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = TSWReviewDescription;
  v3 = [(TSWReviewDescription *)&v5 initWithContext:context];
  if (v3)
  {
    [(TSWReviewDescription *)v3 setQuestionDescriptions:+[NSMutableArray array]];
  }

  return v3;
}

- (void)dealloc
{
  self->mQuestionDescriptions = 0;

  self->mQuestionNumberStyle = 0;
  v3.receiver = self;
  v3.super_class = TSWReviewDescription;
  [(TSWReviewDescription *)&v3 dealloc];
}

- (void)addQuestion:(id)question
{
  questionDescriptions = [(TSWReviewDescription *)self questionDescriptions];

  [(NSMutableArray *)questionDescriptions addObject:question];
}

- (id)questionAtIndex:(unint64_t)index
{
  questionDescriptions = [(TSWReviewDescription *)self questionDescriptions];

  return [(NSMutableArray *)questionDescriptions objectAtIndex:index];
}

- (unint64_t)indexOfQuestion:(id)question
{
  questionDescriptions = [(TSWReviewDescription *)self questionDescriptions];

  return [(NSMutableArray *)questionDescriptions indexOfObjectIdenticalTo:question];
}

- (int64_t)numberOfQuestions
{
  questionDescriptions = [(TSWReviewDescription *)self questionDescriptions];

  return [(NSMutableArray *)questionDescriptions count];
}

@end