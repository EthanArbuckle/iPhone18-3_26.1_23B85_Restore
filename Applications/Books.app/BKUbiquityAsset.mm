@interface BKUbiquityAsset
+ (id)newAssetFromMetadata:(id)a3 url:(id)a4 downloaded:(BOOL)a5 downloading:(BOOL)a6 filesize:(int64_t)a7 dataSourceIdentifier:(id)a8 insertionDate:(id)a9 updateDate:(id)a10;
+ (signed)p_assetContentTypeFromFileName:(id)a3;
+ (void)populateAsset:(id)a3 withMetadata:(id)a4;
- (BKUbiquityAsset)initWithCoder:(id)a3;
- (BOOL)isDifferentFilename:(id)a3;
- (BOOL)isDifferentPath:(id)a3;
- (BOOL)isSameAsAsset:(id)a3;
- (BOOL)isUpdatedFromAsset:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSupplementalContent:(BOOL)a3 playlistID:(id)a4 storeID:(id)a5;
@end

@implementation BKUbiquityAsset

+ (void)populateAsset:(id)a3 withMetadata:(id)a4
{
  v42 = a3;
  v5 = a4;
  if (v42 && [v5 count])
  {
    objc_opt_class();
    v6 = [v5 objectForKeyedSubscript:BCMetadataXattrTitle];
    v7 = BUDynamicCast();
    [v42 setTitle:v7];

    objc_opt_class();
    v8 = [v5 objectForKeyedSubscript:BCMetadataXattrSortTitle];
    v9 = BUDynamicCast();
    [v42 setSortTitle:v9];

    objc_opt_class();
    v10 = [v5 objectForKeyedSubscript:BCMetadataXattrAuthor];
    v11 = BUDynamicCast();
    [v42 setAuthor:v11];

    objc_opt_class();
    v12 = [v5 objectForKeyedSubscript:BCMetadataXattrSortAuthor];
    v13 = BUDynamicCast();
    [v42 setSortAuthor:v13];

    objc_opt_class();
    v14 = [v5 objectForKeyedSubscript:BCMetadataXattrGenre];
    v15 = BUDynamicCast();
    [v42 setGenre:v15];

    objc_opt_class();
    v16 = [v5 objectForKeyedSubscript:BCMetadataXattrComments];
    v17 = BUDynamicCast();
    [v42 setComments:v17];

    objc_opt_class();
    v18 = [v5 objectForKeyedSubscript:BCMetadataXattrBookDescription];
    v19 = BUDynamicCast();
    [v42 setBookDescription:v19];

    objc_opt_class();
    v20 = [v5 objectForKeyedSubscript:BCMetadataXattrYear];
    v21 = BUDynamicCast();
    [v42 setYear:v21];

    objc_opt_class();
    v22 = [v5 objectForKeyedSubscript:BCMetadataXattrExplicit];
    v23 = BUDynamicCast();

    if ([v23 length])
    {
      v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 BOOLValue]);
      [v42 setIsExplicit:v24];
    }

    objc_opt_class();
    v25 = [v5 objectForKeyedSubscript:BCMetadataXattrLastOpened];
    v26 = BUDynamicCast();

    if ([v26 length])
    {
      v27 = [BCUbiquityMetadataHelper metadataDateFromString:v26];
      [v42 setLastOpenDate:v27];
    }

    objc_opt_class();
    v28 = [v5 objectForKeyedSubscript:BCMetadataXattrFirstOpened];
    v29 = BUDynamicCast();

    if ([v29 length])
    {
      v30 = [BCUbiquityMetadataHelper metadataDateFromString:v29];
      [v42 setPurchaseDate:v30];
    }

    objc_opt_class();
    v31 = [v5 objectForKeyedSubscript:BCMetadataXattrRating];
    v32 = BUDynamicCast();

    if (v32)
    {
      [v42 setRating:{objc_msgSend(v32, "integerValue")}];
    }

    objc_opt_class();
    v33 = [v5 objectForKeyedSubscript:BCMetadataXattrGeneration];
    v34 = BUDynamicCast();

    if ([v34 length])
    {
      [v42 setGeneration:{objc_msgSend(v34, "longLongValue")}];
    }

    objc_opt_class();
    v35 = [v5 objectForKeyedSubscript:BCMetadataXattrIsSupplementalContent];
    v36 = BUDynamicCast();

    if ([v36 length])
    {
      [v42 setSupplementalContent:{objc_msgSend(v36, "BOOLValue")}];
    }

    objc_opt_class();
    v37 = [v5 objectForKeyedSubscript:BCMetadataXattrStoreID];
    v38 = BUDynamicCast();
    [v42 setStoreID:v38];

    objc_opt_class();
    v39 = [v5 objectForKeyedSubscript:BCMetadataXattrStorePlaylistID];
    v40 = BUDynamicCast();
    [v42 setStorePlaylistID:v40];

    v41 = [v42 storeID];
    [v42 setTemporaryAssetID:v41];
  }
}

