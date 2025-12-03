@interface AFSiriAnnounceWorkoutVoiceFeedbackRequest
+ (void)deactivateRequestForFeedbackIdentifier:(id)identifier completion:(id)completion;
- (AFSiriAnnounceWorkoutVoiceFeedbackRequest)initWithVoiceFeedbackData:(id)data;
- (AFSiriAnnounceWorkoutVoiceFeedbackRequest)initWithWorkoutVoiceFeedback:(id)feedback;
- (void)performRequestWithCompletion:(id)completion;
@end

@implementation AFSiriAnnounceWorkoutVoiceFeedbackRequest

- (void)performRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    workoutVoiceFeedback = self->_workoutVoiceFeedback;
    *buf = 136315394;
    v28 = "[AFSiriAnnounceWorkoutVoiceFeedbackRequest performRequestWithCompletion:]";
    v29 = 2112;
    v30 = workoutVoiceFeedback;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Creating xpc for workout voice feedback announcement:%@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_20;
    }
  }

  else if (!completionCopy)
  {
    goto LABEL_20;
  }

  v6 = self->_workoutVoiceFeedback;
  v24 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v24];
  v8 = v24;
  if (v8 || !v7)
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "[AFSiriAnnounceWorkoutVoiceFeedbackRequest performRequestWithCompletion:]";
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to serialize workoutvoice feedback audio %@: %@", buf, 0x20u);
    }

    completionCopy[2](completionCopy, 0);
    v11 = 0;
  }

  else
  {
    v9 = v7;
    v10 = xpc_data_create([(AFSiriWorkoutVoiceFeedback *)v7 bytes], [(AFSiriWorkoutVoiceFeedback *)v7 length]);
    keys[0] = AFExternalRequestMessageKeyType;
    keys[1] = AFExternalRequestMessageKeyWorkoutVoiceFeedbackAnnouncement;
    values[0] = xpc_int64_create(14);
    v11 = v10;
    values[1] = v11;
    v12 = xpc_dictionary_create(keys, values, 2uLL);
    v13 = _ExternalRequestConnection();
    v14 = v13;
    v15 = AFSiriLogContextConnection;
    if (v12 && v13)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v20 = self->_workoutVoiceFeedback;
        *buf = 136315394;
        v28 = "[AFSiriAnnounceWorkoutVoiceFeedbackRequest performRequestWithCompletion:]";
        v29 = 2112;
        v30 = v20;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Sending workout voice feedback announcement xpc message for %@", buf, 0x16u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100374A74;
      handler[3] = &unk_10051E228;
      v23 = completionCopy;
      v22 = v14;
      xpc_connection_send_message_with_reply(v22, v12, 0, handler);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v19 = self->_workoutVoiceFeedback;
        *buf = 136315394;
        v28 = "[AFSiriAnnounceWorkoutVoiceFeedbackRequest performRequestWithCompletion:]";
        v29 = 2112;
        v30 = v19;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unable to send workout voice feedback annoucement xpc message for %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0);
      if (v14)
      {
        xpc_connection_cancel(v14);
      }
    }

    for (i = 1; i != -1; --i)
    {
    }
  }

LABEL_20:
}

- (AFSiriAnnounceWorkoutVoiceFeedbackRequest)initWithWorkoutVoiceFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v9.receiver = self;
  v9.super_class = AFSiriAnnounceWorkoutVoiceFeedbackRequest;
  v5 = [(AFSiriAnnounceWorkoutVoiceFeedbackRequest *)&v9 init];
  if (v5)
  {
    v6 = [feedbackCopy copy];
    workoutVoiceFeedback = v5->_workoutVoiceFeedback;
    v5->_workoutVoiceFeedback = v6;
  }

  return v5;
}

- (AFSiriAnnounceWorkoutVoiceFeedbackRequest)initWithVoiceFeedbackData:(id)data
{
  v4.receiver = self;
  v4.super_class = AFSiriAnnounceWorkoutVoiceFeedbackRequest;
  return [(AFSiriAnnounceWorkoutVoiceFeedbackRequest *)&v4 init];
}

+ (void)deactivateRequestForFeedbackIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "+[AFSiriAnnounceWorkoutVoiceFeedbackRequest deactivateRequestForFeedbackIdentifier:completion:]";
    v27 = 2112;
    v28 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Creating xpc to deactivate workout voice feedback announcement with feedback identifier: %@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_20;
    }
  }

  else if (!completionCopy)
  {
    goto LABEL_20;
  }

  v22 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:identifierCopy requiringSecureCoding:1 error:&v22];
  v9 = v22;
  if (v9 || !v8)
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "+[AFSiriAnnounceWorkoutVoiceFeedbackRequest deactivateRequestForFeedbackIdentifier:completion:]";
      v27 = 2112;
      v28 = identifierCopy;
      v29 = 2112;
      v30 = v9;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to serialize workout voice feedback identifier %@: %@", buf, 0x20u);
    }

    completionCopy[2](completionCopy, 0);
    v12 = 0;
  }

  else
  {
    v10 = v8;
    v11 = xpc_data_create([v8 bytes], objc_msgSend(v8, "length"));
    keys[0] = AFExternalRequestMessageKeyType;
    keys[1] = AFExternalRequestMessageKeyWorkoutVoiceFeedbackIdentifier;
    values[0] = xpc_int64_create(15);
    v12 = v11;
    values[1] = v12;
    v13 = xpc_dictionary_create(keys, values, 2uLL);
    v14 = _ExternalRequestConnection();
    v15 = v14;
    v16 = AFSiriLogContextConnection;
    if (v13 && v14)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v26 = "+[AFSiriAnnounceWorkoutVoiceFeedbackRequest deactivateRequestForFeedbackIdentifier:completion:]";
        v27 = 2112;
        v28 = identifierCopy;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Sending deactivate workout voice feedback xpc message for workout voice feedback identifier: %@", buf, 0x16u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100374F48;
      handler[3] = &unk_10051E228;
      v21 = completionCopy;
      v20 = v15;
      xpc_connection_send_message_with_reply(v20, v13, 0, handler);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "+[AFSiriAnnounceWorkoutVoiceFeedbackRequest deactivateRequestForFeedbackIdentifier:completion:]";
        v27 = 2112;
        v28 = identifierCopy;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to send deactivate request xpc message for workout voice feedback %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0);
      if (v15)
      {
        xpc_connection_cancel(v15);
      }
    }

    for (i = 1; i != -1; --i)
    {
    }
  }

LABEL_20:
}

@end