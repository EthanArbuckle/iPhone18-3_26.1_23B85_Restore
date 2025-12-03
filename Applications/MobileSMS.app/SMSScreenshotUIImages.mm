@interface SMSScreenshotUIImages
+ (id)captureScreenshot;
+ (id)getKeyWindow;
+ (id)imageFromView:(id)view;
+ (void)saveImage:(id)image filePath:(id)path fileName:(id)name withHeader:(id)header;
@end

@implementation SMSScreenshotUIImages

+ (id)captureScreenshot
{
  getKeyWindow = [self getKeyWindow];
  v4 = [self imageFromView:getKeyWindow];

  return v4;
}

+ (id)getKeyWindow
{
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = connectedScenes;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v8 = &NSClassFromString_ptr;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if (![v10 activationState])
        {
          v11 = v8[166];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v10;
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            windows = [v12 windows];
            v14 = [windows countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v22;
              while (2)
              {
                for (j = 0; j != v15; j = j + 1)
                {
                  if (*v22 != v16)
                  {
                    objc_enumerationMutation(windows);
                  }

                  v18 = *(*(&v21 + 1) + 8 * j);
                  if ([v18 isKeyWindow])
                  {
                    v19 = v18;

                    goto LABEL_22;
                  }
                }

                v15 = [windows countByEnumeratingWithState:&v21 objects:v29 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

            v8 = &NSClassFromString_ptr;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v19 = 0;
    }

    while (v6);
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  return v19;
}

+ (id)imageFromView:(id)view
{
  viewCopy = view;
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v11.width = v5;
  v11.height = v6;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);

  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  [viewCopy drawViewHierarchyInRect:1 afterScreenUpdates:?];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

+ (void)saveImage:(id)image filePath:(id)path fileName:(id)name withHeader:(id)header
{
  headerCopy = header;
  pathCopy = path;
  imageCopy = image;
  name = [NSString stringWithFormat:@"%@.png", name];
  v13 = [pathCopy stringByAppendingPathComponent:name];

  v14 = +[NSFileManager defaultManager];
  v15 = [v14 fileExistsAtPath:v13];

  if (v15)
  {
    v16 = +[NSFileManager defaultManager];
    [v16 removeItemAtPath:v13 error:0];
  }

  v20 = 0;
  [headerCopy writeToFile:v13 atomically:1 encoding:4 error:&v20];
  v17 = v20;
  v18 = UIImagePNGRepresentation(imageCopy);

  [v18 writeToFile:v13 atomically:1];
  v19 = [NSFileHandle fileHandleForWritingAtPath:v13];
  if (v19 && !v17 || (NSLog(@"|--ERROR: Failed to generate file handle at path %@. %@--|", v13, v17), v19))
  {
    [v19 closeFile];
  }
}

@end