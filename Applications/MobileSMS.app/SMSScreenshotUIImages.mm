@interface SMSScreenshotUIImages
+ (id)captureScreenshot;
+ (id)getKeyWindow;
+ (id)imageFromView:(id)a3;
+ (void)saveImage:(id)a3 filePath:(id)a4 fileName:(id)a5 withHeader:(id)a6;
@end

@implementation SMSScreenshotUIImages

+ (id)captureScreenshot
{
  v3 = [a1 getKeyWindow];
  v4 = [a1 imageFromView:v3];

  return v4;
}

+ (id)getKeyWindow
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 connectedScenes];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
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
            v13 = [v12 windows];
            v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v21 + 1) + 8 * j);
                  if ([v18 isKeyWindow])
                  {
                    v19 = v18;

                    goto LABEL_22;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

+ (id)imageFromView:(id)a3
{
  v3 = a3;
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v11.width = v5;
  v11.height = v6;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);

  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  [v3 drawViewHierarchyInRect:1 afterScreenUpdates:?];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

+ (void)saveImage:(id)a3 filePath:(id)a4 fileName:(id)a5 withHeader:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [NSString stringWithFormat:@"%@.png", a5];
  v13 = [v10 stringByAppendingPathComponent:v12];

  v14 = +[NSFileManager defaultManager];
  v15 = [v14 fileExistsAtPath:v13];

  if (v15)
  {
    v16 = +[NSFileManager defaultManager];
    [v16 removeItemAtPath:v13 error:0];
  }

  v20 = 0;
  [v9 writeToFile:v13 atomically:1 encoding:4 error:&v20];
  v17 = v20;
  v18 = UIImagePNGRepresentation(v11);

  [v18 writeToFile:v13 atomically:1];
  v19 = [NSFileHandle fileHandleForWritingAtPath:v13];
  if (v19 && !v17 || (NSLog(@"|--ERROR: Failed to generate file handle at path %@. %@--|", v13, v17), v19))
  {
    [v19 closeFile];
  }
}

@end