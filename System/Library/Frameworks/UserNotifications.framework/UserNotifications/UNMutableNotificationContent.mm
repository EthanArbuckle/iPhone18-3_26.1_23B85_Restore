@interface UNMutableNotificationContent
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAttachments:(NSArray *)attachments;
- (void)setAttributedBody:(id)body;
- (void)setBadge:(NSNumber *)badge;
- (void)setBody:(NSString *)body;
- (void)setCategoryIdentifier:(NSString *)categoryIdentifier;
- (void)setCommunicationContext:(id)context;
- (void)setContentType:(id)type;
- (void)setDefaultActionBundleIdentifier:(id)identifier;
- (void)setDefaultActionTitle:(id)title;
- (void)setDefaultActionURL:(id)l;
- (void)setExpirationDate:(id)date;
- (void)setFilterCriteria:(NSString *)filterCriteria;
- (void)setFooter:(id)footer;
- (void)setHeader:(id)header;
- (void)setLaunchImageName:(NSString *)launchImageName;
- (void)setPeopleIdentifiers:(id)identifiers;
- (void)setRelevanceScore:(double)relevanceScore;
- (void)setSound:(UNNotificationSound *)sound;
- (void)setSpeechLanguage:(id)language;
- (void)setSummaryArgument:(NSString *)summaryArgument;
- (void)setTargetContentIdentifier:(NSString *)targetContentIdentifier;
- (void)setThreadIdentifier:(NSString *)threadIdentifier;
- (void)setTitle:(NSString *)title;
- (void)setTopicIdentifiers:(id)identifiers;
- (void)setUserInfo:(NSDictionary *)userInfo;
@end

@implementation UNMutableNotificationContent

- (void)setContentType:(id)type
{
  v4 = [type copy];
  contentType = self->super._contentType;
  self->super._contentType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCommunicationContext:(id)context
{
  v4 = [context copy];
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

- (void)setAttributedBody:(id)body
{
  v4 = [body copy];
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

- (void)setDefaultActionTitle:(id)title
{
  v4 = [title copy];
  defaultActionTitle = self->super._defaultActionTitle;
  self->super._defaultActionTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultActionURL:(id)l
{
  v4 = [l copy];
  defaultActionURL = self->super._defaultActionURL;
  self->super._defaultActionURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultActionBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  defaultActionBundleIdentifier = self->super._defaultActionBundleIdentifier;
  self->super._defaultActionBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setExpirationDate:(id)date
{
  v4 = [date copy];
  expirationDate = self->super._expirationDate;
  self->super._expirationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setHeader:(id)header
{
  v4 = [header copy];
  header = self->super._header;
  self->super._header = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFooter:(id)footer
{
  v4 = [footer copy];
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

- (void)setPeopleIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    v4 = [identifiers copy];
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

- (void)setTopicIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
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

- (void)setSpeechLanguage:(id)language
{
  v4 = [language copy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  v42 = [UNNotificationContent allocWithZone:zone];
  contentType = [(UNNotificationContent *)self contentType];
  communicationContext = [(UNNotificationContent *)self communicationContext];
  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  attachments = [(UNNotificationContent *)self attachments];
  badge = [(UNNotificationContent *)self badge];
  body = [(UNNotificationContent *)self body];
  attributedBody = [(UNNotificationContent *)self attributedBody];
  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  date = [(UNNotificationContent *)self date];
  icon = [(UNNotificationContent *)self icon];
  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  expirationDate = [(UNNotificationContent *)self expirationDate];
  header = [(UNNotificationContent *)self header];
  footer = [(UNNotificationContent *)self footer];
  launchImageName = [(UNNotificationContent *)self launchImageName];
  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  shouldHideDate = [(UNNotificationContent *)self shouldHideDate];
  shouldHideTime = [(UNNotificationContent *)self shouldHideTime];
  shouldIgnoreDoNotDisturb = [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  shouldIgnoreDowntime = [(UNNotificationContent *)self shouldIgnoreDowntime];
  shouldSuppressScreenLightUp = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  shouldAuthenticateDefaultAction = [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  shouldBackgroundDefaultAction = [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  shouldPreventNotificationDismissalAfterDefaultAction = [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  shouldShowSubordinateIcon = [(UNNotificationContent *)self shouldShowSubordinateIcon];
  shouldSuppressDefaultAction = [(UNNotificationContent *)self shouldSuppressDefaultAction];
  shouldSuppressSyncDismissalWhenRemoved = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  shouldUseRequestIdentifierForDismissalSync = [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  shouldPreemptPresentedNotification = [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  shouldDisplayActionsInline = [(UNNotificationContent *)self shouldDisplayActionsInline];
  sound = [(UNNotificationContent *)self sound];
  subtitle = [(UNNotificationContent *)self subtitle];
  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  title = [(UNNotificationContent *)self title];
  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  realertCount = [(UNNotificationContent *)self realertCount];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  summaryArgumentCount = [(UNNotificationContent *)self summaryArgumentCount];
  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  interruptionLevel = [(UNNotificationContent *)self interruptionLevel];
  [(UNNotificationContent *)self relevanceScore];
  v10 = v9;
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  screenCaptureProhibited = [(UNNotificationContent *)self screenCaptureProhibited];
  userInfo = [(UNNotificationContent *)self userInfo];
  LOBYTE(v17) = screenCaptureProhibited;
  BYTE5(v16) = shouldDisplayActionsInline;
  BYTE4(v16) = shouldPreemptPresentedNotification;
  BYTE3(v16) = shouldUseRequestIdentifierForDismissalSync;
  BYTE2(v16) = shouldSuppressSyncDismissalWhenRemoved;
  BYTE1(v16) = shouldSuppressDefaultAction;
  LOBYTE(v16) = shouldShowSubordinateIcon;
  HIBYTE(v15) = shouldPreventNotificationDismissalAfterDefaultAction;
  BYTE6(v15) = shouldBackgroundDefaultAction;
  BYTE5(v15) = shouldAuthenticateDefaultAction;
  BYTE4(v15) = shouldSuppressScreenLightUp;
  BYTE3(v15) = shouldIgnoreDowntime;
  BYTE2(v15) = shouldIgnoreDoNotDisturb;
  BYTE1(v15) = shouldHideTime;
  LOBYTE(v15) = shouldHideDate;
  v43 = [UNNotificationContent _initWithContentType:v42 communicationContext:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" accessoryImageName:contentType attachments:communicationContext badge:accessoryImageName body:attachments attributedBody:badge categoryIdentifier:body date:v10 icon:attributedBody defaultActionTitle:categoryIdentifier defaultActionURL:date defaultActionBundleIdentifier:icon expirationDate:defaultActionTitle header:defaultActionURL footer:defaultActionBundleIdentifier launchImageName:expirationDate peopleIdentifiers:header shouldHideDate:footer shouldHideTime:launchImageName shouldIgnoreDoNotDisturb:peopleIdentifiers shouldIgnoreDowntime:v15 shouldSuppressScreenLightUp:v16 shouldAuthenticateDefaultAction:sound shouldBackgroundDefaultAction:subtitle shouldPreventNotificationDismissalAfterDefaultAction:threadIdentifier shouldShowSubordinateIcon:title shouldSuppressDefaultAction:topicIdentifiers shouldSuppressSyncDismissalWhenRemoved:realertCount shouldUseRequestIdentifierForDismissalSync:summaryArgument shouldPreemptPresentedNotification:summaryArgumentCount shouldDisplayActionsInline:targetContentIdentifier sound:interruptionLevel subtitle:filterCriteria threadIdentifier:v17 title:speechLanguage topicIdentifiers:userInfo realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v43;
}

@end