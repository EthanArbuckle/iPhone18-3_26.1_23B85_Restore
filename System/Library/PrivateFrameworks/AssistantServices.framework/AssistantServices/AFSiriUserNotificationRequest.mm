@interface AFSiriUserNotificationRequest
+ (BOOL)canBeHandled;
+ (BOOL)supportedOnPlatform;
- (AFSiriUserNotificationRequest)initWithUserNotification:(id)a3 sourceAppId:(id)a4 platform:(int64_t)a5 summaryDecision:(int64_t)a6 summary:(id)a7;
- (void)deactivateRequestForReason:(int64_t)a3 completion:(id)a4;
- (void)deliverSummary:(id)a3 completion:(id)a4;
- (void)performRequestWithCompletion:(id)a3;
- (void)withdrawalRequestWithCompletion:(id)a3;
@end

@implementation AFSiriUserNotificationRequest

- (void)deliverSummary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v34];
  v9 = v34;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    notification = self->_notification;
    v33 = 0;
    v14 = [NSKeyedArchiver archivedDataWithRootObject:notification requiringSecureCoding:1 error:&v33];
    v15 = v33;
    v16 = v15;
    v29 = v15;
    if (v15 || !v14)
    {
      v26 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v28 = self->_notification;
        *keys = 136315650;
        *&keys[4] = "[AFSiriUserNotificationRequest deliverSummary:completion:]";
        *&keys[12] = 2112;
        *&keys[14] = v28;
        *&keys[22] = 2112;
        v41 = v16;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Failed to serialize notification %@: %@", keys, 0x20u);
      }

      v7[2](v7, 0);
      v21 = 0;
      v12 = 0;
      goto LABEL_26;
    }

    v17 = v14;
    v18 = xpc_data_create([v14 bytes], objc_msgSend(v14, "length"));
    v19 = v8;
    v20 = xpc_data_create([v8 bytes], objc_msgSend(v8, "length"));
    *keys = AFExternalRequestMessageKeyType;
    *&keys[8] = AFExternalRequestMessageKeySummary;
    *&keys[16] = AFExternalRequestMessageKeyNotification;
    values[0] = xpc_int64_create(16);
    v12 = v20;
    values[1] = v12;
    v21 = v18;
    values[2] = v21;
    v22 = xpc_dictionary_create(keys, values, 3uLL);
    v23 = _ExternalRequestConnection();
    v24 = v23;
    v25 = AFSiriLogContextConnection;
    if (v22 && v23)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v36 = "[AFSiriUserNotificationRequest deliverSummary:completion:]";
        v37 = 2112;
        v38 = v6;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s Sending xpc message for %@", buf, 0x16u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1002393EC;
      handler[3] = &unk_10051E228;
      v32 = v7;
      v31 = v24;
      xpc_connection_send_message_with_reply(v31, v22, 0, handler);

LABEL_24:
      for (i = 2; i != -1; --i)
      {
      }

LABEL_26:

      goto LABEL_27;
    }

    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[AFSiriUserNotificationRequest deliverSummary:completion:]";
      v37 = 2112;
      v38 = v6;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Unable to send xpc message for %@", buf, 0x16u);
      if (!v7)
      {
LABEL_22:
        if (v24)
        {
          xpc_connection_cancel(v24);
        }

        goto LABEL_24;
      }
    }

    else if (!v7)
    {
      goto LABEL_22;
    }

    v7[2](v7, 0);
    goto LABEL_22;
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *keys = 136315650;
    *&keys[4] = "[AFSiriUserNotificationRequest deliverSummary:completion:]";
    *&keys[12] = 2112;
    *&keys[14] = v6;
    *&keys[22] = 2112;
    v41 = v9;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to serialize summary %@: %@", keys, 0x20u);
  }

  v7[2](v7, 0);
  v12 = 0;
LABEL_27:
}

- (void)withdrawalRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    notification = self->_notification;
    *buf = 136315394;
    v29 = "[AFSiriUserNotificationRequest withdrawalRequestWithCompletion:]";
    v30 = 2112;
    v31 = notification;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  v6 = self->_notification;
  v25 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25];
  v8 = v25;
  if (!v8 && v7)
  {
    v9 = v7;
    v10 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
    keys[0] = AFExternalRequestMessageKeyType;
    keys[1] = AFExternalRequestMessageKeyNotification;
    values[0] = xpc_int64_create(10);
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
        v21 = self->_notification;
        *buf = 136315394;
        v29 = "[AFSiriUserNotificationRequest withdrawalRequestWithCompletion:]";
        v30 = 2112;
        v31 = v21;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Sending xpc message for %@", buf, 0x16u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100239830;
      handler[3] = &unk_10051E228;
      v24 = v4;
      v23 = v14;
      xpc_connection_send_message_with_reply(v23, v12, 0, handler);

LABEL_18:
      for (i = 1; i != -1; --i)
      {
      }

      goto LABEL_20;
    }

    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v20 = self->_notification;
      *buf = 136315394;
      v29 = "[AFSiriUserNotificationRequest withdrawalRequestWithCompletion:]";
      v30 = 2112;
      v31 = v20;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unable to send xpc message for %@", buf, 0x16u);
      if (!v4)
      {
LABEL_16:
        if (v14)
        {
          xpc_connection_cancel(v14);
        }

        goto LABEL_18;
      }
    }

    else if (!v4)
    {
      goto LABEL_16;
    }

    (*(v4 + 2))(v4, 0);
    goto LABEL_16;
  }

  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v19 = self->_notification;
    *buf = 136315650;
    v29 = "[AFSiriUserNotificationRequest withdrawalRequestWithCompletion:]";
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = v8;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to serialize notification %@: %@", buf, 0x20u);
  }

  (*(v4 + 2))(v4, 0);
  v11 = 0;
