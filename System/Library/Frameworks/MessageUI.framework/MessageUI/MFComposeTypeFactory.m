@interface MFComposeTypeFactory
+ (BOOL)alwaysBCCSelf;
+ (id)_markupForInlineAttachment:(id)a3 willBeIncluded:(BOOL)a4 prependBlankLine:(BOOL)a5 delegate:(id)a6;
+ (id)_markupStringForExcludedInlineAttachmentWithFilename:(id)a3;
+ (id)bccSelfAddressForDelegate:(id)a3;
+ (id)headersFromDelegate:(id)a3;
+ (id)headersFromDelegate:(id)a3 originatingBundleID:(id)a4 sourceAccountManagement:(int)a5;
+ (id)messageFromDelegate:(id)a3 originatingBundleID:(id)a4 sourceAccountManagement:(int)a5;
+ (id)messageFromDelegate:(id)a3 withSubstituteDOMDocument:(id)a4 compositionSpecification:(id)a5 originatingBundleID:(id)a6 sourceAccountManagement:(int)a7 writeAttachmentPlaceholders:(BOOL)a8;
+ (id)senderAddressForHME:(id)a3 originalSenderAddress:(id)a4;
+ (id)signpostLog;
+ (id)subjectFromSubject:(id)a3 withComposeType:(int64_t)a4;
+ (unint64_t)imageScaleFromUserDefaults;
+ (void)_mergeModel:(id)a3 withDelegate:(id)a4;
+ (void)_prependQuotedMarkup:(id)a3 shouldIndent:(BOOL)a4 toBodyField:(id)a5;
+ (void)_quoteFromModel:(id)a3 delegate:(id)a4;
+ (void)_sanitizeRecipientsForComposeType:(unint64_t)a3 sendingAddress:(id)a4 delegate:(id)a5;
+ (void)_setContent:(id)a3 includeAttachments:(BOOL)a4 shouldQuote:(BOOL)a5 prependBlankLine:(BOOL)a6 delegate:(id)a7 storeOriginalAttachments:(BOOL)a8 signpostID:(unint64_t)a9;
+ (void)_setupForForwardWithModel:(id)a3 delegate:(id)a4;
+ (void)_setupForNewMessageWithModel:(id)a3 delegate:(id)a4;
+ (void)_setupForReplyAllWithModel:(id)a3 delegate:(id)a4;
+ (void)_setupForReplyWithModel:(id)a3 delegate:(id)a4;
+ (void)_updateDelegate:(id)a3 toRecipients:(id)a4 ccRecipients:(id)a5 bccRecipients:(id)a6;
+ (void)addAttachment:(id)a3 prepend:(BOOL)a4 withCompositionModel:(id)a5 delegate:(id)a6;
+ (void)hijackThreadFromDelegate:(id)a3;
+ (void)setupSwitchToReplyAllWithModel:(id)a3 delegate:(id)a4;
+ (void)setupSwitchToReplyWithModel:(id)a3 delegate:(id)a4;
+ (void)setupWithCompositionModel:(id)a3 delegate:(id)a4;
+ (void)setupWithContent:(id)a3 delegate:(id)a4 signpostID:(unint64_t)a5;
- (unint64_t)signpostID;
@end

@implementation MFComposeTypeFactory

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MFComposeTypeFactory_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

+ (void)_prependQuotedMarkup:(id)a3 shouldIndent:(BOOL)a4 toBodyField:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [a3 stringByAppendingString:@"<BR>"];
  [v8 prependMarkupString:v7 quote:v5];
}

+ (id)_markupStringForExcludedInlineAttachmentWithFilename:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", a3];
  v5 = [v4 ef_stringByEscapingForXML];
  v6 = [v3 stringWithFormat:@"<DIV>%@</DIV>", v5];

  return v6;
}

+ (id)_markupForInlineAttachment:(id)a3 willBeIncluded:(BOOL)a4 prependBlankLine:(BOOL)a5 delegate:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (v8)
  {
    v12 = [a1 imageScaleFromUserDefaults];
    v13 = [v11 composeWebView];
    [v10 markupStringForCompositionWithPrependedBlankLine:v7 imageScale:v12 useAttachmentElement:{objc_msgSend(v13, "allowsAttachmentElements")}];
  }

  else
  {
    v13 = [v10 fileName];
    [a1 _markupStringForExcludedInlineAttachmentWithFilename:v13];
  }
  v14 = ;

  return v14;
}

