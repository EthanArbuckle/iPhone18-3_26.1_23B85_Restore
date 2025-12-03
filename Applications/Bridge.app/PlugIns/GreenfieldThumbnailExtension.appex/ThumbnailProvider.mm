@interface ThumbnailProvider
- (ThumbnailProvider)init;
- (id)_queue_createPreviewImageDataWithImage:(id)image;
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation ThumbnailProvider

- (ThumbnailProvider)init
{
  v6.receiver = self;
  v6.super_class = ThumbnailProvider;
  v2 = [(ThumbnailProvider *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanotimekit.ThumbnailProvider", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  fileURL = [request fileURL];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100000DFC;
  v9[3] = &unk_100004168;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [NTKGreenfieldUtilities generateFacePreviewImageFromUrl:fileURL completionBlock:v9];
}

- (id)_queue_createPreviewImageDataWithImage:(id)image
{
  imageCopy = image;
  dispatch_assert_queue_V2(self->_queue);
  [imageCopy size];
  v6 = v5;
  v8 = v7;
  v9 = v5 + 100.0;
  v10 = v7 + 100.0;
  v11 = [[UIGraphicsImageRenderer alloc] initWithSize:{v5 + 100.0, v7 + 100.0}];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000012EC;
  v15[3] = &unk_100004190;
  v16 = imageCopy;
  v17 = v9;
  v18 = v10;
  v19 = v6;
  v20 = v8;
  v12 = imageCopy;
  v13 = [v11 PNGDataWithActions:v15];

  return v13;
}

@end