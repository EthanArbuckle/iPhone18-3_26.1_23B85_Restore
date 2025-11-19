@interface TSWReviewChoiceDescription
+ (id)createChoiceDescriptionForQuestionType:(id)a3 withContext:(id)a4;
- (TSWReviewChoiceDescription)initWithContext:(id)a3;
- (void)dealloc;
- (void)setChoiceAlternateText:(id)a3;
- (void)setChoiceContent:(id)a3;
- (void)setChoiceContentType:(id)a3;
- (void)setChoiceFeedback:(id)a3;
- (void)setChoiceTargetAlternateText:(id)a3;
- (void)setChoiceTargetRegion:(id)a3;
@end

@implementation TSWReviewChoiceDescription

- (void)setChoiceAlternateText:(id)a3
{
  [(TSWReviewChoiceDescription *)self willModify];
  v5 = a3;

  self->mAlternateText = a3;
}

- (void)setChoiceTargetAlternateText:(id)a3
{
  [(TSWReviewChoiceDescription *)self willModify];
  v5 = a3;

  self->mTargetAlternateText = a3;
}

- (void)setChoiceFeedback:(id)a3
{
  [(TSWReviewChoiceDescription *)self willModify];
  v5 = a3;

  self->mFeedback = a3;
}

- (void)setChoiceContent:(id)a3
{
  [(TSWReviewChoiceDescription *)self willModify];
  v5 = a3;

  self->mContent = a3;
}

- (void)setChoiceContentType:(id)a3
{
  [(TSWReviewChoiceDescription *)self willModify];
  v5 = a3;

  self->mContentType = a3;
}

- (void)setChoiceTargetRegion:(id)a3
{
  [(TSWReviewChoiceDescription *)self willModify];
  v5 = a3;

  self->mTargetRegion = a3;
}

- (TSWReviewChoiceDescription)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWReviewChoiceDescription;
  return [(TSWReviewChoiceDescription *)&v4 initWithContext:a3];
}

+ (id)createChoiceDescriptionForQuestionType:(id)a3 withContext:(id)a4
{
  if (([a3 isEqualToString:TSWReviewQuestionDescriptionTypeMultiChoiceValue] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", TSWReviewQuestionDescriptionTypeMultiChoiceImageValue) & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", TSWReviewQuestionDescriptionTypeAssociativeTokenValue) & 1) == 0 && !objc_msgSend(a3, "isEqualToString:", TSWReviewQuestionDescriptionTypeAssociativeImageValue) || (result = -[TSWReviewChoiceDescription initWithContext:]([TSWReviewChoiceDescription alloc], "initWithContext:", a4)) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return result;
}

- (void)dealloc
{
  self->mAlternateText = 0;

  self->mTargetAlternateText = 0;
  self->mFeedback = 0;

  self->mContent = 0;
  self->mContentType = 0;

  self->mTargetRegion = 0;
  v3.receiver = self;
  v3.super_class = TSWReviewChoiceDescription;
  [(TSWReviewChoiceDescription *)&v3 dealloc];
}

@end