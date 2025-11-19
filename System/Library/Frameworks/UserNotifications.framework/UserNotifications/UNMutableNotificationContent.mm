@interface UNMutableNotificationContent
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAttachments:(NSArray *)attachments;
- (void)setAttributedBody:(id)a3;
- (void)setBadge:(NSNumber *)badge;
- (void)setBody:(NSString *)body;
- (void)setCategoryIdentifier:(NSString *)categoryIdentifier;
- (void)setCommunicationContext:(id)a3;
- (void)setContentType:(id)a3;
- (void)setDefaultActionBundleIdentifier:(id)a3;
- (void)setDefaultActionTitle:(id)a3;
- (void)setDefaultActionURL:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setFilterCriteria:(NSString *)filterCriteria;
- (void)setFooter:(id)a3;
- (void)setHeader:(id)a3;
- (void)setLaunchImageName:(NSString *)launchImageName;
- (void)setPeopleIdentifiers:(id)a3;
- (void)setRelevanceScore:(double)relevanceScore;
- (void)setSound:(UNNotificationSound *)sound;
- (void)setSpeechLanguage:(id)a3;
- (void)setSummaryArgument:(NSString *)summaryArgument;
- (void)setTargetContentIdentifier:(NSString *)targetContentIdentifier;
- (void)setThreadIdentifier:(NSString *)threadIdentifier;
- (void)setTitle:(NSString *)title;
- (void)setTopicIdentifiers:(id)a3;
- (void)setUserInfo:(NSDictionary *)userInfo;
@end

@implementation UNMutableNotificationContent

