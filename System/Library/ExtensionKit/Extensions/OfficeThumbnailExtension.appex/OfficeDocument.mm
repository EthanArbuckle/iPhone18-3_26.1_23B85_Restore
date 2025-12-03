@interface OfficeDocument
+ (id)parseFile:(id)file contentType:(id)type requestedSize:(CGSize)size error:(id *)error;
- (CGSize)size;
@end

@implementation OfficeDocument

+ (id)parseFile:(id)file contentType:(id)type requestedSize:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  fileCopy = file;
  typeCopy = type;
  v12 = objc_opt_new();
  [typeCopy identifier];

  v64 = 0;
  cf = 0;
  v13 = OICopyPrecomputedThumbnailDataFromFileAtURLIfPresent();
  if (v13)
  {
    v14 = v13;
    v66 = kCGImageSourceTypeIdentifierHint;
    v67 = cf;
    v15 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v16 = CGImageSourceCreateWithData(v14, v15);

    if (v16)
    {
      if (CGImageSourceGetCount(v16))
      {
        v17 = CGImageSourceCopyPropertiesAtIndex(v16, 0, 0);
        v18 = [(__CFDictionary *)v17 objectForKeyedSubscript:kCGImagePropertyPixelHeight];
        [v18 doubleValue];
        v20 = v19;

        v21 = [(__CFDictionary *)v17 objectForKeyedSubscript:kCGImagePropertyPixelWidth];
        [v21 doubleValue];
        v23 = v22;

        if (v20 <= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v20;
        }

        if (v20 <= v23)
        {
          v25 = width;
        }

        else
        {
          v25 = height;
        }

        if (v24 >= v25)
        {
          [v12 setEmbeddedThumbnail:v14];

          v26 = [UTType typeWithIdentifier:cf];
          [v12 setEmbeddedThumbnailType:v26];
        }
      }

      CFRelease(v16);
    }

    CFRelease(v14);
  }

  [v12 setMultipage:v64 != 0];
  embeddedThumbnail = [v12 embeddedThumbnail];

  if (embeddedThumbnail)
  {
    v28 = v12;
  }

  else
  {
    v29 = OICopyHTMLThumbnailFromFileAtURL();
    v30 = v29;
    if (v29)
    {
      v31 = [v29 objectForKeyedSubscript:@"HTMLError"];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
        v28 = 0;
        *error = v32;
      }

      else
      {
        v34 = [v30 objectForKeyedSubscript:@"HTMLMainContent"];
        [v12 setHtmlContent:v34];

        v58 = [v30 objectForKeyedSubscript:@"HTMLResources"];
        if ([v58 count])
        {
          v54 = v30;
          v55 = v12;
          v56 = typeCopy;
          v57 = fileCopy;
          v35 = +[NSMutableDictionary dictionary];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v36 = v58;
          v37 = [v36 countByEnumeratingWithState:&v59 objects:v65 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v60;
            do
            {
              for (i = 0; i != v38; i = i + 1)
              {
                if (*v60 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v59 + 1) + 8 * i);
                v42 = [v36 objectForKeyedSubscript:v41];
                pathExtension = [v41 pathExtension];
                v44 = [UTType typeWithFilenameExtension:pathExtension];

                if (v44)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v45 = [v42 dataUsingEncoding:4];

                    v42 = v45;
                  }

                  v46 = [[QLThumbnailReplyAttachment alloc] initWithData:v42 contentType:v44];
                  [v35 setObject:v46 forKeyedSubscript:v41];
                }
              }

              v38 = [v36 countByEnumeratingWithState:&v59 objects:v65 count:16];
            }

            while (v38);
          }

          v12 = v55;
          [v55 setAttachments:v35];

          typeCopy = v56;
          fileCopy = v57;
          v32 = 0;
          v30 = v54;
        }

        v47 = [v30 objectForKeyedSubscript:@"HTMLWidth"];
        v48 = [v30 objectForKeyedSubscript:@"HTMLHeight"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v47 floatValue];
          v50 = v49;
          [v48 floatValue];
          v52 = v51;
        }

        else
        {
          v50 = CGSizeZero.width;
          v52 = CGSizeZero.height;
        }

        [v12 setSize:{v50, v52}];
        v28 = v12;
      }
    }

    else
    {
      [NSError errorWithDomain:QLThumbnailErrorDomain code:0 userInfo:0];
      *error = v28 = 0;
    }
  }

  return v28;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end