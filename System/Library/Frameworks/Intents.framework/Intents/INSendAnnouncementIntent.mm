@interface INSendAnnouncementIntent
- (INAnnouncement)announcement;
- (INSendAnnouncementIntent)initWithAnnouncement:(id)announcement recipients:(id)recipients isReply:(id)reply sharedUserID:(id)d;
- (NSArray)recipients;
- (NSNumber)isReply;
- (NSString)sharedUserID;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAnnouncement:(id)announcement;
- (void)setIsReply:(id)reply;
- (void)setRecipients:(id)recipients;
- (void)setSharedUserID:(id)d;
@end

@implementation INSendAnnouncementIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INSendAnnouncementIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"announcement";
  announcement = [(INSendAnnouncementIntent *)self announcement];
  null = announcement;
  if (!announcement)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"recipients";
  recipients = [(INSendAnnouncementIntent *)self recipients];
  null2 = recipients;
  if (!recipients)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"isReply";
  isReply = [(INSendAnnouncementIntent *)self isReply];
  null3 = isReply;
  if (!isReply)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!isReply)
  {
  }

  if (!recipients)
  {
  }

  if (!announcement)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setSharedUserID:(id)d
{
  dCopy = d;
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  [_typedBackingStore setSharedUserID:dCopy];
}

- (NSString)sharedUserID
{
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  sharedUserID = [_typedBackingStore sharedUserID];
  v4 = [sharedUserID copy];

  return v4;
}

- (void)setIsReply:(id)reply
{
  replyCopy = reply;
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  if (replyCopy)
  {
    [_typedBackingStore setIsReply:{objc_msgSend(replyCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasIsReply:0];
  }
}

- (NSNumber)isReply
{
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasIsReply])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INSendAnnouncementIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "isReply")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeFilters(recipientsCopy);

  [_typedBackingStore setRecipients:v5];
}

- (NSArray)recipients
{
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  recipients = [_typedBackingStore recipients];
  v4 = INIntentSlotValueTransformFromHomeFilters(recipients);

  return v4;
}

- (void)setAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToAnnouncement(announcementCopy);

  [_typedBackingStore setAnnouncement:v5];
}

- (INAnnouncement)announcement
{
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  announcement = [_typedBackingStore announcement];
  v4 = INIntentSlotValueTransformFromAnnouncement(announcement);

  return v4;
}

- (INSendAnnouncementIntent)initWithAnnouncement:(id)announcement recipients:(id)recipients isReply:(id)reply sharedUserID:(id)d
{
  announcementCopy = announcement;
  recipientsCopy = recipients;
  replyCopy = reply;
  v15.receiver = self;
  v15.super_class = INSendAnnouncementIntent;
  v12 = [(INIntent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(INSendAnnouncementIntent *)v12 setAnnouncement:announcementCopy];
    [(INSendAnnouncementIntent *)v13 setRecipients:recipientsCopy];
    [(INSendAnnouncementIntent *)v13 setIsReply:replyCopy];
  }

  return v13;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSendAnnouncementIntent *)self _typedBackingStore];
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