- (void)setContentType:(id)a3
{
  v4 = [a3 copy];
  contentType = self->super._contentType;
  self->super._contentType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCommunicationContext:(id)a3
{
  v4 = [a3 copy];
  communicationContext = self->super._communicationContext;
  self->super._communicationContext = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAttachments:(NSArray *)attachments
{
  if (attachments)
  {
    v4 = [(NSArray *)attachments copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = self->super._attachments;
  self->super._attachments = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBadge:(NSNumber *)badge
{
  v4 = [(NSNumber *)badge copy];
  v5 = self->super._badge;
  self->super._badge = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBody:(NSString *)body
{
  v4 = [(NSString *)body copy];
  v5 = self->super._body;
  self->super._body = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAttributedBody:(id)a3
{
  v4 = [a3 copy];
  attributedBody = self->super._attributedBody;
  self->super._attributedBody = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCategoryIdentifier:(NSString *)categoryIdentifier
{
  if (categoryIdentifier)
  {
    v4 = [(NSString *)categoryIdentifier copy];
  }

  else
  {
    v4 = &stru_1F308F460;
  }

  v5 = self->super._categoryIdentifier;
  self->super._categoryIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultActionTitle:(id)a3
{
  v4 = [a3 copy];
  defaultActionTitle = self->super._defaultActionTitle;
  self->super._defaultActionTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultActionURL:(id)a3
{
  v4 = [a3 copy];
  defaultActionURL = self->super._defaultActionURL;
  self->super._defaultActionURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultActionBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  defaultActionBundleIdentifier = self->super._defaultActionBundleIdentifier;
  self->super._defaultActionBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setExpirationDate:(id)a3
{
  v4 = [a3 copy];
  expirationDate = self->super._expirationDate;
  self->super._expirationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setHeader:(id)a3
{
  v4 = [a3 copy];
  header = self->super._header;
  self->super._header = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFooter:(id)a3
{
  v4 = [a3 copy];
  footer = self->super._footer;
  self->super._footer = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLaunchImageName:(NSString *)launchImageName
{
  if (launchImageName)
  {
    v3 = launchImageName;
  }

  else
  {
    v3 = &stru_1F308F460;
  }

  objc_storeStrong(&self->super._launchImageName, v3);
}

- (void)setPeopleIdentifiers:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  peopleIdentifiers = self->super._peopleIdentifiers;
  self->super._peopleIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSound:(UNNotificationSound *)sound
{
  v4 = [(UNNotificationSound *)sound copy];
  v5 = self->super._sound;
  self->super._sound = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setThreadIdentifier:(NSString *)threadIdentifier
{
  if (threadIdentifier)
  {
    v4 = [(NSString *)threadIdentifier copy];
  }

  else
  {
    v4 = &stru_1F308F460;
  }

  v5 = self->super._threadIdentifier;
  self->super._threadIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(NSString *)title
{
  v4 = [(NSString *)title copy];
  v5 = self->super._title;
  self->super._title = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTopicIdentifiers:(id)a3
{
  v4 = [a3 copy];
  topicIdentifiers = self->super._topicIdentifiers;
  self->super._topicIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSummaryArgument:(NSString *)summaryArgument
{
  v4 = [(NSString *)summaryArgument copy];
  v5 = self->super._summaryArgument;
  self->super._summaryArgument = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTargetContentIdentifier:(NSString *)targetContentIdentifier
{
  v4 = [(NSString *)targetContentIdentifier copy];
  v5 = self->super._targetContentIdentifier;
  self->super._targetContentIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRelevanceScore:(double)relevanceScore
{
  if (relevanceScore >= 0.0)
  {
    if (relevanceScore <= 1.0)
    {
      self->super._relevanceScore = relevanceScore;
    }

    else
    {
      self->super._relevanceScore = 1.0;
    }
  }

  else
  {
    self->super._relevanceScore = 0.0;
  }
}

- (void)setFilterCriteria:(NSString *)filterCriteria
{
  v4 = [(NSString *)filterCriteria copy];
  v5 = self->super._filterCriteria;
  self->super._filterCriteria = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSpeechLanguage:(id)a3
{
  v4 = [a3 copy];
  speechLanguage = self->super._speechLanguage;
  self->super._speechLanguage = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  v4 = [(NSDictionary *)userInfo copy];
  v5 = self->super._userInfo;
  self->super._userInfo = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v58 = [(UNNotificationContent *)self speechLanguage];
  v42 = [UNNotificationContent allocWithZone:a3];
  v57 = [(UNNotificationContent *)self contentType];
  v56 = [(UNNotificationContent *)self communicationContext];
  v55 = [(UNNotificationContent *)self accessoryImageName];
  v54 = [(UNNotificationContent *)self attachments];
  v53 = [(UNNotificationContent *)self badge];
  v41 = [(UNNotificationContent *)self body];
  v52 = [(UNNotificationContent *)self attributedBody];
  v49 = [(UNNotificationContent *)self categoryIdentifier];
  v51 = [(UNNotificationContent *)self date];
  v50 = [(UNNotificationContent *)self icon];
  v48 = [(UNNotificationContent *)self defaultActionTitle];
  v40 = [(UNNotificationContent *)self defaultActionURL];
  v39 = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v38 = [(UNNotificationContent *)self expirationDate];
  v47 = [(UNNotificationContent *)self header];
  v37 = [(UNNotificationContent *)self footer];
  v36 = [(UNNotificationContent *)self launchImageName];
  v46 = [(UNNotificationContent *)self peopleIdentifiers];
  v35 = [(UNNotificationContent *)self shouldHideDate];
  v34 = [(UNNotificationContent *)self shouldHideTime];
  v33 = [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  v32 = [(UNNotificationContent *)self shouldIgnoreDowntime];
  v31 = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  v30 = [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  v29 = [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  v28 = [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  v27 = [(UNNotificationContent *)self shouldShowSubordinateIcon];
  v26 = [(UNNotificationContent *)self shouldSuppressDefaultAction];
  v25 = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v24 = [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  v23 = [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  v22 = [(UNNotificationContent *)self shouldDisplayActionsInline];
  v45 = [(UNNotificationContent *)self sound];
  v44 = [(UNNotificationContent *)self subtitle];
  v20 = [(UNNotificationContent *)self threadIdentifier];
  v19 = [(UNNotificationContent *)self title];
  v21 = [(UNNotificationContent *)self topicIdentifiers];
  v5 = [(UNNotificationContent *)self realertCount];
  v18 = [(UNNotificationContent *)self summaryArgument];
  v6 = [(UNNotificationContent *)self summaryArgumentCount];
  v7 = [(UNNotificationContent *)self targetContentIdentifier];
  v8 = [(UNNotificationContent *)self interruptionLevel];
  [(UNNotificationContent *)self relevanceScore];
  v10 = v9;
  v11 = [(UNNotificationContent *)self filterCriteria];
  v12 = [(UNNotificationContent *)self screenCaptureProhibited];
  v13 = [(UNNotificationContent *)self userInfo];
  LOBYTE(v17) = v12;
  BYTE5(v16) = v22;
  BYTE4(v16) = v23;
  BYTE3(v16) = v24;
  BYTE2(v16) = v25;
  BYTE1(v16) = v26;
  LOBYTE(v16) = v27;
  HIBYTE(v15) = v28;
  BYTE6(v15) = v29;
  BYTE5(v15) = v30;
  BYTE4(v15) = v31;
  BYTE3(v15) = v32;
  BYTE2(v15) = v33;
  BYTE1(v15) = v34;
  LOBYTE(v15) = v35;
  v43 = [UNNotificationContent _initWithContentType:v42 communicationContext:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" accessoryImageName:v57 attachments:v56 badge:v55 body:v54 attributedBody:v53 categoryIdentifier:v41 date:v10 icon:v52 defaultActionTitle:v49 defaultActionURL:v51 defaultActionBundleIdentifier:v50 expirationDate:v48 header:v40 footer:v39 launchImageName:v38 peopleIdentifiers:v47 shouldHideDate:v37 shouldHideTime:v36 shouldIgnoreDoNotDisturb:v46 shouldIgnoreDowntime:v15 shouldSuppressScreenLightUp:v16 shouldAuthenticateDefaultAction:v45 shouldBackgroundDefaultAction:v44 shouldPreventNotificationDismissalAfterDefaultAction:v20 shouldShowSubordinateIcon:v19 shouldSuppressDefaultAction:v21 shouldSuppressSyncDismissalWhenRemoved:v5 shouldUseRequestIdentifierForDismissalSync:v18 shouldPreemptPresentedNotification:v6 shouldDisplayActionsInline:v7 sound:v8 subtitle:v11 threadIdentifier:v17 title:v58 topicIdentifiers:v13 realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v43;
}

@end