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
  threadID = [(BBBulletin *)self threadID];
  [v3 setThreadIdentifier:threadID];

  clarity_contactHandle = [(BBBulletin *)self clarity_contactHandle];
  [v3 setSender:clarity_contactHandle];

  sectionID = [(BBBulletin *)self sectionID];
  [v3 setIdentifier:sectionID];

  communicationContext = [(BBBulletin *)self communicationContext];
  [v3 setNotifyAnyway:{objc_msgSend(communicationContext, "notifyRecipientAnyway")}];

  filterCriteria = [(BBBulletin *)self filterCriteria];
  [v3 setFilterCriteria:filterCriteria];

  sectionID2 = [(BBBulletin *)self sectionID];
  [v3 setBundleIdentifier:sectionID2];

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
  contentType = [(BBBulletin *)self contentType];

  if (!contentType)
  {
    return 0;
  }

  contentType2 = [(BBBulletin *)self contentType];
  v5 = [contentType2 isEqualToString:BBBulletinContentTypeMessagingDirect];

  if (v5)
  {
    return 3;
  }

  contentType3 = [(BBBulletin *)self contentType];
  v8 = [contentType3 isEqualToString:BBBulletinContentTypeMessagingGroup];

  if (v8)
  {
    return 4;
  }

  contentType4 = [(BBBulletin *)self contentType];
  if ([contentType4 isEqualToString:BBBulletinContentTypeVoicemail])
  {
    goto LABEL_10;
  }

  contentType5 = [(BBBulletin *)self contentType];
  if ([contentType5 isEqualToString:BBBulletinContentTypeMissedCall])
  {

LABEL_10:
    return 2;
  }

  contentType6 = [(BBBulletin *)self contentType];
  v12 = [contentType6 isEqualToString:BBBulletinContentTypeCallOther];

  if (v12)
  {
    return 2;
  }

  contentType7 = [(BBBulletin *)self contentType];
  v14 = [contentType7 isEqualToString:BBBulletinContentTypeIncomingCall];

  return v14;
}

- (id)clarity_contactHandle
{
  communicationContext = [(BBBulletin *)self communicationContext];

  if (communicationContext)
  {
    communicationContext2 = [(BBBulletin *)self communicationContext];
    sender = [communicationContext2 sender];

    if (sender)
    {
      communicationContext = objc_opt_new();
      cnContactIdentifier = [sender cnContactIdentifier];
      [communicationContext setContactIdentifier:cnContactIdentifier];

      handleType = [sender handleType];
      if (handleType == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2 * (handleType == 2);
      }

      [communicationContext setType:v8];
      handle = [sender handle];
      [communicationContext setValue:handle];
    }

    else
    {
      communicationContext = 0;
    }
  }

  return communicationContext;
}

@end