@interface TUCall
- (BOOL)canDisplayAlertUI:(BOOL)a3;
- (BOOL)carrierAllowsReportVoiceCall;
- (BOOL)isBranded;
- (BOOL)isCallbackAllowed;
- (BOOL)isMessagingAllowed;
- (BOOL)isReminderAllowed;
- (BOOL)isSOSOrFakeSOS;
- (BOOL)isThumper;
- (NSString)carrierName;
@end

@implementation TUCall

- (BOOL)canDisplayAlertUI:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  LOBYTE(v3) = sub_100005014(v3);

  return v3 & 1;
}

- (BOOL)isBranded
{
  v3 = [(TUCall *)self imageURL];
  if (v3)
  {
    v4 = [(TUCall *)self localizedLabel];
    if (v4)
    {
      v5 = [(TUCall *)self callDirectoryName];
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isMessagingAllowed
{
  if (+[PHSOSViewController isSOSDismissalAssertionActive])
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      v4 = "isMessagingAllowed returning false due sos being enabled.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v21, 2u);
    }
  }

  else
  {
    v5 = [(TUCall *)self handle];
    v6 = [v5 value];
    v7 = [v6 length];

    if (v7)
    {
      if (([(TUCall *)self hasSendMessageCapability]& 1) != 0)
      {
        if ([(TUCall *)self isBlocked])
        {
          v3 = sub_100004F84();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 0;
            v4 = "isMessagingAllowed returning false due to the caller being blocked.";
            goto LABEL_13;
          }
        }

        else
        {
          if ([(TUCall *)self isConferenced])
          {
            v3 = sub_100004F84();
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v21 = 0;
            v4 = "isMessagingAllowed returning false due to the caller being a connference call.";
            goto LABEL_13;
          }

          v9 = +[TUCallCenter sharedInstance];
          v10 = [v9 isAmbiguous];

          if (v10)
          {
            v3 = sub_100004F84();
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v21 = 0;
            v4 = "isMessagingAllowed returning false due to the caller being ambiguous";
            goto LABEL_13;
          }

          v11 = +[PHInCallUtilities sharedInstance];
          v12 = [v11 isSetupAssistantRunning];

          if (v12)
          {
            v3 = sub_100004F84();
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v21 = 0;
            v4 = "isMessagingAllowed returning false due to setup assitant running";
            goto LABEL_13;
          }

          v13 = +[PHInCallUtilities sharedInstance];
          v14 = [v13 isInLostMode];

          if (v14)
          {
            v3 = sub_100004F84();
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v21 = 0;
            v4 = "isMessagingAllowed returning false due the device being in lost mode";
            goto LABEL_13;
          }

          v15 = +[PHInCallUtilities sharedInstance];
          v16 = [v15 canSendText];

          if ((v16 & 1) == 0)
          {
            v3 = sub_100004F84();
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v21 = 0;
            v4 = "isMessagingAllowed returning false due being unable to send texts.";
            goto LABEL_13;
          }

          v17 = +[PHInCallUtilities sharedInstance];
          v18 = [v17 isSMSRestricted];

          if (v18)
          {
            v3 = sub_100004F84();
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v21 = 0;
            v4 = "isMessagingAllowed returning false due to being sms restricted.";
            goto LABEL_13;
          }

          if (!+[PHInCallUIUtilities isSpringBoardPasscodeLocked])
          {
            return 1;
          }

          v19 = +[PHInCallUtilities sharedInstance];
          v20 = [v19 isLockScreenMessagingAllowed];

          if (v20)
          {
            return 1;
          }

          v3 = sub_100004F84();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 0;
            v4 = "isMessagingAllowed returning false due to springboard being password locked.";
            goto LABEL_13;
          }
        }
      }

      else
      {
        v3 = sub_100004F84();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          v4 = "isMessagingAllowed returning false due to the caller not having capability to recieve a messages.";
          goto LABEL_13;
        }
      }
    }

    else
    {
      v3 = sub_100004F84();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        v4 = "isMessagingAllowed returning false due to invalid handle length of 0";
        goto LABEL_13;
      }
    }
  }

LABEL_14:

  return 0;
}

- (BOOL)isCallbackAllowed
{
  v2 = [(TUCall *)self handle];
  v3 = [v2 value];
  v4 = [v3 length];

  if (v4)
  {
    return +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isReminderAllowed
{
  if (+[PHSOSViewController isSOSDismissalAssertionActive])
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      v4 = "isReminderAllowed returning false due sos being enabled.";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v17, 2u);
    }
  }

  else
  {
    v5 = [(TUCall *)self handle];
    v6 = [v5 value];
    v7 = [v6 length];

    if (v7)
    {
      if ([(TUCall *)self isBlocked])
      {
        v3 = sub_100004F84();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v4 = "isReminderAllowed returning false due to the caller being blocked.";
          goto LABEL_25;
        }
      }

      else if ([(TUCall *)self isConferenced])
      {
        v3 = sub_100004F84();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v4 = "isReminderAllowed returning false due to the caller being a connference call.";
          goto LABEL_25;
        }
      }

      else
      {
        v8 = +[TUCallCenter sharedInstance];
        v9 = [v8 isAmbiguous];

        if (v9)
        {
          v3 = sub_100004F84();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            v4 = "isReminderAllowed returning false due to the caller being ambiguous";
            goto LABEL_25;
          }
        }

        else
        {
          v10 = +[PHInCallUtilities sharedInstance];
          v11 = [v10 isSetupAssistantRunning];

          if (v11)
          {
            v3 = sub_100004F84();
            if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              *v17 = 0;
              v4 = "isReminderAllowed returning false due to setup assitant running";
              goto LABEL_25;
            }
          }

          else
          {
            v12 = +[PHInCallUtilities sharedInstance];
            v13 = [v12 isInLostMode];

            if (v13)
            {
              v3 = sub_100004F84();
              if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
              {
                *v17 = 0;
                v4 = "isReminderAllowed returning false due the device being in lost mode";
                goto LABEL_25;
              }
            }

            else
            {
              v14 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.reminders"];
              v15 = [v14 isRemovedSystemApp];

              if (!v15)
              {
                return 1;
              }

              v3 = sub_100004F84();
              if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
              {
                *v17 = 0;
                v4 = "isReminderAllowed returning false due reminders not being installed.";
                goto LABEL_25;
              }
            }
          }
        }
      }
    }

    else
    {
      v3 = sub_100004F84();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v4 = "isReminderAllowed returning false due to invalid handle length of 0";
        goto LABEL_25;
      }
    }
  }

  return 0;
}

- (BOOL)isThumper
{
  v3 = [(TUCall *)self provider];
  if ([v3 isTelephonyProvider] && -[TUCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice") && -[TUCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice"))
  {
    v4 = +[TUCallCapabilities supportsPrimaryCalling]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isSOSOrFakeSOS
{
  v2 = self;
  v3 = sub_10015631C();

  return v3 & 1;
}

- (BOOL)carrierAllowsReportVoiceCall
{
  v2 = self;
  v3 = sub_10016B2DC();

  return v3 & 1;
}

- (NSString)carrierName
{
  v2 = self;
  sub_10016B410();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end