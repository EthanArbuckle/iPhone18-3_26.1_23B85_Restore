@interface BKSeriesAsset
- (BKSeriesAsset)initWithSeriesInfo:(id)info dataSourceIdentifier:(id)identifier;
- (NSString)description;
@end

@implementation BKSeriesAsset

- (BKSeriesAsset)initWithSeriesInfo:(id)info dataSourceIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v68.receiver = self;
  v68.super_class = BKSeriesAsset;
  v8 = [(BKSeriesAsset *)&v68 init];
  if (v8)
  {
    if (infoCopy && ([infoCopy adamId], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
    {
      author = [infoCopy author];
      author = v8->_author;
      v8->_author = author;

      authorCount = [infoCopy authorCount];
      authorCount = v8->_authorCount;
      v8->_authorCount = authorCount;

      authorNames = [infoCopy authorNames];
      authorNames = v8->_authorNames;
      v8->_authorNames = authorNames;

      sortAuthor = [infoCopy sortAuthor];
      sortAuthor = v8->_sortAuthor;
      v8->_sortAuthor = sortAuthor;

      hasTooManyAuthors = [infoCopy hasTooManyAuthors];
      hasTooManyAuthors = v8->_hasTooManyAuthors;
      v8->_hasTooManyAuthors = hasTooManyAuthors;

      narratorCount = [infoCopy narratorCount];
      narratorCount = v8->_narratorCount;
      v8->_narratorCount = narratorCount;

      narratorNames = [infoCopy narratorNames];
      narratorNames = v8->_narratorNames;
      v8->_narratorNames = narratorNames;

      hasTooManyNarrators = [infoCopy hasTooManyNarrators];
      hasTooManyNarrators = v8->_hasTooManyNarrators;
      v8->_hasTooManyNarrators = hasTooManyNarrators;

      title = [infoCopy title];
      title = v8->_title;
      v8->_title = title;

      title2 = [infoCopy title];
      sortTitle = v8->_sortTitle;
      v8->_sortTitle = title2;

      adamId = [infoCopy adamId];
      storeID = v8->_storeID;
      v8->_storeID = adamId;

      adamId2 = [infoCopy adamId];
      assetID = v8->_assetID;
      v8->_assetID = adamId2;

      seriesId = [infoCopy seriesId];
      seriesID = v8->_seriesID;
      v8->_seriesID = seriesId;

      genre = [infoCopy genre];
      genre = v8->_genre;
      v8->_genre = genre;

      genres = [infoCopy genres];
      genres = v8->_genres;
      v8->_genres = genres;

      v41 = v8->_seriesID;
      if (v41 && [(NSString *)v41 length])
      {
        v8->_state = 5;
        seriesIsOrdered = [infoCopy seriesIsOrdered];
        seriesIsOrdered = v8->_seriesIsOrdered;
        v8->_seriesIsOrdered = seriesIsOrdered;
      }

      else
      {
        v8->_state = 6;
      }

      if (([infoCopy isContainer] & 1) != 0 || objc_msgSend(infoCopy, "isExplicit"))
      {
        v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy isExplicit]);
        isExplicit = v8->_isExplicit;
        v8->_isExplicit = v45;
      }

      if (([infoCopy isContainer] & 1) == 0)
      {
        releaseDate = [infoCopy releaseDate];
        releaseDate = v8->_releaseDate;
        v8->_releaseDate = releaseDate;
      }

      sequenceDisplayName = [infoCopy sequenceDisplayName];
      sequenceDisplayName = v8->_sequenceDisplayName;
      v8->_sequenceDisplayName = sequenceDisplayName;

      sequenceNumber = [infoCopy sequenceNumber];
      sequenceNumber = v8->_sequenceNumber;
      v8->_sequenceNumber = sequenceNumber;

      coverAspectRatio = [infoCopy coverAspectRatio];
      coverAspectRatio = v8->_coverAspectRatio;
      v8->_coverAspectRatio = coverAspectRatio;

      if ([infoCopy isContainer])
      {
        v55 = 5;
      }

      else if ([infoCopy isAudiobook])
      {
        v55 = 6;
      }

      else
      {
        v55 = 1;
      }

      v8->_contentType = v55;
      seriesSortKey = [infoCopy seriesSortKey];
      seriesSortKey = v8->_seriesSortKey;
      v8->_seriesSortKey = seriesSortKey;

      if ([infoCopy isContainer])
      {
        v58 = &__kCFBooleanFalse;
      }

      else
      {
        v58 = &__kCFBooleanTrue;
      }

      objc_storeStrong(&v8->_seriesIsHidden, v58);
      objc_storeStrong(&v8->_dataSourceIdentifier, identifier);
      v59 = +[NSDate date];
      lastOpenDate = v8->_lastOpenDate;
      v8->_lastOpenDate = v59;

      v61 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy isAudiobook]);
      isStoreAudiobook = v8->_isStoreAudiobook;
      v8->_isStoreAudiobook = v61;

      v63 = [infoCopy url];
      url = v8->_url;
      v8->_url = v63;

      mappedItemId = [infoCopy mappedItemId];
      mappedAssetID = v8->_mappedAssetID;
      v8->_mappedAssetID = mappedItemId;

      mappedItemTypeRaw = [infoCopy mappedItemTypeRaw];
      v8->_mappedAssetContentType = [BKSeriesAssetHelper mappedAssetContentTypeFromRawItemType:mappedItemTypeRaw];
    }

    else
    {
      mappedItemTypeRaw = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  contentType = [(BKSeriesAsset *)self contentType];
  v4 = &stru_100A30A68;
  if (contentType == 5)
  {
    v4 = @" (container)";
  }

  v16 = v4;
  assetID = [(BKSeriesAsset *)self assetID];
  seriesID = [(BKSeriesAsset *)self seriesID];
  storeID = [(BKSeriesAsset *)self storeID];
  title = [(BKSeriesAsset *)self title];
  author = [(BKSeriesAsset *)self author];
  sortAuthor = [(BKSeriesAsset *)self sortAuthor];
  sequenceDisplayName = [(BKSeriesAsset *)self sequenceDisplayName];
  seriesIsHidden = [(BKSeriesAsset *)self seriesIsHidden];
  v10 = [NSNumber numberWithShort:[(BKSeriesAsset *)self contentType]];
  isStoreAudiobook = [(BKSeriesAsset *)self isStoreAudiobook];
  v12 = [NSNumber numberWithShort:[(BKSeriesAsset *)self state]];
  v13 = [NSString stringWithFormat:@"<BKSeriesAsset%@ %p>\r  assetID: %@\r  seriesID: %@\r  storeID: %@\r  title: %@\r  author: %@\r  sortAuthor: %@\r sequenceDisplayName: %@\r  seriesIsHidden: %@\r  contentType: %@\r  isStoreAudiobook: %@\r  state: %@", v16, self, assetID, seriesID, storeID, title, author, sortAuthor, sequenceDisplayName, seriesIsHidden, v10, isStoreAudiobook, v12];

  return v13;
}

@end