@interface MSConversation
+ (id)activeConversation;
- (MSConversationDelegate)delegate;
- (id)_initWithState:(id)state context:(id)context;
- (void)_insertAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_insertAttachment:(id)attachment adamID:(id)d appName:(id)name completionHandler:(id)handler;
- (void)_insertAttachment:(id)attachment withAlternateFilename:(id)filename skipShelf:(BOOL)shelf generativePlaygroundRecipe:(id)recipe completionHandler:(id)handler;
- (void)_insertMessage:(id)message localizedChangeDescription:(id)description skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_insertMessage:(id)message skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_insertRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_insertSticker:(id)sticker skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_insertSticker:(id)sticker skipShelf:(BOOL)shelf frameInWindowCoordinates:(CGRect)coordinates completionHandler:(id)handler;
- (void)_insertText:(id)text skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler;
- (void)_updateWithState:(id)state;
- (void)insertImage:(id)image completionHandler:(id)handler;
- (void)insertMediaAtURL:(id)l attributionURL:(id)rL attributionIcon:(id)icon completionHandler:(id)handler;
- (void)insertStickerWithImage:(id)image completionHandler:(id)handler;
- (void)insertStickerWithMediaAtURL:(id)l completionHandler:(id)handler;
- (void)sendCustomAcknowledgement:(id)acknowledgement completionHandler:(id)handler;
@end

@implementation MSConversation

- (void)insertMediaAtURL:(id)l attributionURL:(id)rL attributionIcon:(id)icon completionHandler:(id)handler
{
  iconCopy = icon;
  handlerCopy = handler;
  rLCopy = rL;
  lCopy = l;
  v13 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v13 setMediaURL:lCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  absoluteString = [rLCopy absoluteString];

  if (absoluteString)
  {
    CFDictionarySetValue(dictionary, @"url", absoluteString);
  }

  if (iconCopy)
  {
    v16 = _UIImageJPEGRepresentation();
    if (v16)
    {
      CFDictionarySetValue(dictionary, @"icon", v16);
    }
  }

  if ([(__CFDictionary *)dictionary count])
  {
    [(_MSMessageMediaPayload *)v13 setAttributionInfo:dictionary];
  }

  context = [(MSConversation *)self context];
  [context stageMediaItem:v13 skipShelf:0 forceStage:0 completionHandler:handlerCopy];
}

- (void)insertImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  v9 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v9 setImage:imageCopy];

  context = [(MSConversation *)self context];
  [context stageMediaItem:v9 skipShelf:0 forceStage:0 completionHandler:handlerCopy];
}

- (void)insertStickerWithImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  v9 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v9 setImage:imageCopy];

  context = [(MSConversation *)self context];
  [context stageMediaItem:v9 skipShelf:0 forceStage:0 completionHandler:handlerCopy];
}

- (void)insertStickerWithMediaAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v9 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v9 setMediaURL:lCopy];

  context = [(MSConversation *)self context];
  [context stageMediaItem:v9 skipShelf:0 forceStage:0 completionHandler:handlerCopy];
}

+ (id)activeConversation
{
  v2 = +[_MSMessageAppContext activeExtensionContext];
  activeConversation = [v2 activeConversation];

  return activeConversation;
}

