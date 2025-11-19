@interface RAPUserResponseQuestion
- (RAPUserResponseQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 responseID:(id)a5 reportID:(id)a6 isAnonymous:(BOOL)a7;
- (void)_fillSubmissionParameters:(id)a3;
@end

@implementation RAPUserResponseQuestion

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  [v4 setType:21];
  v5 = [v4 details];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackDetails);
    [v4 setDetails:v6];
  }

  v7 = objc_alloc_init(GEORPRapUserResponseFeedback);
  [v7 setResponseId:self->_responseID];
  v8 = [v4 details];
  [v8 setRapUserResponseFeedback:v7];

  [v4 setParentFeedbackId:self->_reportID];
  v9.receiver = self;
  v9.super_class = RAPUserResponseQuestion;
  [(RAPCommentQuestion *)&v9 _fillSubmissionParameters:v4];
}

- (RAPUserResponseQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 responseID:(id)a5 reportID:(id)a6 isAnonymous:(BOOL)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = RAPUserResponseQuestion;
  v15 = [(RAPCommentQuestion *)&v18 initWithReport:a3 parentQuestion:a4];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_responseID, a5);
    objc_storeStrong(&v16->_reportID, a6);
    v16->_isAnonymous = a7;
  }

  return v16;
}

@end