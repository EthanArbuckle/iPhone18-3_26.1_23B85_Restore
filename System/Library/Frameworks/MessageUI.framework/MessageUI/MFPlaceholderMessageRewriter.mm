@interface MFPlaceholderMessageRewriter
+ (id)_deriveOutgoingMessageContentFromLibraryMessageContent:(id)a3;
- (MFMessageRewriterPlaceholderResolver)placeholderResolver;
- (MFPlaceholderMessageRewriter)initWithOriginalMessageContent:(id)a3 resolver:(id)a4;
- (id)bccRecipients;
- (id)ccRecipients;
- (id)rewrittenMessageContent;
- (id)savedHeaders;
- (id)sendingEmailAddress;
- (id)subject;
- (id)toRecipients;
@end

@implementation MFPlaceholderMessageRewriter

- (MFPlaceholderMessageRewriter)initWithOriginalMessageContent:(id)a3 resolver:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MFPlaceholderMessageRewriter;
  v9 = [(MFPlaceholderMessageRewriter *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    placeholders = v9->_placeholders;
    v9->_placeholders = v10;

    objc_storeStrong(&v9->_originalMessageContent, a3);
    objc_storeWeak(&v9->_placeholderResolver, v8);
  }

  return v9;
}

+ (id)_deriveOutgoingMessageContentFromLibraryMessageContent:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v3 = [v39 libraryMessage];

  if (!v3)
  {
    v40 = 0;
    goto LABEL_47;
  }

  v36 = [v39 libraryMessage];
  v38 = [v36 messageBody];
  v4 = [v38 preferredBodyPart];
  v5 = v4;
  v37 = v4;
  if (v4)
  {
    v35 = [v4 contentToOffset:1 resultOffset:0 asHTML:1];
    v6 = [v5 type];
    if ([v6 isEqualToString:@"multipart"])
    {
      v7 = [v37 subtype];
      v8 = [v7 isEqualToString:@"related"];

      if (v8)
      {
        v9 = [MEMORY[0x1E695DF70] array];
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
                v17 = [v16 htmlData];
                if (v17)
                {
                  [v16 preferredEncoding];
                  v18 = MFCreateStringWithData();

                  v11 = v18;
                }

                v19 = [v16 attachmentsInDocument];
                [v9 addObjectsFromArray:v19];
              }

              else
              {
                [v9 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
          }

          while (v12);
        }

        v20 = objc_alloc_init(MEMORY[0x1E69B1668]);
        [v20 setHtmlBody:v11];
        [v20 setMixedContent:v9];
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

    v27 = [v38 topLevelPart];
    for (j = 0; j < [v27 numberOfAlternatives]; ++j)
    {
      v29 = [v27 alternativeAtIndex:j];
      v30 = [v29 type];
      if ([v30 isEqualToString:@"text"])
      {
        v31 = [v29 subtype];
        if ([v31 isEqualToString:@"plain"])
        {

LABEL_41:
          if (v29)
          {
            v26 = _plaintextDocumentForMimePart(v29);

            goto LABEL_44;
          }

          break;
        }

        v32 = [v29 subtype];
        v33 = [v32 isEqualToString:@"enriched"];

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
    v44 = self;
    v39 = self->_originalMessageContent;
    v4 = [(MFOutgoingMessageContent *)v39 libraryContent];

    if (v4)
    {
      v5 = objc_opt_class();
      v6 = [(MFOutgoingMessageContent *)v39 libraryContent];
      v7 = [v5 _deriveOutgoingMessageContentFromLibraryMessageContent:v6];
    }

    else
    {
      v7 = v39;
    }

    v40 = v7;
    v46 = [v7 copy];
    v8 = [v7 richtextContent];
    v38 = [v8 mixedContent];

    v47 = [MEMORY[0x1E695DF70] array];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v38;
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
                  [v47 addObject:v11];
                  goto LABEL_50;
                }
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = [v11 mimePart];
                v18 = [v19 partURL];
                v20 = [v19 bodyParameterForKey:v43];
                v21 = [v19 approximateRawSize];
                v22 = 0;
                if (v42 < v21 && v41 > v21)
                {
                  v23 = [v19 copyBodyDataToOffset:-1 resultOffset:0 downloadIfNecessary:1];
                  v22 = [MEMORY[0x1E69B15D8] placeholderFromSerializedRepresentation:v23];
                }

LABEL_32:
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = v11;
                  v22 = [v19 placeholder];
                  v18 = [v19 url];
                  v20 = [v19 contentID];
                  goto LABEL_32;
                }

                v18 = 0;
                v20 = 0;
                v22 = 0;
              }

              v24 = [(MFPlaceholderMessageRewriter *)v44 placeholderResolver];
              v25 = v24;
              if (v22)
              {
                [(NSMutableArray *)v44->_placeholders addObject:v22];
                v26 = [v25 contentForPlaceholder:v22];
                goto LABEL_38;
              }

              v27 = [v24 contentForURL:v18];
              if (v27)
              {

                goto LABEL_42;
              }

              v26 = [v25 contentForContentID:v20];
LABEL_38:
              v27 = v26;

              if (v27)
              {
LABEL_42:
                v28 = [v46 multipartContent];
                if (v28)
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v30 = [v46 multipartContent];
                    v31 = [v30 htmlBody];
                    v32 = [v31 stringByAppendingString:v27];
                    v33 = [v46 multipartContent];
                    [v33 setHtmlBody:v32];
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = [MEMORY[0x1E699B288] mf_utf8HTMLStringWithString:v27];
                  [v47 addObject:v34];
                }

                else
                {
                  [v47 addObject:v27];
                }
              }

              goto LABEL_49;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [v12 mimeBody];
            v14 = [v13 isHTML];

            if (v14)
            {
              v15 = [v12 htmlData];
              if (v15)
              {
                v16 = MEMORY[0x1E699B288];
                [v12 preferredEncoding];
                v17 = MFCreateStringWithData();
                v18 = [v16 mf_utf8HTMLStringWithString:v17];
                goto LABEL_26;
              }

              v18 = 0;
            }

            else
            {
              v15 = [v12 mimePart];
              [v12 preferredEncoding];
              v17 = _plaintextDocumentForMimePart(v15);
              [v47 addObject:v17];
              v18 = 0;
LABEL_26:
            }