- (id)_initWithState:(id)state context:(id)context
{
  v60 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  contextCopy = context;
  v58.receiver = self;
  v58.super_class = MSConversation;
  v8 = [(MSConversation *)&v58 init];
  if (v8)
  {
    v51 = contextCopy;
    contextCopy2 = context;
    conversationIdentifier = [stateCopy conversationIdentifier];
    identifier = v8->_identifier;
    v8->_identifier = conversationIdentifier;

    senderIdentifier = [stateCopy senderIdentifier];
    v12 = [senderIdentifier copy];
    localParticipantIdentifier = v8->_localParticipantIdentifier;
    v8->_localParticipantIdentifier = v12;

    recipientIdentifiers = [stateCopy recipientIdentifiers];
    v15 = [recipientIdentifiers copy];
    remoteParticipantIdentifiers = v8->_remoteParticipantIdentifiers;
    v8->_remoteParticipantIdentifiers = v15;

    activeMessage = [stateCopy activeMessage];
    selectedMessage = v8->_selectedMessage;
    v8->_selectedMessage = activeMessage;

    conversationID = [stateCopy conversationID];
    conversationIdentifier = v8->_conversationIdentifier;
    v8->_conversationIdentifier = conversationID;

    conversationEngramID = [stateCopy conversationEngramID];
    engramID = v8->_engramID;
    v8->_engramID = conversationEngramID;

    groupID = [stateCopy groupID];
    groupID = v8->_groupID;
    v8->_groupID = groupID;

    iMessageLoginID = [stateCopy iMessageLoginID];
    iMessageLoginID = v8->_iMessageLoginID;
    v8->_iMessageLoginID = iMessageLoginID;

    senderAddress = [stateCopy senderAddress];
    senderAddress = v8->_senderAddress;
    v8->_senderAddress = senderAddress;

    recipientAddresses = [stateCopy recipientAddresses];
    recipientAddresses = v8->_recipientAddresses;
    v8->_recipientAddresses = recipientAddresses;

    generatedSummary = [stateCopy generatedSummary];
    generatedSummary = v8->_generatedSummary;
    v50 = v8;
    v8->_generatedSummary = generatedSummary;

    array = [MEMORY[0x1E695DF70] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [stateCopy conversationContext];
    v34 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v55;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v54 + 1) + 8 * i);
          v39 = objc_alloc_init(MSConversationContextItem);
          v40 = [v38 objectForKeyedSubscript:@"CKGenerativeContextTimestamp"];
          [(MSConversationContextItem *)v39 setTimestamp:v40];

          v41 = [v38 objectForKeyedSubscript:@"CKGenerativeContextText"];
          [(MSConversationContextItem *)v39 setMessageContent:v41];

          v42 = [v38 objectForKeyedSubscript:@"CKGenerativeContextHandle"];
          [(MSConversationContextItem *)v39 setSenderHandle:v42];

          v43 = [v38 objectForKeyedSubscript:@"CKGenerativeContextDisplayName"];
          [(MSConversationContextItem *)v39 setSenderDisplayName:v43];

          [array addObject:v39];
        }

        v35 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v35);
    }

    v44 = [array copy];
    v8 = v50;
    contextItems = v50->_contextItems;
    v50->_contextItems = v44;

    v50->_isiMessage = [stateCopy isiMessage];
    v50->_isBusiness = [stateCopy isBusiness];
    v50->_isUltraConstrainedNetwork = [stateCopy isUltraConstrainedNetwork];
    draftAssetArchives = [stateCopy draftAssetArchives];
    v47 = [draftAssetArchives copy];
    draftAssetArchives = v50->_draftAssetArchives;
    v50->_draftAssetArchives = v47;

    objc_storeStrong(&v50->_context, contextCopy2);
    contextCopy = v51;
  }

  return v8;
}

- (void)_updateWithState:(id)state
{
  stateCopy = state;
  remoteParticipantIdentifiers = self->_remoteParticipantIdentifiers;
  v16 = stateCopy;
  recipientIdentifiers = [stateCopy recipientIdentifiers];
  LOBYTE(remoteParticipantIdentifiers) = [(NSArray *)remoteParticipantIdentifiers isEqual:recipientIdentifiers];

  if ((remoteParticipantIdentifiers & 1) == 0)
  {
    recipientIdentifiers2 = [v16 recipientIdentifiers];
    [(MSConversation *)self setRemoteParticipantIdentifiers:recipientIdentifiers2];
  }

  selectedMessage = self->_selectedMessage;
  if (!selectedMessage || ([v16 activeMessage], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[MSMessage isEqual:](selectedMessage, "isEqual:", v9), v9, !v10))
  {
    delegate = [(MSConversation *)self delegate];
    activeMessage = [v16 activeMessage];
    [delegate _conversation:self willSelectMessage:activeMessage];

    activeMessage2 = [v16 activeMessage];
    [(MSConversation *)self setSelectedMessage:activeMessage2];

    delegate2 = [(MSConversation *)self delegate];
    activeMessage3 = [v16 activeMessage];
    [delegate2 _conversation:self didSelectMessage:activeMessage3];
  }
}

- (void)sendCustomAcknowledgement:(id)acknowledgement completionHandler:(id)handler
{
  handlerCopy = handler;
  acknowledgementCopy = acknowledgement;
  context = [(MSConversation *)self context];
  selectedMessage = [(MSConversation *)self selectedMessage];
  [context sendCustomAcknowledgement:acknowledgementCopy selectedMessage:selectedMessage completionHandler:handlerCopy];
}

- (void)_requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  context = [(MSConversation *)self context];
  [context requestConversationAvatarsWithSize:handlerCopy completionHandler:{width, height}];
}

- (void)_insertMessage:(id)message skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  messageCopy = message;
  context = [(MSConversation *)self context];
  v12 = context;
  if (handlerCopy)
  {
    v11 = handlerCopy;
  }

  else
  {
    v11 = &__block_literal_global_6;
  }

  [context stageAppItem:messageCopy skipShelf:shelfCopy completionHandler:v11];
}

- (void)_insertMessage:(id)message localizedChangeDescription:(id)description skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  messageCopy = message;
  [messageCopy setBreadcrumbText:description];
  context = [(MSConversation *)self context];
  v14 = context;
  if (handlerCopy)
  {
    v13 = handlerCopy;
  }

  else
  {
    v13 = &__block_literal_global_20;
  }

  [context stageAppItem:messageCopy skipShelf:shelfCopy completionHandler:v13];
}