LABEL_20:
}

- (void)deactivateRequestForReason:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v22 = v7;
    v23 = AFSiriDeactivationReasonGetName();
    *keys = 136315394;
    *&keys[4] = "[AFSiriUserNotificationRequest deactivateRequestForReason:completion:]";
    *&keys[12] = 2112;
    *&keys[14] = v23;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s reason: %@", keys, 0x16u);
  }

  if (self->_platform == 2)
  {
    if (AFSiriDeactivationReasonGetIsValidAndSpecified())
    {
      notification = self->_notification;
      v28 = 0;
      v9 = [NSKeyedArchiver archivedDataWithRootObject:notification requiringSecureCoding:1 error:&v28];
      v10 = v28;
      if (!v10 && v9)
      {
        v11 = v9;
        v12 = xpc_data_create([v9 bytes], objc_msgSend(v9, "length"));
        *keys = AFExternalRequestMessageKeyType;
        *&keys[8] = AFExternalRequestMessageKeyNotification;
        *&keys[16] = AFExternalRequestMessageKeySourceAppId;
        v33 = AFExternalRequestMessageKeyAnnouncementPlatform;
        v34 = AFExternalRequestMessageKeyDeactivationReason;
        values[0] = xpc_int64_create(9);
        v13 = v12;
        values[1] = v13;
        values[2] = xpc_string_create([(NSString *)self->_sourceAppId UTF8String]);
        values[3] = xpc_int64_create(self->_platform);
        values[4] = xpc_int64_create(a3);
        v14 = xpc_dictionary_create(keys, values, 5uLL);
        v15 = _ExternalRequestConnection();
        v16 = v15;
        v17 = AFSiriLogContextConnection;
        if (v14 && v15)
        {
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v30 = "[AFSiriUserNotificationRequest deactivateRequestForReason:completion:]";
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Sending xpc message for request deactivation.", buf, 0xCu);
          }

          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100239E1C;
          handler[3] = &unk_10051E228;
          v27 = v6;
          v26 = v16;
          xpc_connection_send_message_with_reply(v26, v14, 0, handler);

LABEL_27:
          for (i = 4; i != -1; --i)
          {
          }

          goto LABEL_29;
        }

        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v30 = "[AFSiriUserNotificationRequest deactivateRequestForReason:completion:]";
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unable to send xpc message for request deactivation.", buf, 0xCu);
          if (!v6)
          {
LABEL_25:
            if (v16)
            {
              xpc_connection_cancel(v16);
            }

            goto LABEL_27;
          }
        }

        else if (!v6)
        {
          goto LABEL_25;
        }

        (*(v6 + 2))(v6, 0);
        goto LABEL_25;
      }

      v20 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v24 = self->_notification;
        *keys = 136315650;
        *&keys[4] = "[AFSiriUserNotificationRequest deactivateRequestForReason:completion:]";
        *&keys[12] = 2112;
        *&keys[14] = v24;
        *&keys[22] = 2112;
        v33 = v10;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Failed to serialize notification %@: %@", keys, 0x20u);
        if (!v6)
        {
          goto LABEL_21;
        }
      }

      else if (!v6)
      {
LABEL_21:
        v13 = 0;
LABEL_29:

        goto LABEL_30;
      }

      (*(v6 + 2))(v6, 0);
      goto LABEL_21;
    }

    v19 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *keys = 136315394;
      *&keys[4] = "[AFSiriUserNotificationRequest deactivateRequestForReason:completion:]";
      *&keys[12] = 2048;
      *&keys[14] = a3;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s unspecified deactivation reason %li. Ignoring.", keys, 0x16u);
      if (!v6)
      {
        goto LABEL_30;
      }
    }

    else if (!v6)
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v18 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *keys = 136315138;
    *&keys[4] = "[AFSiriUserNotificationRequest deactivateRequestForReason:completion:]";
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s deactivation requests are currently only supported for CarPlay.", keys, 0xCu);
    if (!v6)
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  if (v6)
  {
LABEL_14:
    (*(v6 + 2))(v6, 0);
  }

