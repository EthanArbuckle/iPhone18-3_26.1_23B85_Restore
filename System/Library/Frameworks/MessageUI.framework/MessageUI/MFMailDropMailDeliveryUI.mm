@interface MFMailDropMailDeliveryUI
- (BOOL)updateMessageWithAttachmentsSynchronously;
- (id)_contentForAttachmentPassingTest:(id)a3;
- (id)_headersByAddingMailDropHeaders:(id)a3;
- (id)_mailDropAttachmentHTMLStringForAttachment:(id)a3;
- (id)_mailDropBannerHTMLString;
- (id)_scaleImages:(id)a3 toFit:(unint64_t)a4 resultingSize:(unint64_t *)a5;
- (id)contentForContentID:(id)a3;
- (id)contentForPlaceholder:(id)a3;
- (id)contentForURL:(id)a3;
- (id)deliverSynchronouslyWithCompletion:(id)a3;
- (id)scaledImages:(id)a3;
@end

@implementation MFMailDropMailDeliveryUI

- (id)_scaleImages:(id)a3 toFit:(unint64_t)a4 resultingSize:(unint64_t *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v8 = [(MFOutgoingMessageDelivery *)self attachmentContext];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69B15C8]);
    [(MFOutgoingMessageDelivery *)self setAttachmentContext:v9];
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v21;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  v20 = a5;
  v12 = 0;
  if (v11)
  {
    v13 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [(MFOutgoingMessageDelivery *)self attachmentContext];
        v17 = [v16 contextID];
        v18 = [v15 scaledImageToFit:a4 saveScaledImage:1 attachmentContextID:v17];

        if (v18)
        {
          [v10 addObject:v18];
          v12 += [v18 scaledFileSize];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  *v20 = v12;

  return v10;
}

- (id)scaledImages:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B15B8] currentMessageLimit];
  v11 = 0;
  v6 = [(MFMailDropMailDeliveryUI *)self _scaleImages:v4 toFit:2 resultingSize:&v11];
  v7 = v11;
  if (v11 > v5)
  {
    v8 = [(MFMailDropMailDeliveryUI *)self _scaleImages:v6 toFit:1 resultingSize:&v11];

    v7 = v11;
    v6 = v8;
  }

  if (v7 > v5)
  {
    v9 = EMLogMailDrop();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MFMailDropMailDeliveryUI *)&v11 scaledImages:v5, v9];
    }
  }

  return v6;
}

- (id)deliverSynchronouslyWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = EMLogMailDrop();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Starting delivery of message with MailDrop", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = MFMailDropMailDeliveryUI;
  v6 = [(MFMailDropMailDelivery *)&v20 deliverSynchronouslyWithCompletion:v4];
  if ([v6 status])
  {
    p_super = EMLogMailDrop();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 status];
      *buf = 134217984;
      v22 = v8;
      _os_log_impl(&dword_1BE819000, p_super, OS_LOG_TYPE_DEFAULT, "Delivery of Mail Drop message failed with error: %lu", buf, 0xCu);
    }
  }

  else
  {
    v9 = EMLogMailDrop();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_DEFAULT, "Delivery of Mail Drop message succeeded. Removing placeholder message.", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(MFPlaceholderMessageRewriter *)self->_rewriter rewrittenMessageContent];
    v11 = [v10 placeholders];

    v12 = [v11 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [MEMORY[0x1E69B15D8] removePlaceholder:*(*(&v16 + 1) + 8 * i)];
        }

        v12 = [v11 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v12);
    }

    p_super = &self->_rewriter->super;
    self->_rewriter = 0;
  }

  return v6;
}