+ (void)_setContent:(id)a3 includeAttachments:(BOOL)a4 shouldQuote:(BOOL)a5 prependBlankLine:(BOOL)a6 delegate:(id)a7 storeOriginalAttachments:(BOOL)a8 signpostID:(unint64_t)a9
{
  v83 = a8;
  v69 = a6;
  v70 = a4;
  v73 = a5;
  v119 = *MEMORY[0x1E69E9840];
  v68 = a3;
  v85 = a7;
  v10 = MFMessageComposeLoadingSignpostLog();
  v11 = v10;
  if (a9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BE819000, v11, OS_SIGNPOST_INTERVAL_BEGIN, a9, "LOAD COMPOSE WEB CONTENT", "Start loading web content enableTelemetry=YES ", buf, 2u);
  }

  v77 = [v85 composeWebView];
  v89 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v82 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v81 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v68;
  v76 = [obj countByEnumeratingWithState:&v105 objects:v118 count:16];
  if (v76)
  {
    v79 = 0;
    v88 = v70 || v83;
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
          v12 = [v80 htmlData];
          if (v12)
          {
            v13 = [v80 preferredCharacterSet];
            MFEncodingForCharset();
            v79 = MFCreateStringWithData();
          }

          else
          {
            v79 = 0;
          }

          v24 = [v80 attachmentsInDocument];
          v74 = v12;
          v25 = [v24 count] == 0;

          if (!v25)
          {
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v86 = [v80 attachmentsInDocument];
            v26 = [v86 countByEnumeratingWithState:&v101 objects:v117 count:16];
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
                  objc_enumerationMutation(v86);
                }

                v28 = *(*(&v101 + 1) + 8 * j);
                v29 = [v28 fileWrapperForcingDownload:0];
                v30 = [v29 preferredFilename];
                v31 = [v28 mimePart];
                v32 = [v31 contentID];

                if (v32)
                {
                  [v89 setObject:v30 forKeyedSubscript:v32];
                  if (!v88)
                  {
                    goto LABEL_34;
                  }

                  v33 = [v29 contentID];
                  v34 = [v29 mimeType];
                  v35 = [v85 composeWebView];
                  v36 = [v35 compositionContextID];

                  v37 = [v29 regularFileContents];
                  if (v83)
                  {
                    [v82 addObject:v29];
                  }

                  else
                  {
                    v39 = [MFAttachmentMarkup attachmentMarkupWithProperties:v37 contentID:v33 mimeType:v34 filename:v30 contextID:v36];
                    [v81 addObject:v39];
                  }
                }

                else
                {
                  v33 = MFComposeLog();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    v38 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v30];
                    [MFComposeTypeFactory _setContent:v38 includeAttachments:v115 shouldQuote:&v116 prependBlankLine:v33 delegate:? storeOriginalAttachments:? signpostID:?];
                  }
                }

LABEL_34:
              }

              v26 = [v86 countByEnumeratingWithState:&v101 objects:v117 count:16];
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
            v16 = [v15 contentID];
            v17 = [v15 preferredFilename];
            v18 = [v15 mimeType];
            v19 = [v85 composeWebView];
            v20 = [v19 compositionContextID];

            v21 = [v15 regularFileContents];
            if (v88)
            {
              if (v83)
              {
                [v82 addObject:v15];
                v22 = a1;
                goto LABEL_42;
              }

              v40 = [MEMORY[0x1E69B15D0] defaultManager];
              v41 = [v40 attachmentForData:v21 mimeType:v18 fileName:v17 contentID:v16 context:v20];

              v79 = [a1 _markupForInlineAttachment:v41 willBeIncluded:v70 prependBlankLine:v69 delegate:v85];
            }

            else
            {
              v22 = objc_opt_class();
LABEL_42:
              v79 = [v22 _markupStringForExcludedInlineAttachmentWithFilename:v17];
            }

            goto LABEL_45;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [a1 _markupForInlineAttachment:v80 willBeIncluded:v70 prependBlankLine:v69 delegate:v85];
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
          v100[4] = a9;
          [v77 appendOrReplace:v42 withMarkupString:v79 quote:v73 completion:v100];
          goto LABEL_53;
        }

LABEL_47:
        v43 = MFMessageComposeLoadingSignpostLog();
        v44 = v43;
        if (a9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BE819000, v44, OS_SIGNPOST_INTERVAL_END, a9, "LOAD COMPOSE WEB CONTENT", "Unable to create markup string enableTelemetry=YES ", buf, 2u);
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
        v50 = [MEMORY[0x1E69B15D0] defaultManager];
        v51 = [v49 attachmentData];
        v52 = [v49 mimeType];
        v53 = [v49 filename];
        v54 = [v49 contentID];
        v55 = [v49 contextID];
        v56 = [v50 attachmentForData:v51 mimeType:v52 fileName:v53 contentID:v54 context:v55];

        v57 = [v56 className];
        if (([v57 isEqualToString:0x1F3CF38B8] & 1) != 0 || objc_msgSend(v57, "isEqualToString:", 0x1F3CF38F8))
        {
          [v87 addObject:v49];
        }

        else
        {
          v58 = [v49 contentID];
          [v89 removeObjectForKey:v58];
        }
      }

      v47 = [v84 countByEnumeratingWithState:&v96 objects:v110 count:16];
    }

    while (v47);
  }

  [v77 setOriginalAttachmentInfo:v82];
  [v77 setReplacementFilenamesByContentID:v89];
  [v77 replaceImagesIfNecessary];
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
        v64 = [v63 attachmentData];
        v65 = [v63 filename];
        v66 = [v63 mimeType];
        v67 = [v63 contentID];
        [v77 replaceFilenamePlaceholderWithAttachment:v64 fileName:v65 mimeType:v66 contentID:v67];
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

