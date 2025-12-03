@interface RAPPlacecardImageryQuestion
- (BOOL)isAnonymous;
- (BOOL)isComplete;
- (NSString)localizedTitle;
- (RAPPlacecardImageryQuestion)initWithReport:(id)report parentQuestion:(id)question supportedIssueItems:(id)items;
- (id)placeholderText;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)setIssueType:(unint64_t)type;
@end

@implementation RAPPlacecardImageryQuestion

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
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
  _context = [(RAPQuestion *)self _context];
  placecardImageryContext = [_context placecardImageryContext];

  reportedPlace = [placecardImageryContext reportedPlace];
  [v7 setPlace:reportedPlace];

  v11 = objc_alloc_init(GEORPFeedbackClientImageInfo);
  photoURL = [placecardImageryContext photoURL];
  [v11 setImageUrl:photoURL];

  photoIdentifier = [placecardImageryContext photoIdentifier];
  [v11 setProviderImageId:photoIdentifier];

  [v7 setImageInfo:v11];
  [parametersCopy setType:13];
  v14 = objc_alloc_init(GEORPFeedbackDetails);
  [parametersCopy setDetails:v14];

  v15 = objc_alloc_init(GEORPPoiImageFeedback);
  details = [parametersCopy details];
  [details setPoiImageFeedback:v15];

  details2 = [parametersCopy details];
  poiImageFeedback = [details2 poiImageFeedback];
  [poiImageFeedback setPoiImageCorrections:v21];

  details3 = [parametersCopy details];
  poiImageFeedback2 = [details3 poiImageFeedback];
  [poiImageFeedback2 setPoiImageContext:v7];

  [(RAPCommentQuestion *)self->_commentQuestion _fillSubmissionParameters:parametersCopy];
}

- (BOOL)isAnonymous
{
  v5.receiver = self;
  v5.super_class = RAPPlacecardImageryQuestion;
  isAnonymous = [(RAPQuestion *)&v5 isAnonymous];
  if (isAnonymous)
  {
    LOBYTE(isAnonymous) = (self->_issueType & 0xFFFFFFFFFFFFFFFELL) != 6;
  }

  return isAnonymous;
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

- (void)setIssueType:(unint64_t)type
{
  if (self->_issueType != type)
  {
    self->_issueType = type;
    commentQuestion = self->_commentQuestion;
    placeholderText = [(RAPPlacecardImageryQuestion *)self placeholderText];
    [(RAPCommentQuestion *)commentQuestion _setPlaceholderText:placeholderText];

    [(RAPCommentQuestion *)self->_commentQuestion setShouldShowEmail:(self->_issueType & 0xFFFFFFFFFFFFFFFELL) == 6];
    isComplete = [(RAPPlacecardImageryQuestion *)self isComplete];

    [(RAPQuestion *)self _setComplete:isComplete allowInvokingDidChange:1];
  }
}

- (RAPPlacecardImageryQuestion)initWithReport:(id)report parentQuestion:(id)question supportedIssueItems:(id)items
{
  reportCopy = report;
  questionCopy = question;
  itemsCopy = items;
  v16.receiver = self;
  v16.super_class = RAPPlacecardImageryQuestion;
  v11 = [(RAPQuestion *)&v16 initWithReport:reportCopy parentQuestion:questionCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_issueItems, items);
    v13 = [[RAPCommentQuestion alloc] initWithReport:reportCopy parentQuestion:questionCopy];
    commentQuestion = v12->_commentQuestion;
    v12->_commentQuestion = v13;

    [(RAPCommentQuestion *)v12->_commentQuestion setEmphasis:3];
    [(RAPQuestion *)v12->_commentQuestion addObserver:v12 changeHandler:&stru_10164D518];
  }

  return v12;
}

@end