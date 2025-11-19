@interface INReadAnnouncementIntent
- (INReadAnnouncementIntent)initWithReadType:(int64_t)a3 startAnnouncementIdentifier:(id)a4 userNotificationType:(int64_t)a5;
- (NSString)startAnnouncementIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)readType;
- (int64_t)userNotificationType;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setReadType:(int64_t)a3;
- (void)setStartAnnouncementIdentifier:(id)a3;
- (void)setUserNotificationType:(int64_t)a3;
@end

@implementation INReadAnnouncementIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INReadAnnouncementIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"readType";
  v3 = [(INReadAnnouncementIntent *)self readType];
  v4 = @"unknown";
  if (v3 == 2)
  {
    v4 = @"repeat";
  }

  if (v3 == 1)
  {
    v4 = @"read";
  }

  v5 = v4;
  v15[0] = v5;
  v14[1] = @"startAnnouncementIdentifier";
  v6 = [(INReadAnnouncementIntent *)self startAnnouncementIdentifier];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v7;
  v14[2] = @"userNotificationType";
  v8 = [(INReadAnnouncementIntent *)self userNotificationType];
  v9 = @"unknown";
  if (v8 == 2)
  {
    v9 = @"deliveryFailure";
  }

  if (v8 == 1)
  {
    v9 = @"announcement";
  }

  v10 = v9;
  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (!v6)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setUserNotificationType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasUserNotificationType:0];
  }

  else
  {
    [v5 setUserNotificationType:v4];
  }
}

- (int64_t)userNotificationType
{
  v3 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v4 = [v3 hasUserNotificationType];
  v5 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v6 = [v5 userNotificationType];
  v7 = 2 * (v6 == 2);
  if (v6 == 1)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setStartAnnouncementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  [v5 setStartAnnouncementIdentifier:v4];
}

- (NSString)startAnnouncementIdentifier
{
  v2 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v3 = [v2 startAnnouncementIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (void)setReadType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasReadType:0];
  }

  else
  {
    [v5 setReadType:v4];
  }
}

- (int64_t)readType
{
  v3 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v4 = [v3 hasReadType];
  v5 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v6 = [v5 readType];
  v7 = 2 * (v6 == 2);
  if (v6 == 1)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (INReadAnnouncementIntent)initWithReadType:(int64_t)a3 startAnnouncementIdentifier:(id)a4 userNotificationType:(int64_t)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INReadAnnouncementIntent;
  v9 = [(INIntent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(INReadAnnouncementIntent *)v9 setReadType:a3];
    [(INReadAnnouncementIntent *)v10 setStartAnnouncementIdentifier:v8];
    [(INReadAnnouncementIntent *)v10 setUserNotificationType:a5];
  }

  return v10;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INReadAnnouncementIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end