+ (id)senderAddressForHME:(id)a3 originalSenderAddress:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E699B340] tagValueListFromString:a3 error:0];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699A760]];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699A758]];
  v9 = [v5 emailAddressValue];
  v10 = [v9 simpleAddress];

  if ([v10 ef_caseInsensitiveIsEqualToString:v8])
  {
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699A750]];

    v7 = v11;
  }

  if (v7)
  {
    v12 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v5];
    v13 = [v12 displayName];
    v14 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v7];

    if (v13)
    {
      [v14 setDisplayName:v13];
    }

    v15 = [v14 stringValue];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)_quoteFromModel:(id)a3 delegate:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v43 = [v5 legacyMessage];
  v7 = [v5 composeType];
  v8 = [v5 composeType] == 4 || objc_msgSend(v5, "composeType") == 5;
  v40 = v7;
  v9 = [v6 savedHeaders];
  v10 = *MEMORY[0x1E699B0E8];
  v11 = [v9 headersForKey:*MEMORY[0x1E699B0E8]];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = [MEMORY[0x1E69B1698] sharedInstance];
    v14 = [v6 sendingEmailAddress];
    v15 = [v13 signatureMarkupForSendingEmailAddress:v14];
    v12 = [v15 length] == 0;
  }

  v44 = [v5 originalContent];
  v42 = [v43 messageBodyIfAvailable];
  v38 = [v42 isEncrypted];
  if (!v44)
  {
    v44 = [v42 htmlContent];
  }

  v16 = MFComposeLog();
  v39 = v12;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v43 ef_publicDescription];
    *buf = 138543362;
    v47 = v17;
    _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "Quoting content from message: %{public}@", buf, 0xCu);
  }

  v18 = [v6 composeWebView];
  if (v44)
  {
    v19 = [v5 includeAttachments];
    v20 = [MEMORY[0x1E695E000] em_userDefaults];
    v21 = [v20 objectForKey:@"DisableQuoteIncrease"];
    v22 = [v21 BOOLValue];

    if (v8)
    {
      v23 = [v5 includeAttachmentsWhenAdding];
    }

    else
    {
      v23 = 0;
    }

    [a1 _setContent:v44 includeAttachments:v19 shouldQuote:v22 ^ 1u prependBlankLine:0 delegate:v6 storeOriginalAttachments:v23 signpostID:{objc_msgSend(v5, "signpostID")}];
    [v18 addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:0 shouldQuote:v22 ^ 1u];
    if (v40 == 6)
    {
      v24 = [v43 headersIfAvailable];
      v25 = [v24 markupString];
      [a1 _prependQuotedMarkup:v25 shouldIndent:v22 ^ 1u toBodyField:v18];

      v26 = [MEMORY[0x1E69B1628] forwardedMessagePrefixWithSpacer:v39];
      [v18 prependPreamble:v26 quote:0];
    }

    else
    {
      v27 = [v43 senders];
      v24 = [v27 ef_map:&__block_literal_global_12];

      if ([v24 count])
      {
        if ([v24 count] == 1)
        {
          v28 = [v43 headers];
          v29 = [v28 headersForKey:v10];
          v30 = [v29 firstObject];

          if (v30)
          {
            v31 = [v24 firstObject];
            v32 = [a1 senderAddressForHME:v30 originalSenderAddress:v31];

            if (v32)
            {
              v45 = v32;
              v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];

              v24 = v33;
            }
          }
        }

        v34 = [v43 dateSent];
        v35 = [v24 objectAtIndex:0];
        v36 = [v34 mf_replyPrefixForSender:v35];
        [v18 prependPreamble:v36 quote:v22 ^ 1u];

        if (v39)
        {
          [v18 prependString:@"\n"];
        }
      }
    }
  }

  if (!v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 addSignature:1];
  }

  v37 = [v5 messageBody];
  if ([v37 length])
  {
    [v18 prependMarkupString:v37 quote:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 contentDidChange];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 setOriginalMessageWasEncrypted:v38];
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

+ (id)headersFromDelegate:(id)a3
{
  v3 = [a1 headersFromDelegate:a3 originatingBundleID:0 sourceAccountManagement:0];

  return v3;
}