- (id)_headersByAddingMailDropHeaders:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29 = [v28 mutableCopy];
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [(MFMailDropMailDelivery *)self attachments];
  v30 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v6 = [(MFMailDropMailDelivery *)self imageArchiveMetadata];

  if (v6)
  {
    v7 = [(MFMailDropMailDelivery *)self imageArchiveMetadata];
    v8 = [v7 directUrlString];
    [v29 setHeader:v8 forKey:*MEMORY[0x1E699B100]];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(MFMailDropMailDelivery *)self attachments];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v32 = 0;
    v33 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 mailDropMetadata];
        v13 = [v12 directUrl];
        if (v13)
        {
          v14 = [v11 mailDropMetadata];
          v15 = [v14 isPhotoArchive];

          if ((v15 & 1) == 0)
          {
            v16 = MEMORY[0x1E696AEC0];
            v17 = [v11 mailDropMetadata];
            v18 = [v17 directUrlString];
            v19 = [v11 fileName];
            v20 = [v11 mimeType];
            v21 = [v11 decodedFileSize];
            v22 = [v11 mailDropMetadata];
            v23 = [v22 expiration];
            [v23 timeIntervalSince1970];
            v25 = [v16 stringWithFormat:@"%@ filename=%@; mimeType=%@; filesize=%lu; expiration-date=%f", v18, v19, v20, v21, v24];;

            v32 = v25;
            [v30 addObject:v25];
          }
        }

        else
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  else
  {
    v32 = 0;
  }

  if ([v30 count])
  {
    [v29 setHeader:v30 forKey:*MEMORY[0x1E699B148]];
  }

  v26 = v29;

  return v29;
}

- (id)_mailDropAttachmentHTMLStringForAttachment:(id)a3
{
  v17 = a3;
  v16 = [v17 fileName];
  v3 = [v17 mailDropMetadata];
  v4 = [v17 decodedFileSize];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [v3 directUrlString];
  v15 = [v3 expiration];
  [v15 timeIntervalSince1970];
  v8 = v7;
  v9 = [v3 wrappedUrlString];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"MAIL_DROP_DOWNLOADABLE" value:&stru_1F3CF3758 table:@"Main"];
  v12 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v4];
  v13 = [v5 initWithFormat:*MEMORY[0x1E699A780], v6, v16, v4, v8 * 1000.0, v9, v11, v16, v12];

  return v13;
}

- (id)_contentForAttachmentPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(MFMailDropMailDelivery *)self attachments];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__MFMailDropMailDeliveryUI__contentForAttachmentPassingTest___block_invoke;
  v13[3] = &unk_1E806FDE8;
  v6 = v4;
  v14 = v6;
  v7 = [v5 indexOfObjectPassingTest:v13];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(MFMailDropMailDelivery *)self attachments];
    v10 = [v9 objectAtIndex:v7];

    if ([v10 isMailDrop])
    {
      v11 = [(MFMailDropMailDeliveryUI *)self _mailDropAttachmentHTMLStringForAttachment:v10];
    }

    else
    {
      v11 = v10;
    }

    v8 = v11;
  }

  return v8;
}

uint64_t __61__MFMailDropMailDeliveryUI__contentForAttachmentPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

- (id)contentForURL:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__MFMailDropMailDeliveryUI_contentForURL___block_invoke;
  v8[3] = &unk_1E806DC70;
  v9 = v4;
  v5 = v4;
  v6 = [(MFMailDropMailDeliveryUI *)self _contentForAttachmentPassingTest:v8];

  return v6;
}

uint64_t __42__MFMailDropMailDeliveryUI_contentForURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 url];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)contentForContentID:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MFMailDropMailDeliveryUI_contentForContentID___block_invoke;
  v8[3] = &unk_1E806DC70;
  v9 = v4;
  v5 = v4;
  v6 = [(MFMailDropMailDeliveryUI *)self _contentForAttachmentPassingTest:v8];

  return v6;
}

uint64_t __48__MFMailDropMailDeliveryUI_contentForContentID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)contentForPlaceholder:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__MFMailDropMailDeliveryUI_contentForPlaceholder___block_invoke;
  v8[3] = &unk_1E806DC70;
  v9 = v4;
  v5 = v4;
  v6 = [(MFMailDropMailDeliveryUI *)self _contentForAttachmentPassingTest:v8];

  return v6;
}

