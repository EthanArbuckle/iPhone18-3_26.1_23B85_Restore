@interface BKLibraryAssetUpdate
- (BKLibraryAssetUpdate)init;
- (BKLibraryAssetUpdate)initWithAsset:(id)asset dataSource:(id)source dataSourceBitmask:(unint64_t)bitmask;
- (id)description;
- (void)postIntegrateCleanup;
- (void)propagateAdditionalDataWithAsset:(id)asset;
@end

@implementation BKLibraryAssetUpdate

- (BKLibraryAssetUpdate)init
{
  v6.receiver = self;
  v6.super_class = BKLibraryAssetUpdate;
  v2 = [(BKLibraryAssetUpdate *)&v6 init];
  v3 = v2;
  if (v2)
  {
    seriesID = v2->_seriesID;
    v2->_seriesID = 0;
  }

  return v3;
}

- (BKLibraryAssetUpdate)initWithAsset:(id)asset dataSource:(id)source dataSourceBitmask:(unint64_t)bitmask
{
  assetCopy = asset;
  sourceCopy = source;
  v11 = [(BKLibraryAssetUpdate *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, asset);
    if (objc_opt_respondsToSelector())
    {
      seriesID = [assetCopy seriesID];

      if (seriesID)
      {
        seriesID2 = [assetCopy seriesID];
        seriesID = v12->_seriesID;
        v12->_seriesID = seriesID2;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      duration = [assetCopy duration];

      if (duration)
      {
        duration2 = [assetCopy duration];
        duration = v12->_duration;
        v12->_duration = duration2;
      }
    }

    v12->_dataSourcesBitmask = bitmask;
    if (objc_opt_respondsToSelector())
    {
      propagateDataProperties = [sourceCopy propagateDataProperties];
    }

    else
    {
      propagateDataProperties = 268370174;
    }

    [(BKLibraryAssetUpdate *)v12 setPropertiesToPropagate:propagateDataProperties];
    [(BKLibraryAssetUpdate *)v12 propagateAdditionalDataWithAsset:assetCopy];
  }

  return v12;
}

- (void)propagateAdditionalDataWithAsset:(id)asset
{
  assetCopy = asset;
  purchaseDate = [assetCopy purchaseDate];
  if (purchaseDate)
  {
    purchaseDates_hack = [(BKLibraryAssetUpdate *)self purchaseDates_hack];

    if (!purchaseDates_hack)
    {
      v6 = objc_opt_new();
      [(BKLibraryAssetUpdate *)self setPurchaseDates_hack:v6];
    }

    purchaseDates_hack2 = [(BKLibraryAssetUpdate *)self purchaseDates_hack];
    [purchaseDates_hack2 addObject:purchaseDate];

    self->_hasChanges = 1;
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x10000000) != 0 && (objc_opt_respondsToSelector())
  {
    coverAspectRatio = [assetCopy coverAspectRatio];
    if (coverAspectRatio)
    {
      v9 = coverAspectRatio;
      objc_storeStrong(&self->_coverAspectRatio, coverAspectRatio);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x2000) != 0 && (objc_opt_respondsToSelector())
  {
    assetIsHidden = [assetCopy assetIsHidden];
    if (assetIsHidden)
    {
      v11 = assetIsHidden;
      objc_storeStrong(&self->_assetIsHidden, assetIsHidden);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 2) != 0 && (objc_opt_respondsToSelector())
  {
    seriesID = [assetCopy seriesID];
    if (seriesID)
    {
      v13 = seriesID;
      objc_storeStrong(&self->_seriesID, seriesID);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 4) != 0 && (objc_opt_respondsToSelector())
  {
    seriesSortKey = [assetCopy seriesSortKey];
    if (seriesSortKey)
    {
      v15 = seriesSortKey;
      objc_storeStrong(&self->_seriesSortKey, seriesSortKey);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 8) != 0 && (objc_opt_respondsToSelector())
  {
    sequenceDisplayName = [assetCopy sequenceDisplayName];
    if (sequenceDisplayName)
    {
      v17 = sequenceDisplayName;
      objc_storeStrong(&self->_sequenceDisplayName, sequenceDisplayName);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x4000000) != 0 && (objc_opt_respondsToSelector())
  {
    sequenceNumber = [assetCopy sequenceNumber];
    if (sequenceNumber)
    {
      v19 = sequenceNumber;
      objc_storeStrong(&self->_sequenceNumber, sequenceNumber);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x10) != 0 && (objc_opt_respondsToSelector())
  {
    seriesIsHidden = [assetCopy seriesIsHidden];
    if (seriesIsHidden)
    {
      v21 = seriesIsHidden;
      objc_storeStrong(&self->_seriesIsHidden, seriesIsHidden);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x4000) != 0 && (objc_opt_respondsToSelector())
  {
    isStoreAudiobook = [assetCopy isStoreAudiobook];
    if (isStoreAudiobook)
    {
      v23 = isStoreAudiobook;
      objc_storeStrong(&self->_isStoreAudiobook, isStoreAudiobook);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x8000) != 0 && (objc_opt_respondsToSelector())
  {
    hasRACSupport = [assetCopy hasRACSupport];
    if (hasRACSupport)
    {
      v25 = hasRACSupport;
      objc_storeStrong(&self->_hasRACSupport, hasRACSupport);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x20) != 0 && (objc_opt_respondsToSelector())
  {
    seriesIsCloudOnly = [assetCopy seriesIsCloudOnly];
    if (seriesIsCloudOnly)
    {
      v27 = seriesIsCloudOnly;
      objc_storeStrong(&self->_seriesIsCloudOnly, seriesIsCloudOnly);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x40) != 0 && (objc_opt_respondsToSelector())
  {
    expectedDate = [assetCopy expectedDate];
    if (expectedDate)
    {
      v29 = expectedDate;
      objc_storeStrong(&self->_expectedDate, expectedDate);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x2000000) != 0 && (objc_opt_respondsToSelector())
  {
    releaseDate = [assetCopy releaseDate];
    if (releaseDate)
    {
      v31 = releaseDate;
      objc_storeStrong(&self->_releaseDate, releaseDate);
      self->_hasChanges = 1;
    }
  }

  if ((-[BKLibraryAssetUpdate propertiesToPropagate](self, "propertiesToPropagate") & 0x80) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [assetCopy isSample])
  {
    *&self->_hasChanges = 257;
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x100) != 0 && (objc_opt_respondsToSelector())
  {
    title = [assetCopy title];
    if (title)
    {
      v33 = title;
      objc_storeStrong(&self->_title, title);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x1000) != 0 && (objc_opt_respondsToSelector())
  {
    v34 = [assetCopy url];
    if (v34)
    {
      v35 = v34;
      objc_storeStrong(&self->_url, v34);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x200) != 0 && (objc_opt_respondsToSelector())
  {
    author = [assetCopy author];
    if (author)
    {
      v37 = author;
      objc_storeStrong(&self->_author, author);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x400) != 0 && (objc_opt_respondsToSelector())
  {
    genre = [assetCopy genre];
    if (genre)
    {
      v39 = genre;
      objc_storeStrong(&self->_genre, genre);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x800) != 0 && (objc_opt_respondsToSelector())
  {
    isExplicit = [assetCopy isExplicit];
    if (isExplicit)
    {
      v41 = isExplicit;
      objc_storeStrong(&self->_isExplicit, isExplicit);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x800000) != 0 && (objc_opt_respondsToSelector())
  {
    mappedAssetID = [assetCopy mappedAssetID];
    if (mappedAssetID)
    {
      v43 = mappedAssetID;
      objc_storeStrong(&self->_mappedAssetID, mappedAssetID);
      self->_hasChanges = 1;
    }
  }

  if ([(BKLibraryAssetUpdate *)self propertiesToPropagate]& 0x1000000) != 0 && (objc_opt_respondsToSelector())
  {
    mappedAssetContentType = [assetCopy mappedAssetContentType];
    if (mappedAssetContentType)
    {
      self->_mappedAssetContentType = mappedAssetContentType;
      self->_hasChanges = 1;
    }
  }
}

- (void)postIntegrateCleanup
{
  asset = self->_asset;
  self->_asset = 0;

  assetIsHidden = self->_assetIsHidden;
  self->_assetIsHidden = 0;

  coverAspectRatio = self->_coverAspectRatio;
  self->_coverAspectRatio = 0;

  seriesID = self->_seriesID;
  self->_seriesID = 0;

  sequenceDisplayName = self->_sequenceDisplayName;
  self->_sequenceDisplayName = 0;

  sequenceNumber = self->_sequenceNumber;
  self->_sequenceNumber = 0;

  seriesSortKey = self->_seriesSortKey;
  self->_seriesSortKey = 0;

  seriesIsHidden = self->_seriesIsHidden;
  self->_seriesIsHidden = 0;

  seriesIsCloudOnly = self->_seriesIsCloudOnly;
  self->_seriesIsCloudOnly = 0;

  isStoreAudiobook = self->_isStoreAudiobook;
  self->_isStoreAudiobook = 0;

  purchaseDates_hack = self->_purchaseDates_hack;
  self->_purchaseDates_hack = 0;

  expectedDate = self->_expectedDate;
  self->_expectedDate = 0;

  releaseDate = self->_releaseDate;
  self->_releaseDate = 0;

  title = self->_title;
  self->_title = 0;

  url = self->_url;
  self->_url = 0;

  author = self->_author;
  self->_author = 0;

  genre = self->_genre;
  self->_genre = 0;

  isExplicit = self->_isExplicit;
  self->_isExplicit = 0;

  self->_hasChanges = 0;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"%@: <%p>", v4, self];

  [v5 appendFormat:@"\n\tproperties - 0x%lx", -[BKLibraryAssetUpdate propertiesToPropagate](self, "propertiesToPropagate")];
  [v5 appendFormat:@"\n\tbitmask=%#lx", -[BKLibraryAssetUpdate dataSourcesBitmask](self, "dataSourcesBitmask")];
  asset = [(BKLibraryAssetUpdate *)self asset];
  [v5 appendFormat:@"\n\tasset=%p", asset];

  asset2 = [(BKLibraryAssetUpdate *)self asset];

  if (asset2)
  {
    asset3 = [(BKLibraryAssetUpdate *)self asset];
    assetID = [asset3 assetID];
    [v5 appendFormat:@"\n\tasset.assetID=%@", assetID];

    asset4 = [(BKLibraryAssetUpdate *)self asset];
    temporaryAssetID = [asset4 temporaryAssetID];
    [v5 appendFormat:@"\n\tasset.temporaryAssetID=%@ ", temporaryAssetID];

    asset5 = [(BKLibraryAssetUpdate *)self asset];
    title = [asset5 title];
    [v5 appendFormat:@"\n\tasset.title=%@", title];
  }

  seriesID = [(BKLibraryAssetUpdate *)self seriesID];
  v15 = seriesID;
  if (seriesID)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"seriesID", seriesID];
  }

  seriesSortKey = [(BKLibraryAssetUpdate *)self seriesSortKey];
  v17 = seriesSortKey;
  if (seriesSortKey)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"seriesSortKey", seriesSortKey];
  }

  sequenceDisplayName = [(BKLibraryAssetUpdate *)self sequenceDisplayName];
  v19 = sequenceDisplayName;
  if (sequenceDisplayName)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"sequenceDisplayName", sequenceDisplayName];
  }

  sequenceNumber = [(BKLibraryAssetUpdate *)self sequenceNumber];
  v21 = sequenceNumber;
  if (sequenceNumber)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"sequenceNumber", sequenceNumber];
  }

  seriesIsHidden = [(BKLibraryAssetUpdate *)self seriesIsHidden];
  v23 = seriesIsHidden;
  if (seriesIsHidden)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"seriesIsHidden", seriesIsHidden];
  }

  seriesIsCloudOnly = [(BKLibraryAssetUpdate *)self seriesIsCloudOnly];
  v25 = seriesIsCloudOnly;
  if (seriesIsCloudOnly)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"seriesIsCloudOnly", seriesIsCloudOnly];
  }

  isStoreAudiobook = [(BKLibraryAssetUpdate *)self isStoreAudiobook];
  v27 = isStoreAudiobook;
  if (isStoreAudiobook)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"isStoreAudiobook", isStoreAudiobook];
  }

  expectedDate = [(BKLibraryAssetUpdate *)self expectedDate];
  v29 = expectedDate;
  if (expectedDate)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"expectedDate", expectedDate];
  }

  releaseDate = [(BKLibraryAssetUpdate *)self releaseDate];
  v31 = releaseDate;
  if (releaseDate)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"releaseDate", releaseDate];
  }

  title2 = [(BKLibraryAssetUpdate *)self title];
  v33 = title2;
  if (title2)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"title", title2];
  }

  author = [(BKLibraryAssetUpdate *)self author];
  v35 = author;
  if (author)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"author", author];
  }

  genre = [(BKLibraryAssetUpdate *)self genre];
  v37 = genre;
  if (genre)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"genre", genre];
  }

  isExplicit = [(BKLibraryAssetUpdate *)self isExplicit];
  v39 = isExplicit;
  if (isExplicit)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"isExplicit", isExplicit];
  }

  v40 = [(BKLibraryAssetUpdate *)self url];
  v41 = v40;
  if (v40)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"url", v40];
  }

  coverAspectRatio = [(BKLibraryAssetUpdate *)self coverAspectRatio];
  v43 = coverAspectRatio;
  if (coverAspectRatio)
  {
    [v5 appendFormat:@"\n\t%@ - %@", @"coverAspectRatio", coverAspectRatio];
  }

  return v5;
}

@end