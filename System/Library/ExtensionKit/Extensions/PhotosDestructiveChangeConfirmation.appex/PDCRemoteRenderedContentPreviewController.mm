@interface PDCRemoteRenderedContentPreviewController
- (id)imagesWithTargetSize:(CGSize)size contentMode:(int64_t)mode maximumCount:(unint64_t)count;
@end

@implementation PDCRemoteRenderedContentPreviewController

- (id)imagesWithTargetSize:(CGSize)size contentMode:(int64_t)mode maximumCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  v9 = [NSMutableArray arrayWithCapacity:count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  renderedContentURLs = [(PDCRemoteRenderedContentPreviewController *)self renderedContentURLs];
  v11 = [renderedContentURLs countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(renderedContentURLs);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (![v15 isFileURL] || (objc_msgSend(v15, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = PLCreateImageFromFileWithFormat(), v16, !v17))
        {
          height = [PLVideoTranscoder generatePosterFrameForVideoAtURL:v15 maxSize:0 error:width, height];
          if (!height)
          {
            goto LABEL_11;
          }

          v17 = height;
        }

        [v9 addObject:v17];

LABEL_11:
        if ([v9 count] >= count)
        {
          goto LABEL_14;
        }
      }

      v12 = [renderedContentURLs countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

LABEL_14:

  return v9;
}

@end