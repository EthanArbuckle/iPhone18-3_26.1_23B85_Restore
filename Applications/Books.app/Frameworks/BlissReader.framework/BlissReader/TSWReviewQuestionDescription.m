@interface TSWReviewQuestionDescription
+ (id)createQuestionDescriptionForQuestionType:(id)a3 withContext:(id)a4;
- (CGSize)questionReferenceContentSizeHint;
- (TSWReviewQuestionDescription)initWithContext:(id)a3;
- (id)choiceAtIndex:(unint64_t)a3;
- (int64_t)numberOfChoices;
- (int64_t)questionCardinality;
- (unint64_t)indexOfChoice:(id)a3;
- (void)addChoice:(id)a3;
- (void)dealloc;
- (void)setChoiceDescriptions:(id)a3;
- (void)setQuestionCategoryName:(id)a3;
- (void)setQuestionChoiceNumberStyle:(id)a3;
- (void)setQuestionFeedbackIfCorrect:(id)a3;
- (void)setQuestionFeedbackIfIncorrect:(id)a3;
- (void)setQuestionFeedbackIfPartiallyCorrect:(id)a3;
- (void)setQuestionGeneralFeedback:(id)a3;
- (void)setQuestionID:(id)a3;
- (void)setQuestionPrompt:(id)a3;
- (void)setQuestionPromptAlternateText:(id)a3;
- (void)setQuestionReferenceContent:(id)a3;
- (void)setQuestionReferenceContentAlternateText:(id)a3;
- (void)setQuestionReferenceContentSizeHint:(CGSize)a3;
- (void)setQuestionReferenceContentType:(id)a3;
- (void)setQuestionType:(id)a3;
@end

@implementation TSWReviewQuestionDescription

- (void)setQuestionCategoryName:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mCategoryName = a3;
}

- (void)setQuestionGeneralFeedback:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mGeneralFeedback = a3;
}

- (void)setQuestionID:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mID = a3;
}

- (void)setQuestionPrompt:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mPrompt = a3;
}

- (void)setQuestionPromptAlternateText:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mPromptAlternateText = a3;
}

- (void)setQuestionReferenceContent:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mReferenceContent = a3;
}

- (CGSize)questionReferenceContentSizeHint
{
  width = self->mReferenceContentSize.width;
  height = self->mReferenceContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setQuestionReferenceContentSizeHint:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(TSWReviewQuestionDescription *)self willModify];
  self->mReferenceContentSize.width = width;
  self->mReferenceContentSize.height = height;
}

- (void)setQuestionReferenceContentType:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mReferenceContentType = a3;
}

- (void)setQuestionReferenceContentAlternateText:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mReferenceContentAlternateText = a3;
}

- (void)setQuestionType:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mType = a3;
}

- (void)setChoiceDescriptions:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mChoiceDescriptions = a3;
}

- (void)setQuestionChoiceNumberStyle:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mChoiceNumberStyle = a3;
}

- (void)setQuestionFeedbackIfCorrect:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mFeedbackCorrect = a3;
}

- (void)setQuestionFeedbackIfPartiallyCorrect:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mFeedbackPartial = a3;
}

- (void)setQuestionFeedbackIfIncorrect:(id)a3
{
  [(TSWReviewQuestionDescription *)self willModify];
  v5 = a3;

  self->mFeedbackIncorrect = a3;
}

+ (id)createQuestionDescriptionForQuestionType:(id)a3 withContext:(id)a4
{
  if (([a3 isEqualToString:TSWReviewQuestionDescriptionTypeMultiChoiceValue] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", TSWReviewQuestionDescriptionTypeMultiChoiceImageValue) & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", TSWReviewQuestionDescriptionTypeAssociativeTokenValue) & 1) == 0 && !objc_msgSend(a3, "isEqualToString:", TSWReviewQuestionDescriptionTypeAssociativeImageValue) || (v6 = -[TSWReviewQuestionDescription initWithContext:]([TSWReviewQuestionDescription alloc], "initWithContext:", a4), -[TSWReviewQuestionDescription setValue:forKey:](v6, "setValue:forKey:", a3, TSWReviewQuestionDescriptionTypeKey), !v6))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return v6;
}

- (TSWReviewQuestionDescription)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWReviewQuestionDescription;
  v3 = [(TSWReviewQuestionDescription *)&v5 initWithContext:a3];
  if (v3)
  {
    [(TSWReviewQuestionDescription *)v3 setChoiceDescriptions:+[NSMutableArray array]];
  }

  return v3;
}

- (void)addChoice:(id)a3
{
  v4 = [(TSWReviewQuestionDescription *)self choiceDescriptions];

  [(NSMutableArray *)v4 addObject:a3];
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

- (id)choiceAtIndex:(unint64_t)a3
{
  v4 = [(TSWReviewQuestionDescription *)self choiceDescriptions];

  return [(NSMutableArray *)v4 objectAtIndex:a3];
}

- (unint64_t)indexOfChoice:(id)a3
{
  v4 = [(TSWReviewQuestionDescription *)self choiceDescriptions];

  return [(NSMutableArray *)v4 indexOfObjectIdenticalTo:a3];
}

- (int64_t)numberOfChoices
{
  v2 = [(TSWReviewQuestionDescription *)self choiceDescriptions];

  return [(NSMutableArray *)v2 count];
}

- (int64_t)questionCardinality
{
  if (![(TSWReviewQuestionDescription *)self questionCardinality_original])
  {
    v3 = [(TSWReviewQuestionDescription *)self questionType];
    if (v3 == TSWReviewQuestionDescriptionTypeAssociativeTokenValue || (v4 = [(TSWReviewQuestionDescription *)self questionType], v4 == TSWReviewQuestionDescriptionTypeAssociativeImageValue))
    {
      v7 = [NSNumber numberWithInteger:3];
      [(TSWReviewQuestionDescription *)self setValue:v7 forKey:TSWReviewQuestionDescriptionCardinalityKey];
    }

    else
    {
      v5 = [(TSWReviewQuestionDescription *)self questionType];
      if (v5 == TSWReviewQuestionDescriptionTypeMultiChoiceValue || (v6 = [(TSWReviewQuestionDescription *)self questionType], v6 == TSWReviewQuestionDescriptionTypeMultiChoiceImageValue))
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