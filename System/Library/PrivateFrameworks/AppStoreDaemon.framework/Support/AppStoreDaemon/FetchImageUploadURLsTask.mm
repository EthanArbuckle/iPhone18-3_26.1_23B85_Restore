@interface FetchImageUploadURLsTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation FetchImageUploadURLsTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    v5 = *(&self->super.super._finished + 1);
    v6 = sub_10020272C(v5);
    imagesData = [v6 imagesData];
    v8 = [imagesData count];

    if (v8)
    {
      v9 = objc_opt_new();
      v10 = *(&self->super.super._finished + 1);
      v11 = sub_100202490(v10);
      unsignedLongLongValue = [v11 unsignedLongLongValue];
      if (v9)
      {
        *(v9 + 36) |= 2u;
        *(v9 + 16) = unsignedLongLongValue;

        *(v9 + 36) |= 4u;
        *(v9 + 32) = v8;
        sub_100258B14(v9, @"image/jpeg");
        v13 = *(&self->super._entity + 2);
        v14 = [v13 URLForKey:@"testflight-visual-feedback/get-image-upload-urls-url"];

        if (v14)
        {
          v15 = sub_1002EB0AC(self, v14);

          data = [v9 data];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1003B6144;
          v23[3] = &unk_10051DCA0;
          v23[4] = self;
          v24 = handlerCopy;
          sub_1002EAA28(self, 4, v15, data, v23);
        }

        else
        {
          v17 = [NSString stringWithFormat:@"Failed to find URL to fetch image upload URLs"];
          v18 = ASDErrorWithDescription();
          (*(handlerCopy + 2))(handlerCopy, v18);
        }

        goto LABEL_13;
      }

      sub_100258B14(0, @"image/jpeg");
    }
  }

  v19 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v20 = *(&self->super.super._finished + 1);
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = sub_1002026B0(v21);
    *buf = 138412290;
    v26 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@]: No images to upload, skipping FetchImageUploadURLsTask", buf, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
  v9 = 0;
LABEL_13:
}

@end