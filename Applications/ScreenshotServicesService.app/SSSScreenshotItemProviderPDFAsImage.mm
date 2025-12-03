@interface SSSScreenshotItemProviderPDFAsImage
- (SSSScreenshotItemProviderPDFAsImage)initWithScreenshot:(id)screenshot;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)imageData;
- (id)item;
- (id)placeholderItemForScreenshot:(id)screenshot;
@end

@implementation SSSScreenshotItemProviderPDFAsImage

- (SSSScreenshotItemProviderPDFAsImage)initWithScreenshot:(id)screenshot
{
  v4.receiver = self;
  v4.super_class = SSSScreenshotItemProviderPDFAsImage;
  return [(SSSScreenshotItemProvider *)&v4 initWithScreenshot:screenshot];
}

- (id)placeholderItemForScreenshot:(id)screenshot
{
  thumbnailImage = [(SSSScreenshotItemProviderPDFAsImage *)self thumbnailImage];

  if (!thumbnailImage)
  {
    screenshot = [(SSSScreenshotItemProvider *)self screenshot];
    pDFDocument = [screenshot PDFDocument];
    v7 = [pDFDocument pageAtIndex:0];
    v8 = [v7 thumbnailOfSize:1 forBox:{300.0, 300.0}];
    [(SSSScreenshotItemProviderPDFAsImage *)self setThumbnailImage:v8];
  }

  return [(SSSScreenshotItemProviderPDFAsImage *)self thumbnailImage];
}

- (id)item
{
  pdfAsImage = [(SSSScreenshotItemProviderPDFAsImage *)self pdfAsImage];

  if (!pdfAsImage)
  {
    screenshot = [(SSSScreenshotItemProvider *)self screenshot];
    pdfAsImage2 = [screenshot pdfAsImage];
    [(SSSScreenshotItemProviderPDFAsImage *)self setPdfAsImage:pdfAsImage2];
  }

  return [(SSSScreenshotItemProviderPDFAsImage *)self pdfAsImage];
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v5 = qword_1000D4A70;
  v27 = qword_1000D4A70;
  if (!qword_1000D4A70)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100039168;
    v22 = &unk_1000B9FA8;
    v23 = &v24;
    sub_100039168(&v19);
    v5 = v25[3];
  }

  v6 = v5;
  _Block_object_dispose(&v24, 8);
  v7 = objc_alloc_init(v5);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = qword_1000D4A80;
  v27 = qword_1000D4A80;
  if (!qword_1000D4A80)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100039330;
    v22 = &unk_1000B9FA8;
    v23 = &v24;
    sub_100039330(&v19);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v10 = objc_alloc_init(v8);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v11 = qword_1000D4A88;
  v27 = qword_1000D4A88;
  if (!qword_1000D4A88)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100039388;
    v22 = &unk_1000B9FA8;
    v23 = &v24;
    sub_100039388(&v19);
    v11 = v25[3];
  }

  v12 = v11;
  _Block_object_dispose(&v24, 8);
  v13 = [v11 alloc];
  thumbnailImage = [(SSSScreenshotItemProviderPDFAsImage *)self thumbnailImage];
  v15 = [v13 initWithPlatformImage:thumbnailImage];
  [v10 setThumbnail:v15];

  nameForScreenshot = [(SSSScreenshotItemProvider *)self nameForScreenshot];
  [v10 setName:nameForScreenshot];

  identifier = [UTTypeImage identifier];
  [v10 setType:identifier];

  [v7 setSpecialization:v10];

  return v7;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  v4 = [(SSSScreenshotItemProvider *)self nameForScreenshot:controller];
  v5 = [v4 stringByAppendingPathExtension:@"jpeg"];

  return v5;
}

- (id)imageData
{
  pdfAsImage = [(SSSScreenshotItemProviderPDFAsImage *)self pdfAsImage];
  v3 = UIImageJPEGRepresentation(pdfAsImage, 1.0);

  return v3;
}

@end