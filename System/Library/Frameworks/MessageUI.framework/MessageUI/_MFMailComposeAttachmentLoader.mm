@interface _MFMailComposeAttachmentLoader
- (_MFMailComposeAttachmentLoader)initWithMessage:(id)message content:(id)content isDraft:(BOOL)draft didLoadBestAlternative:(BOOL)alternative completion:(id)completion;
- (void)loadAttachments;
@end

@implementation _MFMailComposeAttachmentLoader

- (_MFMailComposeAttachmentLoader)initWithMessage:(id)message content:(id)content isDraft:(BOOL)draft didLoadBestAlternative:(BOOL)alternative completion:(id)completion
{
  messageCopy = message;
  contentCopy = content;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = _MFMailComposeAttachmentLoader;
  v16 = [(_MFMailComposeAttachmentLoader *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_message, message);
    objc_storeStrong(&v17->_content, content);
    v17->_isDraft = draft;
    v17->_didLoadBestAlternative = alternative;
    v18 = [completionCopy copy];
    completionBlock = v17->_completionBlock;
    v17->_completionBlock = v18;
  }

  return v17;
}

- (void)loadAttachments
{
  v42[1] = *MEMORY[0x1E69E9840];
  currentMonitor = [MEMORY[0x1E69B15A8] currentMonitor];
  v27 = self->_content;
  if (v27 && (self->_didLoadBestAlternative || !self->_isDraft) || (-[MFMailMessage messageBody](self->_message, "messageBody"), v2 = objc_claimAutoreleasedReturnValue(), [v2 htmlContent], v3 = objc_claimAutoreleasedReturnValue(), v27, v2, (v27 = v3) != 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v27;
    }

    else
    {
      v42[0] = v27;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    }

    v5 = v4;
    v6 = [v4 count];
    if (v6 == 1)
    {
      lastObject = [v5 lastObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        lastObject2 = [v5 lastObject];
        attachmentsInDocument = [lastObject2 attachmentsInDocument];

        v5 = attachmentsInDocument;
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = 0;
      v13 = *v37;
      v14 = v6;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            allManagers = [MEMORY[0x1E69B15D0] allManagers];
            v18 = [allManagers countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v18)
            {
              v19 = *v33;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v33 != v19)
                  {
                    objc_enumerationMutation(allManagers);
                  }

                  v21 = [*(*(&v32 + 1) + 8 * j) attachmentForTextAttachment:v16 error:0];
                  v22 = v21;
                  if (v21)
                  {
                    v23 = [v21 fetchDataSynchronously:0];
                    v24 = [v16 fileWrapperForcingDownload:1];
                  }
                }

                v18 = [allManagers countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v18);
            }
          }

          [currentMonitor setPercentDone:(++v12 / v14)];
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v27 = 0;
    [currentMonitor setPercentDone:1.0];
    obj = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___MFMailComposeAttachmentLoader_loadAttachments__block_invoke;
  block[3] = &unk_1E806C520;
  block[4] = self;
  v31 = v27;
  v25 = v27;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end