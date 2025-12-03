@interface MFComposeTypeFactory
+ (BOOL)alwaysBCCSelf;
+ (id)_markupForInlineAttachment:(id)attachment willBeIncluded:(BOOL)included prependBlankLine:(BOOL)line delegate:(id)delegate;
+ (id)_markupStringForExcludedInlineAttachmentWithFilename:(id)filename;
+ (id)bccSelfAddressForDelegate:(id)delegate;
+ (id)headersFromDelegate:(id)delegate;
+ (id)headersFromDelegate:(id)delegate originatingBundleID:(id)d sourceAccountManagement:(int)management;
+ (id)messageFromDelegate:(id)delegate originatingBundleID:(id)d sourceAccountManagement:(int)management;
+ (id)messageFromDelegate:(id)delegate withSubstituteDOMDocument:(id)document compositionSpecification:(id)specification originatingBundleID:(id)d sourceAccountManagement:(int)management writeAttachmentPlaceholders:(BOOL)placeholders;
+ (id)senderAddressForHME:(id)e originalSenderAddress:(id)address;
+ (id)signpostLog;
+ (id)subjectFromSubject:(id)subject withComposeType:(int64_t)type;
+ (unint64_t)imageScaleFromUserDefaults;
+ (void)_mergeModel:(id)model withDelegate:(id)delegate;
+ (void)_prependQuotedMarkup:(id)markup shouldIndent:(BOOL)indent toBodyField:(id)field;
+ (void)_quoteFromModel:(id)model delegate:(id)delegate;
+ (void)_sanitizeRecipientsForComposeType:(unint64_t)type sendingAddress:(id)address delegate:(id)delegate;
+ (void)_setContent:(id)content includeAttachments:(BOOL)attachments shouldQuote:(BOOL)quote prependBlankLine:(BOOL)line delegate:(id)delegate storeOriginalAttachments:(BOOL)originalAttachments signpostID:(unint64_t)d;
+ (void)_setupForForwardWithModel:(id)model delegate:(id)delegate;
+ (void)_setupForNewMessageWithModel:(id)model delegate:(id)delegate;
+ (void)_setupForReplyAllWithModel:(id)model delegate:(id)delegate;
+ (void)_setupForReplyWithModel:(id)model delegate:(id)delegate;
+ (void)_updateDelegate:(id)delegate toRecipients:(id)recipients ccRecipients:(id)ccRecipients bccRecipients:(id)bccRecipients;
+ (void)addAttachment:(id)attachment prepend:(BOOL)prepend withCompositionModel:(id)model delegate:(id)delegate;
+ (void)hijackThreadFromDelegate:(id)delegate;
+ (void)setupSwitchToReplyAllWithModel:(id)model delegate:(id)delegate;
+ (void)setupSwitchToReplyWithModel:(id)model delegate:(id)delegate;
+ (void)setupWithCompositionModel:(id)model delegate:(id)delegate;
+ (void)setupWithContent:(id)content delegate:(id)delegate signpostID:(unint64_t)d;
- (unint64_t)signpostID;
@end

@implementation MFComposeTypeFactory

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MFComposeTypeFactory_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v2 = signpostLog_log;

  return v2;
}

void __35__MFComposeTypeFactory_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log;
  signpostLog_log = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (void)_prependQuotedMarkup:(id)markup shouldIndent:(BOOL)indent toBodyField:(id)field
{
  indentCopy = indent;
  fieldCopy = field;
  v7 = [markup stringByAppendingString:@"<BR>"];
  [fieldCopy prependMarkupString:v7 quote:indentCopy];
}

+ (id)_markupStringForExcludedInlineAttachmentWithFilename:(id)filename
{
  v3 = MEMORY[0x1E696AEC0];
  filename = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", filename];
  ef_stringByEscapingForXML = [filename ef_stringByEscapingForXML];
  v6 = [v3 stringWithFormat:@"<DIV>%@</DIV>", ef_stringByEscapingForXML];

  return v6;
}

+ (id)_markupForInlineAttachment:(id)attachment willBeIncluded:(BOOL)included prependBlankLine:(BOOL)line delegate:(id)delegate
{
  lineCopy = line;
  includedCopy = included;
  attachmentCopy = attachment;
  delegateCopy = delegate;
  if (includedCopy)
  {
    imageScaleFromUserDefaults = [self imageScaleFromUserDefaults];
    composeWebView = [delegateCopy composeWebView];
    [attachmentCopy markupStringForCompositionWithPrependedBlankLine:lineCopy imageScale:imageScaleFromUserDefaults useAttachmentElement:{objc_msgSend(composeWebView, "allowsAttachmentElements")}];
  }

  else
  {
    composeWebView = [attachmentCopy fileName];
    [self _markupStringForExcludedInlineAttachmentWithFilename:composeWebView];
  }
  v14 = ;

  return v14;
}

+ (void)_setContent:(id)content includeAttachments:(BOOL)attachments shouldQuote:(BOOL)quote prependBlankLine:(BOOL)line delegate:(id)delegate storeOriginalAttachments:(BOOL)originalAttachments signpostID:(unint64_t)d
{
  originalAttachmentsCopy = originalAttachments;
  lineCopy = line;
  attachmentsCopy = attachments;
  quoteCopy = quote;
  v119 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  delegateCopy = delegate;
  v10 = MFMessageComposeLoadingSignpostLog();
  v11 = v10;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v11, OS_SIGNPOST_INTERVAL_BEGIN, d, "LOAD COMPOSE WEB CONTENT", "Start loading web content enableTelemetry=YES ", buf, 2u);
  }

  composeWebView = [delegateCopy composeWebView];
  v89 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v82 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v81 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = contentCopy;
  v76 = [obj countByEnumeratingWithState:&v105 objects:v118 count:16];
  if (v76)
  {
    v79 = 0;
    v88 = attachmentsCopy || originalAttachmentsCopy;
    v75 = *v106;
    while (1)
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v106 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v80 = *(*(&v105 + 1) + 8 * i);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          htmlData = [v80 htmlData];
          if (htmlData)
          {
            preferredCharacterSet = [v80 preferredCharacterSet];
            MFEncodingForCharset();
            v79 = MFCreateStringWithData();
          }

          else
          {
            v79 = 0;
          }

          attachmentsInDocument = [v80 attachmentsInDocument];
          v74 = htmlData;
          v25 = [attachmentsInDocument count] == 0;

          if (!v25)
          {
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            attachmentsInDocument2 = [v80 attachmentsInDocument];
            v26 = [attachmentsInDocument2 countByEnumeratingWithState:&v101 objects:v117 count:16];
            if (!v26)
            {
              goto LABEL_36;
            }

            v90 = *v102;
            while (1)
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v102 != v90)
                {
                  objc_enumerationMutation(attachmentsInDocument2);
                }

                v28 = *(*(&v101 + 1) + 8 * j);
                v29 = [v28 fileWrapperForcingDownload:0];
                preferredFilename = [v29 preferredFilename];
                mimePart = [v28 mimePart];
                contentID = [mimePart contentID];

                if (contentID)
                {
                  [v89 setObject:preferredFilename forKeyedSubscript:contentID];
                  if (!v88)
                  {
                    goto LABEL_34;
                  }

                  contentID2 = [v29 contentID];
                  mimeType = [v29 mimeType];
                  composeWebView2 = [delegateCopy composeWebView];
                  compositionContextID = [composeWebView2 compositionContextID];

                  regularFileContents = [v29 regularFileContents];
                  if (originalAttachmentsCopy)
                  {
                    [v82 addObject:v29];
                  }

                  else
                  {
                    v39 = [MFAttachmentMarkup attachmentMarkupWithProperties:regularFileContents contentID:contentID2 mimeType:mimeType filename:preferredFilename contextID:compositionContextID];
                    [v81 addObject:v39];
                  }
                }

                else
                {
                  contentID2 = MFComposeLog();
                  if (os_log_type_enabled(contentID2, OS_LOG_TYPE_ERROR))
                  {
                    v38 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:preferredFilename];
                    [MFComposeTypeFactory _setContent:v38 includeAttachments:v115 shouldQuote:&v116 prependBlankLine:contentID2 delegate:? storeOriginalAttachments:? signpostID:?];
                  }
                }