+ (id)newAssetFromMetadata:(id)a3 url:(id)a4 downloaded:(BOOL)a5 downloading:(BOOL)a6 filesize:(int64_t)a7 dataSourceIdentifier:(id)a8 insertionDate:(id)a9 updateDate:(id)a10
{
  v13 = a5;
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if (!v19)
  {
    sub_10078EE04();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_3:
  v21 = [v16 objectForKeyedSubscript:BCMetadataXattrAssetID];
  if ([v21 length])
  {
    v26 = v13;
    v22 = objc_opt_new();
    [v22 setAssetID:v21];
    [v22 setGeneration:0x7FFFFFFFFFFFFFFFLL];
    [a1 populateAsset:v22 withMetadata:v16];
    [v22 setUrl:v17];
    [v22 setFileSize:a7];
    v23 = [v17 path];
    [v22 setContentType:{+[BKUbiquityAsset p_assetContentTypeFromFileName:](BKUbiquityAsset, "p_assetContentTypeFromFileName:", v23)}];

    if (a6)
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

    [v22 setDataSourceInsertionDate:v19];
    [v22 setPurchaseDate:v19];
    [v22 setUpdateDate:v20];
    [v22 setDataSourceIdentifier:v18];
  }

  else
  {
    v22 = 0;
  }

LABEL_16:
  return v22;
}

- (BKUbiquityAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = BKUbiquityAsset;
  v5 = [(BKUbiquityAsset *)&v45 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    v7 = [v6 copy];
    assetID = v5->_assetID;
    v5->_assetID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"temporaryAssetID"];
    v10 = [v9 copy];
    temporaryAssetID = v5->_temporaryAssetID;
    v5->_temporaryAssetID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"author"];
    v13 = [v12 copy];
    author = v5->_author;
    v5->_author = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v16 = [v15 copy];
    title = v5->_title;
    v5->_title = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    v19 = [v18 copy];
    url = v5->_url;
    v5->_url = v19;

    v5->_fileSize = [v4 decodeInt64ForKey:@"fileSize"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    v22 = [v21 copy];
    genre = v5->_genre;
    v5->_genre = v22;

    v5->_contentType = [v4 decodeIntForKey:@"contentType"];
    v5->_state = [v4 decodeIntForKey:@"state"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"insertionDate"];
    v25 = [v24 copy];
    dataSourceInsertionDate = v5->_dataSourceInsertionDate;
    v5->_dataSourceInsertionDate = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateDate"];
    v28 = [v27 copy];
    updateDate = v5->_updateDate;
    v5->_updateDate = v28;

    v30 = [(BKUbiquityAsset *)v5 dataSourceInsertionDate];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataSourceIdentifier"];
    v33 = [v32 copy];
    dataSourceIdentifier = v5->_dataSourceIdentifier;
    v5->_dataSourceIdentifier = v33;

    objc_opt_class();
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"generation"];
    v36 = BUDynamicCast();

    if (v36)
    {
      v37 = [v36 longLongValue];
    }

    else
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_generation = v37;
    v5->_supplementalContent = [v4 decodeBoolForKey:@"supplementalContent"];
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    v39 = [v38 copy];
    storeID = v5->_storeID;
    v5->_storeID = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storePlaylistID"];
    v42 = [v41 copy];
    storePlaylistID = v5->_storePlaylistID;
    v5->_storePlaylistID = v42;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(BKUbiquityAsset *)self assetID];
  [v16 encodeObject:v4 forKey:@"assetID"];

  v5 = [(BKUbiquityAsset *)self temporaryAssetID];
  [v16 encodeObject:v5 forKey:@"temporaryAssetID"];

  v6 = [(BKUbiquityAsset *)self author];
  [v16 encodeObject:v6 forKey:@"author"];

  v7 = [(BKUbiquityAsset *)self title];
  [v16 encodeObject:v7 forKey:@"title"];

  v8 = [(BKUbiquityAsset *)self url];
  [v16 encodeObject:v8 forKey:@"URL"];

  [v16 encodeInt64:-[BKUbiquityAsset fileSize](self forKey:{"fileSize"), @"fileSize"}];
  v9 = [(BKUbiquityAsset *)self genre];
  [v16 encodeObject:v9 forKey:@"genre"];

  [v16 encodeInt:-[BKUbiquityAsset contentType](self forKey:{"contentType"), @"contentType"}];
  [v16 encodeInt:-[BKUbiquityAsset state](self forKey:{"state"), @"state"}];
  v10 = [(BKUbiquityAsset *)self dataSourceInsertionDate];
  [v16 encodeObject:v10 forKey:@"insertionDate"];

  v11 = [(BKUbiquityAsset *)self updateDate];
  [v16 encodeObject:v11 forKey:@"updateDate"];

  v12 = [(BKUbiquityAsset *)self dataSourceIdentifier];
  [v16 encodeObject:v12 forKey:@"dataSourceIdentifier"];

  if ([(BKUbiquityAsset *)self generation]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [NSNumber numberWithLongLong:[(BKUbiquityAsset *)self generation]];
    [v16 encodeObject:v13 forKey:@"generation"];
  }

  [v16 encodeBool:-[BKUbiquityAsset isSupplementalContent](self forKey:{"isSupplementalContent"), @"supplementalContent"}];
  v14 = [(BKUbiquityAsset *)self storeID];
  [v16 encodeObject:v14 forKey:@"storeID"];

  v15 = [(BKUbiquityAsset *)self storePlaylistID];
  [v16 encodeObject:v15 forKey:@"storePlaylistID"];
}

