@interface ICSharingExtensionItemExtractor
- (id)getAttachmentInfoWithImage:(id)image useTempFile:(BOOL)file;
- (void)createTempFileFromImage:(id)image populateAttachmentInfo:(id)info;
- (void)extractDataWithProvider:(id)provider forUTI:(id)i useTempFile:(BOOL)file withCompletion:(id)completion;
- (void)extractMediaFileURLWithProvider:(id)provider contentType:(id)type completion:(id)completion;
- (void)extractURLWithProvider:(id)provider withCompletion:(id)completion;
@end

@implementation ICSharingExtensionItemExtractor

- (void)extractMediaFileURLWithProvider:(id)provider contentType:(id)type completion:(id)completion
{
  typeCopy = type;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000AA68;
  v12[3] = &unk_1000F24A8;
  selfCopy = self;
  completionCopy = completion;
  v13 = typeCopy;
  v9 = completionCopy;
  v10 = typeCopy;
  v11 = [provider loadFileRepresentationForContentType:v10 openInPlace:0 completionHandler:v12];
}

- (void)extractURLWithProvider:(id)provider withCompletion:(id)completion
{
  completionCopy = completion;
  providerCopy = provider;
  identifier = [UTTypeFileURL identifier];
  v12 = NSItemProviderOptionsIssueSandboxExtensionKey;
  v13 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000AF18;
  v10[3] = &unk_1000F24F8;
  v11 = completionCopy;
  v9 = completionCopy;
  [providerCopy loadItemForTypeIdentifier:identifier options:v8 completionHandler:v10];
}

- (void)extractDataWithProvider:(id)provider forUTI:(id)i useTempFile:(BOOL)file withCompletion:(id)completion
{
  providerCopy = provider;
  iCopy = i;
  completionCopy = completion;
  identifier = [UTTypeData identifier];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000B1D8;
  v17[3] = &unk_1000F2548;
  fileCopy = file;
  v17[4] = self;
  v18 = providerCopy;
  v19 = iCopy;
  v20 = completionCopy;
  v14 = iCopy;
  v15 = providerCopy;
  v16 = completionCopy;
  [v15 loadItemForTypeIdentifier:identifier options:0 completionHandler:v17];
}

- (id)getAttachmentInfoWithImage:(id)image useTempFile:(BOOL)file
{
  fileCopy = file;
  imageCopy = image;
  v7 = objc_alloc_init(ICAddAttachmentsManagerAttachmentInfo);
  v8 = v7;
  if (fileCopy)
  {
    [(ICSharingExtensionItemExtractor *)self createTempFileFromImage:imageCopy populateAttachmentInfo:v7];
  }

  else
  {
    [v7 setImage:imageCopy];
  }

  return v8;
}

- (void)createTempFileFromImage:(id)image populateAttachmentInfo:(id)info
{
  imageCopy = image;
  infoCopy = info;
  v8 = +[ICAccount accountUtilities];
  accountId = [(ICSharingExtensionItemExtractor *)self accountId];
  v10 = [v8 temporaryDirectoryURLForAccountIdentifier:accountId];

  if (!v10)
  {
    [ICAssert handleFailedAssertWithCondition:"((tempDirectoryURL) != nil)" functionName:"[ICSharingExtensionItemExtractor createTempFileFromImage:populateAttachmentInfo:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "tempDirectoryURL"];
  }

  v11 = objc_alloc_init(NSUUID);
  uUIDString = [v11 UUIDString];

  v13 = [NSString stringWithFormat:@"%@.jpeg", uUIDString];
  v14 = [v10 URLByAppendingPathComponent:v13 isDirectory:0];
  ic_JPEGData = [imageCopy ic_JPEGData];
  if (!ic_JPEGData)
  {
    [ICAssert handleFailedAssertWithCondition:"((data) != nil)" functionName:"[ICSharingExtensionItemExtractor createTempFileFromImage:populateAttachmentInfo:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "data"];
  }

  v19 = 0;
  v16 = [ic_JPEGData writeToURL:v14 options:1 error:&v19];
  v17 = v19;
  if (v16)
  {
    [infoCopy setMediaURL:v14];
    [infoCopy setUsesTemporaryFile:1];
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000B35FC(v17, v18);
    }

    [infoCopy setImage:imageCopy];
  }
}

@end