LABEL_34:
              }

              v26 = [attachmentsInDocument2 countByEnumeratingWithState:&v101 objects:v117 count:16];
              if (!v26)
              {
LABEL_36:

                break;
              }
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v80;
            v15 = [v14 fileWrapperForcingDownload:0];
            contentID3 = [v15 contentID];
            preferredFilename2 = [v15 preferredFilename];
            mimeType2 = [v15 mimeType];
            composeWebView3 = [delegateCopy composeWebView];
            compositionContextID2 = [composeWebView3 compositionContextID];

            regularFileContents2 = [v15 regularFileContents];
            if (v88)
            {
              if (originalAttachmentsCopy)
              {
                [v82 addObject:v15];
                selfCopy = self;
                goto LABEL_42;
              }

              defaultManager = [MEMORY[0x1E69B15D0] defaultManager];
              v41 = [defaultManager attachmentForData:regularFileContents2 mimeType:mimeType2 fileName:preferredFilename2 contentID:contentID3 context:compositionContextID2];

              v79 = [self _markupForInlineAttachment:v41 willBeIncluded:attachmentsCopy prependBlankLine:lineCopy delegate:delegateCopy];
            }

            else
            {
              selfCopy = objc_opt_class();
LABEL_42:
              v79 = [selfCopy _markupStringForExcludedInlineAttachmentWithFilename:preferredFilename2];
            }

            goto LABEL_45;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [self _markupForInlineAttachment:v80 willBeIncluded:attachmentsCopy prependBlankLine:lineCopy delegate:delegateCopy];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_47;
            }

            v23 = v80;
          }

          v79 = v23;
        }

LABEL_45:
        if (v79)
        {
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<div>%@</div>", @"<BR class=webkit-block-placeholder>"];
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 3221225472;
          v100[2] = __129__MFComposeTypeFactory__setContent_includeAttachments_shouldQuote_prependBlankLine_delegate_storeOriginalAttachments_signpostID___block_invoke;
          v100[3] = &__block_descriptor_40_e5_v8__0l;
          v100[4] = d;
          [composeWebView appendOrReplace:v42 withMarkupString:v79 quote:quoteCopy completion:v100];
          goto LABEL_53;
        }

LABEL_47:
        v43 = MFMessageComposeLoadingSignpostLog();
        v44 = v43;
        if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BE819000, v44, OS_SIGNPOST_INTERVAL_END, d, "LOAD COMPOSE WEB CONTENT", "Unable to create markup string enableTelemetry=YES ", buf, 2u);
        }

        v42 = EMLogCompose();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v45 = objc_opt_class();
          *buf = 138543618;
          v112 = v80;
          v113 = 2114;
          v114 = v45;
          v46 = v45;
          _os_log_impl(&dword_1BE819000, v42, OS_LOG_TYPE_DEFAULT, "No markup string found for content item: %{public}@ - %{public}@", buf, 0x16u);
        }

        v79 = 0;
LABEL_53:
      }

      v76 = [obj countByEnumeratingWithState:&v105 objects:v118 count:16];
      if (!v76)
      {
        goto LABEL_57;
      }
    }
  }

  v79 = 0;
LABEL_57:

  v87 = objc_opt_new();
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v84 = v81;
  v47 = [v84 countByEnumeratingWithState:&v96 objects:v110 count:16];
  if (v47)
  {
    v91 = *v97;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v97 != v91)
        {
          objc_enumerationMutation(v84);
        }

        v49 = *(*(&v96 + 1) + 8 * k);
        defaultManager2 = [MEMORY[0x1E69B15D0] defaultManager];
        attachmentData = [v49 attachmentData];
        mimeType3 = [v49 mimeType];
        filename = [v49 filename];
        contentID4 = [v49 contentID];
        contextID = [v49 contextID];
        v56 = [defaultManager2 attachmentForData:attachmentData mimeType:mimeType3 fileName:filename contentID:contentID4 context:contextID];

        className = [v56 className];
        if (([className isEqualToString:0x1F3CF38B8] & 1) != 0 || objc_msgSend(className, "isEqualToString:", 0x1F3CF38F8))
        {
          [v87 addObject:v49];
        }

        else
        {
          contentID5 = [v49 contentID];
          [v89 removeObjectForKey:contentID5];
        }
      }

      v47 = [v84 countByEnumeratingWithState:&v96 objects:v110 count:16];
    }

    while (v47);
  }

  [composeWebView setOriginalAttachmentInfo:v82];
  [composeWebView setReplacementFilenamesByContentID:v89];
  [composeWebView replaceImagesIfNecessary];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v59 = v87;
  v60 = [v59 countByEnumeratingWithState:&v92 objects:v109 count:16];
  if (v60)
  {
    v61 = *v93;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v93 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v63 = *(*(&v92 + 1) + 8 * m);
        attachmentData2 = [v63 attachmentData];
        filename2 = [v63 filename];
        mimeType4 = [v63 mimeType];
        contentID6 = [v63 contentID];
        [composeWebView replaceFilenamePlaceholderWithAttachment:attachmentData2 fileName:filename2 mimeType:mimeType4 contentID:contentID6];
      }

      v60 = [v59 countByEnumeratingWithState:&v92 objects:v109 count:16];
    }

    while (v60);
  }
}

void __129__MFComposeTypeFactory__setContent_includeAttachments_shouldQuote_prependBlankLine_delegate_storeOriginalAttachments_signpostID___block_invoke(uint64_t a1)
{
  v2 = MFMessageComposeLoadingSignpostLog();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v3, OS_SIGNPOST_INTERVAL_END, v4, "LOAD COMPOSE WEB CONTENT", "Finished loading web content enableTelemetry=YES ", v5, 2u);
  }
}

