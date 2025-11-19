@interface SSSScreenshotItemProviderPDF
+ (id)_sharableItemForActivityType:(id)a3 screenshot:(id)a4;
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation SSSScreenshotItemProviderPDF

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if (a4)
  {
    v5 = objc_opt_class();
    v6 = [(SSSScreenshotItemProviderPDF *)self activityType];
    v7 = [(SSSScreenshotItemProvider *)self screenshot];
    v8 = [v5 _sharableItemForActivityType:v6 screenshot:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() _dataTypeIdentifierForActivityType:v4];

  return v5;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
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
  v11 = [(SSSScreenshotItemProvider *)self screenshot];
  v12 = [v11 PDFDocument];
  v13 = [v12 pageAtIndex:0];
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

  v18 = [(SSSScreenshotItemProvider *)self nameForScreenshot];
  [v10 setName:v18];

  v19 = [UTTypePDF identifier];
  [v10 setType:v19];

  [v7 setSpecialization:v10];

  return v7;
}

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  v4 = [(SSSScreenshotItemProvider *)self nameForScreenshot:a3];
  v5 = [v4 stringByAppendingPathExtension:@"pdf"];

  return v5;
}

+ (id)_sharableItemForActivityType:(id)a3 screenshot:(id)a4
{
  v6 = a3;
  v7 = [a4 editedPDFDataForShareSheet];
  if (v7 && [v6 isEqualToString:UIActivityTypeCopyToPasteboard])
  {
    v8 = [a1 _dataTypeIdentifierForActivityType:v6];
    v11 = v8;
    v12 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

@end