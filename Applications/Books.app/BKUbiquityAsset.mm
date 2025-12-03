@interface BKUbiquityAsset
+ (id)newAssetFromMetadata:(id)metadata url:(id)url downloaded:(BOOL)downloaded downloading:(BOOL)downloading filesize:(int64_t)filesize dataSourceIdentifier:(id)identifier insertionDate:(id)date updateDate:(id)self0;
+ (signed)p_assetContentTypeFromFileName:(id)name;
+ (void)populateAsset:(id)asset withMetadata:(id)metadata;
- (BKUbiquityAsset)initWithCoder:(id)coder;
- (BOOL)isDifferentFilename:(id)filename;
- (BOOL)isDifferentPath:(id)path;
- (BOOL)isSameAsAsset:(id)asset;
- (BOOL)isUpdatedFromAsset:(id)asset;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setSupplementalContent:(BOOL)content playlistID:(id)d storeID:(id)iD;
@end

@implementation BKUbiquityAsset

+ (void)populateAsset:(id)asset withMetadata:(id)metadata
{
  assetCopy = asset;
  metadataCopy = metadata;
  if (assetCopy && [metadataCopy count])
  {
    objc_opt_class();
    v6 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrTitle];
    v7 = BUDynamicCast();
    [assetCopy setTitle:v7];

    objc_opt_class();
    v8 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrSortTitle];
    v9 = BUDynamicCast();
    [assetCopy setSortTitle:v9];

    objc_opt_class();
    v10 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrAuthor];
    v11 = BUDynamicCast();
    [assetCopy setAuthor:v11];

    objc_opt_class();
    v12 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrSortAuthor];
    v13 = BUDynamicCast();
    [assetCopy setSortAuthor:v13];

    objc_opt_class();
    v14 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrGenre];
    v15 = BUDynamicCast();
    [assetCopy setGenre:v15];

    objc_opt_class();
    v16 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrComments];
    v17 = BUDynamicCast();
    [assetCopy setComments:v17];

    objc_opt_class();
    v18 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrBookDescription];
    v19 = BUDynamicCast();
    [assetCopy setBookDescription:v19];

    objc_opt_class();
    v20 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrYear];
    v21 = BUDynamicCast();
    [assetCopy setYear:v21];

    objc_opt_class();
    v22 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrExplicit];
    v23 = BUDynamicCast();

    if ([v23 length])
    {
      v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 BOOLValue]);
      [assetCopy setIsExplicit:v24];
    }

    objc_opt_class();
    v25 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrLastOpened];
    v26 = BUDynamicCast();

    if ([v26 length])
    {
      v27 = [BCUbiquityMetadataHelper metadataDateFromString:v26];
      [assetCopy setLastOpenDate:v27];
    }

    objc_opt_class();
    v28 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrFirstOpened];
    v29 = BUDynamicCast();

    if ([v29 length])
    {
      v30 = [BCUbiquityMetadataHelper metadataDateFromString:v29];
      [assetCopy setPurchaseDate:v30];
    }

    objc_opt_class();
    v31 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrRating];
    v32 = BUDynamicCast();

    if (v32)
    {
      [assetCopy setRating:{objc_msgSend(v32, "integerValue")}];
    }

    objc_opt_class();
    v33 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrGeneration];
    v34 = BUDynamicCast();

    if ([v34 length])
    {
      [assetCopy setGeneration:{objc_msgSend(v34, "longLongValue")}];
    }

    objc_opt_class();
    v35 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrIsSupplementalContent];
    v36 = BUDynamicCast();

    if ([v36 length])
    {
      [assetCopy setSupplementalContent:{objc_msgSend(v36, "BOOLValue")}];
    }

    objc_opt_class();
    v37 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrStoreID];
    v38 = BUDynamicCast();
    [assetCopy setStoreID:v38];

    objc_opt_class();
    v39 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrStorePlaylistID];
    v40 = BUDynamicCast();
    [assetCopy setStorePlaylistID:v40];

    storeID = [assetCopy storeID];
    [assetCopy setTemporaryAssetID:storeID];
  }
}