+ (id)senderAddressForHME:(id)e originalSenderAddress:(id)address
{
  addressCopy = address;
  v6 = [MEMORY[0x1E699B340] tagValueListFromString:e error:0];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699A760]];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699A758]];
  emailAddressValue = [addressCopy emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];

  if ([simpleAddress ef_caseInsensitiveIsEqualToString:v8])
  {
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699A750]];

    v7 = v11;
  }

  if (v7)
  {
    v12 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:addressCopy];
    displayName = [v12 displayName];
    v14 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v7];

    if (displayName)
    {
      [v14 setDisplayName:displayName];
    }

    stringValue = [v14 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

+ (void)_quoteFromModel:(id)model delegate:(id)delegate
{
  v48 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  delegateCopy = delegate;
  legacyMessage = [modelCopy legacyMessage];
  composeType = [modelCopy composeType];
  v8 = [modelCopy composeType] == 4 || objc_msgSend(modelCopy, "composeType") == 5;
  v40 = composeType;
  savedHeaders = [delegateCopy savedHeaders];
  v10 = *MEMORY[0x1E699B0E8];
  v11 = [savedHeaders headersForKey:*MEMORY[0x1E699B0E8]];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    mEMORY[0x1E69B1698] = [MEMORY[0x1E69B1698] sharedInstance];
    sendingEmailAddress = [delegateCopy sendingEmailAddress];
    v15 = [mEMORY[0x1E69B1698] signatureMarkupForSendingEmailAddress:sendingEmailAddress];
    v12 = [v15 length] == 0;
  }

  originalContent = [modelCopy originalContent];
  messageBodyIfAvailable = [legacyMessage messageBodyIfAvailable];
  isEncrypted = [messageBodyIfAvailable isEncrypted];
  if (!originalContent)
  {
    originalContent = [messageBodyIfAvailable htmlContent];
  }

  v16 = MFComposeLog();
  v39 = v12;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [legacyMessage ef_publicDescription];
    *buf = 138543362;
    v47 = ef_publicDescription;
    _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "Quoting content from message: %{public}@", buf, 0xCu);
  }

  composeWebView = [delegateCopy composeWebView];
  if (originalContent)
  {
    includeAttachments = [modelCopy includeAttachments];
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v21 = [em_userDefaults objectForKey:@"DisableQuoteIncrease"];
    bOOLValue = [v21 BOOLValue];

    if (v8)
    {
      includeAttachmentsWhenAdding = [modelCopy includeAttachmentsWhenAdding];
    }

    else
    {
      includeAttachmentsWhenAdding = 0;
    }

    [self _setContent:originalContent includeAttachments:includeAttachments shouldQuote:bOOLValue ^ 1u prependBlankLine:0 delegate:delegateCopy storeOriginalAttachments:includeAttachmentsWhenAdding signpostID:{objc_msgSend(modelCopy, "signpostID")}];
    [composeWebView addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:0 shouldQuote:bOOLValue ^ 1u];
    if (v40 == 6)
    {
      headersIfAvailable = [legacyMessage headersIfAvailable];
      markupString = [headersIfAvailable markupString];
      [self _prependQuotedMarkup:markupString shouldIndent:bOOLValue ^ 1u toBodyField:composeWebView];

      v26 = [MEMORY[0x1E69B1628] forwardedMessagePrefixWithSpacer:v39];
      [composeWebView prependPreamble:v26 quote:0];
    }

    else
    {
      senders = [legacyMessage senders];
      headersIfAvailable = [senders ef_map:&__block_literal_global_12];

      if ([headersIfAvailable count])
      {
        if ([headersIfAvailable count] == 1)
        {
          headers = [legacyMessage headers];
          v29 = [headers headersForKey:v10];
          firstObject = [v29 firstObject];

          if (firstObject)
          {
            firstObject2 = [headersIfAvailable firstObject];
            v32 = [self senderAddressForHME:firstObject originalSenderAddress:firstObject2];

            if (v32)
            {
              v45 = v32;
              v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];

              headersIfAvailable = v33;
            }
          }
        }

        dateSent = [legacyMessage dateSent];
        v35 = [headersIfAvailable objectAtIndex:0];
        v36 = [dateSent mf_replyPrefixForSender:v35];
        [composeWebView prependPreamble:v36 quote:bOOLValue ^ 1u];

        if (v39)
        {
          [composeWebView prependString:@"\n"];
        }
      }
    }
  }

  if (!v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegateCopy addSignature:1];
  }

  messageBody = [modelCopy messageBody];
  if ([messageBody length])
  {
    [composeWebView prependMarkupString:messageBody quote:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegateCopy contentDidChange];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegateCopy setOriginalMessageWasEncrypted:isEncrypted];
  }
}

id __49__MFComposeTypeFactory__quoteFromModel_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

+ (id)headersFromDelegate:(id)delegate
{
  v3 = [self headersFromDelegate:delegate originatingBundleID:0 sourceAccountManagement:0];

  return v3;
}

+ (id)headersFromDelegate:(id)delegate originatingBundleID:(id)d sourceAccountManagement:(int)management
{
  v5 = *&management;
  v84 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  dCopy = d;
  v73 = delegateCopy;
  v8 = objc_alloc_init(MEMORY[0x1E69AD740]);
  savedHeaders = [delegateCopy savedHeaders];
  v10 = savedHeaders;
  if (savedHeaders)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    allHeaderKeys = [savedHeaders allHeaderKeys];
    v12 = [allHeaderKeys countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v12)
    {
      v13 = *v79;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v79 != v13)
          {
            objc_enumerationMutation(allHeaderKeys);
          }

          v15 = *(*(&v78 + 1) + 8 * i);
          v16 = [v10 firstHeaderForKey:v15];
          if (v16)
          {
            [v8 setHeader:v16 forKey:v15];
          }
        }

        v12 = [allHeaderKeys countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v12);
    }
  }

  subject = [v73 subject];
  v18 = [subject length];

  if (v18)
  {
    subject2 = [v73 subject];
    [v8 setHeader:subject2 forKey:*MEMORY[0x1E699B178]];
  }

  toRecipients = [v73 toRecipients];
  v21 = [toRecipients count] == 0;

  if (!v21)
  {
    toRecipients2 = [v73 toRecipients];
    [v8 setAddressListForTo:toRecipients2];
  }

  ccRecipients = [v73 ccRecipients];
  v24 = [ccRecipients count] == 0;

  if (!v24)
  {
    ccRecipients2 = [v73 ccRecipients];
    [v8 setAddressListForCc:ccRecipients2];
  }

  bccRecipients = [v73 bccRecipients];
  v27 = [bccRecipients count] == 0;

  if (!v27)
  {
    bccRecipients2 = [v73 bccRecipients];
    [v8 setAddressListForBcc:bccRecipients2];
  }

  accountProxyGenerator = [v73 accountProxyGenerator];
  sendingEmailAddress = [v73 sendingEmailAddress];
  if (!sendingEmailAddress)
  {
    v30 = [accountProxyGenerator defaultMailAccountProxyForDeliveryOriginatingBundleID:dCopy sourceAccountManagement:v5];
    v31 = v30;
    if (v30)
    {
      firstEmailAddress = [v30 firstEmailAddress];
      fullUserName = [v31 fullUserName];
      v34 = [MEMORY[0x1E699B248] componentsWithString:firstEmailAddress];
      [v34 setDisplayName:fullUserName];
      sendingEmailAddress = [v34 stringValue];
    }

    else
    {
      sendingEmailAddress = 0;
    }
  }

  v35 = sendingEmailAddress;
  emailAddressValue = [v35 emailAddressValue];
  displayName = [emailAddressValue displayName];
  v38 = displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [v35 stringValue];
  }

  v40 = stringValue;

  v41 = [v40 length];
  v42 = v41 == [v35 length];

  if (v42)
  {
    v43 = [accountProxyGenerator accountProxyContainingEmailAddress:v35 includingInactive:0 originatingBundleID:dCopy sourceAccountManagement:v5];
    v44 = v43;
    v69 = v43;
    if (!v43)
    {
LABEL_50:

      goto LABEL_51;
    }

    fullUserName2 = [v43 fullUserName];
    fromEmailAddresses = [v44 fromEmailAddresses];
    if ([fromEmailAddresses count])
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = fromEmailAddresses;
      v45 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
      if (v45)
      {
        v46 = *v75;
        while (2)
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v75 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v74 + 1) + 8 * j);
            emailAddressValue2 = [v48 emailAddressValue];
            emailAddressValue3 = [v35 emailAddressValue];
            v51 = [emailAddressValue2 compare:emailAddressValue3] == 0;

            if (v51)
            {
              v52 = v48;

              v35 = v52;
              goto LABEL_41;
            }
          }

          v45 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

LABEL_41:
    }

    v35 = v35;
    emailAddressValue4 = [v35 emailAddressValue];
    displayName2 = [emailAddressValue4 displayName];
    v55 = displayName2;
    if (displayName2)
    {
      stringValue2 = displayName2;
    }

    else
    {
      stringValue2 = [v35 stringValue];
    }

    v57 = stringValue2;

    v58 = [v57 length];
    if (v58 == [v35 length])
    {
      v59 = [fullUserName2 length] == 0;

      if (v59)
      {
LABEL_49:

        goto LABEL_50;
      }

      v60 = MEMORY[0x1E699B248];
      emailAddressValue5 = [v35 emailAddressValue];
      v57 = [v60 componentsWithEmailAddress:emailAddressValue5];

      [v57 setDisplayName:fullUserName2];
      stringValue3 = [v57 stringValue];

      v35 = stringValue3;
    }

    goto LABEL_49;
  }

