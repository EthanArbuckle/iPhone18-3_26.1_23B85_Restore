@interface INSendAnnouncementIntent
- (INAnnouncement)announcement;
- (INSendAnnouncementIntent)initWithAnnouncement:(id)a3 recipients:(id)a4 isReply:(id)a5 sharedUserID:(id)a6;
- (NSArray)recipients;
- (NSNumber)isReply;
- (NSString)sharedUserID;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAnnouncement:(id)a3;
- (void)setIsReply:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setSharedUserID:(id)a3;
@end

@implementation INSendAnnouncementIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INSendAnnouncementIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"announcement";
  v3 = [(INSendAnnouncementIntent *)self announcement];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"recipients";
  v5 = [(INSendAnnouncementIntent *)self recipients];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"isReply";
  v7 = [(INSendAnnouncementIntent *)self isReply];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setSharedUserID:(id)a3
{
  v4 = a3;
  v5 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  [v5 setSharedUserID:v4];
}

- (NSString)sharedUserID
{
  v2 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  v3 = [v2 sharedUserID];
  v4 = [v3 copy];

  return v4;
}

- (void)setIsReply:(id)a3
{
  v5 = a3;
  v4 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setIsReply:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasIsReply:0];
  }
}

- (NSNumber)isReply
{
  v3 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  if ([v3 hasIsReply])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INSendAnnouncementIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isReply")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setRecipients:(id)a3
{
  v4 = a3;
  v6 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeFilters(v4);

  [v6 setRecipients:v5];
}

- (NSArray)recipients
{
  v2 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  v3 = [v2 recipients];
  v4 = INIntentSlotValueTransformFromHomeFilters(v3);

  return v4;
}

- (void)setAnnouncement:(id)a3
{
  v4 = a3;
  v6 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAnnouncement(v4);

  [v6 setAnnouncement:v5];
}

- (INAnnouncement)announcement
{
  v2 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  v3 = [v2 announcement];
  v4 = INIntentSlotValueTransformFromAnnouncement(v3);

  return v4;
}

- (INSendAnnouncementIntent)initWithAnnouncement:(id)a3 recipients:(id)a4 isReply:(id)a5 sharedUserID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = INSendAnnouncementIntent;
  v12 = [(INIntent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(INSendAnnouncementIntent *)v12 setAnnouncement:v9];
    [(INSendAnnouncementIntent *)v13 setRecipients:v10];
    [(INSendAnnouncementIntent *)v13 setIsReply:v11];
  }

  return v13;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSendAnnouncementIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSendAnnouncementIntent *)self _typedBackingStore];
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