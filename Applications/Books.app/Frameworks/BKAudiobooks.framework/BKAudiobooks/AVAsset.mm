@interface AVAsset
- (BOOL)bk_isAudible;
- (BOOL)bk_isAudibleContentAuthorized;
@end

@implementation AVAsset

- (BOOL)bk_isAudible
{
  objc_opt_class();
  v2 = BUDynamicCast();
  v3 = [v2 URL];
  pathExtension = [v3 pathExtension];

  if ([pathExtension isEqualToString:@"aa"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [pathExtension isEqualToString:@"aax"];
  }

  return v5;
}

- (BOOL)bk_isAudibleContentAuthorized
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AVAsset *)self tracksWithMediaType:AVMediaTypeAudio, 0];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 hasAudibleBooksContent] && !objc_msgSend(v7, "isAudibleBooksContentAuthorized"))
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

@end