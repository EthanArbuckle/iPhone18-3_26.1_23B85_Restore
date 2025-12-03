@interface TUCall
- (BOOL)canDisplayAlertUI:(BOOL)i;
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

- (BOOL)canDisplayAlertUI:(BOOL)i
{
  iCopy = i;
  selfCopy = self;
  LOBYTE(iCopy) = sub_100005014(iCopy);

  return iCopy & 1;
}

- (BOOL)isBranded
{
  imageURL = [(TUCall *)self imageURL];
  if (imageURL)
  {
    localizedLabel = [(TUCall *)self localizedLabel];
    if (localizedLabel)
    {
      callDirectoryName = [(TUCall *)self callDirectoryName];
      v6 = callDirectoryName == 0;
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
    handle = [(TUCall *)self handle];
    value = [handle value];
    v7 = [value length];

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
          isAmbiguous = [v9 isAmbiguous];

          if (isAmbiguous)
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
          isSetupAssistantRunning = [v11 isSetupAssistantRunning];

          if (isSetupAssistantRunning)
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
          isInLostMode = [v13 isInLostMode];

          if (isInLostMode)
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
          canSendText = [v15 canSendText];

          if ((canSendText & 1) == 0)
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
          isSMSRestricted = [v17 isSMSRestricted];

          if (isSMSRestricted)
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
          isLockScreenMessagingAllowed = [v19 isLockScreenMessagingAllowed];

          if (isLockScreenMessagingAllowed)
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
  handle = [(TUCall *)self handle];
  value = [handle value];
  v4 = [value length];

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
    handle = [(TUCall *)self handle];
    value = [handle value];
    v7 = [value length];

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
        isAmbiguous = [v8 isAmbiguous];

        if (isAmbiguous)
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
          isSetupAssistantRunning = [v10 isSetupAssistantRunning];

          if (isSetupAssistantRunning)
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
            isInLostMode = [v12 isInLostMode];

            if (isInLostMode)
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
              isRemovedSystemApp = [v14 isRemovedSystemApp];

              if (!isRemovedSystemApp)
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
  provider = [(TUCall *)self provider];
  if ([provider isTelephonyProvider] && -[TUCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice") && -[TUCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice"))
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
  selfCopy = self;
  v3 = sub_10015631C();

  return v3 & 1;
}

- (BOOL)carrierAllowsReportVoiceCall
{
  selfCopy = self;
  v3 = sub_10016B2DC();

  return v3 & 1;
}

- (NSString)carrierName
{
  selfCopy = self;
  sub_10016B410();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end