uint64_t __50__MFMailDropMailDeliveryUI_contentForPlaceholder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentID];
  v4 = [*(a1 + 32) contentID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)updateMessageWithAttachmentsSynchronously
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69B16D0];
  v4 = MEMORY[0x1E69B16C0];
  v5 = MEMORY[0x1E69B16E0];
  v49 = v3;
  if (*(&self->super.super.super.isa + v3))
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B1658]);
    v7 = v3;
    v8 = v6;
    [v6 setLibraryMessage:*(&self->super.super.super.isa + v7)];
  }

  else
  {
    v9 = *MEMORY[0x1E69B16C8];
    if (*(&self->super.super.super.isa + v9))
    {
      v8 = objc_alloc_init(MEMORY[0x1E69B1668]);
      [v8 setHeaders:*(&self->super.super.super.isa + *v4)];
      v10 = [*(&self->super.super.super.isa + v9) string];
      [v8 setHtmlBody:v10];

      [v8 setPlaintextAlternative:*(&self->super.super.super.isa + *MEMORY[0x1E69B16E8])];
      [v8 setMixedContent:*(&self->super.super.super.isa + *v5)];
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v11 = *MEMORY[0x1E69B16E0];
      v12 = *(&self->super.super.super.isa + v11);
      v13 = [v12 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v13)
      {
        v14 = *v51;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v51 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v50 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v16;
              goto LABEL_15;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v50 objects:v55 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      v8 = objc_alloc_init(MEMORY[0x1E69B1670]);
      [v8 setHeaders:*(&self->super.super.super.isa + *v4)];
      [v8 setPlaintextAlternative:v13];
      [v8 setMixedContent:*(&self->super.super.super.isa + v11)];
      [v8 setTextPartsAreHTML:*(&self->super.super.super.isa + *MEMORY[0x1E69B16F0])];
    }
  }

  v17 = [[MFPlaceholderMessageRewriter alloc] initWithOriginalMessageContent:v8 resolver:self];
  rewriter = self->_rewriter;
  self->_rewriter = v17;

  v19 = *v4;
  v20 = *(&self->super.super.super.isa + v19);
  if (!v20)
  {
    v21 = [MFComposeTypeFactory headersFromDelegate:self->_rewriter];
    v22 = *(&self->super.super.super.isa + v19);
    *(&self->super.super.super.isa + v19) = v21;

    v20 = *(&self->super.super.super.isa + v19);
  }

  v23 = [(MFMailDropMailDeliveryUI *)self _headersByAddingMailDropHeaders:v20];
  v24 = *(&self->super.super.super.isa + v19);
  *(&self->super.super.super.isa + v19) = v23;

  v25 = [(MFPlaceholderMessageRewriter *)self->_rewriter rewrittenMessageContent];
  v26 = [(MFMailDropMailDeliveryUI *)self _mailDropBannerHTMLString];
  v27 = [v25 richtextContent];
  v28 = [v27 plaintextAlternative];

  if (v28)
  {
    v29 = [v27 plaintextAlternative];
    v30 = *MEMORY[0x1E69B16E8];
    v31 = *(&self->super.super.super.isa + v30);
    *(&self->super.super.super.isa + v30) = v29;
  }

  v32 = [v27 mixedContent];
  v33 = [v27 multipartContent];

  if (v33)
  {
    v34 = [v25 multipartContent];
    v35 = [v34 htmlBody];
    v36 = MEMORY[0x1E699B288];
    v37 = [v26 stringByAppendingString:v35];
    v38 = [v36 mf_utf8HTMLStringWithString:v37];
    v39 = *MEMORY[0x1E69B16C8];
    v40 = *(&self->super.super.super.isa + v39);
    *(&self->super.super.super.isa + v39) = v38;
  }

  else
  {
    v34 = [MEMORY[0x1E699B288] mf_utf8HTMLStringWithString:v26];
    v54 = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    [v35 arrayByAddingObjectsFromArray:v32];
    v32 = v37 = v32;
  }

  v41 = *MEMORY[0x1E69B16E0];
  v42 = *(&self->super.super.super.isa + v41);
  *(&self->super.super.super.isa + v41) = v32;

  v43 = *MEMORY[0x1E69B16D8];
  v44 = *(&self->super.super.super.isa + v43);
  *(&self->super.super.super.isa + v43) = 0;

  v45 = *(&self->super.super.super.isa + v49);
  *(&self->super.super.super.isa + v49) = 0;

  v46 = *MEMORY[0x1E69B16B8];
  v47 = *(&self->super.super.super.isa + v46);
  *(&self->super.super.super.isa + v46) = 0;

  return 1;
}