LABEL_51:
  if ([v35 length])
  {
    v63 = [MEMORY[0x1E695DEC8] arrayWithObject:v35];
    [v8 setAddressListForSender:v63];
  }

  date = [MEMORY[0x1E695DF00] date];
  ec_descriptionForMimeHeaders = [date ec_descriptionForMimeHeaders];
  [v8 setHeader:ec_descriptionForMimeHeaders forKey:*MEMORY[0x1E699B0D8]];

  return v8;
}

+ (void)_sanitizeRecipientsForComposeType:(unint64_t)type sendingAddress:(id)address delegate:(id)delegate
{
  addressCopy = address;
  delegateCopy = delegate;
  toRecipients = [delegateCopy toRecipients];
  ccRecipients = [delegateCopy ccRecipients];
  bccRecipients = [delegateCopy bccRecipients];
  v12 = [[MFMailRecipients alloc] initWithToRecipients:toRecipients ccRecipients:ccRecipients bccRecipients:bccRecipients];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__MFComposeTypeFactory__sanitizeRecipientsForComposeType_sendingAddress_delegate___block_invoke;
  v23[3] = &unk_1E806D570;
  v13 = delegateCopy;
  v24 = v13;
  if ([(MFMailRecipients *)v12 sanitizeForComposeType:type sendingEmailAddress:addressCopy hideMyEmailAddressProvider:v23])
  {
    toRecipients2 = [(MFMailRecipients *)v12 toRecipients];
    v15 = [toRecipients2 isEqualToArray:toRecipients];

    if ((v15 & 1) == 0)
    {
      toRecipients3 = [(MFMailRecipients *)v12 toRecipients];
      [v13 setToRecipients:toRecipients3];
    }

    ccRecipients2 = [(MFMailRecipients *)v12 ccRecipients];
    v18 = [ccRecipients2 isEqualToArray:ccRecipients];

    if ((v18 & 1) == 0)
    {
      ccRecipients3 = [(MFMailRecipients *)v12 ccRecipients];
      [v13 setCcRecipients:ccRecipients3];
    }

    bccRecipients2 = [(MFMailRecipients *)v12 bccRecipients];
    v21 = [bccRecipients2 isEqualToArray:bccRecipients];

    if ((v21 & 1) == 0)
    {
      bccRecipients3 = [(MFMailRecipients *)v12 bccRecipients];
      [v13 setBccRecipients:bccRecipients3];
    }
  }
}

id __82__MFComposeTypeFactory__sanitizeRecipientsForComposeType_sendingAddress_delegate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) savedHeaders];
  v2 = [v1 headersForKey:*MEMORY[0x1E699B0E8]];

  return v2;
}

+ (BOOL)alwaysBCCSelf
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults BOOLForKey:*MEMORY[0x1E699AB48]];

  return v3;
}

