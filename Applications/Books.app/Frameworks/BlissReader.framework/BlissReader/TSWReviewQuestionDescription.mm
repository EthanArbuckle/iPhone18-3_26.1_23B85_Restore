@interface TSWReviewQuestionDescription
+ (id)createQuestionDescriptionForQuestionType:(id)type withContext:(id)context;
- (CGSize)questionReferenceContentSizeHint;
- (TSWReviewQuestionDescription)initWithContext:(id)context;
- (id)choiceAtIndex:(unint64_t)index;
- (int64_t)numberOfChoices;
- (int64_t)questionCardinality;
- (unint64_t)indexOfChoice:(id)choice;
- (void)addChoice:(id)choice;
- (void)dealloc;
- (void)setChoiceDescriptions:(id)descriptions;
- (void)setQuestionCategoryName:(id)name;
- (void)setQuestionChoiceNumberStyle:(id)style;
- (void)setQuestionFeedbackIfCorrect:(id)correct;
- (void)setQuestionFeedbackIfIncorrect:(id)incorrect;
- (void)setQuestionFeedbackIfPartiallyCorrect:(id)correct;
- (void)setQuestionGeneralFeedback:(id)feedback;
- (void)setQuestionID:(id)d;
- (void)setQuestionPrompt:(id)prompt;
- (void)setQuestionPromptAlternateText:(id)text;
- (void)setQuestionReferenceContent:(id)content;
- (void)setQuestionReferenceContentAlternateText:(id)text;
- (void)setQuestionReferenceContentSizeHint:(CGSize)hint;
- (void)setQuestionReferenceContentType:(id)type;
- (void)setQuestionType:(id)type;
@end

@implementation TSWReviewQuestionDescription

- (void)setQuestionCategoryName:(id)name
{
  [(TSWReviewQuestionDescription *)self willModify];
  nameCopy = name;

  self->mCategoryName = name;
}

- (void)setQuestionGeneralFeedback:(id)feedback
{
  [(TSWReviewQuestionDescription *)self willModify];
  feedbackCopy = feedback;

  self->mGeneralFeedback = feedback;
}

- (void)setQuestionID:(id)d
{
  [(TSWReviewQuestionDescription *)self willModify];
  dCopy = d;

  self->mID = d;
}

- (void)setQuestionPrompt:(id)prompt
{
  [(TSWReviewQuestionDescription *)self willModify];
  promptCopy = prompt;

  self->mPrompt = prompt;
}

- (void)setQuestionPromptAlternateText:(id)text
{
  [(TSWReviewQuestionDescription *)self willModify];
  textCopy = text;

  self->mPromptAlternateText = text;
}

- (void)setQuestionReferenceContent:(id)content
{
  [(TSWReviewQuestionDescription *)self willModify];
  contentCopy = content;

  self->mReferenceContent = content;
}

- (CGSize)questionReferenceContentSizeHint
{
  width = self->mReferenceContentSize.width;
  height = self->mReferenceContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setQuestionReferenceContentSizeHint:(CGSize)hint
{
  height = hint.height;
  width = hint.width;
  [(TSWReviewQuestionDescription *)self willModify];
  self->mReferenceContentSize.width = width;
  self->mReferenceContentSize.height = height;
}

- (void)setQuestionReferenceContentType:(id)type
{
  [(TSWReviewQuestionDescription *)self willModify];
  typeCopy = type;

  self->mReferenceContentType = type;
}

- (void)setQuestionReferenceContentAlternateText:(id)text
{
  [(TSWReviewQuestionDescription *)self willModify];
  textCopy = text;

  self->mReferenceContentAlternateText = text;
}

- (void)setQuestionType:(id)type
{
  [(TSWReviewQuestionDescription *)self willModify];
  typeCopy = type;

  self->mType = type;
}

- (void)setChoiceDescriptions:(id)descriptions
{
  [(TSWReviewQuestionDescription *)self willModify];
  descriptionsCopy = descriptions;

  self->mChoiceDescriptions = descriptions;
}

- (void)setQuestionChoiceNumberStyle:(id)style
{
  [(TSWReviewQuestionDescription *)self willModify];
  styleCopy = style;

  self->mChoiceNumberStyle = style;
}

- (void)setQuestionFeedbackIfCorrect:(id)correct
{
  [(TSWReviewQuestionDescription *)self willModify];
  correctCopy = correct;

  self->mFeedbackCorrect = correct;
}

- (void)setQuestionFeedbackIfPartiallyCorrect:(id)correct
{
  [(TSWReviewQuestionDescription *)self willModify];
  correctCopy = correct;

  self->mFeedbackPartial = correct;
}

- (void)setQuestionFeedbackIfIncorrect:(id)incorrect
{
  [(TSWReviewQuestionDescription *)self willModify];
  incorrectCopy = incorrect;

  self->mFeedbackIncorrect = incorrect;
}

+ (id)createQuestionDescriptionForQuestionType:(id)type withContext:(id)context
{
  if (([type isEqualToString:TSWReviewQuestionDescriptionTypeMultiChoiceValue] & 1) == 0 && (objc_msgSend(type, "isEqualToString:", TSWReviewQuestionDescriptionTypeMultiChoiceImageValue) & 1) == 0 && (objc_msgSend(type, "isEqualToString:", TSWReviewQuestionDescriptionTypeAssociativeTokenValue) & 1) == 0 && !objc_msgSend(type, "isEqualToString:", TSWReviewQuestionDescriptionTypeAssociativeImageValue) || (v6 = -[TSWReviewQuestionDescription initWithContext:]([TSWReviewQuestionDescription alloc], "initWithContext:", context), -[TSWReviewQuestionDescription setValue:forKey:](v6, "setValue:forKey:", type, TSWReviewQuestionDescriptionTypeKey), !v6))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return v6;
}

- (TSWReviewQuestionDescription)initWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = TSWReviewQuestionDescription;
  v3 = [(TSWReviewQuestionDescription *)&v5 initWithContext:context];
  if (v3)
  {
    [(TSWReviewQuestionDescription *)v3 setChoiceDescriptions:+[NSMutableArray array]];
  }

  return v3;
}

