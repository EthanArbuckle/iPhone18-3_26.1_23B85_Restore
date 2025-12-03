@interface MSMessageExtensionUtilities
+ (id)isValidCustomAcknowledgementPayload:(id)payload;
+ (id)isValidMediaPayload:(id)payload;
+ (id)isValidMessagePayload:(id)payload;
+ (id)isValidSticker:(id)sticker;
@end

@implementation MSMessageExtensionUtilities

+ (id)isValidSticker:(id)sticker
{
  stickerCopy = sticker;
  mediaURL = [stickerCopy mediaURL];
  if (mediaURL || ([stickerCopy stickerRepresentations], mediaURL = objc_claimAutoreleasedReturnValue(), !objc_msgSend(mediaURL, "count")))
  {

    goto LABEL_3;
  }

  stickerStoreIdentifier = [stickerCopy stickerStoreIdentifier];

  if (!stickerStoreIdentifier)
  {
LABEL_3:
    mediaURL2 = [stickerCopy mediaURL];
    if (mediaURL2)
    {
      v7 = mediaURL2;
      mediaURL3 = [stickerCopy mediaURL];
      if ([mediaURL3 isFileURL])
      {
        v9 = +[NSFileManager defaultManager];
        mediaURL4 = [stickerCopy mediaURL];
        path = [mediaURL4 path];
        v12 = [v9 fileExistsAtPath:path];

        if (v12)
        {
          mediaURL5 = [stickerCopy mediaURL];
          path2 = [mediaURL5 path];

          v15 = +[NSFileManager defaultManager];
          v32 = 0;
          v16 = [v15 attributesOfItemAtPath:path2 error:&v32];
          v17 = v32;

          if (v17 || !v16)
          {
            v24 = [NSError errorWithDomain:MSStickersErrorDomain code:5 userInfo:0];
          }

          else
          {
            v18 = [v16 objectForKey:NSFileSize];
            v19 = v18;
            if (v18 && (v20 = [v18 unsignedIntegerValue], v20 <= objc_msgSend(self, "_maxStickerFileSize")) && (v21 = objc_msgSend(v19, "unsignedIntegerValue"), v21 > objc_msgSend(self, "_minStickerFileSize")))
            {
              pathExtension = [path2 pathExtension];
              if (pathExtension)
              {
                PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension, 0);
                if (UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeGIF) || UTTypeConformsTo(PreferredIdentifierForTag, kUTTypePNG) || UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeJPEG) || UTTypeConformsTo(PreferredIdentifierForTag, kIMUTTypeHEIFStandard))
                {
                  v24 = 0;
                }

                else
                {
                  v24 = [NSError errorWithDomain:MSStickersErrorDomain code:7 userInfo:0];
                }
              }

              else
              {
                v24 = [NSError errorWithDomain:MSStickersErrorDomain code:7 userInfo:0];
              }
            }

            else
            {
              v24 = [NSError errorWithDomain:MSStickersErrorDomain code:6 userInfo:0];
            }
          }

          goto LABEL_35;
        }
      }

      else
      {
      }
    }

    v24 = [NSError errorWithDomain:MSStickersErrorDomain code:4 userInfo:0];
    goto LABEL_36;
  }

  stickerRepresentations = [stickerCopy stickerRepresentations];
  path2 = [stickerRepresentations firstObject];

  data = [path2 data];
  v28 = [data length];

  if (v28 > [self _maxStickerFileSize] || v28 <= objc_msgSend(self, "_minStickerFileSize"))
  {
    v30 = 6;
LABEL_30:
    v24 = [NSError errorWithDomain:MSStickersErrorDomain code:v30 userInfo:0];
    goto LABEL_35;
  }

  type = [path2 type];
  if (!UTTypeConformsTo(type, kUTTypeGIF) && !UTTypeConformsTo(type, kUTTypePNG) && !UTTypeConformsTo(type, kUTTypeJPEG) && !UTTypeConformsTo(type, kIMUTTypeHEIFStandard))
  {
    v30 = 7;
    goto LABEL_30;
  }

  v24 = 0;
LABEL_35:

LABEL_36:

  return v24;
}

+ (id)isValidMediaPayload:(id)payload
{
  mediaURL = [payload mediaURL];
  v4 = mediaURL;
  if (!mediaURL)
  {
    goto LABEL_4;
  }

  if ([mediaURL isFileURL])
  {
    v5 = +[NSFileManager defaultManager];
    path = [v4 path];
    v7 = [v5 fileExistsAtPath:path];

    if (v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_8;
    }

    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  v8 = [NSError errorWithDomain:MSMessagesErrorDomain code:v9 userInfo:0];
LABEL_8:

  return v8;
}

+ (id)isValidMessagePayload:(id)payload
{
  v4 = [payload URL];
  absoluteString = [v4 absoluteString];
  v6 = [absoluteString length];
  _maxAppMessageURLength = [self _maxAppMessageURLength];

  if (v6 <= _maxAppMessageURLength)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSError errorWithDomain:MSMessagesErrorDomain code:8 userInfo:0];
  }

  return v8;
}

+ (id)isValidCustomAcknowledgementPayload:(id)payload
{
  v4 = [payload URL];
  absoluteString = [v4 absoluteString];
  v6 = [absoluteString length];
  _maxAppMessageURLength = [self _maxAppMessageURLength];

  if (v6 <= _maxAppMessageURLength)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSError errorWithDomain:MSMessagesErrorDomain code:8 userInfo:0];
  }

  return v8;
}

@end