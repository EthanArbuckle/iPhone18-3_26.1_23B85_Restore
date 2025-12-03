@interface ATXNotificationModeEntity
- (ATXNotificationModeEntity)initWithAppEntity:(id)entity contactEntity:(id)contactEntity;
- (ATXNotificationModeEntity)initWithCoder:(id)coder;
- (ATXNotificationModeEntity)initWithUNNotification:(id)notification;
- (ATXNotificationModeEntity)initWithUserNotification:(id)notification;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (id)contactEntityFromUserNotification:(id)notification;
- (id)contactIdFromUserNotification:(id)notification;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)jsonDict;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationModeEntity

- (ATXNotificationModeEntity)initWithAppEntity:(id)entity contactEntity:(id)contactEntity
{
  entityCopy = entity;
  contactEntityCopy = contactEntity;
  v12.receiver = self;
  v12.super_class = ATXNotificationModeEntity;
  v9 = [(ATXNotificationModeEntity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appEntity, entity);
    objc_storeStrong(&v10->_contactEntity, contactEntity);
  }

  return v10;
}

- (ATXNotificationModeEntity)initWithUserNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [ATXAppModeEntity alloc];
  bundleID = [notificationCopy bundleID];
  v7 = [(ATXAppModeEntity *)v5 initWithBundleId:bundleID];

  v8 = [(ATXNotificationModeEntity *)self contactEntityFromUserNotification:notificationCopy];

  v9 = [(ATXNotificationModeEntity *)self initWithAppEntity:v7 contactEntity:v8];
  return v9;
}

- (id)contactEntityFromUserNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(ATXNotificationModeEntity *)self contactIdFromUserNotification:notificationCopy];
  rawIdentifiers = [notificationCopy rawIdentifiers];

  firstObject = [rawIdentifiers firstObject];

  if (v5)
  {
    v8 = [[ATXContactModeEntity alloc] initWithDisplayName:0 rawIdentifier:firstObject cnContactId:v5 stableContactIdentifier:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contactIdFromUserNotification:(id)notification
{
  notificationCopy = notification;
  if ([notificationCopy isGroupMessage])
  {
    threadID = [notificationCopy threadID];
  }

  else
  {
    contactIDs = [notificationCopy contactIDs];

    threadID = [contactIDs firstObject];
    notificationCopy = contactIDs;
  }

  return threadID;
}

- (ATXNotificationModeEntity)initWithUNNotification:(id)notification
{
  v4 = [[ATXAppModeEntity alloc] initWithBundleId:@"com.apple.Music"];
  v5 = [[ATXContactModeEntity alloc] initWithDisplayName:0 rawIdentifier:@"sample" cnContactId:0];
  v6 = [(ATXNotificationModeEntity *)self initWithAppEntity:v4 contactEntity:v5];

  return v6;
}

- (id)identifier
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleId = [(ATXAppModeEntity *)self->_appEntity bundleId];
  identifier = [(ATXContactModeEntity *)self->_contactEntity identifier];
  v6 = [v3 initWithFormat:@"%@:%@", bundleId, identifier];

  return v6;
}

- (id)jsonDict
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"entityIdentifier";
  identifier = [(ATXNotificationModeEntity *)self identifier];
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"scoreMetadata";
  v11[0] = null;
  scoreMetadata = [(ATXNotificationModeEntity *)self scoreMetadata];
  jsonDict = [scoreMetadata jsonDict];
  null2 = jsonDict;
  if (!jsonDict)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!jsonDict)
  {
  }

  if (!identifier)
  {
  }

  return v8;
}

- (NSString)debugDescription
{
  jsonDict = [(ATXNotificationModeEntity *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(ATXNotificationModeEntity *)self identifier];
  scoreMetadata = [(ATXNotificationModeEntity *)self scoreMetadata];
  [scoreMetadata score];
  v7 = [v3 initWithFormat:@"entityIdentifier: %@, score: %.3f", identifier, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(ATXNotificationModeEntity *)self identifier];
      identifier2 = [(ATXNotificationModeEntity *)v5 identifier];

      v8 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(ATXNotificationModeEntity *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appEntity = [(ATXNotificationModeEntity *)self appEntity];
  [coderCopy encodeObject:appEntity forKey:@"codingKeyForAppEntity"];

  contactEntity = [(ATXNotificationModeEntity *)self contactEntity];
  [coderCopy encodeObject:contactEntity forKey:@"codingKeyForContactEntity"];

  scoreMetadata = [(ATXNotificationModeEntity *)self scoreMetadata];
  [coderCopy encodeObject:scoreMetadata forKey:@"codingKeyForScoreMetadata"];
}

- (ATXNotificationModeEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForAppEntity" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.notificationModeEntity" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_notification_management();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForContactEntity" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.notificationModeEntity" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_notification_management();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForScoreMetadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.notificationModeEntity" errorCode:-1 logHandle:v18];

      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
      }

      else
      {
        self = [(ATXNotificationModeEntity *)self initWithAppEntity:v8 contactEntity:v14];
        [(ATXNotificationModeEntity *)self setScoreMetadata:v19];
        selfCopy = self;
      }
    }
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXNotificationModeEntity allocWithZone:zone];
  appEntity = [(ATXNotificationModeEntity *)self appEntity];
  contactEntity = [(ATXNotificationModeEntity *)self contactEntity];
  v7 = [(ATXNotificationModeEntity *)v4 initWithAppEntity:appEntity contactEntity:contactEntity];

  return v7;
}

@end