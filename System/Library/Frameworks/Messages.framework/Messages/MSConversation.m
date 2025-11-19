@interface MSConversation
+ (id)activeConversation;
- (MSConversationDelegate)delegate;
- (id)_initWithState:(id)a3 context:(id)a4;
- (void)_insertAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_insertAttachment:(id)a3 adamID:(id)a4 appName:(id)a5 completionHandler:(id)a6;
- (void)_insertAttachment:(id)a3 withAlternateFilename:(id)a4 skipShelf:(BOOL)a5 generativePlaygroundRecipe:(id)a6 completionHandler:(id)a7;
- (void)_insertMessage:(id)a3 localizedChangeDescription:(id)a4 skipShelf:(BOOL)a5 completionHandler:(id)a6;
- (void)_insertMessage:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_insertRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_insertSticker:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_insertSticker:(id)a3 skipShelf:(BOOL)a4 frameInWindowCoordinates:(CGRect)a5 completionHandler:(id)a6;
- (void)_insertText:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4;
- (void)_updateWithState:(id)a3;
- (void)insertImage:(id)a3 completionHandler:(id)a4;
- (void)insertMediaAtURL:(id)a3 attributionURL:(id)a4 attributionIcon:(id)a5 completionHandler:(id)a6;
- (void)insertStickerWithImage:(id)a3 completionHandler:(id)a4;
- (void)insertStickerWithMediaAtURL:(id)a3 completionHandler:(id)a4;
- (void)sendCustomAcknowledgement:(id)a3 completionHandler:(id)a4;
@end

@implementation MSConversation

- (void)insertMediaAtURL:(id)a3 attributionURL:(id)a4 attributionIcon:(id)a5 completionHandler:(id)a6
{
  v18 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v13 setMediaURL:v12];

  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = [v11 absoluteString];

  if (v15)
  {
    CFDictionarySetValue(v14, @"url", v15);
  }

  if (v18)
  {
    v16 = _UIImageJPEGRepresentation();
    if (v16)
    {
      CFDictionarySetValue(v14, @"icon", v16);
    }
  }

  if ([(__CFDictionary *)v14 count])
  {
    [(_MSMessageMediaPayload *)v13 setAttributionInfo:v14];
  }

  v17 = [(MSConversation *)self context];
  [v17 stageMediaItem:v13 skipShelf:0 forceStage:0 completionHandler:v10];
}

- (void)insertImage:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v9 setImage:v7];

  v8 = [(MSConversation *)self context];
  [v8 stageMediaItem:v9 skipShelf:0 forceStage:0 completionHandler:v6];
}

- (void)insertStickerWithImage:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v9 setImage:v7];

  v8 = [(MSConversation *)self context];
  [v8 stageMediaItem:v9 skipShelf:0 forceStage:0 completionHandler:v6];
}

- (void)insertStickerWithMediaAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v9 setMediaURL:v7];

  v8 = [(MSConversation *)self context];
  [v8 stageMediaItem:v9 skipShelf:0 forceStage:0 completionHandler:v6];
}

+ (id)activeConversation
{
  v2 = +[_MSMessageAppContext activeExtensionContext];
  v3 = [v2 activeConversation];

  return v3;
}

- (id)_initWithState:(id)a3 context:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v58.receiver = self;
  v58.super_class = MSConversation;
  v8 = [(MSConversation *)&v58 init];
  if (v8)
  {
    v51 = v7;
    v52 = a4;
    v9 = [v6 conversationIdentifier];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v6 senderIdentifier];
    v12 = [v11 copy];
    localParticipantIdentifier = v8->_localParticipantIdentifier;
    v8->_localParticipantIdentifier = v12;

    v14 = [v6 recipientIdentifiers];
    v15 = [v14 copy];
    remoteParticipantIdentifiers = v8->_remoteParticipantIdentifiers;
    v8->_remoteParticipantIdentifiers = v15;

    v17 = [v6 activeMessage];
    selectedMessage = v8->_selectedMessage;
    v8->_selectedMessage = v17;

    v19 = [v6 conversationID];
    conversationIdentifier = v8->_conversationIdentifier;
    v8->_conversationIdentifier = v19;

    v21 = [v6 conversationEngramID];
    engramID = v8->_engramID;
    v8->_engramID = v21;

    v23 = [v6 groupID];
    groupID = v8->_groupID;
    v8->_groupID = v23;

    v25 = [v6 iMessageLoginID];
    iMessageLoginID = v8->_iMessageLoginID;
    v8->_iMessageLoginID = v25;

    v27 = [v6 senderAddress];
    senderAddress = v8->_senderAddress;
    v8->_senderAddress = v27;

    v29 = [v6 recipientAddresses];
    recipientAddresses = v8->_recipientAddresses;
    v8->_recipientAddresses = v29;

    v31 = [v6 generatedSummary];
    generatedSummary = v8->_generatedSummary;
    v50 = v8;
    v8->_generatedSummary = v31;

    v33 = [MEMORY[0x1E695DF70] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [v6 conversationContext];
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

          [v33 addObject:v39];
        }

        v35 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v35);
    }

    v44 = [v33 copy];
    v8 = v50;
    contextItems = v50->_contextItems;
    v50->_contextItems = v44;

    v50->_isiMessage = [v6 isiMessage];
    v50->_isBusiness = [v6 isBusiness];
    v50->_isUltraConstrainedNetwork = [v6 isUltraConstrainedNetwork];
    v46 = [v6 draftAssetArchives];
    v47 = [v46 copy];
    draftAssetArchives = v50->_draftAssetArchives;
    v50->_draftAssetArchives = v47;

    objc_storeStrong(&v50->_context, v52);
    v7 = v51;
  }

  return v8;
}