- (id)_mailDropBannerHTMLString
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = [(MFMailDropMailDelivery *)self imageArchiveMetadata];
  if (!v4)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [(MFMailDropMailDelivery *)self attachments];
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v6)
    {
      v7 = *v35;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        if ([v9 isMailDrop])
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v11 = [v9 mailDropMetadata];

      v4 = v11;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_10:

LABEL_11:
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"MFMailDropMailDeliveryUI.m" lineNumber:276 description:@"attempt to send a mail drop email without any mail drop attachments"];

      v4 = 0;
    }
  }

  v33 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v33 setTimeStyle:0];
  [v33 setDateStyle:2];
  v12 = MEMORY[0x1E696AEC0];
  if ([v4 isPhotoArchive])
  {
    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [v32 localizedStringForKey:@"MAIL_DROP_DOWNLOAD_IMAGES" value:&stru_1F3CF3758 table:@"Main"];
  }

  else
  {
    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [v32 localizedStringForKey:@"MAIL_DROP_DOWNLOAD_ATTACHMENT" value:&stru_1F3CF3758 table:@"Main"];
  }
  v13 = ;
  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"MAIL_DROP_AVAILABLE_UNTIL %@" value:&stru_1F3CF3758 table:@"Main"];
  v17 = [v4 expiration];
  v18 = [v33 stringFromDate:v17];
  v19 = [v14 stringWithFormat:v16, v18];
  v20 = [v12 stringWithFormat:@"<div style=font: 13px 'Helvetica Neue', sans-serif color: rgb(128, 128, 128); font-weight: 300><div style=height:0px; border-top:1px solid #ececec;></div><div style=overflow: auto;><div style=float:left; margin-right: 62px;><div style=height:25px; display:table-cell; vertical-align:bottom>%@</div><div></div><div style=height:19px; display:table-cell; vertical-align:bottom>%@</div></div><div style=float: right; width: 62px; margin-left:-62px><div class=maildrop_icon></div></div></div><div style=height:0px; border-top:1px solid #ececec; margin-bottom: 15px></div></div>", v13, v19, @"div.maildrop_icon {background-image: url('https://www.icloud.com/mail_resources/icloud_download.png');background-repeat: no-repeat;display: inline-block;margin: 15px 18px 13px 18px;height: 25px;width: 26px;}@media(-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi) {div.maildrop_icon {background-image: url('https://www.icloud.com/mail_resources/icloud_download@2x.png');background-size: 25px 26px;}}"];;

  v21 = MEMORY[0x1E696AEC0];
  v22 = [v4 wrappedUrlString];
  v23 = MEMORY[0x1E696AEC0];
  v24 = [v4 expiration];
  [v24 timeIntervalSince1970];
  v26 = [v23 stringWithFormat:@"%f", v25 * 1000.0];
  v27 = [v4 directUrlString];
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v4, "fileSize")];
  v29 = [v21 stringWithFormat:@"<a href=%@ class=%@ data-expiration=%@ data-url=%@ data-size=%@>%@</a>", v22, *MEMORY[0x1E699A788], v26, v27, v28, v20];

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<style type=text/css>%@</style><html><body>%@</body></html>", @"div.maildrop_icon {background-image: url('https://www.icloud.com/mail_resources/icloud_download.png')background-repeat: no-repeat;display: inline-block;margin: 15px 18px 13px 18px;height: 25px;width: 26px;}@media(-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi) {div.maildrop_icon {background-image: url('https://www.icloud.com/mail_resources/icloud_download@2x.png');background-size: 25px 26px;}}", v29];;

  return v30;
}

- (void)scaledImages:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "MailDrop could not scale images to fit within the current message limit. (%lu / %lu)", &v4, 0x16u);
}

@end