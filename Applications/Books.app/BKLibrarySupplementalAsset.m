@interface BKLibrarySupplementalAsset
+ (id)newAssetFromJaliscoBookletItem:(id)a3 parentAsset:(id)a4 dataSourceIdentifier:(id)a5;
- (BKLibrarySupplementalAsset)initWithParentAsset:(id)a3 dataSourceIdentifier:(id)a4 storeID:(id)a5 title:(id)a6 downloadParams:(id)a7 size:(id)a8;
- (NSDate)dataSourceInsertionDate;
- (NSDate)expectedDate;
- (NSDate)purchaseDate;
- (NSNumber)isExplicit;
- (NSString)accountID;
- (NSString)author;
- (NSString)bookDescription;
- (NSString)comments;
- (NSString)genre;
- (NSString)sortAuthor;
- (NSString)storePlaylistID;
- (NSString)year;
- (int64_t)fileSize;
@end

@implementation BKLibrarySupplementalAsset

- (NSString)storePlaylistID
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 storeID];

  return v3;
}

- (NSString)author
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 author];

  return v3;
}

- (NSString)sortAuthor
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 sortAuthor];

  return v3;
}

- (NSString)genre
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 genre];

  return v3;
}

- (NSString)comments
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 comments];

  return v3;
}

- (NSString)bookDescription
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 bookDescription];

  return v3;
}

- (NSString)year
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 year];

  return v3;
}

- (NSNumber)isExplicit
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 isExplicit];

  return v3;
}

- (NSDate)purchaseDate
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 purchaseDate];

  return v3;
}

- (NSString)accountID
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 accountID];

  return v3;
}

- (int64_t)fileSize
{
  v2 = [(BKLibrarySupplementalAsset *)self size];
  v3 = [v2 intValue];

  return v3;
}

- (NSDate)dataSourceInsertionDate
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 dataSourceInsertionDate];

  return v3;
}

- (NSDate)expectedDate
{
  v2 = [(BKLibrarySupplementalAsset *)self parentAsset];
  v3 = [v2 expectedDate];

  return v3;
}

- (BKLibrarySupplementalAsset)initWithParentAsset:(id)a3 dataSourceIdentifier:(id)a4 storeID:(id)a5 title:(id)a6 downloadParams:(id)a7 size:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v32.receiver = self;
  v32.super_class = BKLibrarySupplementalAsset;
  v21 = [(BKLibrarySupplementalAsset *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_parentAsset, a3);
    v23 = [v17 copy];
    storeID = v22->_storeID;
    v22->_storeID = v23;

    v25 = [v18 copy];
    title = v22->_title;
    v22->_title = v25;

    v27 = [v16 copy];
    dataSourceIdentifier = v22->_dataSourceIdentifier;
    v22->_dataSourceIdentifier = v27;

    v29 = [v19 copy];
    storeDownloadParameters = v22->_storeDownloadParameters;
    v22->_storeDownloadParameters = v29;

    objc_storeStrong(&v22->_size, a8);
  }

  return v22;
}

+ (id)newAssetFromJaliscoBookletItem:(id)a3 parentAsset:(id)a4 dataSourceIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [BKLibrarySupplementalAsset alloc];
  v11 = [v9 storeID];
  v12 = [v9 title];
  v13 = [v9 storeDownloadParameters];
  v14 = [v9 size];

  v15 = [(BKLibrarySupplementalAsset *)v10 initWithParentAsset:v8 dataSourceIdentifier:v7 storeID:v11 title:v12 downloadParams:v13 size:v14];
  return v15;
}

@end