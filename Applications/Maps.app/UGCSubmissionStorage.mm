@interface UGCSubmissionStorage
+ (unint64_t)muidForClientSubmissionIdentifier:(id)identifier;
+ (void)removeClientSubmissionIdentifier:(id)identifier;
+ (void)setMUIDAndSubmissionIdentifierWithCorrectionsRequest:(id)request;
@end

@implementation UGCSubmissionStorage

+ (void)removeClientSubmissionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = +[NSUserDefaults standardUserDefaults];
  v4 = [v7 objectForKey:@"UGCPendingSubmissions"];
  v5 = [v4 mutableCopy];

  [v5 removeObjectForKey:identifierCopy];
  v6 = [v5 copy];
  [v7 setObject:v6 forKey:@"UGCPendingSubmissions"];
}

+ (void)setMUIDAndSubmissionIdentifierWithCorrectionsRequest:(id)request
{
  requestCopy = request;
  feedbackRequestParameters = [requestCopy feedbackRequestParameters];
  submissionParameters = [feedbackRequestParameters submissionParameters];
  type = [submissionParameters type];

  if (type == 10)
  {
    feedbackRequestParameters2 = [requestCopy feedbackRequestParameters];
    submissionParameters2 = [feedbackRequestParameters2 submissionParameters];
    details = [submissionParameters2 details];
    poiEnrichmentUpdate = [details poiEnrichmentUpdate];

    if ([poiEnrichmentUpdate hasPlaceContext])
    {
      placeContext = [poiEnrichmentUpdate placeContext];
      muid = [placeContext muid];

      feedbackRequestParameters3 = [requestCopy feedbackRequestParameters];
      submissionParameters3 = [feedbackRequestParameters3 submissionParameters];
      clientSubmissionUuid = [submissionParameters3 clientSubmissionUuid];

      if (muid && [clientSubmissionUuid length])
      {
        v16 = +[NSUserDefaults standardUserDefaults];
        v17 = [v16 dictionaryForKey:@"UGCPendingSubmissions"];
        v18 = [v17 mutableCopy];

        if (!v18)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
        }

        if ([clientSubmissionUuid length])
        {
          v19 = [NSNumber numberWithUnsignedLongLong:muid];
          [v18 setObject:v19 forKey:clientSubmissionUuid];
        }

        v20 = [v18 copy];
        [v16 setObject:v20 forKey:@"UGCPendingSubmissions"];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        *v21 = 0;
        _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: muid > 0 && clientIdentifier.length > 0", v21, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: enrichment.hasPlaceContext", buf, 2u);
    }
  }
}

+ (unint64_t)muidForClientSubmissionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryForKey:@"UGCPendingSubmissions"];
  v6 = [v5 objectForKey:identifierCopy];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

@end