+ (id)headersFromDelegate:(id)a3 originatingBundleID:(id)a4 sourceAccountManagement:(int)a5
{
  v5 = *&a5;
  v84 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v72 = a4;
  v73 = v7;
  v8 = objc_alloc_init(MEMORY[0x1E69AD740]);
  v9 = [v7 savedHeaders];
  v10 = v9;
  if (v9)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v11 = [v9 allHeaderKeys];
    v12 = [v11 countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v12)
    {
      v13 = *v79;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v79 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v78 + 1) + 8 * i);
          v16 = [v10 firstHeaderForKey:v15];
          if (v16)
          {
            [v8 setHeader:v16 forKey:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v12);
    }
  }

  v17 = [v73 subject];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v73 subject];
    [v8 setHeader:v19 forKey:*MEMORY[0x1E699B178]];
  }

  v20 = [v73 toRecipients];
  v21 = [v20 count] == 0;

  if (!v21)
  {
    v22 = [v73 toRecipients];
    [v8 setAddressListForTo:v22];
  }

  v23 = [v73 ccRecipients];
  v24 = [v23 count] == 0;

  if (!v24)
  {
    v25 = [v73 ccRecipients];
    [v8 setAddressListForCc:v25];
  }

  v26 = [v73 bccRecipients];
  v27 = [v26 count] == 0;

  if (!v27)
  {
    v28 = [v73 bccRecipients];
    [v8 setAddressListForBcc:v28];
  }

  v71 = [v73 accountProxyGenerator];
  v29 = [v73 sendingEmailAddress];
  if (!v29)
  {
    v30 = [v71 defaultMailAccountProxyForDeliveryOriginatingBundleID:v72 sourceAccountManagement:v5];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 firstEmailAddress];
      v33 = [v31 fullUserName];
      v34 = [MEMORY[0x1E699B248] componentsWithString:v32];
      [v34 setDisplayName:v33];
      v29 = [v34 stringValue];
    }

    else
    {
      v29 = 0;
    }
  }

  v35 = v29;
  v36 = [v35 emailAddressValue];
  v37 = [v36 displayName];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = [v35 stringValue];
  }

  v40 = v39;

  v41 = [v40 length];
  v42 = v41 == [v35 length];

  if (v42)
  {
    v43 = [v71 accountProxyContainingEmailAddress:v35 includingInactive:0 originatingBundleID:v72 sourceAccountManagement:v5];
    v44 = v43;
    v69 = v43;
    if (!v43)
    {
LABEL_50:

      goto LABEL_51;
    }

    v68 = [v43 fullUserName];
    v67 = [v44 fromEmailAddresses];
    if ([v67 count])
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v67;
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
            v49 = [v48 emailAddressValue];
            v50 = [v35 emailAddressValue];
            v51 = [v49 compare:v50] == 0;

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
    v53 = [v35 emailAddressValue];
    v54 = [v53 displayName];
    v55 = v54;
    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = [v35 stringValue];
    }

    v57 = v56;

    v58 = [v57 length];
    if (v58 == [v35 length])
    {
      v59 = [v68 length] == 0;

      if (v59)
      {
LABEL_49:

        goto LABEL_50;
      }

      v60 = MEMORY[0x1E699B248];
      v61 = [v35 emailAddressValue];
      v57 = [v60 componentsWithEmailAddress:v61];

      [v57 setDisplayName:v68];
      v62 = [v57 stringValue];

      v35 = v62;
    }

    goto LABEL_49;
  }

LABEL_51:
  if ([v35 length])
  {
    v63 = [MEMORY[0x1E695DEC8] arrayWithObject:v35];
    [v8 setAddressListForSender:v63];
  }

  v64 = [MEMORY[0x1E695DF00] date];
  v65 = [v64 ec_descriptionForMimeHeaders];
  [v8 setHeader:v65 forKey:*MEMORY[0x1E699B0D8]];

  return v8;
}

+ (void)_sanitizeRecipientsForComposeType:(unint64_t)a3 sendingAddress:(id)a4 delegate:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 toRecipients];
  v10 = [v8 ccRecipients];
  v11 = [v8 bccRecipients];
  v12 = [[MFMailRecipients alloc] initWithToRecipients:v9 ccRecipients:v10 bccRecipients:v11];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__MFComposeTypeFactory__sanitizeRecipientsForComposeType_sendingAddress_delegate___block_invoke;
  v23[3] = &unk_1E806D570;
  v13 = v8;
  v24 = v13;
  if ([(MFMailRecipients *)v12 sanitizeForComposeType:a3 sendingEmailAddress:v7 hideMyEmailAddressProvider:v23])
  {
    v14 = [(MFMailRecipients *)v12 toRecipients];
    v15 = [v14 isEqualToArray:v9];

    if ((v15 & 1) == 0)
    {
      v16 = [(MFMailRecipients *)v12 toRecipients];
      [v13 setToRecipients:v16];
    }

    v17 = [(MFMailRecipients *)v12 ccRecipients];
    v18 = [v17 isEqualToArray:v10];

    if ((v18 & 1) == 0)
    {
      v19 = [(MFMailRecipients *)v12 ccRecipients];
      [v13 setCcRecipients:v19];
    }

    v20 = [(MFMailRecipients *)v12 bccRecipients];
    v21 = [v20 isEqualToArray:v11];

    if ((v21 & 1) == 0)
    {
      v22 = [(MFMailRecipients *)v12 bccRecipients];
      [v13 setBccRecipients:v22];
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
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 BOOLForKey:*MEMORY[0x1E699AB48]];

  return v3;
}