+ (id)bccSelfAddressForDelegate:(id)delegate
{
  v3 = MEMORY[0x1E69B16A8];
  sendingEmailAddress = [delegate sendingEmailAddress];
  v5 = [v3 accountContainingEmailAddress:sendingEmailAddress includingInactive:1];

  v6 = v5;
  if (v5 || ([MEMORY[0x1E69B16A8] defaultMailAccountForDelivery], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    emailAddressStrings = [v6 emailAddressStrings];
    firstObject = [emailAddressStrings firstObject];

    fullUserName = [v6 fullUserName];
    v10 = MEMORY[0x1E699B248];
    emailAddressValue = [firstObject emailAddressValue];
    v12 = [v10 componentsWithEmailAddress:emailAddressValue];

    [v12 setDisplayName:fullUserName];
    stringValue = [v12 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

+ (void)_mergeModel:(id)model withDelegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  toRecipients = [modelCopy toRecipients];
  v7 = [toRecipients count];

  if (v7)
  {
    toRecipients2 = [delegateCopy toRecipients];
    v9 = [toRecipients2 count];

    if (v9)
    {
      toRecipients3 = [delegateCopy toRecipients];
      toRecipients5 = [toRecipients3 mutableCopy];

      toRecipients4 = [modelCopy toRecipients];
      [toRecipients5 addObjectsFromArray:toRecipients4];
    }

    else
    {
      toRecipients5 = [modelCopy toRecipients];
    }

    [delegateCopy setToRecipients:toRecipients5];
  }

  ccRecipients = [modelCopy ccRecipients];
  v14 = [ccRecipients count];

  if (v14)
  {
    ccRecipients2 = [delegateCopy ccRecipients];
    v16 = [ccRecipients2 count];

    if (v16)
    {
      ccRecipients3 = [delegateCopy ccRecipients];
      ccRecipients5 = [ccRecipients3 mutableCopy];

      ccRecipients4 = [modelCopy ccRecipients];
      [ccRecipients5 addObjectsFromArray:ccRecipients4];
    }

    else
    {
      ccRecipients5 = [modelCopy ccRecipients];
    }

    [delegateCopy setCcRecipients:ccRecipients5];
  }

  bccRecipients = [modelCopy bccRecipients];
  v21 = [bccRecipients count];

  if (v21)
  {
    bccRecipients2 = [delegateCopy bccRecipients];
    v23 = [bccRecipients2 count];

    if (v23)
    {
      bccRecipients3 = [delegateCopy bccRecipients];
      bccRecipients5 = [bccRecipients3 mutableCopy];

      bccRecipients4 = [modelCopy bccRecipients];
      [bccRecipients5 addObjectsFromArray:bccRecipients4];
    }

    else
    {
      bccRecipients5 = [modelCopy bccRecipients];
    }

    [delegateCopy setBccRecipients:bccRecipients5];
  }

  subject = [modelCopy subject];
  v28 = [subject length];

  if (v28)
  {
    subject2 = [modelCopy subject];
    [delegateCopy setSubject:subject2];
  }
}

+ (void)_updateDelegate:(id)delegate toRecipients:(id)recipients ccRecipients:(id)ccRecipients bccRecipients:(id)bccRecipients
{
  delegateCopy = delegate;
  recipientsCopy = recipients;
  ccRecipientsCopy = ccRecipients;
  bccRecipientsCopy = bccRecipients;
  if ([recipientsCopy count])
  {
    toRecipients = [delegateCopy toRecipients];
    v13 = __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke(toRecipients, toRecipients, recipientsCopy);
    [delegateCopy setToRecipients:v13];
  }

  if ([ccRecipientsCopy count])
  {
    ccRecipients = [delegateCopy ccRecipients];
    v15 = __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke(ccRecipients, ccRecipients, ccRecipientsCopy);
    [delegateCopy setCcRecipients:v15];
  }

  if ([bccRecipientsCopy count])
  {
    bccRecipients = [delegateCopy bccRecipients];
    v17 = __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke(bccRecipients, bccRecipients, bccRecipientsCopy);
    [delegateCopy setBccRecipients:v17];
  }
}

id __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v25 = v4;
  v6 = objc_alloc(MEMORY[0x1E695DFA0]);
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  v8 = [v6 initWithArray:v7];
  if (!v4)
  {
  }

  v9 = [v5 ef_map:&__block_literal_global_90];

  v10 = [v4 ef_map:&__block_literal_global_92];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if (([v8 containsObject:v15] & 1) == 0)
        {
          v16 = v15;
          v17 = [v16 emailAddressValue];
          v18 = [v17 simpleAddress];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = [v16 stringValue];
          }

          v21 = v20;

          v22 = [v10 containsObject:v21];
          if ((v22 & 1) == 0)
          {
            [v8 addObject:v16];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = [v8 array];

  return v23;
}

id __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

id __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

+ (void)_setupForReplyWithModel:(id)model delegate:(id)delegate
{
  v105[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  delegateCopy = delegate;
  selfCopy = self;
  [self _mergeModel:modelCopy withDelegate:delegateCopy];
  legacyMessage = [modelCopy legacyMessage];
  headersIfAvailable = [legacyMessage headersIfAvailable];
  mailbox = [legacyMessage mailbox];
  account = [mailbox account];
  emailAddressStrings = [account emailAddressStrings];

  firstSender = [legacyMessage firstSender];
  emailAddressValue = [firstSender emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v13 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [firstSender stringValue];
  }

  v15 = stringValue;

  v16 = [emailAddressStrings containsObject:v15];
  if (v16)
  {
    copyAddressListForReplyTo = [headersIfAvailable copyAddressListForReplyTo];
    v18 = [copyAddressListForReplyTo ef_map:&__block_literal_global_94];
    v19 = [v18 copy];

    v20 = [legacyMessage to];
    v21 = [v20 ef_map:&__block_literal_global_96];
    v22 = [v21 copy];

    firstSender2 = [legacyMessage firstSender];
    firstSender3 = [legacyMessage firstSender];
    [delegateCopy setSendingEmailAddress:firstSender3];

    v25 = [v19 count];
    v26 = v19;
    if (v25 || (([v22 ef_map:&__block_literal_global_98], v27 = objc_claimAutoreleasedReturnValue(), v28 = firstSender2, objc_msgSend(v28, "emailAddressValue"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "simpleAddress"), v30 = objc_claimAutoreleasedReturnValue(), (v31 = v30) == 0) ? (objc_msgSend(v28, "stringValue"), v32 = objc_claimAutoreleasedReturnValue()) : (v32 = v30), v38 = v32, v31, v29, v28, v39 = objc_msgSend(v27, "containsObject:", v38), v38, v27, v26 = v22, !v39))
    {
      [delegateCopy setToRecipients:v26];
    }

    else
    {
      v105[0] = v28;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];
      [delegateCopy setToRecipients:v40];
    }
  }

  else
  {
    copyAddressListForReplyTo2 = [headersIfAvailable copyAddressListForReplyTo];
    if ([copyAddressListForReplyTo2 count])
    {
      v34 = copyAddressListForReplyTo2;
    }

    else
    {
      toRecipients = [delegateCopy toRecipients];
      v36 = [toRecipients count];

      if (v36)
      {
        v34 = 0;
      }

      else
      {
        copyAddressListForReplyTo3 = [headersIfAvailable copyAddressListForReplyTo];
        if ([copyAddressListForReplyTo3 count])
        {
          v34 = copyAddressListForReplyTo3;
        }

        else
        {
          senders = [legacyMessage senders];

          v34 = senders;
        }
      }
    }

    [selfCopy _updateDelegate:delegateCopy toRecipients:v34 ccRecipients:0 bccRecipients:0];
  }

  subject = [delegateCopy subject];
  if ([subject length])
  {
    v43 = 1;
  }

  else
  {
    v43 = legacyMessage == 0;
  }

  v44 = !v43;

  if (v44)
  {
    subject2 = [legacyMessage subject];
    subjectWithoutPrefix = [subject2 subjectWithoutPrefix];
    nonLocalizedReplyPrefix = [MEMORY[0x1E699B330] nonLocalizedReplyPrefix];
    v48 = _subjectWithPrefix(subjectWithoutPrefix, nonLocalizedReplyPrefix);

    [delegateCopy setSubject:v48];
  }

  v49 = [headersIfAvailable firstHeaderForKey:*MEMORY[0x1E699B130]];
  v50 = v49;
  if (v49)
  {
    v85 = v49;
  }

  else
  {
    v85 = [headersIfAvailable firstHeaderForKey:*MEMORY[0x1E699B108]];
  }

  v51 = *MEMORY[0x1E699B0E8];
  v52 = [headersIfAvailable firstHeaderForKey:*MEMORY[0x1E699B0E8]];
  originalMessage = [modelCopy originalMessage];
  objectID = [originalMessage objectID];
  serializedRepresentation = [objectID serializedRepresentation];

  references = [headersIfAvailable references];
  v55 = references;
  if (v50)
  {
    if (references)
    {
      v56 = [references arrayByAddingObject:v50];

      v55 = v56;
    }

    else
    {
      v55 = [MEMORY[0x1E695DEC8] arrayWithObject:v50];
    }
  }

  if (v85 || v55 || v52)
  {
    v57 = objc_alloc_init(MEMORY[0x1E69AD740]);
    v58 = v57;
    if (v85)
    {
      [v57 setHeader:v85 forKey:*MEMORY[0x1E699B108]];
    }

    if (serializedRepresentation)
    {
      v59 = [serializedRepresentation base64EncodedDataWithOptions:0];
      [v58 setHeader:v59 forKey:*MEMORY[0x1E69AD628]];
    }

    if (v52)
    {
      [v58 setHeader:v52 forKey:v51];
    }

    if (v55)
    {
      [v58 setReferences:v55];
    }

    [delegateCopy setSavedHeaders:v58];
  }

  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__2;
  v103 = __Block_byref_object_dispose__2;
  v104 = 0;
  copyAddressListForTo = [headersIfAvailable copyAddressListForTo];
  v61 = copyAddressListForTo;
  if (v52)
  {
    v62 = 0;
LABEL_50:
    v63 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v64 = [v63 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    v65 = v100[5];
    v100[5] = v64;

    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__2;
    v97 = __Block_byref_object_dispose__2;
    if (v62)
    {
      simpleAddress2 = [v62 simpleAddress];
    }

    else
    {
      simpleAddress2 = 0;
    }

    v98 = simpleAddress2;
    mEMORY[0x1E699ACD8] = [MEMORY[0x1E699ACD8] sharedInstance];
    v70 = v94[5];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __57__MFComposeTypeFactory__setupForReplyWithModel_delegate___block_invoke_119;
    v88[3] = &unk_1E806D5B8;
    v89 = v52;
    v91 = &v93;
    v90 = delegateCopy;
    v92 = &v99;
    [mEMORY[0x1E699ACD8] isHideMyEmailAddressValid:v70 completion:v88];

    _Block_object_dispose(&v93, 8);
    goto LABEL_64;
  }

  if ([copyAddressListForTo count])
  {
    v67 = MEMORY[0x1E699B240];
    firstObject = [v61 firstObject];
    v62 = [v67 emailAddressWithString:firstObject];
  }

  else
  {
    v62 = 0;
  }

  displayName = [v62 displayName];
  if ([displayName isEqualToString:@"Hide My Email"])
  {
    domain = [v62 domain];
    v73 = [domain isEqualToString:@"icloud.com"];

    if (v73)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  preferredEmailAddressToReplyWith = [legacyMessage preferredEmailAddressToReplyWith];
  v75 = v100[5];
  v100[5] = preferredEmailAddressToReplyWith;

  v76 = v100[5];
  if (!v76)
  {
    preferredSendingEmailAddress = [modelCopy preferredSendingEmailAddress];
    v78 = v100[5];
    v100[5] = preferredSendingEmailAddress;

    v76 = v100[5];
  }

  [delegateCopy setSendingEmailAddress:v76];
LABEL_64:
  if ([modelCopy isQuickReply])
  {
    [delegateCopy setIsQuickReply:1];
  }

  composeWebView = [delegateCopy composeWebView];
  if (composeWebView)
  {
    [selfCopy _quoteFromModel:modelCopy delegate:delegateCopy];
  }

  if ([modelCopy composeType] == 4 || objc_msgSend(modelCopy, "composeType") == 5)
  {
    composeType = [modelCopy composeType];
    [selfCopy _sanitizeRecipientsForComposeType:composeType sendingAddress:v100[5] delegate:delegateCopy];
  }

  _Block_object_dispose(&v99, 8);
}

id __57__MFComposeTypeFactory__setupForReplyWithModel_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

id __57__MFComposeTypeFactory__setupForReplyWithModel_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

id __57__MFComposeTypeFactory__setupForReplyWithModel_delegate___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

void __57__MFComposeTypeFactory__setupForReplyWithModel_delegate___block_invoke_119(uint64_t a1, int a2, void *a3)
{
  v16 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x1E699B340] tagValueListFromString:v5 error:0];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699A750]];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (a2 && (v10 = *(*(*(a1 + 48) + 8) + 40)) != 0)
  {
    [*(a1 + 40) setSendingEmailAddressAsHME:v10 isComposeTypeReply:1];
    v11 = [*(a1 + 40) savedHeaders];
    [v11 setHeader:*(*(*(a1 + 48) + 8) + 40) forKey:*MEMORY[0x1E699B0F8]];

    [*(a1 + 40) setCcRecipients:0];
  }

  else
  {
    v12 = [MEMORY[0x1E699ACD8] sharedInstance];
    v13 = [v12 forwardingEmailForPrimaryAccount];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    [*(a1 + 40) setSendingEmailAddress:*(*(*(a1 + 56) + 8) + 40)];
  }
}

+ (void)_setupForForwardWithModel:(id)model delegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  [self _mergeModel:modelCopy withDelegate:delegateCopy];
  legacyMessage = [modelCopy legacyMessage];
  subject = [delegateCopy subject];
  v9 = [subject length];

  if (!v9 && legacyMessage)
  {
    subject2 = [legacyMessage subject];
    subjectWithoutPrefix = [subject2 subjectWithoutPrefix];
    nonLocalizedForwardPrefix = [MEMORY[0x1E699B330] nonLocalizedForwardPrefix];
    v13 = _subjectWithPrefix(subjectWithoutPrefix, nonLocalizedForwardPrefix);

    [delegateCopy setSubject:v13];
  }

  originalMessage = [modelCopy originalMessage];
  objectID = [originalMessage objectID];
  serializedRepresentation = [objectID serializedRepresentation];

  headersIfAvailable = [legacyMessage headersIfAvailable];
  v18 = [headersIfAvailable firstHeaderForKey:*MEMORY[0x1E699B130]];
  if (v18)
  {
    v19 = objc_alloc_init(MEMORY[0x1E69AD740]);
    v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v18];
    [v19 setReferences:v20];

    if (serializedRepresentation)
    {
      v21 = [serializedRepresentation base64EncodedDataWithOptions:0];
      [v19 setHeader:v21 forKey:*MEMORY[0x1E69AD610]];
    }

    [delegateCopy setSavedHeaders:v19];
  }

  preferredEmailAddressToReplyWith = [legacyMessage preferredEmailAddressToReplyWith];
  if (!preferredEmailAddressToReplyWith)
  {
    preferredEmailAddressToReplyWith = [modelCopy preferredSendingEmailAddress];
  }

  [delegateCopy setSendingEmailAddress:preferredEmailAddressToReplyWith];
  composeWebView = [delegateCopy composeWebView];
  if (composeWebView)
  {
    [self _quoteFromModel:modelCopy delegate:delegateCopy];
  }

  [self _sanitizeRecipientsForComposeType:objc_msgSend(modelCopy sendingAddress:"composeType") delegate:{preferredEmailAddressToReplyWith, delegateCopy}];
}

