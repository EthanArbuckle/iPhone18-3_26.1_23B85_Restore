@interface RAPPlacecardImageryQuestion
- (BOOL)isAnonymous;
- (BOOL)isComplete;
- (NSString)localizedTitle;
- (RAPPlacecardImageryQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 supportedIssueItems:(id)a5;
- (id)placeholderText;
- (void)_fillSubmissionParameters:(id)a3;
- (void)setIssueType:(unint64_t)a3;
@end

@implementation RAPPlacecardImageryQuestion

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(GEORPPoiImageFeedbackCorrections);
  v21 = v5;
  if (self->_issueType - 1 < 8)
  {
    issueType_low = LODWORD(self->_issueType);
  }

  else
  {
    issueType_low = 0;
  }

  [v5 setCorrectionType:issueType_low];
  v7 = objc_alloc_init(GEORPPoiImageFeedbackContext);
  v8 = [(RAPQuestion *)self _context];
  v9 = [v8 placecardImageryContext];

  v10 = [v9 reportedPlace];
  [v7 setPlace:v10];

  v11 = objc_alloc_init(GEORPFeedbackClientImageInfo);
  v12 = [v9 photoURL];
  [v11 setImageUrl:v12];

  v13 = [v9 photoIdentifier];
  [v11 setProviderImageId:v13];

  [v7 setImageInfo:v11];
  [v4 setType:13];
  v14 = objc_alloc_init(GEORPFeedbackDetails);
  [v4 setDetails:v14];

  v15 = objc_alloc_init(GEORPPoiImageFeedback);
  v16 = [v4 details];
  [v16 setPoiImageFeedback:v15];

  v17 = [v4 details];
  v18 = [v17 poiImageFeedback];
  [v18 setPoiImageCorrections:v21];

  v19 = [v4 details];
  v20 = [v19 poiImageFeedback];
  [v20 setPoiImageContext:v7];

  [(RAPCommentQuestion *)self->_commentQuestion _fillSubmissionParameters:v4];
}

- (BOOL)isAnonymous
{
  v5.receiver = self;
  v5.super_class = RAPPlacecardImageryQuestion;
  v3 = [(RAPQuestion *)&v5 isAnonymous];
  if (v3)
  {
    LOBYTE(v3) = (self->_issueType & 0xFFFFFFFFFFFFFFFELL) != 6;
  }

  return v3;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"What's wrong with this photo? [UGC]" value:@"localized string not found" table:0];

  return v3;
}

- (id)placeholderText
{
  v2 = self->_issueType - 1;
  if (v2 > 7)
  {
    v5 = &stru_1016631F0;
  }

  else
  {
    v3 = off_10164D538[v2];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (BOOL)isComplete
{
  result = 0;
  issueType = self->_issueType;
  if (issueType <= 8)
  {
    if (((1 << issueType) & 0x13C) != 0)
    {
      return 1;
    }

    else if (((1 << issueType) & 0xC2) != 0)
    {
      return [(RAPQuestion *)self->_commentQuestion isComplete];
    }
  }

  return result;
}

- (void)setIssueType:(unint64_t)a3
{
  if (self->_issueType != a3)
  {
    self->_issueType = a3;
    commentQuestion = self->_commentQuestion;
    v5 = [(RAPPlacecardImageryQuestion *)self placeholderText];
    [(RAPCommentQuestion *)commentQuestion _setPlaceholderText:v5];

    [(RAPCommentQuestion *)self->_commentQuestion setShouldShowEmail:(self->_issueType & 0xFFFFFFFFFFFFFFFELL) == 6];
    v6 = [(RAPPlacecardImageryQuestion *)self isComplete];

    [(RAPQuestion *)self _setComplete:v6 allowInvokingDidChange:1];
  }
}

- (RAPPlacecardImageryQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 supportedIssueItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = RAPPlacecardImageryQuestion;
  v11 = [(RAPQuestion *)&v16 initWithReport:v8 parentQuestion:v9];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_issueItems, a5);
    v13 = [[RAPCommentQuestion alloc] initWithReport:v8 parentQuestion:v9];
    commentQuestion = v12->_commentQuestion;
    v12->_commentQuestion = v13;

    [(RAPCommentQuestion *)v12->_commentQuestion setEmphasis:3];
    [(RAPQuestion *)v12->_commentQuestion addObserver:v12 changeHandler:&stru_10164D518];
  }

  return v12;
}

@end