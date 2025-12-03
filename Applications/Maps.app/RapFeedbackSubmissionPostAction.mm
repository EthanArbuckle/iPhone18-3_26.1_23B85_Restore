@interface RapFeedbackSubmissionPostAction
- (RapFeedbackSubmissionPostAction)initWithRapUserProfileRecord:(id)record;
- (void)performActionWithFeedbackResponse:(id)response feedbackRequest:(id)request;
@end

@implementation RapFeedbackSubmissionPostAction

- (void)performActionWithFeedbackResponse:(id)response feedbackRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  feedbackRequestParameters = [requestCopy feedbackRequestParameters];
  submissionParameters = [feedbackRequestParameters submissionParameters];
  type = [submissionParameters type];

  if (type == 21)
  {
    feedbackRequestParameters2 = [requestCopy feedbackRequestParameters];
    submissionParameters2 = [feedbackRequestParameters2 submissionParameters];
    parentFeedbackId = [submissionParameters2 parentFeedbackId];
    [RAPRecordManager editStatusOfRAPRecordWithReportID:parentFeedbackId status:0 completion:&stru_101627A80];
  }

  else
  {
    v13 = [RapUserProfileRecord alloc];
    data = [(FeedbackSubmissionPostAction *)self data];
    v15 = [(RapUserProfileRecord *)v13 initWithData:data];

    v16 = +[GEOCountryConfiguration sharedConfiguration];
    countryCode = [v16 countryCode];

    v17 = objc_alloc_init(GEORPFeedbackSubmissionParameters);
    feedbackResult = [responseCopy feedbackResult];
    submissionResult = [feedbackResult submissionResult];
    rapInfo = [submissionResult rapInfo];
    title = [rapInfo title];
    stringValue = [title stringValue];
    v46 = v17;
    if (stringValue)
    {
      [(RapUserProfileRecord *)v15 setTitle:stringValue];
    }

    else
    {
      feedbackRequestParameters3 = [requestCopy feedbackRequestParameters];
      submissionParameters3 = [feedbackRequestParameters3 submissionParameters];
      v25 = [v17 stringForFeedbackType:{objc_msgSend(submissionParameters3, "type")}];
      [(RapUserProfileRecord *)v15 setTitle:v25];
    }

    feedbackResult2 = [responseCopy feedbackResult];
    submissionResult2 = [feedbackResult2 submissionResult];
    rapInfo2 = [submissionResult2 rapInfo];
    summary = [rapInfo2 summary];
    stringValue2 = [summary stringValue];
    [(RapUserProfileRecord *)v15 setSubtitle:stringValue2];

    v41 = [RAPRecord alloc];
    feedbackResult3 = [responseCopy feedbackResult];
    submissionResult3 = [feedbackResult3 submissionResult];
    feedbackId = [submissionResult3 feedbackId];
    feedbackRequestParameters4 = [requestCopy feedbackRequestParameters];
    submissionParameters4 = [feedbackRequestParameters4 submissionParameters];
    type2 = [submissionParameters4 type];
    subtitle = [(RapUserProfileRecord *)v15 subtitle];
    title2 = [(RapUserProfileRecord *)v15 title];
    v34 = +[NSDate now];
    userInfo = [requestCopy userInfo];
    tdmUserInfo = [userInfo tdmUserInfo];
    [tdmUserInfo anonymousUserId];
    v37 = feedbackRequestParameters2 = v15;
    LOWORD(v39) = 0;
    submissionParameters2 = countryCode;
    v38 = [(RAPRecord *)v41 initWithReportID:feedbackId reportType:type2 reportSummary:subtitle reportTitle:title2 dateOfReportCreation:v34 countryCodeUponCreation:countryCode reportStatus:v39 contentData:feedbackRequestParameters2 communityIdentifier:v37 rapResponse:0];

    [RAPRecordManager addRAPRecord:v38 completion:&stru_101627AA0];
    parentFeedbackId = v46;
  }
}

- (RapFeedbackSubmissionPostAction)initWithRapUserProfileRecord:(id)record
{
  recordCopy = record;
  v8.receiver = self;
  v8.super_class = RapFeedbackSubmissionPostAction;
  v5 = [(RapFeedbackSubmissionPostAction *)&v8 init];
  if (v5)
  {
    data = [recordCopy data];
    [(FeedbackSubmissionPostAction *)v5 setData:data];
  }

  return v5;
}

@end