+ (void)_setupForReplyAllWithModel:(id)model delegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  [self _setupForReplyWithModel:modelCopy delegate:delegateCopy];
  [self setupSwitchToReplyAllWithModel:modelCopy delegate:delegateCopy];
}

+ (void)setupSwitchToReplyAllWithModel:(id)model delegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  v45 = modelCopy;
  legacyMessage = [modelCopy legacyMessage];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [legacyMessage to];
  v11 = [legacyMessage cc];
  v12 = [MEMORY[0x1E695DFA8] ec_emailAddressConvertiblesSetFromArray:v10 includeInvalid:1];
  v13 = MEMORY[0x1E695DFA8];
  v43 = v12;
  toRecipients = [delegateCopy toRecipients];
  v42 = [v13 ec_emailAddressConvertiblesSetFromArray:toRecipients includeInvalid:1];

  mailbox = [legacyMessage mailbox];
  account = [mailbox account];
  emailAddressStrings = [account emailAddressStrings];
  selfCopy = self;

  firstSender = [legacyMessage firstSender];
  emailAddressValue = [firstSender emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v20 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [firstSender stringValue];
  }

  v22 = stringValue;

  savedHeaders = [delegateCopy savedHeaders];
  v24 = [savedHeaders headersForKey:*MEMORY[0x1E699B0F8]];

  if (![emailAddressStrings containsObject:v22])
  {
    if (v10 && !v24)
    {
      [v9 addObjectsFromArray:v10];
    }

    if (v11)
    {
      [v9 addObjectsFromArray:v11];
    }

    if (v24)
    {
      allObjects = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [allObjects localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
      v22 = v28 = v22;
    }

    else
    {
      preferredEmailAddressToReplyWith = [legacyMessage preferredEmailAddressToReplyWith];

      if (!preferredEmailAddressToReplyWith)
      {
        preferredEmailAddressToReplyWith = [v45 preferredSendingEmailAddress];
      }

      v30 = preferredEmailAddressToReplyWith;
      emailAddressValue2 = [v30 emailAddressValue];
      simpleAddress2 = [emailAddressValue2 simpleAddress];
      v33 = simpleAddress2;
      if (simpleAddress2)
      {
        stringValue2 = simpleAddress2;
      }

      else
      {
        stringValue2 = [v30 stringValue];
      }

      v35 = stringValue2;

      v28 = v30;
      allObjects = v30;
      v22 = v35;
    }

    goto LABEL_23;
  }

  if (v11)
  {
    [v9 addObjectsFromArray:v11];
  }

  [v43 unionSet:v42];
  if (v10 && ([v43 isEqual:v42] & 1) == 0)
  {
    toRecipients2 = [delegateCopy toRecipients];
    v26 = [toRecipients2 ef_map:&__block_literal_global_123];
    [v43 addObjectsFromArray:v26];

    allObjects = [v43 allObjects];
    v28 = [allObjects ef_map:&__block_literal_global_125];
    [v46 addObjectsFromArray:v28];
LABEL_23:
  }

  v36 = [[MFMailRecipients alloc] initWithToRecipients:v46 ccRecipients:v9 bccRecipients:0];
  composeType = [v45 composeType];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __64__MFComposeTypeFactory_setupSwitchToReplyAllWithModel_delegate___block_invoke_3;
  v47[3] = &unk_1E806D570;
  v38 = delegateCopy;
  v48 = v38;
  [(MFMailRecipients *)v36 sanitizeForComposeType:composeType sendingEmailAddress:v22 hideMyEmailAddressProvider:v47];
  toRecipients3 = [(MFMailRecipients *)v36 toRecipients];
  ccRecipients = [(MFMailRecipients *)v36 ccRecipients];
  [selfCopy _updateDelegate:v38 toRecipients:toRecipients3 ccRecipients:ccRecipients bccRecipients:0];
}

void *__64__MFComposeTypeFactory_setupSwitchToReplyAllWithModel_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

void *__64__MFComposeTypeFactory_setupSwitchToReplyAllWithModel_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 stringValue];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6;

  return v6;
}

id __64__MFComposeTypeFactory_setupSwitchToReplyAllWithModel_delegate___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) savedHeaders];
  v2 = [v1 headersForKey:*MEMORY[0x1E699B0E8]];

  return v2;
}

+ (void)setupSwitchToReplyWithModel:(id)model delegate:(id)delegate
{
  delegateCopy = delegate;
  [delegateCopy setCcRecipients:0];
  [delegateCopy setBccRecipients:0];
}

