@interface BCAssetDragInfo
- (BCAssetDragInfo)initWithDragInfo:(id)info;
@end

@implementation BCAssetDragInfo

- (BCAssetDragInfo)initWithDragInfo:(id)info
{
  infoCopy = info;
  v5 = [(BCAssetDragInfo *)self init];
  if (v5)
  {
    objc_opt_class();
    v6 = [infoCopy objectForKeyedSubscript:@"kind"];
    v7 = BUDynamicCast();
    v5->_contentType = [v7 integerValue];

    objc_opt_class();
    v8 = [infoCopy objectForKeyedSubscript:@"assetID"];
    v9 = BUDynamicCast();
    assetID = v5->_assetID;
    v5->_assetID = v9;

    objc_opt_class();
    v11 = [infoCopy objectForKeyedSubscript:@"author"];
    v12 = BUDynamicCast();
    author = v5->_author;
    v5->_author = v12;

    objc_opt_class();
    v14 = [infoCopy objectForKeyedSubscript:@"title"];
    v15 = BUDynamicCast();
    title = v5->_title;
    v5->_title = v15;

    objc_opt_class();
    v17 = [infoCopy objectForKeyedSubscript:@"storeURL"];
    v18 = BUDynamicCast();

    if ([v18 length])
    {
      v19 = [NSURL URLWithString:v18];
      storeURL = v5->_storeURL;
      v5->_storeURL = v19;
    }

    objc_opt_class();
    v21 = [infoCopy objectForKeyedSubscript:@"fileURL"];
    v22 = BUDynamicCast();

    if ([v22 length])
    {
      v23 = [NSURL URLWithString:v22];
      localFileURL = v5->_localFileURL;
      v5->_localFileURL = v23;
    }

    objc_opt_class();
    v25 = [infoCopy objectForKeyedSubscript:@"fileSize"];
    v26 = BUDynamicCast();
    v5->_fileSize = [v26 longLongValue];

    objc_opt_class();
    v27 = [infoCopy objectForKeyedSubscript:@"isSample"];
    v28 = BUDynamicCast();
    v5->_isSample = [v28 BOOLValue];
  }

  return v5;
}

@end