LABEL_30:
}

- (void)performRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    notification = self->_notification;
    *keys = 136315394;
    *&keys[4] = "[AFSiriUserNotificationRequest performRequestWithCompletion:]";
    *&keys[12] = 2112;
    *&keys[14] = notification;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", keys, 0x16u);
  }

  v6 = self->_notification;
  v33 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v33];
  v8 = v33;
  if (!v8 && v7)
  {
    v9 = v7;
    v10 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
    summary = self->_summary;
    v32 = 0;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:summary requiringSecureCoding:1 error:&v32];
    v28 = v32;
    if (v28 || !v12)
    {
      v19 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v23 = self->_summary;
        *keys = 136315650;
        *&keys[4] = "[AFSiriUserNotificationRequest performRequestWithCompletion:]";
        *&keys[12] = 2112;
        *&keys[14] = v23;
        *&keys[22] = 2112;
        v40 = v28;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Failed to serialize summary %@: %@", keys, 0x20u);
      }

      v4[2](v4, 0);
      v14 = 0;
      goto LABEL_25;
    }

    v13 = v12;
    messagea = xpc_data_create([v12 bytes], objc_msgSend(v12, "length"));
    *keys = AFExternalRequestMessageKeyType;
    *&keys[8] = AFExternalRequestMessageKeyNotification;
    *&keys[16] = AFExternalRequestMessageKeySourceAppId;
    v40 = AFExternalRequestMessageKeyAnnouncementPlatform;
    v41 = AFExternalRequestMessageKeySummaryDecision;
    v42 = AFExternalRequestMessageKeySummary;
    values[0] = xpc_int64_create(2);
    values[1] = v10;
    values[2] = xpc_string_create([(NSString *)self->_sourceAppId UTF8String]);
    values[3] = xpc_int64_create(self->_platform);
    values[4] = xpc_int64_create(self->_summaryDecision);
    v14 = messagea;
    values[5] = v14;
    message = xpc_dictionary_create(keys, values, 6uLL);
    v15 = _ExternalRequestConnection();
    v16 = v15;
    v17 = AFSiriLogContextConnection;
    if (message && v15)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v25 = self->_notification;
        *buf = 136315394;
        v35 = "[AFSiriUserNotificationRequest performRequestWithCompletion:]";
        v36 = 2112;
        v37 = v25;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Sending xpc message for %@", buf, 0x16u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10023A410;
      handler[3] = &unk_10051E228;
      v31 = v4;
      v30 = v16;
      xpc_connection_send_message_with_reply(v30, message, 0, handler);

LABEL_23:
      for (i = 5; i != -1; --i)
      {
      }

LABEL_25:

      goto LABEL_26;
    }

    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v24 = self->_notification;
      *buf = 136315394;
      v35 = "[AFSiriUserNotificationRequest performRequestWithCompletion:]";
      v36 = 2112;
      v37 = v24;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unable to send xpc message for %@", buf, 0x16u);
      if (!v4)
      {
LABEL_21:
        if (v16)
        {
          xpc_connection_cancel(v16);
        }

        goto LABEL_23;
      }
    }

    else if (!v4)
    {
      goto LABEL_21;
    }

    v4[2](v4, 0);
    goto LABEL_21;
  }

  v18 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v22 = self->_notification;
    *keys = 136315650;
    *&keys[4] = "[AFSiriUserNotificationRequest performRequestWithCompletion:]";
    *&keys[12] = 2112;
    *&keys[14] = v22;
    *&keys[22] = 2112;
    v40 = v8;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Failed to serialize notification %@: %@", keys, 0x20u);
  }

  v4[2](v4, 0);
  v10 = 0;
LABEL_26:
}

- (AFSiriUserNotificationRequest)initWithUserNotification:(id)a3 sourceAppId:(id)a4 platform:(int64_t)a5 summaryDecision:(int64_t)a6 summary:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = AFSiriUserNotificationRequest;
  v16 = [(AFSiriUserNotificationRequest *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_notification, a3);
    objc_storeStrong(&v17->_sourceAppId, a4);
    v17->_platform = a5;
    v17->_summaryDecision = a6;
    objc_storeStrong(&v17->_summary, a7);
  }

  return v17;
}

+ (BOOL)supportedOnPlatform
{
  v2 = +[AFSiriUserNotificationRequestCapabilityManager sharedManager];
  v3 = [v2 hasEligibleSetup];

  return v3;
}

+ (BOOL)canBeHandled
{
  v2 = +[AFSiriUserNotificationRequestCapabilityManager sharedManager];
  v3 = [v2 requestCanBeHandled];

  return v3;
}

@end