@interface ICSEMediaPreviewGenerator
- (ICSEMediaPreviewGenerator)initWithScreenScale:(double)scale;
- (id)generateImagePreviewUsingAttachment:(id)attachment;
- (id)generatePreviewWithAttachments:(id)attachments;
- (id)generateVideoPreviewUsingAttachment:(id)attachment;
@end

@implementation ICSEMediaPreviewGenerator

- (ICSEMediaPreviewGenerator)initWithScreenScale:(double)scale
{
  v5.receiver = self;
  v5.super_class = ICSEMediaPreviewGenerator;
  result = [(ICSEMediaPreviewGenerator *)&v5 init];
  if (result)
  {
    result->_screenScale = scale;
  }

  return result;
}

- (id)generatePreviewWithAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v5 = [attachmentsCopy count];
  v6 = v5;
  if (v5 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  v8 = [NSMutableArray arrayWithCapacity:v7];
  if (v6)
  {
    v9 = 0;
    do
    {
      v10 = [attachmentsCopy objectAtIndexedSubscript:v9];
      mediaUTI = [v10 mediaUTI];
      v12 = [ICAttachment typeUTIIsPlayableMovie:mediaUTI];

      if (v12)
      {
        [(ICSEMediaPreviewGenerator *)self generateVideoPreviewUsingAttachment:v10];
      }

      else
      {
        [(ICSEMediaPreviewGenerator *)self generateImagePreviewUsingAttachment:v10];
      }
      v13 = ;
      [v8 ic_addNonNilObject:v13];

      ++v9;
    }

    while (v7 != v9);
  }

  v14 = [v8 copy];

  return v14;
}

- (id)generateVideoPreviewUsingAttachment:(id)attachment
{
  mediaURL = [attachment mediaURL];
  v4 = [AVURLAsset ic_safeURLAssetWithURL:mediaURL];

  v5 = [ICSEMediaPreview alloc];
  ic_previewImage = [v4 ic_previewImage];
  if (v4)
  {
    [v4 duration];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7 = [(ICSEMediaPreview *)v5 initWithWithImage:ic_previewImage videoDuration:v9];

  return v7;
}

- (id)generateImagePreviewUsingAttachment:(id)attachment
{
  attachmentCopy = attachment;
  mediaURL = [attachmentCopy mediaURL];

  if (mediaURL)
  {
    mediaURL2 = [attachmentCopy mediaURL];
    v7 = CGImageSourceCreateWithURL(mediaURL2, 0);
LABEL_5:
    v9 = v7;
    goto LABEL_6;
  }

  mediaData = [attachmentCopy mediaData];

  if (mediaData)
  {
    mediaURL2 = [attachmentCopy mediaData];
    v7 = CGImageSourceCreateWithData(mediaURL2, 0);
    goto LABEL_5;
  }

  image = [attachmentCopy image];

  if (image)
  {
    mediaURL2 = [attachmentCopy image];
    ic_PNGData = [(__CFURL *)mediaURL2 ic_PNGData];
    v9 = CGImageSourceCreateWithData(ic_PNGData, 0);

LABEL_6:
    v10 = CGImageSourceCopyPropertiesAtIndex(v9, 0, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, 0);
    Width = CGImageGetWidth(ImageAtIndex);
    v13 = Width / CGImageGetHeight(ImageAtIndex);
    [(ICSEMediaPreviewGenerator *)self screenScale];
    v15 = v14;
    v16 = v14 * 64.0;
    v17 = v16 / v13;
    v18 = v16 * v13;
    if (v13 > 1.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = +[NSMutableData data];
    identifier = [UTTypeJPEG identifier];
    v22 = CGImageDestinationCreateWithData(v20, identifier, 1uLL, 0);

    if (v22)
    {
      v23 = [(__CFDictionary *)v10 mutableCopy];
      v24 = [NSNumber numberWithInt:v19];
      [v23 setObject:v24 forKeyedSubscript:kCGImageDestinationImageMaxPixelSize];

      CGImageDestinationAddImage(v22, ImageAtIndex, v23);
      LODWORD(v24) = CGImageDestinationFinalize(v22);
      CFRelease(v22);

      CFRelease(v9);
      CGImageRelease(ImageAtIndex);
      if (v24)
      {
        v25 = [[UIImage alloc] initWithData:v20 scale:v15];
        v26 = [[ICSEMediaPreview alloc] initWithImage:v25];

LABEL_14:
        v27 = v26;

        v28 = v27;
        goto LABEL_15;
      }
    }

    else
    {
      CFRelease(v9);
      CGImageRelease(ImageAtIndex);
    }

    v26 = 0;
    goto LABEL_14;
  }

  v27 = os_log_create("com.apple.notes", "SharingExtension");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_1004E0244(v27);
  }

  v28 = 0;
LABEL_15:

  return v28;
}

@end