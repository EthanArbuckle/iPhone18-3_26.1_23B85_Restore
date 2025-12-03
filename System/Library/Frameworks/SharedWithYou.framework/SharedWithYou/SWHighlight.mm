@interface SWHighlight
+ (id)highlightsForSLHighlights:(id)highlights;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalResource;
- (BOOL)isSyndicatableMedia;
- (NSURL)URL;
- (SWHighlight)initWithCSSearchableItem:(id)item error:(id *)error;
- (SWHighlight)initWithCSSearchableItemUniqueIdentifier:(id)identifier error:(id *)error;
- (SWHighlight)initWithCoder:(id)coder;
- (SWHighlight)initWithSLHighlight:(id)highlight;
- (id)attributions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hideContextMenu;
- (id)livePhotoComplementURL;
- (id)replyContextMenuWithPresentingViewController:(id)controller;
- (id)resourceUTI;
- (id)stringIdentifier;
- (id)timestamp;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWHighlight

- (SWHighlight)initWithSLHighlight:(id)highlight
{
  highlightCopy = highlight;
  v13.receiver = self;
  v13.super_class = SWHighlight;
  v5 = [(SWHighlight *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(SWHighlight *)v5 _setSLHighlight:highlightCopy];
    v7 = [SWHighlightIdentifier alloc];
    slHighlight = [(SWHighlight *)v6 slHighlight];
    identifier = [slHighlight identifier];
    v10 = [(SWHighlightIdentifier *)v7 initWithStringIdentifier:identifier];
    identifier = v6->_identifier;
    v6->_identifier = v10;
  }

  return v6;
}

- (id)stringIdentifier
{
  slHighlight = [(SWHighlight *)self slHighlight];
  identifier = [slHighlight identifier];

  return identifier;
}

- (NSURL)URL
{
  slHighlight = [(SWHighlight *)self slHighlight];
  resourceURL = [slHighlight resourceURL];

  return resourceURL;
}

- (id)attributions
{
  slHighlight = [(SWHighlight *)self slHighlight];
  attributions = [slHighlight attributions];

  return attributions;
}

- (id)timestamp
{
  slHighlight = [(SWHighlight *)self slHighlight];
  timestamp = [slHighlight timestamp];

  return timestamp;
}

