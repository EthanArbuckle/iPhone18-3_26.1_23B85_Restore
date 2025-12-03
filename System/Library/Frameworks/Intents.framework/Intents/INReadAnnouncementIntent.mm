@interface INReadAnnouncementIntent
- (INReadAnnouncementIntent)initWithReadType:(int64_t)type startAnnouncementIdentifier:(id)identifier userNotificationType:(int64_t)notificationType;
- (NSString)startAnnouncementIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)readType;
- (int64_t)userNotificationType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setReadType:(int64_t)type;
- (void)setStartAnnouncementIdentifier:(id)identifier;
- (void)setUserNotificationType:(int64_t)type;
@end

@implementation INReadAnnouncementIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INReadAnnouncementIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"readType";
  readType = [(INReadAnnouncementIntent *)self readType];
  v4 = @"unknown";
  if (readType == 2)
  {
    v4 = @"repeat";
  }

  if (readType == 1)
  {
    v4 = @"read";
  }

  v5 = v4;
  v15[0] = v5;
  v14[1] = @"startAnnouncementIdentifier";
  startAnnouncementIdentifier = [(INReadAnnouncementIntent *)self startAnnouncementIdentifier];
  null = startAnnouncementIdentifier;
  if (!startAnnouncementIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null;
  v14[2] = @"userNotificationType";
  userNotificationType = [(INReadAnnouncementIntent *)self userNotificationType];
  v9 = @"unknown";
  if (userNotificationType == 2)
  {
    v9 = @"deliveryFailure";
  }

  if (userNotificationType == 1)
  {
    v9 = @"announcement";
  }

  v10 = v9;
  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (!startAnnouncementIdentifier)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setUserNotificationType:(int64_t)type
{
  if (type == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (type == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasUserNotificationType:0];
  }

  else
  {
    [_typedBackingStore setUserNotificationType:v4];
  }
}

- (int64_t)userNotificationType
{
  _typedBackingStore = [(INReadAnnouncementIntent *)self _typedBackingStore];
  hasUserNotificationType = [_typedBackingStore hasUserNotificationType];
  _typedBackingStore2 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  userNotificationType = [_typedBackingStore2 userNotificationType];
  v7 = 2 * (userNotificationType == 2);
  if (userNotificationType == 1)
  {
    v7 = 1;
  }

  if (hasUserNotificationType)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setStartAnnouncementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INReadAnnouncementIntent *)self _typedBackingStore];
  [_typedBackingStore setStartAnnouncementIdentifier:identifierCopy];
}

- (NSString)startAnnouncementIdentifier
{
  _typedBackingStore = [(INReadAnnouncementIntent *)self _typedBackingStore];
  startAnnouncementIdentifier = [_typedBackingStore startAnnouncementIdentifier];
  v4 = [startAnnouncementIdentifier copy];

  return v4;
}

- (void)setReadType:(int64_t)type
{
  if (type == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (type == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  _typedBackingStore = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v6 = _typedBackingStore;
  if (v4 == 0x7FFFFFFF)
  {
    [_typedBackingStore setHasReadType:0];
  }

  else
  {
    [_typedBackingStore setReadType:v4];
  }
}

- (int64_t)readType
{
  _typedBackingStore = [(INReadAnnouncementIntent *)self _typedBackingStore];
  hasReadType = [_typedBackingStore hasReadType];
  _typedBackingStore2 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  readType = [_typedBackingStore2 readType];
  v7 = 2 * (readType == 2);
  if (readType == 1)
  {
    v7 = 1;
  }

  if (hasReadType)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (INReadAnnouncementIntent)initWithReadType:(int64_t)type startAnnouncementIdentifier:(id)identifier userNotificationType:(int64_t)notificationType
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = INReadAnnouncementIntent;
  v9 = [(INIntent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(INReadAnnouncementIntent *)v9 setReadType:type];
    [(INReadAnnouncementIntent *)v10 setStartAnnouncementIdentifier:identifierCopy];
    [(INReadAnnouncementIntent *)v10 setUserNotificationType:notificationType];
  }

  return v10;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INReadAnnouncementIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INReadAnnouncementIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end