@interface WebThumbnailProvider
- (void)_sendReplyFor:(id)for fromCGImage:(CGImage *)image extension:(id)extension error:(id)error completionHandler:(id)handler;
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation WebThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  [requestCopy maximumSize];
  contentType = [requestCopy contentType];
  v8 = [UTType typeWithIdentifier:contentType];

  if ([v8 conformsToType:UTTypeHTML])
  {
    v9 = @"HTML";
  }

  else if ([v8 conformsToType:UTTypeWebArchive])
  {
    v9 = @"WEB";
  }

  else
  {
    v9 = 0;
  }

  generationData = [requestCopy generationData];
  v11 = [generationData objectForKeyedSubscript:QLWebExtensionThumbnailPropertyPageSize];

  size = CGSizeZero;
  CGSizeMakeWithDictionaryRepresentation(v11, &size);
  generationData2 = [requestCopy generationData];
  v13 = [generationData2 objectForKeyedSubscript:QLWebExtensionThumbnailPropertyPageXPath];

  v14 = size.width == CGSizeZero.width;
  if (size.height != CGSizeZero.height)
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    size = xmmword_100003FB0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000295C;
  v27 = sub_10000296C;
  v16 = [QLWebviewSnapshotter alloc];
  item = [requestCopy item];
  v28 = [(QLWebviewSnapshotter *)v16 initWithItem:item previewSize:size.width, size.height];

  v18 = v24[5];
  if (v15)
  {
    v19 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000029C8;
    v21[3] = &unk_100008420;
    v21[4] = self;
    v21[5] = requestCopy;
    v21[6] = v9;
    v21[7] = handlerCopy;
    v21[8] = &v23;
    [v18 requestSnapshotThumbnail:v21];
  }

  else
  {
    v19 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100002974;
    v22[3] = &unk_100008420;
    v22[4] = self;
    v22[5] = requestCopy;
    v22[6] = v9;
    v22[7] = handlerCopy;
    v22[8] = &v23;
    [v18 requestSnapshotThumbnailForPage:0 withXPathQuery:v13 completion:v22];
  }

  _Block_object_dispose(&v23, 8);
}

- (void)_sendReplyFor:(id)for fromCGImage:(CGImage *)image extension:(id)extension error:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  extensionCopy = extension;
  forCopy = for;
  [forCopy maximumSize];
  v16 = v15;
  v18 = v17;
  [forCopy scale];
  v20 = v19;

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (v16 < Width || v18 < Height)
  {
    v24 = v18 * (Width / Height);
    v25 = v16 / (Width / Height);
    if (v24 <= v16)
    {
      Width = v18 * (Width / Height);
    }

    else
    {
      Width = v16;
    }

    if (v24 <= v16)
    {
      Height = v18;
    }

    else
    {
      Height = v25;
    }
  }

  CGImageRetain(image);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100002BB0;
  v27[3] = &unk_100008440;
  v27[4] = v20;
  *&v27[5] = Width;
  *&v27[6] = Height;
  v27[7] = image;
  height = [QLThumbnailReply replyWithContextSize:v27 drawingBlock:Width, Height];
  [height setColorSpace:CGImageGetColorSpace(image)];
  [height setExtensionBadge:extensionCopy];

  handlerCopy[2](handlerCopy, height, errorCopy);
}

@end