+ (id)highlightsForSLHighlights:(id)highlights
{
  v22 = *MEMORY[0x1E69E9840];
  highlightsCopy = highlights;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = highlightsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [[SWCollaborationHighlight alloc] initWithSLCollaborationHighlight:v10];
        }

        else
        {
          v12 = [SWHighlight alloc];
          v11 = [(SWHighlight *)v12 initWithSLHighlight:v10, v17];
        }

        v13 = v11;
        [array addObject:{v11, v17}];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [array copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (SWHighlight)initWithCSSearchableItem:(id)item error:(id *)error
{
  v6 = MEMORY[0x1E69D3810];
  itemCopy = item;
  v8 = [[v6 alloc] initWithCSSearchableItem:itemCopy error:error];

  if (v8)
  {
    self = [(SWHighlight *)self initWithSLHighlight:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SWHighlight)initWithCSSearchableItemUniqueIdentifier:(id)identifier error:(id *)error
{
  v6 = MEMORY[0x1E69D3810];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithCSSearchableItemUniqueIdentifier:identifierCopy error:error];

  if (v8)
  {
    self = [(SWHighlight *)self initWithSLHighlight:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isLocalResource
{
  slHighlight = [(SWHighlight *)self slHighlight];
  isLocalResource = [slHighlight isLocalResource];

  return isLocalResource;
}

- (BOOL)isSyndicatableMedia
{
  slHighlight = [(SWHighlight *)self slHighlight];
  isSyndicatableMedia = [slHighlight isSyndicatableMedia];

  return isSyndicatableMedia;
}

- (id)livePhotoComplementURL
{
  slHighlight = [(SWHighlight *)self slHighlight];
  livePhotoComplementURL = [slHighlight livePhotoComplementURL];

  return livePhotoComplementURL;
}

- (id)resourceUTI
{
  slHighlight = [(SWHighlight *)self slHighlight];
  resourceUTI = [slHighlight resourceUTI];

  return resourceUTI;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  slHighlight = [(SWHighlight *)self slHighlight];
  [coderCopy encodeObject:slHighlight forKey:@"slh"];
}

- (SWHighlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SWHighlight;
  v5 = [(SWHighlight *)&v14 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slh"];
  [(SWHighlight *)v5 _setSLHighlight:v6];

  slHighlight = [(SWHighlight *)v5 slHighlight];

  if (slHighlight)
  {
    v8 = [SWHighlightIdentifier alloc];
    slHighlight2 = [(SWHighlight *)v5 slHighlight];
    identifier = [slHighlight2 identifier];
    v11 = [(SWHighlightIdentifier *)v8 initWithStringIdentifier:identifier];
    identifier = v5->_identifier;
    v5->_identifier = v11;

LABEL_4:
    slHighlight = v5;
  }

  return slHighlight;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  slHighlight = [(SWHighlight *)self slHighlight];
  v6 = [slHighlight copy];
  [v4 _setSLHighlight:v6];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    slHighlight = [(SWHighlight *)self slHighlight];
    slHighlight2 = [v5 slHighlight];

    v8 = [slHighlight isEqual:slHighlight2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  slHighlight = [(SWHighlight *)self slHighlight];
  v3 = [slHighlight hash];

  return v3;
}

- (id)replyContextMenuWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  slHighlight = [(SWHighlight *)self slHighlight];
  attributions = [slHighlight attributions];
  v7 = [attributions count];

  if (v7 == 1)
  {
    v8 = objc_alloc_init(SWHighlightContextMenu);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __60__SWHighlight_replyContextMenuWithPresentingViewController___block_invoke;
    v17 = &unk_1E7FDDFC0;
    selfCopy = self;
    v19 = controllerCopy;
    v9 = _Block_copy(&v14);
    v10 = SWFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"REPLY_CONTEXTMENU" value:&stru_1F3ABB850 table:{@"SharedWithYou", v14, v15, v16, v17, selfCopy}];
    [(SWHighlightContextMenu *)v8 setTitle:v11];

    [(SWHighlightContextMenu *)v8 setIdentifier:*MEMORY[0x1E697B768]];
    [(SWHighlightContextMenu *)v8 setActionBlock:v9];
  }

  else
  {
    v12 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SWHighlight replyContextMenuWithPresentingViewController:v12];
    }

    v8 = 0;
  }

  return v8;
}

void __60__SWHighlight_replyContextMenuWithPresentingViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attributions];
  v8 = [v2 firstObject];

  if (v8)
  {
    v3 = [v8 attachmentGUID];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69D3840]);
  v5 = [v8 uniqueIdentifier];
  [v4 presentTranscriptForMessageGUID:v5 attachmentGUID:v3 presentingViewController:*(a1 + 40)];
  v6 = [*(a1 + 32) attributions];
  v7 = [v6 firstObject];
  SLSendPortraitFeedbackTypeAppButtonForAttribution();
}

- (id)hideContextMenu
{
  v28 = *MEMORY[0x1E69E9840];
  slHighlight = [(SWHighlight *)self slHighlight];
  attributions = [slHighlight attributions];
  v5 = [attributions count];

  if (v5)
  {
    v6 = objc_alloc_init(SWHighlightContextMenu);
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    slHighlight2 = [(SWHighlight *)self slHighlight];
    attributions2 = [slHighlight2 attributions];

    v10 = [attributions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(attributions2);
          }

          uniqueIdentifier = [*(*(&v23 + 1) + 8 * i) uniqueIdentifier];
          if ([uniqueIdentifier length])
          {
            [array addObject:uniqueIdentifier];
          }
        }

        v11 = [attributions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__SWHighlight_hideContextMenu__block_invoke;
    aBlock[3] = &unk_1E7FDDC38;
    v22 = array;
    v15 = array;
    v16 = _Block_copy(aBlock);
    v17 = SWFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"HIDE_CONTEXTMENU" value:&stru_1F3ABB850 table:@"SharedWithYou"];
    [(SWHighlightContextMenu *)v6 setTitle:v18];

    [(SWHighlightContextMenu *)v6 setIdentifier:*MEMORY[0x1E697B758]];
    [(SWHighlightContextMenu *)v6 setActionBlock:v16];
  }

  else
  {
    v15 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SWHighlight *)v15 hideContextMenu];
    }

    v6 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

void __30__SWHighlight_hideContextMenu__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = SWFrameworkLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v15 = v6;
          _os_log_impl(&dword_1BBC06000, v7, OS_LOG_TYPE_INFO, "[SWHighlight] hideContextMenu invoked. Sending remove action for message guid: %@", buf, 0xCu);
        }

        if ([v6 length])
        {
          v8 = [MEMORY[0x1E69D3838] sharedController];
          [v8 removeMessageGUIDFromSyndication:v6];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end