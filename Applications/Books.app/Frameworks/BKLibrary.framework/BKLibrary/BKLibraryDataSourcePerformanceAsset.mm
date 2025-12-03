@interface BKLibraryDataSourcePerformanceAsset
+ (id)profileKeysOfInterest;
- (BKLibraryDataSourcePerformanceAsset)initWithAssetID:(id)d identifier:(id)identifier;
- (BKLibraryDataSourcePerformanceAsset)initWithAssetID:(id)d productProfile:(id)profile identifier:(id)identifier date:(id)date;
@end

@implementation BKLibraryDataSourcePerformanceAsset

+ (id)profileKeysOfInterest
{
  if (qword_EFD58 != -1)
  {
    sub_91258();
  }

  v3 = qword_EFD50;

  return v3;
}

- (BKLibraryDataSourcePerformanceAsset)initWithAssetID:(id)d productProfile:(id)profile identifier:(id)identifier date:(id)date
{
  dCopy = d;
  profileCopy = profile;
  identifierCopy = identifier;
  dateCopy = date;
  v34.receiver = self;
  v34.super_class = BKLibraryDataSourcePerformanceAsset;
  v15 = [(BKLibraryDataSourcePerformanceAsset *)&v34 init];
  if (v15)
  {
    objc_opt_class();
    v16 = [profileCopy objectForKeyedSubscript:@"ebookInfo"];
    v17 = BUDynamicCast();

    objc_storeStrong(&v15->_assetID, d);
    objc_storeStrong(&v15->_dataSourceIdentifier, identifier);
    objc_storeStrong(&v15->_date, date);
    v15->_contentType = 0;
    v18 = [profileCopy objectForKeyedSubscript:@"name"];
    title = v15->_title;
    v15->_title = v18;

    v20 = [profileCopy objectForKeyedSubscript:@"artistName"];
    author = v15->_author;
    v15->_author = v20;

    v22 = [profileCopy objectForKeyedSubscript:@"description"];
    bookDescription = v15->_bookDescription;
    v15->_bookDescription = v22;

    objc_opt_class();
    v24 = [v17 objectForKeyedSubscript:@"pageCount"];
    v25 = BUDynamicCast();
    v15->_pageCount = [v25 unsignedLongValue];

    objc_opt_class();
    v26 = [profileCopy objectForKeyedSubscript:@"genres"];
    v27 = BUDynamicCast();

    objc_opt_class();
    firstObject = [v27 firstObject];
    v29 = BUDynamicCast();

    objc_opt_class();
    v30 = [v29 objectForKeyedSubscript:@"name"];
    v31 = BUDynamicCast();
    genre = v15->_genre;
    v15->_genre = v31;
  }

  return v15;
}

- (BKLibraryDataSourcePerformanceAsset)initWithAssetID:(id)d identifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = BKLibraryDataSourcePerformanceAsset;
  v9 = [(BKLibraryDataSourcePerformanceAsset *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetID, d);
    objc_storeStrong(&v10->_dataSourceIdentifier, identifier);
    v11 = +[NSDate date];
    date = v10->_date;
    v10->_date = v11;

    v10->_contentType = 0;
    objc_storeStrong(&v10->_title, d);
    author = v10->_author;
    v10->_author = @"No Author";

    bookDescription = v10->_bookDescription;
    v10->_bookDescription = @"bookDescription";

    genre = v10->_genre;
    v10->_genre = @"Genre";
    v10->_pageCount = 100;
  }

  return v10;
}

@end