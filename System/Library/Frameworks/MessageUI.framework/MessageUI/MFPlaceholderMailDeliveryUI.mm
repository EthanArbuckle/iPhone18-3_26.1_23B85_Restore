@interface MFPlaceholderMailDeliveryUI
- (MFPlaceholderMailDeliveryUI)initWithMessage:(id)a3;
- (id)_attachmentsContextID;
- (id)contentForContentID:(id)a3;
- (id)contentForPlaceholder:(id)a3;
- (id)contentForURL:(id)a3;
- (id)deliverSynchronouslyWithCompletion:(id)a3;
@end

@implementation MFPlaceholderMailDeliveryUI

- (MFPlaceholderMailDeliveryUI)initWithMessage:(id)a3
{
  v17 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69B1658]);
  [v4 setLibraryMessage:v17];
  v5 = [[MFPlaceholderMessageRewriter alloc] initWithOriginalMessageContent:v4 resolver:self];
  v6 = [MFComposeTypeFactory headersFromDelegate:v5];
  v7 = [(MFPlaceholderMessageRewriter *)v5 rewrittenMessageContent];
  v8 = [v7 multipartContent];

  if (v8)
  {
    v9 = [v7 multipartContent];
    v10 = MEMORY[0x1E699B288];
    v11 = [v9 htmlBody];
    v12 = [v10 mf_utf8HTMLStringWithString:v11];
    v13 = [v9 plaintextAlternative];
    v14 = [v9 mixedContent];
    v20.receiver = self;
    v20.super_class = MFPlaceholderMailDeliveryUI;
    v15 = [(MFOutgoingMessageDelivery *)&v20 initWithHeaders:v6 HTML:v12 plainTextAlternative:v13 other:v14];

LABEL_5:
    goto LABEL_6;
  }

  v9 = [v7 richtextContent];
  if ([v9 textPartsAreHTML])
  {
    v11 = [v9 plaintextAlternative];
    v12 = [v9 mixedContent];
    v19.receiver = self;
    v19.super_class = MFPlaceholderMailDeliveryUI;
    v15 = [(MFOutgoingMessageDelivery *)&v19 initWithHeaders:v6 HTML:0 plainTextAlternative:v11 other:v12];
    goto LABEL_5;
  }

  v11 = [v9 mixedContent];
  v18.receiver = self;
  v18.super_class = MFPlaceholderMailDeliveryUI;
  v15 = [(MFOutgoingMessageDelivery *)&v18 initWithHeaders:v6 mixedContent:v11 textPartsAreHTML:0];
LABEL_6:

  if (v15)
  {
    objc_storeStrong(&v15->_rewriter, v5);
  }

  return v15;
}

- (id)deliverSynchronouslyWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = EMLogMailDrop();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Starting delivery of placeholder MailDrop message", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = MFPlaceholderMailDeliveryUI;
  v6 = [(MFOutgoingMessageDelivery *)&v20 deliverSynchronouslyWithCompletion:v4];
  if ([v6 status])
  {
    p_super = EMLogMailDrop();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 status];
      *buf = 134217984;
      v22 = v8;
      _os_log_impl(&dword_1BE819000, p_super, OS_LOG_TYPE_DEFAULT, "Delivery of placeholder Mail Drop message failed with error: %lu", buf, 0xCu);
    }
  }

  else
  {
    v9 = EMLogMailDrop();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_DEFAULT, "Successfully completed delivery of placehold message. Removing placeholder", buf, 2u);
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

- (id)_attachmentsContextID
{
  contextID = self->_contextID;
  if (!contextID)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_contextID;
    self->_contextID = v5;

    contextID = self->_contextID;
  }

  return contextID;
}

- (id)contentForURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69B15D0] defaultManager];
  v5 = [v4 attachmentForURL:v3 error:0];

  return v5;
}

- (id)contentForContentID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69B15D0] defaultManager];
  v5 = [v4 attachmentForContentID:v3];

  return v5;
}

- (id)contentForPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B15D0] defaultManager];
  if (v4)
  {
    v6 = [MEMORY[0x1E69B15D8] dataForPlaceholder:v4];
    if (v6)
    {
      v7 = [v4 mimeType];
      v8 = [v4 fileName];
      v9 = [v4 contentID];
      v10 = [(MFPlaceholderMailDeliveryUI *)self _attachmentsContextID];
      v11 = [v5 attachmentForData:v6 mimeType:v7 fileName:v8 contentID:v9 context:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end