+ (id)bccSelfAddressForDelegate:(id)a3
{
  v3 = MEMORY[0x1E69B16A8];
  v4 = [a3 sendingEmailAddress];
  v5 = [v3 accountContainingEmailAddress:v4 includingInactive:1];

  v6 = v5;
  if (v5 || ([MEMORY[0x1E69B16A8] defaultMailAccountForDelivery], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [v6 emailAddressStrings];
    v8 = [v7 firstObject];

    v9 = [v6 fullUserName];
    v10 = MEMORY[0x1E699B248];
    v11 = [v8 emailAddressValue];
    v12 = [v10 componentsWithEmailAddress:v11];

    [v12 setDisplayName:v9];
    v13 = [v12 stringValue];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)_mergeModel:(id)a3 withDelegate:(id)a4
{
  v30 = a3;
  v5 = a4;
  v6 = [v30 toRecipients];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 toRecipients];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v5 toRecipients];
      v11 = [v10 mutableCopy];

      v12 = [v30 toRecipients];
      [v11 addObjectsFromArray:v12];
    }

    else
    {
      v11 = [v30 toRecipients];
    }

    [v5 setToRecipients:v11];
  }

  v13 = [v30 ccRecipients];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v5 ccRecipients];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [v5 ccRecipients];
      v18 = [v17 mutableCopy];

      v19 = [v30 ccRecipients];
      [v18 addObjectsFromArray:v19];
    }

    else
    {
      v18 = [v30 ccRecipients];
    }

    [v5 setCcRecipients:v18];
  }

  v20 = [v30 bccRecipients];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [v5 bccRecipients];
    v23 = [v22 count];

    if (v23)
    {
      v24 = [v5 bccRecipients];
      v25 = [v24 mutableCopy];

      v26 = [v30 bccRecipients];
      [v25 addObjectsFromArray:v26];
    }

    else
    {
      v25 = [v30 bccRecipients];
    }

    [v5 setBccRecipients:v25];
  }

  v27 = [v30 subject];
  v28 = [v27 length];

  if (v28)
  {
    v29 = [v30 subject];
    [v5 setSubject:v29];
  }
}

