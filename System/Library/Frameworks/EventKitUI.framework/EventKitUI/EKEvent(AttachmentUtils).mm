@interface EKEvent(AttachmentUtils)
- (id)sortedEKAttachmentsDisplayStrings;
@end

@implementation EKEvent(AttachmentUtils)

- (id)sortedEKAttachmentsDisplayStrings
{
  v21 = *MEMORY[0x1E69E9840];
  attachments = [self attachments];
  v3 = [attachments sortedArrayUsingFunction:CompareEKAttachments context:0];

  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  attachments2 = [self attachments];
  v6 = [v4 initWithCapacity:{objc_msgSend(attachments2, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        fileName = [*(*(&v16 + 1) + 8 * i) fileName];
        if (fileName)
        {
          [v6 addObject:fileName];
        }

        else
        {
          v13 = EventKitUIBundle();
          v14 = [v13 localizedStringForKey:@"Untitled Attachment" value:&stru_1F4EF6790 table:0];
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

@end