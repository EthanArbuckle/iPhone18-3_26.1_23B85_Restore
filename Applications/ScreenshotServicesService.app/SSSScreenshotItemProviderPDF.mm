@interface SSSScreenshotItemProviderPDF
+ (id)_sharableItemForActivityType:(id)type screenshot:(id)screenshot;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation SSSScreenshotItemProviderPDF

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (type)
  {
    v5 = objc_opt_class();
    activityType = [(SSSScreenshotItemProviderPDF *)self activityType];
    screenshot = [(SSSScreenshotItemProvider *)self screenshot];
    v8 = [v5 _sharableItemForActivityType:activityType screenshot:screenshot];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  typeCopy = type;
  v5 = [objc_opt_class() _dataTypeIdentifierForActivityType:typeCopy];

  return v5;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v5 = qword_1000D49C0;
  v29 = qword_1000D49C0;
  if (!qword_1000D49C0)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100003C08;
    v24 = &unk_1000B9FA8;
    v25 = &v26;
    sub_100003C08(&v21);
    v5 = v27[3];
  }

  v6 = v5;
  _Block_object_dispose(&v26, 8);
  v7 = objc_alloc_init(v5);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v8 = qword_1000D49D0;
  v29 = qword_1000D49D0;
  if (!qword_1000D49D0)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100003DD0;
    v24 = &unk_1000B9FA8;
    v25 = &v26;
    sub_100003DD0(&v21);
    v8 = v27[3];
  }

  v9 = v8;
  _Block_object_dispose(&v26, 8);
  v10 = objc_alloc_init(v8);
  screenshot = [(SSSScreenshotItemProvider *)self screenshot];
  pDFDocument = [screenshot PDFDocument];
  v13 = [pDFDocument pageAtIndex:0];
  v14 = [v13 thumbnailOfSize:1 forBox:{300.0, 300.0}];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v15 = qword_1000D49D8;
  v29 = qword_1000D49D8;
  if (!qword_1000D49D8)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100003E28;
    v24 = &unk_1000B9FA8;
    v25 = &v26;
    sub_100003E28(&v21);
    v15 = v27[3];
  }

  v16 = v15;
  _Block_object_dispose(&v26, 8);
  v17 = [[v15 alloc] initWithPlatformImage:v14];
  [v10 setThumbnail:v17];

  nameForScreenshot = [(SSSScreenshotItemProvider *)self nameForScreenshot];
  [v10 setName:nameForScreenshot];

  identifier = [UTTypePDF identifier];
  [v10 setType:identifier];

  [v7 setSpecialization:v10];

  return v7;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  v4 = [(SSSScreenshotItemProvider *)self nameForScreenshot:controller];
  v5 = [v4 stringByAppendingPathExtension:@"pdf"];

  return v5;
}

+ (id)_sharableItemForActivityType:(id)type screenshot:(id)screenshot
{
  typeCopy = type;
  editedPDFDataForShareSheet = [screenshot editedPDFDataForShareSheet];
  if (editedPDFDataForShareSheet && [typeCopy isEqualToString:UIActivityTypeCopyToPasteboard])
  {
    v8 = [self _dataTypeIdentifierForActivityType:typeCopy];
    v11 = v8;
    v12 = editedPDFDataForShareSheet;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v9 = editedPDFDataForShareSheet;
  }

  return v9;
}

@end