@interface BKActivityPDFLinkPresentationItemSource
- (BKActivityPDFLinkPresentationItemSource)initWithBookInfo:(id)a3;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
@end

@implementation BKActivityPDFLinkPresentationItemSource

- (BKActivityPDFLinkPresentationItemSource)initWithBookInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKActivityPDFLinkPresentationItemSource;
  v6 = [(BKActivityPDFLinkPresentationItemSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookInfo, a3);
  }

  return v7;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = [(BKActivityPDFLinkPresentationItemSource *)self bookInfo];
  v5 = [v4 bookBundlePath];
  v6 = [NSURL fileURLWithPath:v5];

  v7 = +[AEPluginRegistry sharedInstance];
  v8 = [v7 pluginForURL:v6];

  v9 = [v8 helperForURL:v6 withOptions:0];
  v10 = [v9 helperCoverImageOfSize:{100.0, 100.0}];
  v11 = v10;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = UIImagePNGRepresentation(v10);
  if (!v12)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v24 = v8;
  v13 = objc_alloc_init(LPLinkMetadata);
  [v13 setURL:v6];
  [v13 setOriginalURL:v6];
  v14 = objc_alloc_init(LPFileMetadata);
  v15 = [(BKActivityPDFLinkPresentationItemSource *)self bookInfo];
  v16 = [v15 bookTitle];
  [v14 setName:v16];

  v17 = [(BKActivityPDFLinkPresentationItemSource *)self bookInfo];
  v18 = [v17 assetType];
  v19 = [v18 lastPathComponent];
  BCAssetContentTypeFromAssetTypeString();

  v20 = BCAssetUTIForContentType();
  [v14 setType:v20];

  v25 = 0;
  v21 = [v6 bu_fileAllocatedSizeWithError:&v25];
  if (!v25 && v21)
  {
    [v14 setSize:v21];
  }

  v22 = [[LPImage alloc] initWithData:v12 MIMEType:@"image/png"];
  [v14 setThumbnail:v22];
  [v13 setSpecialization:v14];

  v8 = v24;
LABEL_9:

  return v13;
}

@end