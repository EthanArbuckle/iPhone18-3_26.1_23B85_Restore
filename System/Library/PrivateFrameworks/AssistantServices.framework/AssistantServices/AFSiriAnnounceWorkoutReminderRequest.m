@interface AFSiriAnnounceWorkoutReminderRequest
+ (void)deactivateRequestForPredictionIdentifier:(id)a3 completion:(id)a4;
- (AFSiriAnnounceWorkoutReminderRequest)initWithWorkoutReminder:(id)a3;
- (void)performRequestWithCompletion:(id)a3;
@end

@implementation AFSiriAnnounceWorkoutReminderRequest

- (void)performRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    workoutReminder = self->_workoutReminder;
    *buf = 136315394;
    v29 = "[AFSiriAnnounceWorkoutReminderRequest performRequestWithCompletion:]";
    v30 = 2112;
    v31 = workoutReminder;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Creating xpc for workout reminder announcement:%@", buf, 0x16u);
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  else if (!v4)
  {
    goto LABEL_20;
  }

  v6 = self->_workoutReminder;
  v25 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25];
  v8 = v25;
  if (v8 || !v7)
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v19 = self->_workoutReminder;
      *buf = 136315650;
      v29 = "[AFSiriAnnounceWorkoutReminderRequest performRequestWithCompletion:]";
      v30 = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = v8;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to serialize workoutReminder %@: %@", buf, 0x20u);
    }

    v4[2](v4, 0);
    v11 = 0;
  }

  else
  {
    v9 = v7;
    v10 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
    keys[0] = AFExternalRequestMessageKeyType;
    keys[1] = AFExternalRequestMessageKeyWorkoutReminderAnnouncement;
    values[0] = xpc_int64_create(12);
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
        v21 = self->_workoutReminder;
        *buf = 136315394;
        v29 = "[AFSiriAnnounceWorkoutReminderRequest performRequestWithCompletion:]";
        v30 = 2112;
        v31 = v21;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Sending workout reminder announcement xpc message for %@", buf, 0x16u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000D0A04;
      handler[3] = &unk_10051E228;
      v24 = v4;
      v23 = v14;
      xpc_connection_send_message_with_reply(v23, v12, 0, handler);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v20 = self->_workoutReminder;
        *buf = 136315394;
        v29 = "[AFSiriAnnounceWorkoutReminderRequest performRequestWithCompletion:]";
        v30 = 2112;
        v31 = v20;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unable to send workout reminder annoucement xpc message for %@", buf, 0x16u);
      }

      v4[2](v4, 0);
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

- (AFSiriAnnounceWorkoutReminderRequest)initWithWorkoutReminder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFSiriAnnounceWorkoutReminderRequest;
  v5 = [(AFSiriAnnounceWorkoutReminderRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    workoutReminder = v5->_workoutReminder;
    v5->_workoutReminder = v6;
  }

  return v5;
}

+ (void)deactivateRequestForPredictionIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  AFLogInitIfNeeded();
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "+[AFSiriAnnounceWorkoutReminderRequest deactivateRequestForPredictionIdentifier:completion:]";
    v27 = 2112;
    v28 = v5;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Creating xpc to deactivate workout reminder announcement with prediction identifier: %@", buf, 0x16u);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (!v6)
  {
    goto LABEL_20;
  }

  v22 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v22];
  v9 = v22;
  if (v9 || !v8)
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "+[AFSiriAnnounceWorkoutReminderRequest deactivateRequestForPredictionIdentifier:completion:]";
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v9;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to serialize workout reminder prediction identifier %@: %@", buf, 0x20u);
    }

    v6[2](v6, 0);
    v12 = 0;
  }

  else
  {
    v10 = v8;
    v11 = xpc_data_create([v8 bytes], objc_msgSend(v8, "length"));
    keys[0] = AFExternalRequestMessageKeyType;
    keys[1] = AFExternalRequestMessageKeyWorkoutReminderPredictionIdentifier;
    values[0] = xpc_int64_create(13);
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
        v26 = "+[AFSiriAnnounceWorkoutReminderRequest deactivateRequestForPredictionIdentifier:completion:]";
        v27 = 2112;
        v28 = v5;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Sending deactivate workout reminder xpc message for prediction identifier:%@", buf, 0x16u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000D0EA4;
      handler[3] = &unk_10051E228;
      v21 = v6;
      v20 = v15;
      xpc_connection_send_message_with_reply(v20, v13, 0, handler);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "+[AFSiriAnnounceWorkoutReminderRequest deactivateRequestForPredictionIdentifier:completion:]";
        v27 = 2112;
        v28 = v5;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to send deactivate request xpc message for workout prediction %@", buf, 0x16u);
      }

      v6[2](v6, 0);
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