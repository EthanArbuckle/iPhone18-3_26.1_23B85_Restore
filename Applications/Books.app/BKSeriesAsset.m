@interface BKSeriesAsset
- (BKSeriesAsset)initWithSeriesInfo:(id)a3 dataSourceIdentifier:(id)a4;
- (NSString)description;
@end

@implementation BKSeriesAsset

- (BKSeriesAsset)initWithSeriesInfo:(id)a3 dataSourceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v68.receiver = self;
  v68.super_class = BKSeriesAsset;
  v8 = [(BKSeriesAsset *)&v68 init];
  if (v8)
  {
    if (v6 && ([v6 adamId], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
    {
      v11 = [v6 author];
      author = v8->_author;
      v8->_author = v11;

      v13 = [v6 authorCount];
      authorCount = v8->_authorCount;
      v8->_authorCount = v13;

      v15 = [v6 authorNames];
      authorNames = v8->_authorNames;
      v8->_authorNames = v15;

      v17 = [v6 sortAuthor];
      sortAuthor = v8->_sortAuthor;
      v8->_sortAuthor = v17;

      v19 = [v6 hasTooManyAuthors];
      hasTooManyAuthors = v8->_hasTooManyAuthors;
      v8->_hasTooManyAuthors = v19;

      v21 = [v6 narratorCount];
      narratorCount = v8->_narratorCount;
      v8->_narratorCount = v21;

      v23 = [v6 narratorNames];
      narratorNames = v8->_narratorNames;
      v8->_narratorNames = v23;

      v25 = [v6 hasTooManyNarrators];
      hasTooManyNarrators = v8->_hasTooManyNarrators;
      v8->_hasTooManyNarrators = v25;

      v27 = [v6 title];
      title = v8->_title;
      v8->_title = v27;

      v29 = [v6 title];
      sortTitle = v8->_sortTitle;
      v8->_sortTitle = v29;

      v31 = [v6 adamId];
      storeID = v8->_storeID;
      v8->_storeID = v31;

      v33 = [v6 adamId];
      assetID = v8->_assetID;
      v8->_assetID = v33;

      v35 = [v6 seriesId];
      seriesID = v8->_seriesID;
      v8->_seriesID = v35;

      v37 = [v6 genre];
      genre = v8->_genre;
      v8->_genre = v37;

      v39 = [v6 genres];
      genres = v8->_genres;
      v8->_genres = v39;

      v41 = v8->_seriesID;
      if (v41 && [(NSString *)v41 length])
      {
        v8->_state = 5;
        v42 = [v6 seriesIsOrdered];
        seriesIsOrdered = v8->_seriesIsOrdered;
        v8->_seriesIsOrdered = v42;
      }

      else
      {
        v8->_state = 6;
      }

      if (([v6 isContainer] & 1) != 0 || objc_msgSend(v6, "isExplicit"))
      {
        v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isExplicit]);
        isExplicit = v8->_isExplicit;
        v8->_isExplicit = v45;
      }

      if (([v6 isContainer] & 1) == 0)
      {
        v47 = [v6 releaseDate];
        releaseDate = v8->_releaseDate;
        v8->_releaseDate = v47;
      }

      v49 = [v6 sequenceDisplayName];
      sequenceDisplayName = v8->_sequenceDisplayName;
      v8->_sequenceDisplayName = v49;

      v51 = [v6 sequenceNumber];
      sequenceNumber = v8->_sequenceNumber;
      v8->_sequenceNumber = v51;

      v53 = [v6 coverAspectRatio];
      coverAspectRatio = v8->_coverAspectRatio;
      v8->_coverAspectRatio = v53;

      if ([v6 isContainer])
      {
        v55 = 5;
      }

      else if ([v6 isAudiobook])
      {
        v55 = 6;
      }

      else
      {
        v55 = 1;
      }

      v8->_contentType = v55;
      v56 = [v6 seriesSortKey];
      seriesSortKey = v8->_seriesSortKey;
      v8->_seriesSortKey = v56;

      if ([v6 isContainer])
      {
        v58 = &__kCFBooleanFalse;
      }

      else
      {
        v58 = &__kCFBooleanTrue;
      }

      objc_storeStrong(&v8->_seriesIsHidden, v58);
      objc_storeStrong(&v8->_dataSourceIdentifier, a4);
      v59 = +[NSDate date];
      lastOpenDate = v8->_lastOpenDate;
      v8->_lastOpenDate = v59;

      v61 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isAudiobook]);
      isStoreAudiobook = v8->_isStoreAudiobook;
      v8->_isStoreAudiobook = v61;

      v63 = [v6 url];
      url = v8->_url;
      v8->_url = v63;

      v65 = [v6 mappedItemId];
      mappedAssetID = v8->_mappedAssetID;
      v8->_mappedAssetID = v65;

      v44 = [v6 mappedItemTypeRaw];
      v8->_mappedAssetContentType = [BKSeriesAssetHelper mappedAssetContentTypeFromRawItemType:v44];
    }

    else
    {
      v44 = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = [(BKSeriesAsset *)self contentType];
  v4 = &stru_100A30A68;
  if (v3 == 5)
  {
    v4 = @" (container)";
  }

  v16 = v4;
  v15 = [(BKSeriesAsset *)self assetID];
  v18 = [(BKSeriesAsset *)self seriesID];
  v17 = [(BKSeriesAsset *)self storeID];
  v5 = [(BKSeriesAsset *)self title];
  v6 = [(BKSeriesAsset *)self author];
  v7 = [(BKSeriesAsset *)self sortAuthor];
  v8 = [(BKSeriesAsset *)self sequenceDisplayName];
  v9 = [(BKSeriesAsset *)self seriesIsHidden];
  v10 = [NSNumber numberWithShort:[(BKSeriesAsset *)self contentType]];
  v11 = [(BKSeriesAsset *)self isStoreAudiobook];
  v12 = [NSNumber numberWithShort:[(BKSeriesAsset *)self state]];
  v13 = [NSString stringWithFormat:@"<BKSeriesAsset%@ %p>\r  assetID: %@\r  seriesID: %@\r  storeID: %@\r  title: %@\r  author: %@\r  sortAuthor: %@\r sequenceDisplayName: %@\r  seriesIsHidden: %@\r  contentType: %@\r  isStoreAudiobook: %@\r  state: %@", v16, self, v15, v18, v17, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end