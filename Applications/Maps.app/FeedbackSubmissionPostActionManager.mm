@interface FeedbackSubmissionPostActionManager
- (BOOL)saveFeedbackObject:(id)object forSubmissionIdentifier:(id)identifier;
- (FeedbackSubmissionPostActionManager)init;
- (void)performActionWithFeedbackResponse:(id)response feedbackRequest:(id)request;
@end

@implementation FeedbackSubmissionPostActionManager

- (FeedbackSubmissionPostActionManager)init
{
  v6.receiver = self;
  v6.super_class = FeedbackSubmissionPostActionManager;
  v2 = [(FeedbackSubmissionPostActionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FeedbackSubmissionPostActionStorage);
    submissionStorage = v2->_submissionStorage;
    v2->_submissionStorage = v3;
  }

  return v2;
}

- (void)performActionWithFeedbackResponse:(id)response feedbackRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  feedbackRequestParameters = [requestCopy feedbackRequestParameters];
  submissionParameters = [feedbackRequestParameters submissionParameters];
  clientSubmissionUuid = [submissionParameters clientSubmissionUuid];

  feedbackRequestParameters2 = [requestCopy feedbackRequestParameters];
  submissionParameters2 = [feedbackRequestParameters2 submissionParameters];
  hasClientSubmissionUuid = [submissionParameters2 hasClientSubmissionUuid];

  if (hasClientSubmissionUuid && clientSubmissionUuid)
  {
    v14 = [(FeedbackSubmissionPostActionStorage *)self->_submissionStorage feedbackActionForSubmissionIdentifier:clientSubmissionUuid];
    [v14 performActionWithFeedbackResponse:responseCopy feedbackRequest:requestCopy];
    [(FeedbackSubmissionPostActionStorage *)self->_submissionStorage removefeedbackActionForSubmissionIdentifier:clientSubmissionUuid];
  }

  else
  {
    v15 = sub_10002E924();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = requestCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "SubmissionIdentifier is nil. Check feedbackRequest %@", &v16, 0xCu);
    }
  }
}

- (BOOL)saveFeedbackObject:(id)object forSubmissionIdentifier:(id)identifier
{
  objectCopy = object;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    v9 = [[RapFeedbackSubmissionPostAction alloc] initWithRapUserProfileRecord:v8];
    v10 = [(FeedbackSubmissionPostActionStorage *)self->_submissionStorage saveFeedbackAction:v9 forSubmissionIdentifier:identifierCopy];
    v11 = sub_10002E924();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = identifierCopy;
        v13 = "Successfully saved feedback action to disk %@";
        v14 = v12;
        v15 = OS_LOG_TYPE_INFO;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v14, v15, v13, &v17, 0xCu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = identifierCopy;
      v13 = "Failed to save feedback action to disk %@";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  LOBYTE(v10) = 0;
LABEL_10:

  return v10;
}

@end