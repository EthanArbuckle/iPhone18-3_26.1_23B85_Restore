@interface BBBulletin
- (id)clarity_clientEventDetails;
- (id)clarity_contactHandle;
- (unint64_t)clarity_dndEventType;
@end

@implementation BBBulletin

- (id)clarity_clientEventDetails
{
  v3 = objc_opt_new();
  [v3 setType:{-[BBBulletin clarity_dndEventType](self, "clarity_dndEventType")}];
  v4 = [(BBBulletin *)self threadID];
  [v3 setThreadIdentifier:v4];

  v5 = [(BBBulletin *)self clarity_contactHandle];
  [v3 setSender:v5];

  v6 = [(BBBulletin *)self sectionID];
  [v3 setIdentifier:v6];

  v7 = [(BBBulletin *)self communicationContext];
  [v3 setNotifyAnyway:{objc_msgSend(v7, "notifyRecipientAnyway")}];

  v8 = [(BBBulletin *)self filterCriteria];
  [v3 setFilterCriteria:v8];

  v9 = [(BBBulletin *)self sectionID];
  [v3 setBundleIdentifier:v9];

  if (([(BBBulletin *)self ignoresQuietMode]& 1) != 0 || [(BBBulletin *)self interruptionLevel]== 3)
  {
    v10 = 2;
LABEL_4:
    [v3 setUrgency:v10];
    goto LABEL_5;
  }

  if ([(BBBulletin *)self interruptionLevel]== 2)
  {
    v10 = 1;
    goto LABEL_4;
  }

LABEL_5:
  v11 = [v3 copy];

  return v11;
}

- (unint64_t)clarity_dndEventType
{
  v3 = [(BBBulletin *)self contentType];

  if (!v3)
  {
    return 0;
  }

  v4 = [(BBBulletin *)self contentType];
  v5 = [v4 isEqualToString:BBBulletinContentTypeMessagingDirect];

  if (v5)
  {
    return 3;
  }

  v7 = [(BBBulletin *)self contentType];
  v8 = [v7 isEqualToString:BBBulletinContentTypeMessagingGroup];

  if (v8)
  {
    return 4;
  }

  v9 = [(BBBulletin *)self contentType];
  if ([v9 isEqualToString:BBBulletinContentTypeVoicemail])
  {
    goto LABEL_10;
  }

  v10 = [(BBBulletin *)self contentType];
  if ([v10 isEqualToString:BBBulletinContentTypeMissedCall])
  {

LABEL_10:
    return 2;
  }

  v11 = [(BBBulletin *)self contentType];
  v12 = [v11 isEqualToString:BBBulletinContentTypeCallOther];

  if (v12)
  {
    return 2;
  }

  v13 = [(BBBulletin *)self contentType];
  v14 = [v13 isEqualToString:BBBulletinContentTypeIncomingCall];

  return v14;
}

- (id)clarity_contactHandle
{
  v3 = [(BBBulletin *)self communicationContext];

  if (v3)
  {
    v4 = [(BBBulletin *)self communicationContext];
    v5 = [v4 sender];

    if (v5)
    {
      v3 = objc_opt_new();
      v6 = [v5 cnContactIdentifier];
      [v3 setContactIdentifier:v6];

      v7 = [v5 handleType];
      if (v7 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2 * (v7 == 2);
      }

      [v3 setType:v8];
      v9 = [v5 handle];
      [v3 setValue:v9];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end