- (BOOL)isSameAsAsset:(id)a3
{
  v5 = a3;
  v6 = [v5 assetID];
  v7 = [v6 isEqualToString:self->_assetID];

  if ((v7 & 1) == 0)
  {
    v8 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078EE3C(v8);
    }
  }

  v9 = [v5 assetID];
  if ([v9 isEqualToString:self->_assetID])
  {
    v10 = [v5 temporaryAssetID];
    temporaryAssetID = self->_temporaryAssetID;
    if (v10 != temporaryAssetID)
    {
      v3 = [v5 temporaryAssetID];
      if (![v3 isEqualToString:self->_temporaryAssetID])
      {
        v12 = 0;
        goto LABEL_34;
      }
    }

    v13 = [v5 author];
    author = self->_author;
    if (v13 != author)
    {
      v15 = [v5 author];
      if (![v15 isEqualToString:self->_author])
      {
        v12 = 0;
LABEL_32:

LABEL_33:
        if (v10 == temporaryAssetID)
        {
LABEL_35:

          goto LABEL_36;
        }

LABEL_34:

        goto LABEL_35;
      }

      v34 = v15;
    }

    v16 = [v5 title];
    title = self->_title;
    if (v16 != title)
    {
      v17 = [v5 title];
      if (![v17 isEqualToString:self->_title])
      {
        v12 = 0;
LABEL_30:

LABEL_31:
        v15 = v34;
        if (v13 == author)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v32 = v17;
    }

    v18 = [v5 genre];
    genre = self->_genre;
    if (v18 != genre)
    {
      v31 = [v5 genre];
      if (![v31 isEqualToString:self->_genre])
      {
        v12 = 0;
LABEL_28:

LABEL_29:
        v17 = v32;
        if (v16 == title)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    if (self->_contentType != [v5 contentType] || self->_state != objc_msgSend(v5, "state"))
    {
      v12 = 0;
      goto LABEL_27;
    }

    v19 = [v5 dataSourceInsertionDate];
    dataSourceInsertionDate = self->_dataSourceInsertionDate;
    v30 = v19;
    if (v19 != dataSourceInsertionDate)
    {
      v28 = [v5 dataSourceInsertionDate];
      if (![v28 isEqual:self->_dataSourceInsertionDate])
      {
        v12 = 0;
        goto LABEL_49;
      }
    }

    if (self->_supplementalContent != [v5 isSupplementalContent])
    {
      v12 = 0;
      goto LABEL_48;
    }

    v21 = [v5 storeID];
    storeID = self->_storeID;
    v27 = v21;
    if (v21 == storeID || ([v5 storeID], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "isEqualToString:", self->_storeID)))
    {
      v22 = [v5 storePlaylistID];
      if (v22 == self->_storePlaylistID)
      {

        v12 = 1;
      }

      else
      {
        v24 = v22;
        v23 = [v5 storePlaylistID];
        v12 = [v23 isEqualToString:self->_storePlaylistID];
      }

      if (v27 == storeID)
      {

LABEL_48:
        if (v30 == dataSourceInsertionDate)
        {

LABEL_27:
          if (v18 == genre)
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

- (BOOL)isUpdatedFromAsset:(id)a3
{
  v4 = a3;
  if ([v4 fileSize] == self->_fileSize)
  {
    v5 = [v4 updateDate];
    if (v5 == self->_updateDate)
    {
      v7 = [v4 generation] != self->_generation;
    }

    else
    {
      v6 = [v4 updateDate];
      if ([v6 isEqualToDate:self->_updateDate])
      {
        v7 = [v4 generation] != self->_generation;
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

- (BOOL)isDifferentPath:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  if (v5 == self->_url)
  {
    v8 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v6 = [v4 url];
  v7 = [v6 isEqual:self->_url];

  if ((v7 & 1) == 0)
  {
    v5 = [(BKUbiquityAsset *)self url];
    v9 = [(NSURL *)v5 lastPathComponent];
    v10 = [v4 url];
    v11 = [v10 lastPathComponent];
    v8 = [v9 isEqualToString:v11];

    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isDifferentFilename:(id)a3
{
  v4 = a3;
  v5 = [(BKUbiquityAsset *)self url];
  v6 = [v5 lastPathComponent];
  v7 = [v4 url];

  v8 = [v7 lastPathComponent];
  v9 = [v6 isEqualToString:v8];

  return v9 ^ 1;
}

- (void)setSupplementalContent:(BOOL)a3 playlistID:(id)a4 storeID:(id)a5
{
  v6 = a3;
  v9 = a4;
  v8 = a5;
  [(BKUbiquityAsset *)self setSupplementalContent:v6];
  if (v9)
  {
    [(BKUbiquityAsset *)self setStorePlaylistID:v9];
  }

  if (v8)
  {
    [(BKUbiquityAsset *)self setStoreID:v8];
    [(BKUbiquityAsset *)self setTemporaryAssetID:v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(BKUbiquityAsset *)self assetID];
    v6 = [v5 copy];
    [v4 setAssetID:v6];

    v7 = [(BKUbiquityAsset *)self temporaryAssetID];
    v8 = [v7 copy];
    [v4 setTemporaryAssetID:v8];

    v9 = [(BKUbiquityAsset *)self author];
    v10 = [v9 copy];
    [v4 setAuthor:v10];

    v11 = [(BKUbiquityAsset *)self title];
    v12 = [v11 copy];
    [v4 setTitle:v12];

    v13 = [(BKUbiquityAsset *)self url];
    v14 = [v13 copy];
    [v4 setUrl:v14];

    [v4 setFileSize:{-[BKUbiquityAsset fileSize](self, "fileSize")}];
    v15 = [(BKUbiquityAsset *)self genre];
    v16 = [v15 copy];
    [v4 setGenre:v16];

    [v4 setContentType:{-[BKUbiquityAsset contentType](self, "contentType")}];
    [v4 setState:{-[BKUbiquityAsset state](self, "state")}];
    v17 = [(BKUbiquityAsset *)self dataSourceInsertionDate];
    v18 = [v17 copy];
    [v4 setDataSourceInsertionDate:v18];

    v19 = [(BKUbiquityAsset *)self purchaseDate];
    v20 = [v19 copy];
    [v4 setPurchaseDate:v20];

    v21 = [(BKUbiquityAsset *)self updateDate];
    v22 = [v21 copy];
    [v4 setUpdateDate:v22];

    v23 = [(BKUbiquityAsset *)self dataSourceIdentifier];
    v24 = [v23 copy];
    [v4 setDataSourceIdentifier:v24];

    [v4 setGeneration:{-[BKUbiquityAsset generation](self, "generation")}];
    [v4 setSupplementalContent:{-[BKUbiquityAsset isSupplementalContent](self, "isSupplementalContent")}];
    v25 = [(BKUbiquityAsset *)self storeID];
    v26 = [v25 copy];
    [v4 setStoreID:v26];

    v27 = [(BKUbiquityAsset *)self storePlaylistID];
    v28 = [v27 copy];
    [v4 setStorePlaylistID:v28];
  }

  return v4;
}

+ (signed)p_assetContentTypeFromFileName:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  if ([v4 isEqualToString:@"icloud"])
  {
    v5 = [v3 stringByDeletingPathExtension];

    v3 = v5;
  }

  v6 = [BKAssetUtilities contentTypeForPath:v3];

  return v6;
}

@end