@interface MFPlaceholderMailDeliveryUI
- (MFPlaceholderMailDeliveryUI)initWithMessage:(id)message;
- (id)_attachmentsContextID;
- (id)contentForContentID:(id)d;
- (id)contentForPlaceholder:(id)placeholder;
- (id)contentForURL:(id)l;
- (id)deliverSynchronouslyWithCompletion:(id)completion;
@end

@implementation MFPlaceholderMailDeliveryUI

- (MFPlaceholderMailDeliveryUI)initWithMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(MEMORY[0x1E69B1658]);
  [v4 setLibraryMessage:messageCopy];
  v5 = [[MFPlaceholderMessageRewriter alloc] initWithOriginalMessageContent:v4 resolver:self];
  v6 = [MFComposeTypeFactory headersFromDelegate:v5];
  rewrittenMessageContent = [(MFPlaceholderMessageRewriter *)v5 rewrittenMessageContent];
  multipartContent = [rewrittenMessageContent multipartContent];

  if (multipartContent)
  {
    multipartContent2 = [rewrittenMessageContent multipartContent];
    v10 = MEMORY[0x1E699B288];
    htmlBody = [multipartContent2 htmlBody];
    mixedContent2 = [v10 mf_utf8HTMLStringWithString:htmlBody];
    plaintextAlternative = [multipartContent2 plaintextAlternative];
    mixedContent = [multipartContent2 mixedContent];
    v20.receiver = self;
    v20.super_class = MFPlaceholderMailDeliveryUI;
    v15 = [(MFOutgoingMessageDelivery *)&v20 initWithHeaders:v6 HTML:mixedContent2 plainTextAlternative:plaintextAlternative other:mixedContent];

LABEL_5:
    goto LABEL_6;
  }

  multipartContent2 = [rewrittenMessageContent richtextContent];
  if ([multipartContent2 textPartsAreHTML])
  {
    htmlBody = [multipartContent2 plaintextAlternative];
    mixedContent2 = [multipartContent2 mixedContent];
    v19.receiver = self;
    v19.super_class = MFPlaceholderMailDeliveryUI;
    v15 = [(MFOutgoingMessageDelivery *)&v19 initWithHeaders:v6 HTML:0 plainTextAlternative:htmlBody other:mixedContent2];
    goto LABEL_5;
  }

  htmlBody = [multipartContent2 mixedContent];
  v18.receiver = self;
  v18.super_class = MFPlaceholderMailDeliveryUI;
  v15 = [(MFOutgoingMessageDelivery *)&v18 initWithHeaders:v6 mixedContent:htmlBody textPartsAreHTML:0];
LABEL_6:

  if (v15)
  {
    objc_storeStrong(&v15->_rewriter, v5);
  }

  return v15;
}

- (id)deliverSynchronouslyWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = EMLogMailDrop();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Starting delivery of placeholder MailDrop message", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = MFPlaceholderMailDeliveryUI;
  v6 = [(MFOutgoingMessageDelivery *)&v20 deliverSynchronouslyWithCompletion:completionCopy];
  if ([v6 status])
  {
    p_super = EMLogMailDrop();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      status = [v6 status];
      *buf = 134217984;
      v22 = status;
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
    rewrittenMessageContent = [(MFPlaceholderMessageRewriter *)self->_rewriter rewrittenMessageContent];
    placeholders = [rewrittenMessageContent placeholders];

    v12 = [placeholders countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(placeholders);
          }

          [MEMORY[0x1E69B15D8] removePlaceholder:*(*(&v16 + 1) + 8 * i)];
        }

        v12 = [placeholders countByEnumeratingWithState:&v16 objects:v23 count:16];
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_contextID;
    self->_contextID = uUIDString;

    contextID = self->_contextID;
  }

  return contextID;
}

- (id)contentForURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E69B15D0] defaultManager];
  v5 = [defaultManager attachmentForURL:lCopy error:0];

  return v5;
}

- (id)contentForContentID:(id)d
{
  dCopy = d;
  defaultManager = [MEMORY[0x1E69B15D0] defaultManager];
  v5 = [defaultManager attachmentForContentID:dCopy];

  return v5;
}

- (id)contentForPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  defaultManager = [MEMORY[0x1E69B15D0] defaultManager];
  if (placeholderCopy)
  {
    v6 = [MEMORY[0x1E69B15D8] dataForPlaceholder:placeholderCopy];
    if (v6)
    {
      mimeType = [placeholderCopy mimeType];
      fileName = [placeholderCopy fileName];
      contentID = [placeholderCopy contentID];
      _attachmentsContextID = [(MFPlaceholderMailDeliveryUI *)self _attachmentsContextID];
      v11 = [defaultManager attachmentForData:v6 mimeType:mimeType fileName:fileName contentID:contentID context:_attachmentsContextID];
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