+ (void)_updateDelegate:(id)a3 toRecipients:(id)a4 ccRecipients:(id)a5 bccRecipients:(id)a6
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v9 count])
  {
    v12 = [v18 toRecipients];
    v13 = __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke(v12, v12, v9);
    [v18 setToRecipients:v13];
  }

  if ([v10 count])
  {
    v14 = [v18 ccRecipients];
    v15 = __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke(v14, v14, v10);
    [v18 setCcRecipients:v15];
  }

  if ([v11 count])
  {
    v16 = [v18 bccRecipients];
    v17 = __80__MFComposeTypeFactory__updateDelegate_toRecipients_ccRecipients_bccRecipients___block_invoke(v16, v16, v11);
    [v18 setBccRecipients:v17];
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

+ (void)_setupForReplyWithModel:(id)a3 delegate:(id)a4
{
  v105[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v83 = a1;
  [a1 _mergeModel:v6 withDelegate:v7];
  v86 = [v6 legacyMessage];
  v87 = [v86 headersIfAvailable];
  v8 = [v86 mailbox];
  v9 = [v8 account];
  v84 = [v9 emailAddressStrings];

  v10 = [v86 firstSender];
  v11 = [v10 emailAddressValue];
  v12 = [v11 simpleAddress];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v10 stringValue];
  }

  v15 = v14;

  v16 = [v84 containsObject:v15];
  if (v16)
  {
    v17 = [v87 copyAddressListForReplyTo];
    v18 = [v17 ef_map:&__block_literal_global_94];
    v19 = [v18 copy];

    v20 = [v86 to];
    v21 = [v20 ef_map:&__block_literal_global_96];
    v22 = [v21 copy];

    v23 = [v86 firstSender];
    v24 = [v86 firstSender];
    [v7 setSendingEmailAddress:v24];

    v25 = [v19 count];
    v26 = v19;
    if (v25 || (([v22 ef_map:&__block_literal_global_98], v27 = objc_claimAutoreleasedReturnValue(), v28 = v23, objc_msgSend(v28, "emailAddressValue"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "simpleAddress"), v30 = objc_claimAutoreleasedReturnValue(), (v31 = v30) == 0) ? (objc_msgSend(v28, "stringValue"), v32 = objc_claimAutoreleasedReturnValue()) : (v32 = v30), v38 = v32, v31, v29, v28, v39 = objc_msgSend(v27, "containsObject:", v38), v38, v27, v26 = v22, !v39))
    {
      [v7 setToRecipients:v26];
    }

    else
    {
      v105[0] = v28;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];
      [v7 setToRecipients:v40];
    }
  }

  else
  {
    v33 = [v87 copyAddressListForReplyTo];
    if ([v33 count])
    {
      v34 = v33;
    }

    else
    {
      v35 = [v7 toRecipients];
      v36 = [v35 count];

      if (v36)
      {
        v34 = 0;
      }

      else
      {
        v37 = [v87 copyAddressListForReplyTo];
        if ([v37 count])
        {
          v34 = v37;
        }

        else
        {
          v41 = [v86 senders];

          v34 = v41;
        }
      }
    }

    [v83 _updateDelegate:v7 toRecipients:v34 ccRecipients:0 bccRecipients:0];
  }

  v42 = [v7 subject];
  if ([v42 length])
  {
    v43 = 1;
  }

  else
  {
    v43 = v86 == 0;
  }

  v44 = !v43;

  if (v44)
  {
    v45 = [v86 subject];
    v46 = [v45 subjectWithoutPrefix];
    v47 = [MEMORY[0x1E699B330] nonLocalizedReplyPrefix];
    v48 = _subjectWithPrefix(v46, v47);

    [v7 setSubject:v48];
  }

  v49 = [v87 firstHeaderForKey:*MEMORY[0x1E699B130]];
  v50 = v49;
  if (v49)
  {
    v85 = v49;
  }

  else
  {
    v85 = [v87 firstHeaderForKey:*MEMORY[0x1E699B108]];
  }

  v51 = *MEMORY[0x1E699B0E8];
  v52 = [v87 firstHeaderForKey:*MEMORY[0x1E699B0E8]];
  v81 = [v6 originalMessage];
  v53 = [v81 objectID];
  v82 = [v53 serializedRepresentation];

  v54 = [v87 references];
  v55 = v54;
  if (v50)
  {
    if (v54)
    {
      v56 = [v54 arrayByAddingObject:v50];

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

    if (v82)
    {
      v59 = [v82 base64EncodedDataWithOptions:0];
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

    [v7 setSavedHeaders:v58];
  }

  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__2;
  v103 = __Block_byref_object_dispose__2;
  v104 = 0;
  v60 = [v87 copyAddressListForTo];
  v61 = v60;
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
      v66 = [v62 simpleAddress];
    }

    else
    {
      v66 = 0;
    }

    v98 = v66;
    v69 = [MEMORY[0x1E699ACD8] sharedInstance];
    v70 = v94[5];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __57__MFComposeTypeFactory__setupForReplyWithModel_delegate___block_invoke_119;
    v88[3] = &unk_1E806D5B8;
    v89 = v52;
    v91 = &v93;
    v90 = v7;
    v92 = &v99;
    [v69 isHideMyEmailAddressValid:v70 completion:v88];

    _Block_object_dispose(&v93, 8);
    goto LABEL_64;
  }

  if ([v60 count])
  {
    v67 = MEMORY[0x1E699B240];
    v68 = [v61 firstObject];
    v62 = [v67 emailAddressWithString:v68];
  }

  else
  {
    v62 = 0;
  }

  v71 = [v62 displayName];
  if ([v71 isEqualToString:@"Hide My Email"])
  {
    v72 = [v62 domain];
    v73 = [v72 isEqualToString:@"icloud.com"];

    if (v73)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v74 = [v86 preferredEmailAddressToReplyWith];
  v75 = v100[5];
  v100[5] = v74;

  v76 = v100[5];
  if (!v76)
  {
    v77 = [v6 preferredSendingEmailAddress];
    v78 = v100[5];
    v100[5] = v77;

    v76 = v100[5];
  }

  [v7 setSendingEmailAddress:v76];
LABEL_64:
  if ([v6 isQuickReply])
  {
    [v7 setIsQuickReply:1];
  }

  v79 = [v7 composeWebView];
  if (v79)
  {
    [v83 _quoteFromModel:v6 delegate:v7];
  }

  if ([v6 composeType] == 4 || objc_msgSend(v6, "composeType") == 5)
  {
    v80 = [v6 composeType];
    [v83 _sanitizeRecipientsForComposeType:v80 sendingAddress:v100[5] delegate:v7];
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

+ (void)_setupForForwardWithModel:(id)a3 delegate:(id)a4
{
  v24 = a3;
  v6 = a4;
  [a1 _mergeModel:v24 withDelegate:v6];
  v7 = [v24 legacyMessage];
  v8 = [v6 subject];
  v9 = [v8 length];

  if (!v9 && v7)
  {
    v10 = [v7 subject];
    v11 = [v10 subjectWithoutPrefix];
    v12 = [MEMORY[0x1E699B330] nonLocalizedForwardPrefix];
    v13 = _subjectWithPrefix(v11, v12);

    [v6 setSubject:v13];
  }

  v14 = [v24 originalMessage];
  v15 = [v14 objectID];
  v16 = [v15 serializedRepresentation];

  v17 = [v7 headersIfAvailable];
  v18 = [v17 firstHeaderForKey:*MEMORY[0x1E699B130]];
  if (v18)
  {
    v19 = objc_alloc_init(MEMORY[0x1E69AD740]);
    v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v18];
    [v19 setReferences:v20];

    if (v16)
    {
      v21 = [v16 base64EncodedDataWithOptions:0];
      [v19 setHeader:v21 forKey:*MEMORY[0x1E69AD610]];
    }

    [v6 setSavedHeaders:v19];
  }

  v22 = [v7 preferredEmailAddressToReplyWith];
  if (!v22)
  {
    v22 = [v24 preferredSendingEmailAddress];
  }

  [v6 setSendingEmailAddress:v22];
  v23 = [v6 composeWebView];
  if (v23)
  {
    [a1 _quoteFromModel:v24 delegate:v6];
  }

  [a1 _sanitizeRecipientsForComposeType:objc_msgSend(v24 sendingAddress:"composeType") delegate:{v22, v6}];
}

+ (void)_setupForReplyAllWithModel:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v6 = a4;
  [a1 _setupForReplyWithModel:v7 delegate:v6];
  [a1 setupSwitchToReplyAllWithModel:v7 delegate:v6];
}

