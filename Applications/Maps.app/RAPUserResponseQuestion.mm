@interface RAPUserResponseQuestion
- (RAPUserResponseQuestion)initWithReport:(id)report parentQuestion:(id)question responseID:(id)d reportID:(id)iD isAnonymous:(BOOL)anonymous;
- (void)_fillSubmissionParameters:(id)parameters;
@end

@implementation RAPUserResponseQuestion

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  [parametersCopy setType:21];
  details = [parametersCopy details];

  if (!details)
  {
    v6 = objc_alloc_init(GEORPFeedbackDetails);
    [parametersCopy setDetails:v6];
  }

  v7 = objc_alloc_init(GEORPRapUserResponseFeedback);
  [v7 setResponseId:self->_responseID];
  details2 = [parametersCopy details];
  [details2 setRapUserResponseFeedback:v7];

  [parametersCopy setParentFeedbackId:self->_reportID];
  v9.receiver = self;
  v9.super_class = RAPUserResponseQuestion;
  [(RAPCommentQuestion *)&v9 _fillSubmissionParameters:parametersCopy];
}

- (RAPUserResponseQuestion)initWithReport:(id)report parentQuestion:(id)question responseID:(id)d reportID:(id)iD isAnonymous:(BOOL)anonymous
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = RAPUserResponseQuestion;
  v15 = [(RAPCommentQuestion *)&v18 initWithReport:report parentQuestion:question];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_responseID, d);
    objc_storeStrong(&v16->_reportID, iD);
    v16->_isAnonymous = anonymous;
  }

  return v16;
}

@end