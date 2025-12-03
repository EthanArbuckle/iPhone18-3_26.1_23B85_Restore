@interface TSWReviewChoiceDescription
+ (id)createChoiceDescriptionForQuestionType:(id)type withContext:(id)context;
- (TSWReviewChoiceDescription)initWithContext:(id)context;
- (void)dealloc;
- (void)setChoiceAlternateText:(id)text;
- (void)setChoiceContent:(id)content;
- (void)setChoiceContentType:(id)type;
- (void)setChoiceFeedback:(id)feedback;
- (void)setChoiceTargetAlternateText:(id)text;
- (void)setChoiceTargetRegion:(id)region;
@end

@implementation TSWReviewChoiceDescription

- (void)setChoiceAlternateText:(id)text
{
  [(TSWReviewChoiceDescription *)self willModify];
  textCopy = text;

  self->mAlternateText = text;
}

- (void)setChoiceTargetAlternateText:(id)text
{
  [(TSWReviewChoiceDescription *)self willModify];
  textCopy = text;

  self->mTargetAlternateText = text;
}

- (void)setChoiceFeedback:(id)feedback
{
  [(TSWReviewChoiceDescription *)self willModify];
  feedbackCopy = feedback;

  self->mFeedback = feedback;
}

- (void)setChoiceContent:(id)content
{
  [(TSWReviewChoiceDescription *)self willModify];
  contentCopy = content;

  self->mContent = content;
}

- (void)setChoiceContentType:(id)type
{
  [(TSWReviewChoiceDescription *)self willModify];
  typeCopy = type;

  self->mContentType = type;
}

- (void)setChoiceTargetRegion:(id)region
{
  [(TSWReviewChoiceDescription *)self willModify];
  regionCopy = region;

  self->mTargetRegion = region;
}

- (TSWReviewChoiceDescription)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSWReviewChoiceDescription;
  return [(TSWReviewChoiceDescription *)&v4 initWithContext:context];
}

+ (id)createChoiceDescriptionForQuestionType:(id)type withContext:(id)context
{
  if (([type isEqualToString:TSWReviewQuestionDescriptionTypeMultiChoiceValue] & 1) == 0 && (objc_msgSend(type, "isEqualToString:", TSWReviewQuestionDescriptionTypeMultiChoiceImageValue) & 1) == 0 && (objc_msgSend(type, "isEqualToString:", TSWReviewQuestionDescriptionTypeAssociativeTokenValue) & 1) == 0 && !objc_msgSend(type, "isEqualToString:", TSWReviewQuestionDescriptionTypeAssociativeImageValue) || (result = -[TSWReviewChoiceDescription initWithContext:]([TSWReviewChoiceDescription alloc], "initWithContext:", context)) == 0)
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