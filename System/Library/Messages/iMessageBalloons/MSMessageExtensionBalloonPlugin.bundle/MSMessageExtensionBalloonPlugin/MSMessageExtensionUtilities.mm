@interface MSMessageExtensionUtilities
+ (id)isValidCustomAcknowledgementPayload:(id)a3;
+ (id)isValidMediaPayload:(id)a3;
+ (id)isValidMessagePayload:(id)a3;
+ (id)isValidSticker:(id)a3;
@end

@implementation MSMessageExtensionUtilities

+ (id)isValidSticker:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaURL];
  if (v5 || ([v4 stickerRepresentations], v5 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v5, "count")))
  {

    goto LABEL_3;
  }

  v25 = [v4 stickerStoreIdentifier];

  if (!v25)
  {
LABEL_3:
    v6 = [v4 mediaURL];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 mediaURL];
      if ([v8 isFileURL])
      {
        v9 = +[NSFileManager defaultManager];
        v10 = [v4 mediaURL];
        v11 = [v10 path];
        v12 = [v9 fileExistsAtPath:v11];

        if (v12)
        {
          v13 = [v4 mediaURL];
          v14 = [v13 path];

          v15 = +[NSFileManager defaultManager];
          v32 = 0;
          v16 = [v15 attributesOfItemAtPath:v14 error:&v32];
          v17 = v32;

          if (v17 || !v16)
          {
            v24 = [NSError errorWithDomain:MSStickersErrorDomain code:5 userInfo:0];
          }

          else
          {
            v18 = [v16 objectForKey:NSFileSize];
            v19 = v18;
            if (v18 && (v20 = [v18 unsignedIntegerValue], v20 <= objc_msgSend(a1, "_maxStickerFileSize")) && (v21 = objc_msgSend(v19, "unsignedIntegerValue"), v21 > objc_msgSend(a1, "_minStickerFileSize")))
            {
              v22 = [v14 pathExtension];
              if (v22)
              {
                PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v22, 0);
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

  v26 = [v4 stickerRepresentations];
  v14 = [v26 firstObject];

  v27 = [v14 data];
  v28 = [v27 length];

  if (v28 > [a1 _maxStickerFileSize] || v28 <= objc_msgSend(a1, "_minStickerFileSize"))
  {
    v30 = 6;
LABEL_30:
    v24 = [NSError errorWithDomain:MSStickersErrorDomain code:v30 userInfo:0];
    goto LABEL_35;
  }

  v29 = [v14 type];
  if (!UTTypeConformsTo(v29, kUTTypeGIF) && !UTTypeConformsTo(v29, kUTTypePNG) && !UTTypeConformsTo(v29, kUTTypeJPEG) && !UTTypeConformsTo(v29, kIMUTTypeHEIFStandard))
  {
    v30 = 7;
    goto LABEL_30;
  }

  v24 = 0;
LABEL_35:

LABEL_36:

  return v24;
}

+ (id)isValidMediaPayload:(id)a3
{
  v3 = [a3 mediaURL];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  if ([v3 isFileURL])
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6];

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

+ (id)isValidMessagePayload:(id)a3
{
  v4 = [a3 URL];
  v5 = [v4 absoluteString];
  v6 = [v5 length];
  v7 = [a1 _maxAppMessageURLength];

  if (v6 <= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSError errorWithDomain:MSMessagesErrorDomain code:8 userInfo:0];
  }

  return v8;
}

+ (id)isValidCustomAcknowledgementPayload:(id)a3
{
  v4 = [a3 URL];
  v5 = [v4 absoluteString];
  v6 = [v5 length];
  v7 = [a1 _maxAppMessageURLength];

  if (v6 <= v7)
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