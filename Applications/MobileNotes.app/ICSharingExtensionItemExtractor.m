@interface ICSharingExtensionItemExtractor
- (id)getAttachmentInfoWithImage:(id)a3 useTempFile:(BOOL)a4;
- (void)createTempFileFromImage:(id)a3 populateAttachmentInfo:(id)a4;
- (void)extractDataWithProvider:(id)a3 forUTI:(id)a4 useTempFile:(BOOL)a5 withCompletion:(id)a6;
- (void)extractMediaFileURLWithProvider:(id)a3 contentType:(id)a4 completion:(id)a5;
- (void)extractURLWithProvider:(id)a3 withCompletion:(id)a4;
@end

@implementation ICSharingExtensionItemExtractor

- (void)extractMediaFileURLWithProvider:(id)a3 contentType:(id)a4 completion:(id)a5
{
  v8 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012A7A4;
  v12[3] = &unk_10064AA60;
  v14 = self;
  v15 = a5;
  v13 = v8;
  v9 = v15;
  v10 = v8;
  v11 = [a3 loadFileRepresentationForContentType:v10 openInPlace:0 completionHandler:v12];
}

- (void)extractURLWithProvider:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [UTTypeFileURL identifier];
  v12 = NSItemProviderOptionsIssueSandboxExtensionKey;
  v13 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012AC54;
  v10[3] = &unk_10064AA88;
  v11 = v5;
  v9 = v5;
  [v6 loadItemForTypeIdentifier:v7 options:v8 completionHandler:v10];
}

- (void)extractDataWithProvider:(id)a3 forUTI:(id)a4 useTempFile:(BOOL)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [UTTypeData identifier];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10012AF14;
  v17[3] = &unk_10064AAD8;
  v21 = a5;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  [v15 loadItemForTypeIdentifier:v13 options:0 completionHandler:v17];
}

- (id)getAttachmentInfoWithImage:(id)a3 useTempFile:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
  v8 = v7;
  if (v4)
  {
    [(ICSharingExtensionItemExtractor *)self createTempFileFromImage:v6 populateAttachmentInfo:v7];
  }

  else
  {
    [v7 setImage:v6];
  }

  return v8;
}

- (void)createTempFileFromImage:(id)a3 populateAttachmentInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ICAccount accountUtilities];
  v9 = [(ICSharingExtensionItemExtractor *)self accountId];
  v10 = [v8 temporaryDirectoryURLForAccountIdentifier:v9];

  if (!v10)
  {
    [ICAssert handleFailedAssertWithCondition:"((tempDirectoryURL) != nil)" functionName:"[ICSharingExtensionItemExtractor createTempFileFromImage:populateAttachmentInfo:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "tempDirectoryURL"];
  }

  v11 = objc_alloc_init(NSUUID);
  v12 = [v11 UUIDString];

  v13 = [NSString stringWithFormat:@"%@.jpeg", v12];
  v14 = [v10 URLByAppendingPathComponent:v13 isDirectory:0];
  v15 = [v6 ic_JPEGData];
  if (!v15)
  {
    [ICAssert handleFailedAssertWithCondition:"((data) != nil)" functionName:"[ICSharingExtensionItemExtractor createTempFileFromImage:populateAttachmentInfo:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "data"];
  }

  v19 = 0;
  v16 = [v15 writeToURL:v14 options:1 error:&v19];
  v17 = v19;
  if (v16)
  {
    [v7 setMediaURL:v14];
    [v7 setUsesTemporaryFile:1];
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1004E11C4(v17, v18);
    }

    [v7 setImage:v6];
  }
}

@end