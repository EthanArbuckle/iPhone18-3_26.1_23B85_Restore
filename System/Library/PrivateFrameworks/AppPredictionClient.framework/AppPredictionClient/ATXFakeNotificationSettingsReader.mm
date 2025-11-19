@interface ATXFakeNotificationSettingsReader
- (ATXFakeNotificationSettingsReader)init;
- (BOOL)appIsOnAllowList:(id)a3 dndModeUUID:(id)a4;
- (BOOL)appIsOnAllowList:(id)a3 mode:(unint64_t)a4;
- (BOOL)contactIsOnAllowList:(id)a3 dndModeUUID:(id)a4;
- (BOOL)contactIsOnAllowList:(id)a3 mode:(unint64_t)a4;
- (BOOL)doesAppAllowMessageBreakthrough:(id)a3;
- (BOOL)doesAppSendNotificationsToDigest:(id)a3;
- (id)allConfiguredDigestApps;
- (void)setDoMessagesBreakthrough:(id)a3 doesBreakthrough:(BOOL)a4;
- (void)setDoesSendToDigest:(id)a3 doesSend:(BOOL)a4;
- (void)setIsAllowedForEntity:(id)a3 isAllowed:(BOOL)a4;
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

- (void)setIsAllowedForEntity:(id)a3 isAllowed:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithBool:v4];
  [(NSMutableDictionary *)self->_entityToIsAllowed setObject:v8 forKeyedSubscript:v7];
}

- (void)setDoesSendToDigest:(id)a3 doesSend:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithBool:v4];
  [(NSMutableDictionary *)self->_sendToDigest setObject:v8 forKeyedSubscript:v7];
}

- (void)setDoMessagesBreakthrough:(id)a3 doesBreakthrough:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithBool:v4];
  [(NSMutableDictionary *)self->_messagesBreakthrough setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)appIsOnAllowList:(id)a3 mode:(unint64_t)a4
{
  v5 = [(NSMutableDictionary *)self->_entityToIsAllowed objectForKeyedSubscript:a3, a4];
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

  v9 = [v8 BOOLValue];
  return v9;
}

- (BOOL)contactIsOnAllowList:(id)a3 mode:(unint64_t)a4
{
  v5 = [(NSMutableDictionary *)self->_entityToIsAllowed objectForKeyedSubscript:a3, a4];
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

  v9 = [v8 BOOLValue];
  return v9;
}

- (BOOL)appIsOnAllowList:(id)a3 dndModeUUID:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_entityToIsAllowed objectForKeyedSubscript:a3, a4];
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

  v9 = [v8 BOOLValue];
  return v9;
}

- (BOOL)contactIsOnAllowList:(id)a3 dndModeUUID:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_entityToIsAllowed objectForKeyedSubscript:a3, a4];
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

  v9 = [v8 BOOLValue];
  return v9;
}

- (BOOL)doesAppSendNotificationsToDigest:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sendToDigest objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)doesAppAllowMessageBreakthrough:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_messagesBreakthrough objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)allConfiguredDigestApps
{
  v2 = objc_opt_new();

  return v2;
}

@end