LABEL_28:
            if (v18)
            {
              [v46 setTextPartsAreHTML:1];
              [v47 addObject:v18];
            }

            goto LABEL_49;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v11;
            goto LABEL_28;
          }

          v18 = 0;
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

    [v46 setMixedContent:v47];
    [v46 setPlaceholders:v44->_placeholders];
    v36 = v44->_rewrittenMessageContent;
    v44->_rewrittenMessageContent = v46;

    rewrittenMessageContent = v44->_rewrittenMessageContent;
  }

  return rewrittenMessageContent;
}

- (id)toRecipients
{
  v2 = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  v3 = [v2 copyAddressListForTo];

  return v3;
}

- (id)ccRecipients
{
  v2 = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  v3 = [v2 copyAddressListForCc];

  return v3;
}

- (id)bccRecipients
{
  v2 = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  v3 = [v2 copyAddressListForBcc];

  return v3;
}

- (id)subject
{
  v2 = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  v3 = [v2 headersForKey:*MEMORY[0x1E699B178]];
  v4 = [v3 firstObject];

  return v4;
}

- (id)savedHeaders
{
  v2 = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)sendingEmailAddress
{
  v2 = [(MFOutgoingMessageContent *)self->_originalMessageContent headers];
  v3 = [v2 copyAddressListForSender];
  v4 = [v3 firstObject];

  return v4;
}

- (MFMessageRewriterPlaceholderResolver)placeholderResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_placeholderResolver);

  return WeakRetained;
}

@end