+ (void)setupSwitchToReplyAllWithModel:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v45 = v6;
  v8 = [v6 legacyMessage];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [v8 to];
  v11 = [v8 cc];
  v12 = [MEMORY[0x1E695DFA8] ec_emailAddressConvertiblesSetFromArray:v10 includeInvalid:1];
  v13 = MEMORY[0x1E695DFA8];
  v43 = v12;
  v14 = [v7 toRecipients];
  v42 = [v13 ec_emailAddressConvertiblesSetFromArray:v14 includeInvalid:1];

  v15 = [v8 mailbox];
  v16 = [v15 account];
  v44 = [v16 emailAddressStrings];
  v41 = a1;

  v17 = [v8 firstSender];
  v18 = [v17 emailAddressValue];
  v19 = [v18 simpleAddress];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v17 stringValue];
  }

  v22 = v21;

  v23 = [v7 savedHeaders];
  v24 = [v23 headersForKey:*MEMORY[0x1E699B0F8]];

  if (![v44 containsObject:v22])
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
      v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [v27 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
      v22 = v28 = v22;
    }

    else
    {
      v29 = [v8 preferredEmailAddressToReplyWith];

      if (!v29)
      {
        v29 = [v45 preferredSendingEmailAddress];
      }

      v30 = v29;
      v31 = [v30 emailAddressValue];
      v32 = [v31 simpleAddress];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = [v30 stringValue];
      }

      v35 = v34;

      v28 = v30;
      v27 = v30;
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
    v25 = [v7 toRecipients];
    v26 = [v25 ef_map:&__block_literal_global_123];
    [v43 addObjectsFromArray:v26];

    v27 = [v43 allObjects];
    v28 = [v27 ef_map:&__block_literal_global_125];
    [v46 addObjectsFromArray:v28];
LABEL_23:
  }

  v36 = [[MFMailRecipients alloc] initWithToRecipients:v46 ccRecipients:v9 bccRecipients:0];
  v37 = [v45 composeType];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __64__MFComposeTypeFactory_setupSwitchToReplyAllWithModel_delegate___block_invoke_3;
  v47[3] = &unk_1E806D570;
  v38 = v7;
  v48 = v38;
  [(MFMailRecipients *)v36 sanitizeForComposeType:v37 sendingEmailAddress:v22 hideMyEmailAddressProvider:v47];
  v39 = [(MFMailRecipients *)v36 toRecipients];
  v40 = [(MFMailRecipients *)v36 ccRecipients];
  [v41 _updateDelegate:v38 toRecipients:v39 ccRecipients:v40 bccRecipients:0];
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

+ (void)setupSwitchToReplyWithModel:(id)a3 delegate:(id)a4
{
  v4 = a4;
  [v4 setCcRecipients:0];
  [v4 setBccRecipients:0];
}

+ (void)_setupForNewMessageWithModel:(id)a3 delegate:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v37 = a1;
  [a1 _mergeModel:v7 withDelegate:v8];
  v38 = [v7 preferredSendingEmailAddress];
  v9 = [v7 hideMyEmailFrom];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v7 hideMyEmailFrom];
    [v8 setHideMyEmailAddressForMailToURLAddressString:v11];

    v12 = [v7 hideMyEmailFrom];

    v13 = v12;
  }

  else
  {
    v13 = v38;
  }

  v39 = v13;
  [v8 setSendingEmailAddress:?];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v15 = [v8 contentVariationIndex], v15 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v20 = [v7 contentVariations];
    v21 = [v20 objectAtIndexedSubscript:v15];

    v36 = v21;
    v22 = [v21 body];
    v23 = +[_MFMailCompositionContext processMessageBody:asHTML:](_MFMailCompositionContext, "processMessageBody:asHTML:", v22, [v21 bodyIsHTML]);

    v35 = v23;
    if (v23)
    {
      [v14 addObject:v23];
    }

    v24 = [v7 attachmentContext];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = [v36 attachmentIdentifiers];
    v34 = a2;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
            objc_enumerationMutation(v25);
          }

          v29 = [v24 attachmentForHostIdentifier:*(*(&v40 + 1) + 8 * v28)];
          if (v29)
          {
            [v14 addObject:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E696AAA8] currentHandler];
            [v30 handleFailureInMethod:v34 object:v37 file:@"MFComposeTypeFactory.m" lineNumber:886 description:@"Unexpected found nil attachment for host identifier."];
          }

          ++v28;
        }

        while (v26 != v28);
        v31 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
        v26 = v31;
      }

      while (v31);
    }
  }

  else
  {
    v16 = [v7 messageBody];
    if (v16)
    {
      [v14 addObject:v16];
    }

    v17 = [v7 deferredAttachments];
    v18 = [v17 count];

    if (!v18)
    {
      v19 = [v7 attachments];
      [v14 addObjectsFromArray:v19];
    }
  }

  [v37 _setContent:v14 includeAttachments:1 shouldQuote:0 prependBlankLine:1 delegate:v8 signpostID:{objc_msgSend(v7, "signpostID")}];
  if (objc_opt_respondsToSelector())
  {
    [v8 addSignature:0];
  }

  if ([v7 originatingFromAttachmentMarkup])
  {
    v32 = [v7 legacyMessage];
    v33 = [v32 preferredEmailAddressToReplyWith];
    if (!v33)
    {
      v33 = [v7 preferredSendingEmailAddress];
    }

    [v8 setSendingEmailAddress:v33];
  }

  [v37 _sanitizeRecipientsForComposeType:objc_msgSend(v7 sendingAddress:"composeType") delegate:{v39, v8}];
}