+ (void)_setupForNewMessageWithModel:(id)model delegate:(id)delegate
{
  v45 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  delegateCopy = delegate;
  selfCopy = self;
  [self _mergeModel:modelCopy withDelegate:delegateCopy];
  preferredSendingEmailAddress = [modelCopy preferredSendingEmailAddress];
  hideMyEmailFrom = [modelCopy hideMyEmailFrom];
  v10 = [hideMyEmailFrom length];

  if (v10)
  {
    hideMyEmailFrom2 = [modelCopy hideMyEmailFrom];
    [delegateCopy setHideMyEmailAddressForMailToURLAddressString:hideMyEmailFrom2];

    hideMyEmailFrom3 = [modelCopy hideMyEmailFrom];

    v13 = hideMyEmailFrom3;
  }

  else
  {
    v13 = preferredSendingEmailAddress;
  }

  v39 = v13;
  [delegateCopy setSendingEmailAddress:?];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v15 = [delegateCopy contentVariationIndex], v15 != 0x7FFFFFFFFFFFFFFFLL))
  {
    contentVariations = [modelCopy contentVariations];
    v21 = [contentVariations objectAtIndexedSubscript:v15];

    v36 = v21;
    body = [v21 body];
    v23 = +[_MFMailCompositionContext processMessageBody:asHTML:](_MFMailCompositionContext, "processMessageBody:asHTML:", body, [v21 bodyIsHTML]);

    v35 = v23;
    if (v23)
    {
      [v14 addObject:v23];
    }

    attachmentContext = [modelCopy attachmentContext];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    attachmentIdentifiers = [v36 attachmentIdentifiers];
    v34 = a2;
    v26 = [attachmentIdentifiers countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v26)
    {
      v27 = *v41;
      do
      {
        v28 = 0;
        do
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(attachmentIdentifiers);
          }

          v29 = [attachmentContext attachmentForHostIdentifier:*(*(&v40 + 1) + 8 * v28)];
          if (v29)
          {
            [v14 addObject:v29];
          }

          else
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v34 object:selfCopy file:@"MFComposeTypeFactory.m" lineNumber:886 description:@"Unexpected found nil attachment for host identifier."];
          }

          ++v28;
        }

        while (v26 != v28);
        v31 = [attachmentIdentifiers countByEnumeratingWithState:&v40 objects:v44 count:16];
        v26 = v31;
      }

      while (v31);
    }
  }

  else
  {
    messageBody = [modelCopy messageBody];
    if (messageBody)
    {
      [v14 addObject:messageBody];
    }

    deferredAttachments = [modelCopy deferredAttachments];
    v18 = [deferredAttachments count];

    if (!v18)
    {
      attachments = [modelCopy attachments];
      [v14 addObjectsFromArray:attachments];
    }
  }

  [selfCopy _setContent:v14 includeAttachments:1 shouldQuote:0 prependBlankLine:1 delegate:delegateCopy signpostID:{objc_msgSend(modelCopy, "signpostID")}];
  if (objc_opt_respondsToSelector())
  {
    [delegateCopy addSignature:0];
  }

  if ([modelCopy originatingFromAttachmentMarkup])
  {
    legacyMessage = [modelCopy legacyMessage];
    preferredEmailAddressToReplyWith = [legacyMessage preferredEmailAddressToReplyWith];
    if (!preferredEmailAddressToReplyWith)
    {
      preferredEmailAddressToReplyWith = [modelCopy preferredSendingEmailAddress];
    }

    [delegateCopy setSendingEmailAddress:preferredEmailAddressToReplyWith];
  }

  [selfCopy _sanitizeRecipientsForComposeType:objc_msgSend(modelCopy sendingAddress:"composeType") delegate:{v39, delegateCopy}];
}

+ (void)addAttachment:(id)attachment prepend:(BOOL)prepend withCompositionModel:(id)model delegate:(id)delegate
{
  prependCopy = prepend;
  attachmentCopy = attachment;
  modelCopy = model;
  delegateCopy = delegate;
  v12 = prependCopy && [modelCopy composeType] == 0;
  v13 = [self _markupForInlineAttachment:attachmentCopy willBeIncluded:1 prependBlankLine:v12 delegate:delegateCopy];
  if ([v13 length])
  {
    [delegateCopy composeWebView];
    if (prependCopy)
      v14 = {;
      [v14 prependMarkupString:v13 quote:0];
    }

    else
      v14 = {;
      [v14 appendMarkupString:v13 quote:0];
    }
  }
}

+ (unint64_t)imageScaleFromUserDefaults
{
  if (![MEMORY[0x1E69DC938] mf_isPadIdiom])
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695E000] mf_copyCompositionServicesPreferenceValueForKey:*MEMORY[0x1E69B17D0]];
  intValue = [v2 intValue];

  return intValue;
}

+ (void)setupWithCompositionModel:(id)model delegate:(id)delegate
{
  v12 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  delegateCopy = delegate;
  composeType = [modelCopy composeType];
  if (composeType > 4)
  {
    if (composeType == 5)
    {
      [self _setupForReplyAllWithModel:modelCopy delegate:delegateCopy];
      goto LABEL_13;
    }

    if (composeType == 6)
    {
      [self _setupForForwardWithModel:modelCopy delegate:delegateCopy];
      goto LABEL_13;
    }
  }

  else
  {
    if (!composeType)
    {
      [self _setupForNewMessageWithModel:modelCopy delegate:delegateCopy];
      goto LABEL_13;
    }

    if (composeType == 4)
    {
      [self _setupForReplyWithModel:modelCopy delegate:delegateCopy];
      goto LABEL_13;
    }
  }

  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    composeType2 = [modelCopy composeType];
    _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled composition case: %ld", &v10, 0xCu);
  }

LABEL_13:
}

+ (void)setupWithContent:(id)content delegate:(id)delegate signpostID:(unint64_t)d
{
  contentCopy = content;
  delegateCopy = delegate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = contentCopy;
  }

  else
  {
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:contentCopy];
  }

  v10 = v9;
  [self _setContent:v9 includeAttachments:1 shouldQuote:0 prependBlankLine:0 delegate:delegateCopy signpostID:d];
  composeWebView = [delegateCopy composeWebView];
  [composeWebView addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:1 shouldQuote:0];
}

+ (id)messageFromDelegate:(id)delegate withSubstituteDOMDocument:(id)document compositionSpecification:(id)specification originatingBundleID:(id)d sourceAccountManagement:(int)management writeAttachmentPlaceholders:(BOOL)placeholders
{
  delegateCopy = delegate;
  specificationCopy = specification;
  dCopy = d;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFComposeTypeFactory.m" lineNumber:976 description:@"Current thread must be main"];
  }

  composeWebView = [delegateCopy composeWebView];
  shouldCreateRichTextRepresentation = [delegateCopy shouldCreateRichTextRepresentation];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __167__MFComposeTypeFactory_messageFromDelegate_withSubstituteDOMDocument_compositionSpecification_originatingBundleID_sourceAccountManagement_writeAttachmentPlaceholders___block_invoke;
  v26[3] = &unk_1E806D650;
  selfCopy = self;
  v19 = delegateCopy;
  v27 = v19;
  v20 = dCopy;
  v28 = v20;
  managementCopy = management;
  v21 = specificationCopy;
  v29 = v21;
  placeholdersCopy = placeholders;
  v22 = composeWebView;
  v30 = v22;
  v23 = [shouldCreateRichTextRepresentation then:v26];

  return v23;
}