- (void)_updateWithState:(id)a3
{
  v4 = a3;
  remoteParticipantIdentifiers = self->_remoteParticipantIdentifiers;
  v16 = v4;
  v6 = [v4 recipientIdentifiers];
  LOBYTE(remoteParticipantIdentifiers) = [(NSArray *)remoteParticipantIdentifiers isEqual:v6];

  if ((remoteParticipantIdentifiers & 1) == 0)
  {
    v7 = [v16 recipientIdentifiers];
    [(MSConversation *)self setRemoteParticipantIdentifiers:v7];
  }

  selectedMessage = self->_selectedMessage;
  if (!selectedMessage || ([v16 activeMessage], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[MSMessage isEqual:](selectedMessage, "isEqual:", v9), v9, !v10))
  {
    v11 = [(MSConversation *)self delegate];
    v12 = [v16 activeMessage];
    [v11 _conversation:self willSelectMessage:v12];

    v13 = [v16 activeMessage];
    [(MSConversation *)self setSelectedMessage:v13];

    v14 = [(MSConversation *)self delegate];
    v15 = [v16 activeMessage];
    [v14 _conversation:self didSelectMessage:v15];
  }
}

- (void)sendCustomAcknowledgement:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(MSConversation *)self context];
  v8 = [(MSConversation *)self selectedMessage];
  [v9 sendCustomAcknowledgement:v7 selectedMessage:v8 completionHandler:v6];
}

- (void)_requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(MSConversation *)self context];
  [v8 requestConversationAvatarsWithSize:v7 completionHandler:{width, height}];
}

- (void)_insertMessage:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(MSConversation *)self context];
  v12 = v10;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &__block_literal_global_6;
  }

  [v10 stageAppItem:v9 skipShelf:v5 completionHandler:v11];
}

- (void)_insertMessage:(id)a3 localizedChangeDescription:(id)a4 skipShelf:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  [v11 setBreadcrumbText:a4];
  v12 = [(MSConversation *)self context];
  v14 = v12;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = &__block_literal_global_20;
  }

  [v12 stageAppItem:v11 skipShelf:v6 completionHandler:v13];
}

- (void)_insertText:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v13 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v13 setText:v9];

  v10 = [(MSConversation *)self context];
  v11 = v10;
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &__block_literal_global_23;
  }

  [v10 stageMediaItem:v13 skipShelf:v5 forceStage:0 completionHandler:v12];
}

- (void)_insertAttachment:(id)a3 withAlternateFilename:(id)a4 skipShelf:(BOOL)a5 generativePlaygroundRecipe:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v23 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v15 setMediaURL:v23];
  if (!v12 || ([v12 pathExtension], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, !v17))
  {
    v18 = [v23 standardizedURL];
    v19 = [v18 lastPathComponent];

    v12 = v19;
  }

  [(_MSMessageMediaPayload *)v15 setMediaFilename:v12];
  [(_MSMessageMediaPayload *)v15 setGenerativePlaygroundRecipeData:v14];

  v20 = [(MSConversation *)self context];
  v21 = v20;
  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = &__block_literal_global_25;
  }

  [v20 stageMediaItem:v15 skipShelf:v9 forceStage:0 completionHandler:v22];
}

- (void)_insertRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(MSConversation *)self context];
  v12 = v10;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &__block_literal_global_27;
  }

  [v10 stageRichLink:v9 skipShelf:v5 completionHandler:v11];
}

- (void)_insertSticker:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v13 = [[_MSMessageMediaPayload alloc] initWithSticker:v9];

  v10 = [(MSConversation *)self context];
  v11 = v10;
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &__block_literal_global_29;
  }

  [v10 stageMediaItem:v13 skipShelf:v5 forceStage:0 completionHandler:v12];
}

- (void)_insertSticker:(id)a3 skipShelf:(BOOL)a4 frameInWindowCoordinates:(CGRect)a5 completionHandler:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v13 = a6;
  v14 = a3;
  v18 = [[_MSMessageMediaPayload alloc] initWithSticker:v14];

  [(_MSMessageMediaPayload *)v18 setSourceFrame:x, y, width, height];
  v15 = [(MSConversation *)self context];
  v16 = v15;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &__block_literal_global_31;
  }

  [v15 stageMediaItem:v18 skipShelf:v10 forceStage:0 completionHandler:v17];
}

- (void)_insertAttachment:(id)a3 adamID:(id)a4 appName:(id)a5 completionHandler:(id)a6
{
  v16 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = objc_alloc_init(_MSMessageMediaPayload);
  [(_MSMessageMediaPayload *)v13 setMediaURL:v12];

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v16 && ([v16 isEqualToNumber:&unk_1F4AC7060] & 1) == 0)
  {
    [v14 setValue:v16 forKey:@"adam-id"];
  }

  if ([v10 length])
  {
    [v14 setValue:v10 forKey:@"name"];
  }

  if ([v14 count])
  {
    [(_MSMessageMediaPayload *)v13 setAttributionInfo:v14];
  }

  v15 = [(MSConversation *)self context];
  [v15 stageMediaItem:v13 skipShelf:0 forceStage:0 completionHandler:v11];
}

- (void)_insertAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(MSConversation *)self context];
  v12 = v10;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &__block_literal_global_35;
  }

  [v10 stageAssetArchive:v9 skipShelf:v5 completionHandler:v11];
}

- (void)_removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSConversation *)self context];
  [v8 removeAssetArchiveWithIdentifier:v7 completionHandler:v6];
}

- (MSConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end