- (void)_insertText:(id)text skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  textCopy = text;
  v13 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v13 setText:textCopy];

  context = [(MSConversation *)self context];
  v11 = context;
  if (handlerCopy)
  {
    v12 = handlerCopy;
  }

  else
  {
    v12 = &__block_literal_global_23;
  }

  [context stageMediaItem:v13 skipShelf:shelfCopy forceStage:0 completionHandler:v12];
}

- (void)_insertAttachment:(id)attachment withAlternateFilename:(id)filename skipShelf:(BOOL)shelf generativePlaygroundRecipe:(id)recipe completionHandler:(id)handler
{
  shelfCopy = shelf;
  attachmentCopy = attachment;
  filenameCopy = filename;
  handlerCopy = handler;
  recipeCopy = recipe;
  v15 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v15 setMediaURL:attachmentCopy];
  if (!filenameCopy || ([filenameCopy pathExtension], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, !v17))
  {
    standardizedURL = [attachmentCopy standardizedURL];
    lastPathComponent = [standardizedURL lastPathComponent];

    filenameCopy = lastPathComponent;
  }

  [(_MSMessageMediaPayload *)v15 setMediaFilename:filenameCopy];
  [(_MSMessageMediaPayload *)v15 setGenerativePlaygroundRecipeData:recipeCopy];

  context = [(MSConversation *)self context];
  v21 = context;
  if (handlerCopy)
  {
    v22 = handlerCopy;
  }

  else
  {
    v22 = &__block_literal_global_25;
  }

  [context stageMediaItem:v15 skipShelf:shelfCopy forceStage:0 completionHandler:v22];
}

- (void)_insertRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  linkCopy = link;
  context = [(MSConversation *)self context];
  v12 = context;
  if (handlerCopy)
  {
    v11 = handlerCopy;
  }

  else
  {
    v11 = &__block_literal_global_27;
  }

  [context stageRichLink:linkCopy skipShelf:shelfCopy completionHandler:v11];
}

- (void)_insertSticker:(id)sticker skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  stickerCopy = sticker;
  v13 = [[_MSMessageMediaPayload alloc] initWithSticker:stickerCopy];

  context = [(MSConversation *)self context];
  v11 = context;
  if (handlerCopy)
  {
    v12 = handlerCopy;
  }

  else
  {
    v12 = &__block_literal_global_29;
  }

  [context stageMediaItem:v13 skipShelf:shelfCopy forceStage:0 completionHandler:v12];
}

- (void)_insertSticker:(id)sticker skipShelf:(BOOL)shelf frameInWindowCoordinates:(CGRect)coordinates completionHandler:(id)handler
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  shelfCopy = shelf;
  handlerCopy = handler;
  stickerCopy = sticker;
  v18 = [[_MSMessageMediaPayload alloc] initWithSticker:stickerCopy];

  [(_MSMessageMediaPayload *)v18 setSourceFrame:x, y, width, height];
  context = [(MSConversation *)self context];
  v16 = context;
  if (handlerCopy)
  {
    v17 = handlerCopy;
  }

  else
  {
    v17 = &__block_literal_global_31;
  }

  [context stageMediaItem:v18 skipShelf:shelfCopy forceStage:0 completionHandler:v17];
}

- (void)_insertAttachment:(id)attachment adamID:(id)d appName:(id)name completionHandler:(id)handler
{
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  attachmentCopy = attachment;
  v13 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v13 setMediaURL:attachmentCopy];

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (dCopy && ([dCopy isEqualToNumber:&unk_1F4AC7060] & 1) == 0)
  {
    [v14 setValue:dCopy forKey:@"adam-id"];
  }

  if ([nameCopy length])
  {
    [v14 setValue:nameCopy forKey:@"name"];
  }

  if ([v14 count])
  {
    [(_MSMessageMediaPayload *)v13 setAttributionInfo:v14];
  }

  context = [(MSConversation *)self context];
  [context stageMediaItem:v13 skipShelf:0 forceStage:0 completionHandler:handlerCopy];
}

- (void)_insertAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  shelfCopy = shelf;
  handlerCopy = handler;
  archiveCopy = archive;
  context = [(MSConversation *)self context];
  v12 = context;
  if (handlerCopy)
  {
    v11 = handlerCopy;
  }

  else
  {
    v11 = &__block_literal_global_35;
  }

  [context stageAssetArchive:archiveCopy skipShelf:shelfCopy completionHandler:v11];
}

- (void)_removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  context = [(MSConversation *)self context];
  [context removeAssetArchiveWithIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (MSConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end