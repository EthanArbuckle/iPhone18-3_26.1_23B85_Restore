@interface PDCRemoteRenderedContentPreviewController
- (id)imagesWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 maximumCount:(unint64_t)a5;
@end

@implementation PDCRemoteRenderedContentPreviewController

- (id)imagesWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 maximumCount:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [NSMutableArray arrayWithCapacity:a5];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(PDCRemoteRenderedContentPreviewController *)self renderedContentURLs];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (![v15 isFileURL] || (objc_msgSend(v15, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = PLCreateImageFromFileWithFormat(), v16, !v17))
        {
          v18 = [PLVideoTranscoder generatePosterFrameForVideoAtURL:v15 maxSize:0 error:width, height];
          if (!v18)
          {
            goto LABEL_11;
          }

          v17 = v18;
        }

        [v9 addObject:v17];

LABEL_11:
        if ([v9 count] >= a5)
        {
          goto LABEL_14;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

LABEL_14:

  return v9;
}

@end