+ (void)addAttachment:(id)a3 prepend:(BOOL)a4 withCompositionModel:(id)a5 delegate:(id)a6
{
  v8 = a4;
  v15 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v8 && [v10 composeType] == 0;
  v13 = [a1 _markupForInlineAttachment:v15 willBeIncluded:1 prependBlankLine:v12 delegate:v11];
  if ([v13 length])
  {
    [v11 composeWebView];
    if (v8)
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
  v3 = [v2 intValue];

  return v3;
}

+ (void)setupWithCompositionModel:(id)a3 delegate:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 composeType];
  if (v8 > 4)
  {
    if (v8 == 5)
    {
      [a1 _setupForReplyAllWithModel:v6 delegate:v7];
      goto LABEL_13;
    }

    if (v8 == 6)
    {
      [a1 _setupForForwardWithModel:v6 delegate:v7];
      goto LABEL_13;
    }
  }

  else
  {
    if (!v8)
    {
      [a1 _setupForNewMessageWithModel:v6 delegate:v7];
      goto LABEL_13;
    }

    if (v8 == 4)
    {
      [a1 _setupForReplyWithModel:v6 delegate:v7];
      goto LABEL_13;
    }
  }

  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [v6 composeType];
    _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled composition case: %ld", &v10, 0xCu);
  }

LABEL_13:
}

+ (void)setupWithContent:(id)a3 delegate:(id)a4 signpostID:(unint64_t)a5
{
  v12 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v12;
  }

  else
  {
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
  }

  v10 = v9;
  [a1 _setContent:v9 includeAttachments:1 shouldQuote:0 prependBlankLine:0 delegate:v8 signpostID:a5];
  v11 = [v8 composeWebView];
  [v11 addMailAttributesBeforeDisplayHidingTrailingEmptyQuotes:1 shouldQuote:0];
}

+ (id)messageFromDelegate:(id)a3 withSubstituteDOMDocument:(id)a4 compositionSpecification:(id)a5 originatingBundleID:(id)a6 sourceAccountManagement:(int)a7 writeAttachmentPlaceholders:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  if (pthread_main_np() != 1)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"MFComposeTypeFactory.m" lineNumber:976 description:@"Current thread must be main"];
  }

  v17 = [v14 composeWebView];
  v18 = [v14 shouldCreateRichTextRepresentation];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __167__MFComposeTypeFactory_messageFromDelegate_withSubstituteDOMDocument_compositionSpecification_originatingBundleID_sourceAccountManagement_writeAttachmentPlaceholders___block_invoke;
  v26[3] = &unk_1E806D650;
  v31 = a1;
  v19 = v14;
  v27 = v19;
  v20 = v16;
  v28 = v20;
  v32 = a7;
  v21 = v15;
  v29 = v21;
  v33 = a8;
  v22 = v17;
  v30 = v22;
  v23 = [v18 then:v26];

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

+ (id)messageFromDelegate:(id)a3 originatingBundleID:(id)a4 sourceAccountManagement:(int)a5
{
  v5 = [a1 messageFromDelegate:a3 withSubstituteDOMDocument:0 compositionSpecification:0 originatingBundleID:a4 sourceAccountManagement:*&a5 writeAttachmentPlaceholders:0];

  return v5;
}

+ (void)hijackThreadFromDelegate:(id)a3
{
  v4 = a3;
  v3 = [v4 savedHeaders];
  [v3 removeHeaderForKey:*MEMORY[0x1E699B108]];
  [v3 setReferences:0];
  [v4 setSavedHeaders:v3];
}

+ (id)subjectFromSubject:(id)a3 withComposeType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if ((a4 - 4) < 2)
  {
    v7 = [MEMORY[0x1E699B330] nonLocalizedReplyPrefix];
    v8 = _subjectWithPrefix(v6, v7);
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  if (a4 == 6)
  {
    v7 = [MEMORY[0x1E699B330] nonLocalizedForwardPrefix];
    v8 = _subjectWithPrefix(v6, v7);
    goto LABEL_5;
  }

  v9 = v5;
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