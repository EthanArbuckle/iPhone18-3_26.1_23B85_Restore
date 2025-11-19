@interface BCAssetDragInfo
- (BCAssetDragInfo)initWithDragInfo:(id)a3;
@end

@implementation BCAssetDragInfo

- (BCAssetDragInfo)initWithDragInfo:(id)a3
{
  v4 = a3;
  v5 = [(BCAssetDragInfo *)self init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"kind"];
    v7 = BUDynamicCast();
    v5->_contentType = [v7 integerValue];

    objc_opt_class();
    v8 = [v4 objectForKeyedSubscript:@"assetID"];
    v9 = BUDynamicCast();
    assetID = v5->_assetID;
    v5->_assetID = v9;

    objc_opt_class();
    v11 = [v4 objectForKeyedSubscript:@"author"];
    v12 = BUDynamicCast();
    author = v5->_author;
    v5->_author = v12;

    objc_opt_class();
    v14 = [v4 objectForKeyedSubscript:@"title"];
    v15 = BUDynamicCast();
    title = v5->_title;
    v5->_title = v15;

    objc_opt_class();
    v17 = [v4 objectForKeyedSubscript:@"storeURL"];
    v18 = BUDynamicCast();

    if ([v18 length])
    {
      v19 = [NSURL URLWithString:v18];
      storeURL = v5->_storeURL;
      v5->_storeURL = v19;
    }

    objc_opt_class();
    v21 = [v4 objectForKeyedSubscript:@"fileURL"];
    v22 = BUDynamicCast();

    if ([v22 length])
    {
      v23 = [NSURL URLWithString:v22];
      localFileURL = v5->_localFileURL;
      v5->_localFileURL = v23;
    }

    objc_opt_class();
    v25 = [v4 objectForKeyedSubscript:@"fileSize"];
    v26 = BUDynamicCast();
    v5->_fileSize = [v26 longLongValue];

    objc_opt_class();
    v27 = [v4 objectForKeyedSubscript:@"isSample"];
    v28 = BUDynamicCast();
    v5->_isSample = [v28 BOOLValue];
  }

  return v5;
}

@end