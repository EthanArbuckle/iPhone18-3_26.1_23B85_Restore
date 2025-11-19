@interface MFAttachmentManager(Utilities)
- (uint64_t)sizeForScale:()Utilities imagesOnly:forContext:;
- (void)attachmentForCID:()Utilities isBasicImage:;
- (void)attachmentForCID:()Utilities isDisplayableImage:;
- (void)filenameAndURLForAttachmentForCID:()Utilities completionHandler:;
- (void)hasAttachmentForCID:()Utilities completionHandler:;
@end

@implementation MFAttachmentManager(Utilities)

- (uint64_t)sizeForScale:()Utilities imagesOnly:forContext:
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a1 attachmentsForContext:{a5, 0}];
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 isDisplayableImage])
        {
          v13 = [v12 scaledFileSizeForScale:a3];
        }

        else
        {
          if (a4)
          {
            continue;
          }

          v13 = [v12 decodedFileSize];
        }

        v8 += v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v8;
}

- (void)attachmentForCID:()Utilities isDisplayableImage:
{
  v9 = a4;
  v6 = [a1 attachmentForCID:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isDisplayableImage")}];
  }

  else
  {
    v8 = 0;
  }

  v9[2](v9, v8);
  if (v7)
  {
  }
}

- (void)attachmentForCID:()Utilities isBasicImage:
{
  v9 = a4;
  v6 = [a1 attachmentForCID:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isBasicImage")}];
  }

  else
  {
    v8 = 0;
  }

  v9[2](v9, v8);
  if (v7)
  {
  }
}

- (void)hasAttachmentForCID:()Utilities completionHandler:
{
  v7 = a4;
  v6 = [a1 attachmentForCID:a3];
  v7[2](v7, v6 != 0);
}

- (void)filenameAndURLForAttachmentForCID:()Utilities completionHandler:
{
  v9 = a4;
  v6 = [a1 attachmentForCID:a3];
  v7 = [v6 fileName];
  v8 = [v6 url];
  v9[2](v9, v7, v8);
}

@end