+ (id)newAssetFromMetadata:(id)metadata url:(id)url downloaded:(BOOL)downloaded downloading:(BOOL)downloading filesize:(int64_t)filesize dataSourceIdentifier:(id)identifier insertionDate:(id)date updateDate:(id)self0
{
  downloadedCopy = downloaded;
  metadataCopy = metadata;
  urlCopy = url;
  identifierCopy = identifier;
  dateCopy = date;
  updateDateCopy = updateDate;
  if (!dateCopy)
  {
    sub_10078EE04();
    if (metadataCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  if (!metadataCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  v21 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrAssetID];
  if ([v21 length])
  {
    v26 = downloadedCopy;
    v22 = objc_opt_new();
    [v22 setAssetID:v21];
    [v22 setGeneration:0x7FFFFFFFFFFFFFFFLL];
    [self populateAsset:v22 withMetadata:metadataCopy];
    [v22 setUrl:urlCopy];
    [v22 setFileSize:filesize];
    path = [urlCopy path];
    [v22 setContentType:{+[BKUbiquityAsset p_assetContentTypeFromFileName:](BKUbiquityAsset, "p_assetContentTypeFromFileName:", path)}];

    if (downloading)
    {
      [v22 setState:2];
    }

    else
    {
      if (v26)
      {
        v24 = 1;
      }

      else
      {
        v24 = 3;
      }

      [v22 setState:v24];
      if (v26)
      {
        [v22 setAssetIsHidden:&__kCFBooleanFalse];
      }
    }

    [v22 setDataSourceInsertionDate:dateCopy];
    [v22 setPurchaseDate:dateCopy];
    [v22 setUpdateDate:updateDateCopy];
    [v22 setDataSourceIdentifier:identifierCopy];
  }

  else
  {
    v22 = 0;
  }

LABEL_16:
  return v22;
}

- (BKUbiquityAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = BKUbiquityAsset;
  v5 = [(BKUbiquityAsset *)&v45 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    v7 = [v6 copy];
    assetID = v5->_assetID;
    v5->_assetID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"temporaryAssetID"];
    v10 = [v9 copy];
    temporaryAssetID = v5->_temporaryAssetID;
    v5->_temporaryAssetID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"author"];
    v13 = [v12 copy];
    author = v5->_author;
    v5->_author = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v16 = [v15 copy];
    title = v5->_title;
    v5->_title = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    v19 = [v18 copy];
    url = v5->_url;
    v5->_url = v19;

    v5->_fileSize = [coderCopy decodeInt64ForKey:@"fileSize"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    v22 = [v21 copy];
    genre = v5->_genre;
    v5->_genre = v22;

    v5->_contentType = [coderCopy decodeIntForKey:@"contentType"];
    v5->_state = [coderCopy decodeIntForKey:@"state"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"insertionDate"];
    v25 = [v24 copy];
    dataSourceInsertionDate = v5->_dataSourceInsertionDate;
    v5->_dataSourceInsertionDate = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateDate"];
    v28 = [v27 copy];
    updateDate = v5->_updateDate;
    v5->_updateDate = v28;

    dataSourceInsertionDate = [(BKUbiquityAsset *)v5 dataSourceInsertionDate];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = dataSourceInsertionDate;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataSourceIdentifier"];
    v33 = [v32 copy];
    dataSourceIdentifier = v5->_dataSourceIdentifier;
    v5->_dataSourceIdentifier = v33;

    objc_opt_class();
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"generation"];
    v36 = BUDynamicCast();

    if (v36)
    {
      longLongValue = [v36 longLongValue];
    }

    else
    {
      longLongValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_generation = longLongValue;
    v5->_supplementalContent = [coderCopy decodeBoolForKey:@"supplementalContent"];
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    v39 = [v38 copy];
    storeID = v5->_storeID;
    v5->_storeID = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storePlaylistID"];
    v42 = [v41 copy];
    storePlaylistID = v5->_storePlaylistID;
    v5->_storePlaylistID = v42;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetID = [(BKUbiquityAsset *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"assetID"];

  temporaryAssetID = [(BKUbiquityAsset *)self temporaryAssetID];
  [coderCopy encodeObject:temporaryAssetID forKey:@"temporaryAssetID"];

  author = [(BKUbiquityAsset *)self author];
  [coderCopy encodeObject:author forKey:@"author"];

  title = [(BKUbiquityAsset *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  v8 = [(BKUbiquityAsset *)self url];
  [coderCopy encodeObject:v8 forKey:@"URL"];

  [coderCopy encodeInt64:-[BKUbiquityAsset fileSize](self forKey:{"fileSize"), @"fileSize"}];
  genre = [(BKUbiquityAsset *)self genre];
  [coderCopy encodeObject:genre forKey:@"genre"];

  [coderCopy encodeInt:-[BKUbiquityAsset contentType](self forKey:{"contentType"), @"contentType"}];
  [coderCopy encodeInt:-[BKUbiquityAsset state](self forKey:{"state"), @"state"}];
  dataSourceInsertionDate = [(BKUbiquityAsset *)self dataSourceInsertionDate];
  [coderCopy encodeObject:dataSourceInsertionDate forKey:@"insertionDate"];

  updateDate = [(BKUbiquityAsset *)self updateDate];
  [coderCopy encodeObject:updateDate forKey:@"updateDate"];

  dataSourceIdentifier = [(BKUbiquityAsset *)self dataSourceIdentifier];
  [coderCopy encodeObject:dataSourceIdentifier forKey:@"dataSourceIdentifier"];

  if ([(BKUbiquityAsset *)self generation]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [NSNumber numberWithLongLong:[(BKUbiquityAsset *)self generation]];
    [coderCopy encodeObject:v13 forKey:@"generation"];
  }

  [coderCopy encodeBool:-[BKUbiquityAsset isSupplementalContent](self forKey:{"isSupplementalContent"), @"supplementalContent"}];
  storeID = [(BKUbiquityAsset *)self storeID];
  [coderCopy encodeObject:storeID forKey:@"storeID"];

  storePlaylistID = [(BKUbiquityAsset *)self storePlaylistID];
  [coderCopy encodeObject:storePlaylistID forKey:@"storePlaylistID"];
}

- (BOOL)isSameAsAsset:(id)asset
{
  assetCopy = asset;
  assetID = [assetCopy assetID];
  v7 = [assetID isEqualToString:self->_assetID];

  if ((v7 & 1) == 0)
  {
    v8 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078EE3C(v8);
    }
  }

  assetID2 = [assetCopy assetID];
  if ([assetID2 isEqualToString:self->_assetID])
  {
    temporaryAssetID = [assetCopy temporaryAssetID];
    temporaryAssetID = self->_temporaryAssetID;
    if (temporaryAssetID != temporaryAssetID)
    {
      temporaryAssetID2 = [assetCopy temporaryAssetID];
      if (![temporaryAssetID2 isEqualToString:self->_temporaryAssetID])
      {
        v12 = 0;
        goto LABEL_34;
      }
    }

    author = [assetCopy author];
    author = self->_author;
    if (author != author)
    {
      author2 = [assetCopy author];
      if (![author2 isEqualToString:self->_author])
      {
        v12 = 0;
LABEL_32:

LABEL_33:
        if (temporaryAssetID == temporaryAssetID)
        {
LABEL_35:

          goto LABEL_36;
        }

LABEL_34:

        goto LABEL_35;
      }

      v34 = author2;
    }

    title = [assetCopy title];
    title = self->_title;
    if (title != title)
    {
      title2 = [assetCopy title];
      if (![title2 isEqualToString:self->_title])
      {
        v12 = 0;
LABEL_30:

LABEL_31:
        author2 = v34;
        if (author == author)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v32 = title2;
    }

    genre = [assetCopy genre];
    genre = self->_genre;
    if (genre != genre)
    {
      genre2 = [assetCopy genre];
      if (![genre2 isEqualToString:self->_genre])
      {
        v12 = 0;
LABEL_28:

LABEL_29:
        title2 = v32;
        if (title == title)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    if (self->_contentType != [assetCopy contentType] || self->_state != objc_msgSend(assetCopy, "state"))
    {
      v12 = 0;
      goto LABEL_27;
    }

    dataSourceInsertionDate = [assetCopy dataSourceInsertionDate];
    dataSourceInsertionDate = self->_dataSourceInsertionDate;
    v30 = dataSourceInsertionDate;
    if (dataSourceInsertionDate != dataSourceInsertionDate)
    {
      dataSourceInsertionDate2 = [assetCopy dataSourceInsertionDate];
      if (![dataSourceInsertionDate2 isEqual:self->_dataSourceInsertionDate])
      {
        v12 = 0;
        goto LABEL_49;
      }
    }

    if (self->_supplementalContent != [assetCopy isSupplementalContent])
    {
      v12 = 0;
      goto LABEL_48;
    }

    storeID = [assetCopy storeID];
    storeID = self->_storeID;
    v27 = storeID;
    if (storeID == storeID || ([assetCopy storeID], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "isEqualToString:", self->_storeID)))
    {
      storePlaylistID = [assetCopy storePlaylistID];
      if (storePlaylistID == self->_storePlaylistID)
      {

        v12 = 1;
      }

      else
      {
        v24 = storePlaylistID;
        storePlaylistID2 = [assetCopy storePlaylistID];
        v12 = [storePlaylistID2 isEqualToString:self->_storePlaylistID];
      }

      if (v27 == storeID)
      {

LABEL_48:
        if (v30 == dataSourceInsertionDate)
        {

LABEL_27:
          if (genre == genre)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

LABEL_49:

        goto LABEL_27;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_48;
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (BOOL)isUpdatedFromAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy fileSize] == self->_fileSize)
  {
    updateDate = [assetCopy updateDate];
    if (updateDate == self->_updateDate)
    {
      v7 = [assetCopy generation] != self->_generation;
    }

    else
    {
      updateDate2 = [assetCopy updateDate];
      if ([updateDate2 isEqualToDate:self->_updateDate])
      {
        v7 = [assetCopy generation] != self->_generation;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isDifferentPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy url];
  if (v5 == self->_url)
  {
    v8 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v6 = [pathCopy url];
  v7 = [v6 isEqual:self->_url];

  if ((v7 & 1) == 0)
  {
    v5 = [(BKUbiquityAsset *)self url];
    lastPathComponent = [(NSURL *)v5 lastPathComponent];
    v10 = [pathCopy url];
    lastPathComponent2 = [v10 lastPathComponent];
    v8 = [lastPathComponent isEqualToString:lastPathComponent2];

    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isDifferentFilename:(id)filename
{
  filenameCopy = filename;
  v5 = [(BKUbiquityAsset *)self url];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [filenameCopy url];

  lastPathComponent2 = [v7 lastPathComponent];
  v9 = [lastPathComponent isEqualToString:lastPathComponent2];

  return v9 ^ 1;
}

- (void)setSupplementalContent:(BOOL)content playlistID:(id)d storeID:(id)iD
{
  contentCopy = content;
  dCopy = d;
  iDCopy = iD;
  [(BKUbiquityAsset *)self setSupplementalContent:contentCopy];
  if (dCopy)
  {
    [(BKUbiquityAsset *)self setStorePlaylistID:dCopy];
  }

  if (iDCopy)
  {
    [(BKUbiquityAsset *)self setStoreID:iDCopy];
    [(BKUbiquityAsset *)self setTemporaryAssetID:iDCopy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    assetID = [(BKUbiquityAsset *)self assetID];
    v6 = [assetID copy];
    [v4 setAssetID:v6];

    temporaryAssetID = [(BKUbiquityAsset *)self temporaryAssetID];
    v8 = [temporaryAssetID copy];
    [v4 setTemporaryAssetID:v8];

    author = [(BKUbiquityAsset *)self author];
    v10 = [author copy];
    [v4 setAuthor:v10];

    title = [(BKUbiquityAsset *)self title];
    v12 = [title copy];
    [v4 setTitle:v12];

    v13 = [(BKUbiquityAsset *)self url];
    v14 = [v13 copy];
    [v4 setUrl:v14];

    [v4 setFileSize:{-[BKUbiquityAsset fileSize](self, "fileSize")}];
    genre = [(BKUbiquityAsset *)self genre];
    v16 = [genre copy];
    [v4 setGenre:v16];

    [v4 setContentType:{-[BKUbiquityAsset contentType](self, "contentType")}];
    [v4 setState:{-[BKUbiquityAsset state](self, "state")}];
    dataSourceInsertionDate = [(BKUbiquityAsset *)self dataSourceInsertionDate];
    v18 = [dataSourceInsertionDate copy];
    [v4 setDataSourceInsertionDate:v18];

    purchaseDate = [(BKUbiquityAsset *)self purchaseDate];
    v20 = [purchaseDate copy];
    [v4 setPurchaseDate:v20];

    updateDate = [(BKUbiquityAsset *)self updateDate];
    v22 = [updateDate copy];
    [v4 setUpdateDate:v22];

    dataSourceIdentifier = [(BKUbiquityAsset *)self dataSourceIdentifier];
    v24 = [dataSourceIdentifier copy];
    [v4 setDataSourceIdentifier:v24];

    [v4 setGeneration:{-[BKUbiquityAsset generation](self, "generation")}];
    [v4 setSupplementalContent:{-[BKUbiquityAsset isSupplementalContent](self, "isSupplementalContent")}];
    storeID = [(BKUbiquityAsset *)self storeID];
    v26 = [storeID copy];
    [v4 setStoreID:v26];

    storePlaylistID = [(BKUbiquityAsset *)self storePlaylistID];
    v28 = [storePlaylistID copy];
    [v4 setStorePlaylistID:v28];
  }

  return v4;
}

+ (signed)p_assetContentTypeFromFileName:(id)name
{
  nameCopy = name;
  pathExtension = [nameCopy pathExtension];
  if ([pathExtension isEqualToString:@"icloud"])
  {
    stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];

    nameCopy = stringByDeletingPathExtension;
  }

  v6 = [BKAssetUtilities contentTypeForPath:nameCopy];

  return v6;
}

@end