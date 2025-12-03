@interface MFPlaceholderMessageRewriter
+ (id)_deriveOutgoingMessageContentFromLibraryMessageContent:(id)content;
- (MFMessageRewriterPlaceholderResolver)placeholderResolver;
- (MFPlaceholderMessageRewriter)initWithOriginalMessageContent:(id)content resolver:(id)resolver;
- (id)bccRecipients;
- (id)ccRecipients;
- (id)rewrittenMessageContent;
- (id)savedHeaders;
- (id)sendingEmailAddress;
- (id)subject;
- (id)toRecipients;
@end

@implementation MFPlaceholderMessageRewriter

- (MFPlaceholderMessageRewriter)initWithOriginalMessageContent:(id)content resolver:(id)resolver
{
  contentCopy = content;
  resolverCopy = resolver;
  v13.receiver = self;
  v13.super_class = MFPlaceholderMessageRewriter;
  v9 = [(MFPlaceholderMessageRewriter *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    placeholders = v9->_placeholders;
    v9->_placeholders = v10;

    objc_storeStrong(&v9->_originalMessageContent, content);
    objc_storeWeak(&v9->_placeholderResolver, resolverCopy);
  }

  return v9;
}

+ (id)_deriveOutgoingMessageContentFromLibraryMessageContent:(id)content
{
  v51 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  libraryMessage = [contentCopy libraryMessage];

  if (!libraryMessage)
  {
    v40 = 0;
    goto LABEL_47;
  }

  libraryMessage2 = [contentCopy libraryMessage];
  messageBody = [libraryMessage2 messageBody];
  preferredBodyPart = [messageBody preferredBodyPart];
  v5 = preferredBodyPart;
  v37 = preferredBodyPart;
  if (preferredBodyPart)
  {
    v35 = [preferredBodyPart contentToOffset:1 resultOffset:0 asHTML:1];
    type = [v5 type];
    if ([type isEqualToString:@"multipart"])
    {
      subtype = [v37 subtype];
      v8 = [subtype isEqualToString:@"related"];

      if (v8)
      {
        array = [MEMORY[0x1E695DF70] array];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v10 = v35;
        v11 = 0;
        v12 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v12)
        {
          v13 = *v46;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v46 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v45 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
                htmlData = [v16 htmlData];
                if (htmlData)
                {
                  [v16 preferredEncoding];
                  v18 = MFCreateStringWithData();

                  v11 = v18;
                }

                attachmentsInDocument = [v16 attachmentsInDocument];
                [array addObjectsFromArray:attachmentsInDocument];
              }

              else
              {
                [array addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
          }

          while (v12);
        }

        v20 = objc_alloc_init(MEMORY[0x1E69B1668]);
        [v20 setHtmlBody:v11];
        [v20 setMixedContent:array];
        v40 = v20;

        goto LABEL_22;
      }
    }

    else
    {
    }

    v40 = objc_alloc_init(MEMORY[0x1E69B1670]);
    [v40 setMixedContent:v35];
LABEL_22:
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = v35;
    v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v22)
    {
      v23 = *v42;
LABEL_24:
      v24 = 0;
      while (1)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v41 + 1) + 8 * v24);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v22)
          {
            goto LABEL_24;
          }

          goto LABEL_30;
        }
      }

      v26 = v25;

      if (v26)
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_30:
    }

    topLevelPart = [messageBody topLevelPart];
    for (j = 0; j < [topLevelPart numberOfAlternatives]; ++j)
    {
      v29 = [topLevelPart alternativeAtIndex:j];
      type2 = [v29 type];
      if ([type2 isEqualToString:@"text"])
      {
        subtype2 = [v29 subtype];
        if ([subtype2 isEqualToString:@"plain"])
        {

LABEL_41:
          if (v29)
          {
            v26 = _plaintextDocumentForMimePart(v29);

            goto LABEL_44;
          }

          break;
        }

        subtype3 = [v29 subtype];
        v33 = [subtype3 isEqualToString:@"enriched"];

        if (v33)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v26 = 0;
LABEL_44:

LABEL_45:
    [v40 setPlaintextAlternative:v26];

    goto LABEL_46;
  }

  v40 = 0;
LABEL_46:

LABEL_47:

  return v40;
}

