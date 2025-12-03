@interface ATXFakeNotificationSettingsReader
- (ATXFakeNotificationSettingsReader)init;
- (BOOL)appIsOnAllowList:(id)list dndModeUUID:(id)d;
- (BOOL)appIsOnAllowList:(id)list mode:(unint64_t)mode;
- (BOOL)contactIsOnAllowList:(id)list dndModeUUID:(id)d;
- (BOOL)contactIsOnAllowList:(id)list mode:(unint64_t)mode;
- (BOOL)doesAppAllowMessageBreakthrough:(id)breakthrough;
- (BOOL)doesAppSendNotificationsToDigest:(id)digest;
- (id)allConfiguredDigestApps;
- (void)setDoMessagesBreakthrough:(id)breakthrough doesBreakthrough:(BOOL)doesBreakthrough;
- (void)setDoesSendToDigest:(id)digest doesSend:(BOOL)send;
- (void)setIsAllowedForEntity:(id)entity isAllowed:(BOOL)allowed;
@end

@implementation ATXFakeNotificationSettingsReader

- (ATXFakeNotificationSettingsReader)init
{
  v12.receiver = self;
  v12.super_class = ATXFakeNotificationSettingsReader;
  v2 = [(ATXFakeNotificationSettingsReader *)&v12 init];
  v3 = v2;
  if (v2)
  {
    digestDeliveryTimes = v2->_digestDeliveryTimes;
    v2->_digestDeliveryTimes = MEMORY[0x1E695E0F0];

    v5 = objc_opt_new();
    entityToIsAllowed = v3->_entityToIsAllowed;
    v3->_entityToIsAllowed = v5;

    v7 = objc_opt_new();
    sendToDigest = v3->_sendToDigest;
    v3->_sendToDigest = v7;

    v9 = objc_opt_new();
    messagesBreakthrough = v3->_messagesBreakthrough;
    v3->_messagesBreakthrough = v9;
  }

  return v3;
}

- (void)setIsAllowedForEntity:(id)entity isAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v6 = MEMORY[0x1E696AD98];
  entityCopy = entity;
  v8 = [v6 numberWithBool:allowedCopy];
  [(NSMutableDictionary *)self->_entityToIsAllowed setObject:v8 forKeyedSubscript:entityCopy];
}

- (void)setDoesSendToDigest:(id)digest doesSend:(BOOL)send
{
  sendCopy = send;
  v6 = MEMORY[0x1E696AD98];
  digestCopy = digest;
  v8 = [v6 numberWithBool:sendCopy];
  [(NSMutableDictionary *)self->_sendToDigest setObject:v8 forKeyedSubscript:digestCopy];
}

- (void)setDoMessagesBreakthrough:(id)breakthrough doesBreakthrough:(BOOL)doesBreakthrough
{
  doesBreakthroughCopy = doesBreakthrough;
  v6 = MEMORY[0x1E696AD98];
  breakthroughCopy = breakthrough;
  v8 = [v6 numberWithBool:doesBreakthroughCopy];
  [(NSMutableDictionary *)self->_messagesBreakthrough setObject:v8 forKeyedSubscript:breakthroughCopy];
}

- (BOOL)appIsOnAllowList:(id)list mode:(unint64_t)mode
{
  mode = [(NSMutableDictionary *)self->_entityToIsAllowed objectForKeyedSubscript:list, mode];
  v6 = mode;
  if (mode)
  {
    v7 = mode;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_defaultIsAppAllowed];
  }

  v8 = v7;

  bOOLValue = [v8 BOOLValue];
  return bOOLValue;
}

- (BOOL)contactIsOnAllowList:(id)list mode:(unint64_t)mode
{
  mode = [(NSMutableDictionary *)self->_entityToIsAllowed objectForKeyedSubscript:list, mode];
  v6 = mode;
  if (mode)
  {
    v7 = mode;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_defaultIsContactAllowed];
  }

  v8 = v7;

  bOOLValue = [v8 BOOLValue];
  return bOOLValue;
}

- (BOOL)appIsOnAllowList:(id)list dndModeUUID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_entityToIsAllowed objectForKeyedSubscript:list, d];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_defaultIsAppAllowed];
  }

  v8 = v7;

  bOOLValue = [v8 BOOLValue];
  return bOOLValue;
}

- (BOOL)contactIsOnAllowList:(id)list dndModeUUID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_entityToIsAllowed objectForKeyedSubscript:list, d];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_defaultIsContactAllowed];
  }

  v8 = v7;

  bOOLValue = [v8 BOOLValue];
  return bOOLValue;
}

- (BOOL)doesAppSendNotificationsToDigest:(id)digest
{
  v3 = [(NSMutableDictionary *)self->_sendToDigest objectForKeyedSubscript:digest];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)doesAppAllowMessageBreakthrough:(id)breakthrough
{
  v3 = [(NSMutableDictionary *)self->_messagesBreakthrough objectForKeyedSubscript:breakthrough];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)allConfiguredDigestApps
{
  v2 = objc_opt_new();

  return v2;
}

@end