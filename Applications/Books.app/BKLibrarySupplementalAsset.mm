@interface BKLibrarySupplementalAsset
+ (id)newAssetFromJaliscoBookletItem:(id)item parentAsset:(id)asset dataSourceIdentifier:(id)identifier;
- (BKLibrarySupplementalAsset)initWithParentAsset:(id)asset dataSourceIdentifier:(id)identifier storeID:(id)d title:(id)title downloadParams:(id)params size:(id)size;
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
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  storeID = [parentAsset storeID];

  return storeID;
}

- (NSString)author
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  author = [parentAsset author];

  return author;
}

- (NSString)sortAuthor
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  sortAuthor = [parentAsset sortAuthor];

  return sortAuthor;
}

- (NSString)genre
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  genre = [parentAsset genre];

  return genre;
}

- (NSString)comments
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  comments = [parentAsset comments];

  return comments;
}

- (NSString)bookDescription
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  bookDescription = [parentAsset bookDescription];

  return bookDescription;
}

- (NSString)year
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  year = [parentAsset year];

  return year;
}

- (NSNumber)isExplicit
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  isExplicit = [parentAsset isExplicit];

  return isExplicit;
}

- (NSDate)purchaseDate
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  purchaseDate = [parentAsset purchaseDate];

  return purchaseDate;
}

- (NSString)accountID
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  accountID = [parentAsset accountID];

  return accountID;
}

- (int64_t)fileSize
{
  v2 = [(BKLibrarySupplementalAsset *)self size];
  intValue = [v2 intValue];

  return intValue;
}

- (NSDate)dataSourceInsertionDate
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  dataSourceInsertionDate = [parentAsset dataSourceInsertionDate];

  return dataSourceInsertionDate;
}

- (NSDate)expectedDate
{
  parentAsset = [(BKLibrarySupplementalAsset *)self parentAsset];
  expectedDate = [parentAsset expectedDate];

  return expectedDate;
}

- (BKLibrarySupplementalAsset)initWithParentAsset:(id)asset dataSourceIdentifier:(id)identifier storeID:(id)d title:(id)title downloadParams:(id)params size:(id)size
{
  assetCopy = asset;
  identifierCopy = identifier;
  dCopy = d;
  titleCopy = title;
  paramsCopy = params;
  sizeCopy = size;
  v32.receiver = self;
  v32.super_class = BKLibrarySupplementalAsset;
  v21 = [(BKLibrarySupplementalAsset *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_parentAsset, asset);
    v23 = [dCopy copy];
    storeID = v22->_storeID;
    v22->_storeID = v23;

    v25 = [titleCopy copy];
    title = v22->_title;
    v22->_title = v25;

    v27 = [identifierCopy copy];
    dataSourceIdentifier = v22->_dataSourceIdentifier;
    v22->_dataSourceIdentifier = v27;

    v29 = [paramsCopy copy];
    storeDownloadParameters = v22->_storeDownloadParameters;
    v22->_storeDownloadParameters = v29;

    objc_storeStrong(&v22->_size, size);
  }

  return v22;
}

+ (id)newAssetFromJaliscoBookletItem:(id)item parentAsset:(id)asset dataSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  assetCopy = asset;
  itemCopy = item;
  v10 = [BKLibrarySupplementalAsset alloc];
  storeID = [itemCopy storeID];
  title = [itemCopy title];
  storeDownloadParameters = [itemCopy storeDownloadParameters];
  v14 = [itemCopy size];

  v15 = [(BKLibrarySupplementalAsset *)v10 initWithParentAsset:assetCopy dataSourceIdentifier:identifierCopy storeID:storeID title:title downloadParams:storeDownloadParameters size:v14];
  return v15;
}

@end