- (void)addChoice:(id)choice
{
  choiceDescriptions = [(TSWReviewQuestionDescription *)self choiceDescriptions];

  [(NSMutableArray *)choiceDescriptions addObject:choice];
}

- (void)dealloc
{
  self->mCategoryName = 0;

  self->mReferenceContent = 0;
  self->mReferenceContentType = 0;

  self->mReferenceContentAlternateText = 0;
  self->mGeneralFeedback = 0;

  self->mID = 0;
  self->mPrompt = 0;

  self->mPromptAlternateText = 0;
  self->mType = 0;

  self->mChoiceDescriptions = 0;
  self->mChoiceNumberStyle = 0;

  self->mFeedbackCorrect = 0;
  self->mFeedbackPartial = 0;

  self->mFeedbackIncorrect = 0;
  v3.receiver = self;
  v3.super_class = TSWReviewQuestionDescription;
  [(TSWReviewQuestionDescription *)&v3 dealloc];
}

- (id)choiceAtIndex:(unint64_t)index
{
  choiceDescriptions = [(TSWReviewQuestionDescription *)self choiceDescriptions];

  return [(NSMutableArray *)choiceDescriptions objectAtIndex:index];
}

- (unint64_t)indexOfChoice:(id)choice
{
  choiceDescriptions = [(TSWReviewQuestionDescription *)self choiceDescriptions];

  return [(NSMutableArray *)choiceDescriptions indexOfObjectIdenticalTo:choice];
}

- (int64_t)numberOfChoices
{
  choiceDescriptions = [(TSWReviewQuestionDescription *)self choiceDescriptions];

  return [(NSMutableArray *)choiceDescriptions count];
}

- (int64_t)questionCardinality
{
  if (![(TSWReviewQuestionDescription *)self questionCardinality_original])
  {
    questionType = [(TSWReviewQuestionDescription *)self questionType];
    if (questionType == TSWReviewQuestionDescriptionTypeAssociativeTokenValue || (v4 = [(TSWReviewQuestionDescription *)self questionType], v4 == TSWReviewQuestionDescriptionTypeAssociativeImageValue))
    {
      v7 = [NSNumber numberWithInteger:3];
      [(TSWReviewQuestionDescription *)self setValue:v7 forKey:TSWReviewQuestionDescriptionCardinalityKey];
    }

    else
    {
      questionType2 = [(TSWReviewQuestionDescription *)self questionType];
      if (questionType2 == TSWReviewQuestionDescriptionTypeMultiChoiceValue || (v6 = [(TSWReviewQuestionDescription *)self questionType], v6 == TSWReviewQuestionDescriptionTypeMultiChoiceImageValue))
      {
        v10[0] = 0;
        v10[1] = v10;
        v10[2] = 0x2020000000;
        v10[3] = 0;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1DB928;
        v9[3] = &unk_45F318;
        v9[4] = self;
        v9[5] = v10;
        [(NSMutableArray *)[(TSWReviewQuestionDescription *)self choiceDescriptions] enumerateObjectsUsingBlock:v9];
        _Block_object_dispose(v10, 8);
      }
    }
  }

  return [(TSWReviewQuestionDescription *)self questionCardinality_original];
}

@end