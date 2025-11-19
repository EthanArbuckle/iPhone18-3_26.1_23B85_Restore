@interface RapFeedbackSubmissionPostAction
- (RapFeedbackSubmissionPostAction)initWithRapUserProfileRecord:(id)a3;
- (void)performActionWithFeedbackResponse:(id)a3 feedbackRequest:(id)a4;
@end

@implementation RapFeedbackSubmissionPostAction

- (void)performActionWithFeedbackResponse:(id)a3 feedbackRequest:(id)a4
{
  v48 = a3;
  v6 = a4;
  v7 = [v6 feedbackRequestParameters];
  v8 = [v7 submissionParameters];
  v9 = [v8 type];

  if (v9 == 21)
  {
    v10 = [v6 feedbackRequestParameters];
    v11 = [v10 submissionParameters];
    v12 = [v11 parentFeedbackId];
    [RAPRecordManager editStatusOfRAPRecordWithReportID:v12 status:0 completion:&stru_101627A80];
  }

  else
  {
    v13 = [RapUserProfileRecord alloc];
    v14 = [(FeedbackSubmissionPostAction *)self data];
    v15 = [(RapUserProfileRecord *)v13 initWithData:v14];

    v16 = +[GEOCountryConfiguration sharedConfiguration];
    v47 = [v16 countryCode];

    v17 = objc_alloc_init(GEORPFeedbackSubmissionParameters);
    v18 = [v48 feedbackResult];
    v19 = [v18 submissionResult];
    v20 = [v19 rapInfo];
    v21 = [v20 title];
    v22 = [v21 stringValue];
    v46 = v17;
    if (v22)
    {
      [(RapUserProfileRecord *)v15 setTitle:v22];
    }

    else
    {
      v23 = [v6 feedbackRequestParameters];
      v24 = [v23 submissionParameters];
      v25 = [v17 stringForFeedbackType:{objc_msgSend(v24, "type")}];
      [(RapUserProfileRecord *)v15 setTitle:v25];
    }

    v26 = [v48 feedbackResult];
    v27 = [v26 submissionResult];
    v28 = [v27 rapInfo];
    v29 = [v28 summary];
    v30 = [v29 stringValue];
    [(RapUserProfileRecord *)v15 setSubtitle:v30];

    v41 = [RAPRecord alloc];
    v45 = [v48 feedbackResult];
    v44 = [v45 submissionResult];
    v40 = [v44 feedbackId];
    v43 = [v6 feedbackRequestParameters];
    v42 = [v43 submissionParameters];
    v31 = [v42 type];
    v32 = [(RapUserProfileRecord *)v15 subtitle];
    v33 = [(RapUserProfileRecord *)v15 title];
    v34 = +[NSDate now];
    v35 = [v6 userInfo];
    v36 = [v35 tdmUserInfo];
    [v36 anonymousUserId];
    v37 = v10 = v15;
    LOWORD(v39) = 0;
    v11 = v47;
    v38 = [(RAPRecord *)v41 initWithReportID:v40 reportType:v31 reportSummary:v32 reportTitle:v33 dateOfReportCreation:v34 countryCodeUponCreation:v47 reportStatus:v39 contentData:v10 communityIdentifier:v37 rapResponse:0];

    [RAPRecordManager addRAPRecord:v38 completion:&stru_101627AA0];
    v12 = v46;
  }
}

- (RapFeedbackSubmissionPostAction)initWithRapUserProfileRecord:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RapFeedbackSubmissionPostAction;
  v5 = [(RapFeedbackSubmissionPostAction *)&v8 init];
  if (v5)
  {
    v6 = [v4 data];
    [(FeedbackSubmissionPostAction *)v5 setData:v6];
  }

  return v5;
}

@end