id __167__MFComposeTypeFactory_messageFromDelegate_withSubstituteDOMDocument_compositionSpecification_originatingBundleID_sourceAccountManagement_writeAttachmentPlaceholders___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = [*(a1 + 64) headersFromDelegate:*(a1 + 32) originatingBundleID:*(a1 + 40) sourceAccountManagement:*(a1 + 72)];
  v5 = [objc_alloc(MEMORY[0x1E69B1640]) initWithCompositionSpecification:*(a1 + 48)];
  [v5 setShouldWriteAttachmentPlaceholders:*(a1 + 76)];
  v6 = [v4 firstSenderAddress];
  v7 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:v6];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass() & 1;
  if (v3)
  {
    v9 = [MEMORY[0x1E699B868] promise];
    v10 = [v9 future];
    v11 = *(a1 + 56);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __167__MFComposeTypeFactory_messageFromDelegate_withSubstituteDOMDocument_compositionSpecification_originatingBundleID_sourceAccountManagement_writeAttachmentPlaceholders___block_invoke_2;
    v21[3] = &unk_1E806D5E0;
    v22 = *(a1 + 32);
    v26 = v8;
    v23 = v5;
    v24 = v4;
    v12 = v9;
    v25 = v12;
    [v11 getHTMLDataObject:v21];
    v13 = &v22;
    v14 = &v23;
  }

  else
  {
    v12 = [*(a1 + 56) plainTextContent];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __167__MFComposeTypeFactory_messageFromDelegate_withSubstituteDOMDocument_compositionSpecification_originatingBundleID_sourceAccountManagement_writeAttachmentPlaceholders___block_invoke_3;
    v17[3] = &unk_1E806D608;
    v20 = v8;
    v18 = v5;
    v19 = v4;
    v10 = [v12 then:v17];
    v13 = &v18;
    v14 = &v19;
  }

  v15 = [v10 then:&__block_literal_global_151];

  return v15;
}

void __167__MFComposeTypeFactory_messageFromDelegate_withSubstituteDOMDocument_compositionSpecification_originatingBundleID_sourceAccountManagement_writeAttachmentPlaceholders___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = a2;
  v33 = [v31 htmlString];
  v3 = [v31 otherHTMLStringsAndAttachments];
  v32 = [v31 plainTextAlternative];
  if (!v3)
  {
    v7 = [MEMORY[0x1E69B15D0] defaultManager];
    v8 = [*(a1 + 32) composeWebView];
    v9 = [v8 compositionContextID];
    v3 = [v7 attachmentsForContext:v9];

    goto LABEL_37;
  }

  if (*(a1 + 64) != 1)
  {
    goto LABEL_37;
  }

  v35 = objc_opt_new();
  v4 = objc_opt_new();
  if (v33)
  {
    v5 = [v33 string];
    [v35 addObject:v5];

    v6 = [v33 charset];
  }

  else
  {
    v6 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v11)
  {

    goto LABEL_32;
  }

  v12 = *v37;
  v34 = 1;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v36 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 addObject:v14];
        continue;
      }

      v15 = v14;
      v16 = v15;
      if (!v6)
      {
        v6 = [v15 charset];
      }

      v17 = [v16 string];
      [v35 addObject:v17];

      v18 = [v16 charset];
      v19 = [v18 encoding];
      LOBYTE(v19) = v19 == [v6 encoding];

      if ((v19 & 1) == 0)
      {
        v20 = [v16 charset];
        if ([v20 encoding] == 4)
        {
          v21 = [v6 encoding] == 1;

          if (v21)
          {
            v22 = [v16 charset];

            v6 = v22;
            goto LABEL_26;
          }
        }

        else
        {
        }

        v23 = [v16 charset];
        if ([v23 encoding] == 1)
        {
          v24 = [v6 encoding] == 4;

          if (v24)
          {
            goto LABEL_26;
          }
        }

        else
        {
        }

        v34 = 0;
      }

LABEL_26:
    }

    v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v11);

  if ((v34 & 1) == 0)
  {
    v3 = v10;
    v25 = v33;
    goto LABEL_36;
  }

LABEL_32:
  v26 = [v35 componentsJoinedByString:@"\n"];
  if (v33)
  {
    v25 = [objc_alloc(MEMORY[0x1E699B288]) initWithString:v26 charset:v6];
    v27 = v33;
  }

  else
  {
    v27 = [objc_alloc(MEMORY[0x1E699B288]) initWithString:v26 charset:v6];
    v25 = 0;
    [v4 insertObject:v27 atIndex:0];
  }

  v3 = v4;
LABEL_36:

  v33 = v25;
LABEL_37:
  v28 = [*(a1 + 40) createMessageWithHTMLStringAndMIMECharset:v33 plainTextAlternative:v32 otherHtmlStringsAndAttachments:v3 headers:*(a1 + 48)];
  v29 = *(a1 + 56);
  if (v28)
  {
    [*(a1 + 56) finishWithResult:v28];
  }

  else
  {
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B1560] code:1030 userInfo:0];
    [v29 finishWithError:v30];
  }
}

id __167__MFComposeTypeFactory_messageFromDelegate_withSubstituteDOMDocument_compositionSpecification_originatingBundleID_sourceAccountManagement_writeAttachmentPlaceholders___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1 && [v3 count] >= 2)
  {
    v5 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v7)
            {
              v12 = [v11 string];
              [v7 appendString:v12 withQuoteLevel:0];
            }

            else
            {
              v7 = v11;
            }
          }

          else
          {
            [v5 addObject:{v11, v18}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  v13 = [*(a1 + 32) createMessageWithPlainTextDocumentsAndAttachments:v4 headers:{*(a1 + 40), v18}];
  v14 = MEMORY[0x1E699B7C8];
  if (v13)
  {
    v15 = [MEMORY[0x1E699B7C8] futureWithResult:v13];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B1560] code:1030 userInfo:0];
    v15 = [v14 futureWithError:v16];
  }

  return v15;
}

id __167__MFComposeTypeFactory_messageFromDelegate_withSubstituteDOMDocument_compositionSpecification_originatingBundleID_sourceAccountManagement_writeAttachmentPlaceholders___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSince1970];
  [v2 setDateSentAsTimeIntervalSince1970:?];

  v4 = [MEMORY[0x1E699B7C8] futureWithResult:v2];

  return v4;
}

+ (id)messageFromDelegate:(id)delegate originatingBundleID:(id)d sourceAccountManagement:(int)management
{
  v5 = [self messageFromDelegate:delegate withSubstituteDOMDocument:0 compositionSpecification:0 originatingBundleID:d sourceAccountManagement:*&management writeAttachmentPlaceholders:0];

  return v5;
}

+ (void)hijackThreadFromDelegate:(id)delegate
{
  delegateCopy = delegate;
  savedHeaders = [delegateCopy savedHeaders];
  [savedHeaders removeHeaderForKey:*MEMORY[0x1E699B108]];
  [savedHeaders setReferences:0];
  [delegateCopy setSavedHeaders:savedHeaders];
}

+ (id)subjectFromSubject:(id)subject withComposeType:(int64_t)type
{
  subjectCopy = subject;
  v6 = subjectCopy;
  if ((type - 4) < 2)
  {
    nonLocalizedReplyPrefix = [MEMORY[0x1E699B330] nonLocalizedReplyPrefix];
    v8 = _subjectWithPrefix(v6, nonLocalizedReplyPrefix);
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  if (type == 6)
  {
    nonLocalizedReplyPrefix = [MEMORY[0x1E699B330] nonLocalizedForwardPrefix];
    v8 = _subjectWithPrefix(v6, nonLocalizedReplyPrefix);
    goto LABEL_5;
  }

  v9 = subjectCopy;
LABEL_7:

  return v9;
}

+ (void)_setContent:(void *)a3 includeAttachments:(os_log_t)log shouldQuote:prependBlankLine:delegate:storeOriginalAttachments:signpostID:.cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Unable to find content ID for MIME attachment: %{public}@", buf, 0xCu);
}

@end