- (id)rewrittenMessageContent
{
  v54 = *MEMORY[0x1E69E9840];
  rewrittenMessageContent = self->_rewrittenMessageContent;
  if (!rewrittenMessageContent)
  {
    selfCopy = self;
    v39 = self->_originalMessageContent;
    libraryContent = [(MFOutgoingMessageContent *)v39 libraryContent];

    if (libraryContent)
    {
      v5 = objc_opt_class();
      libraryContent2 = [(MFOutgoingMessageContent *)v39 libraryContent];
      v7 = [v5 _deriveOutgoingMessageContentFromLibraryMessageContent:libraryContent2];
    }

    else
    {
      v7 = v39;
    }

    v40 = v7;
    v46 = [v7 copy];
    richtextContent = [v7 richtextContent];
    mixedContent = [richtextContent mixedContent];

    array = [MEMORY[0x1E695DF70] array];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = mixedContent;
    v9 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v9)
    {
      v48 = *v50;
      v43 = *MEMORY[0x1E69AD630];
      v42 = *MEMORY[0x1E69B1530];
      v41 = *MEMORY[0x1E69B1538];
      do
      {
        v10 = 0;
        do
        {
          if (*v50 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v49 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [array addObject:v11];
                  goto LABEL_50;
                }
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                mimePart = [v11 mimePart];
                partURL = [mimePart partURL];
                contentID = [mimePart bodyParameterForKey:v43];
                approximateRawSize = [mimePart approximateRawSize];
                placeholder = 0;
                if (v42 < approximateRawSize && v41 > approximateRawSize)
                {
                  v23 = [mimePart copyBodyDataToOffset:-1 resultOffset:0 downloadIfNecessary:1];
                  placeholder = [MEMORY[0x1E69B15D8] placeholderFromSerializedRepresentation:v23];
                }

LABEL_32:
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  mimePart = v11;
                  placeholder = [mimePart placeholder];
                  partURL = [mimePart url];
                  contentID = [mimePart contentID];
                  goto LABEL_32;
                }

                partURL = 0;
                contentID = 0;
                placeholder = 0;
              }

              placeholderResolver = [(MFPlaceholderMessageRewriter *)selfCopy placeholderResolver];
              v25 = placeholderResolver;
              if (placeholder)
              {
                [(NSMutableArray *)selfCopy->_placeholders addObject:placeholder];
                v26 = [v25 contentForPlaceholder:placeholder];
                goto LABEL_38;
              }

              v27 = [placeholderResolver contentForURL:partURL];
              if (v27)
              {

                goto LABEL_42;
              }

              v26 = [v25 contentForContentID:contentID];
LABEL_38:
              v27 = v26;

              if (v27)
              {
LABEL_42:
                multipartContent = [v46 multipartContent];
                if (multipartContent)
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    multipartContent2 = [v46 multipartContent];
                    htmlBody = [multipartContent2 htmlBody];
                    v32 = [htmlBody stringByAppendingString:v27];
                    multipartContent3 = [v46 multipartContent];
                    [multipartContent3 setHtmlBody:v32];
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = [MEMORY[0x1E699B288] mf_utf8HTMLStringWithString:v27];
                  [array addObject:v34];
                }

                else
                {
                  [array addObject:v27];
                }
              }

              goto LABEL_49;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            mimeBody = [v12 mimeBody];
            isHTML = [mimeBody isHTML];

            if (isHTML)
            {
              htmlData = [v12 htmlData];
              if (htmlData)
              {
                v16 = MEMORY[0x1E699B288];
                [v12 preferredEncoding];
                v17 = MFCreateStringWithData();
                partURL = [v16 mf_utf8HTMLStringWithString:v17];
                goto LABEL_26;
              }

              partURL = 0;
            }

            else
            {
              htmlData = [v12 mimePart];
              [v12 preferredEncoding];
              v17 = _plaintextDocumentForMimePart(htmlData);
              [array addObject:v17];
              partURL = 0;
LABEL_26:
            }

LABEL_28:
            if (partURL)
            {
              [v46 setTextPartsAreHTML:1];
              [array addObject:partURL];
            }

            goto LABEL_49;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            partURL = v11;
            goto LABEL_28;
          }

          partURL = 0;
LABEL_49:

LABEL_50:
          ++v10;
        }

        while (v9 != v10);
        v35 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
        v9 = v35;
      }

      while (v35);
    }

    [v46 setMixedContent:array];
    [v46 setPlaceholders:selfCopy->_placeholders];
    v36 = selfCopy->_rewrittenMessageContent;
    selfCopy->_rewrittenMessageContent = v46;

    rewrittenMessageContent = selfCopy->_rewrittenMessageContent;
  }

  return rewrittenMessageContent;
}

- (id)toRecipients
{
  headers = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  copyAddressListForTo = [headers copyAddressListForTo];

  return copyAddressListForTo;
}

- (id)ccRecipients
{
  headers = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  copyAddressListForCc = [headers copyAddressListForCc];

  return copyAddressListForCc;
}

- (id)bccRecipients
{
  headers = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  copyAddressListForBcc = [headers copyAddressListForBcc];

  return copyAddressListForBcc;
}

- (id)subject
{
  headers = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  v3 = [headers headersForKey:*MEMORY[0x1E699B178]];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)savedHeaders
{
  headers = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  v3 = [headers mutableCopy];

  return v3;
}

- (id)sendingEmailAddress
{
  headers = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  copyAddressListForSender = [headers copyAddressListForSender];
  firstObject = [copyAddressListForSender firstObject];

  return firstObject;
}

- (MFMessageRewriterPlaceholderResolver)placeholderResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_placeholderResolver);

  return WeakRetained;
}

@end