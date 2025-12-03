@interface BKMLAudiobookIdentifier
+ (id)identifierFromAlbumPersistentID:(id)d;
+ (id)identifierFromAssetID:(id)d albumTitle:(id)title;
+ (id)identifierFromMediaQuery:(id)query supplementalAssetIdentifiers:(id)identifiers;
+ (id)identifierFromPersistentID:(id)d;
- (BKMLAudiobookIdentifier)initWithAlbumPersistentID:(id)d;
- (BKMLAudiobookIdentifier)initWithAssetID:(id)d albumTitle:(id)title;
- (BKMLAudiobookIdentifier)initWithMediaQuery:(id)query supplementalAssetIDs:(id)ds;
- (BKMLAudiobookIdentifier)initWithPersistentID:(id)d;
- (BOOL)isEqualToIdentifier:(id)identifier;
- (BOOL)isValid;
- (NSString)description;
- (id)audiobookQuery;
@end

@implementation BKMLAudiobookIdentifier

+ (id)identifierFromPersistentID:(id)d
{
  dCopy = d;
  v4 = [[BKMLAudiobookIdentifier alloc] initWithPersistentID:dCopy];

  return v4;
}

+ (id)identifierFromAlbumPersistentID:(id)d
{
  dCopy = d;
  v4 = [[BKMLAudiobookIdentifier alloc] initWithAlbumPersistentID:dCopy];

  return v4;
}

+ (id)identifierFromAssetID:(id)d albumTitle:(id)title
{
  titleCopy = title;
  dCopy = d;
  v7 = [[BKMLAudiobookIdentifier alloc] initWithAssetID:dCopy albumTitle:titleCopy];

  return v7;
}

+ (id)identifierFromMediaQuery:(id)query supplementalAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queryCopy = query;
  v7 = [[BKMLAudiobookIdentifier alloc] initWithMediaQuery:queryCopy supplementalAssetIDs:identifiersCopy];

  return v7;
}

- (BKMLAudiobookIdentifier)initWithPersistentID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BKMLAudiobookIdentifier;
  v6 = [(BKMLAudiobookIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentID, d);
  }

  return v7;
}

- (BKMLAudiobookIdentifier)initWithAlbumPersistentID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BKMLAudiobookIdentifier;
  v6 = [(BKMLAudiobookIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_albumPersistentID, d);
  }

  return v7;
}

- (BKMLAudiobookIdentifier)initWithAssetID:(id)d albumTitle:(id)title
{
  dCopy = d;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = BKMLAudiobookIdentifier;
  v8 = [(BKMLAudiobookIdentifier *)&v14 init];
  if (v8)
  {
    v9 = BUStoreIdFromObject();
    if (v9)
    {
      v10 = [NSNumber numberWithUnsignedLongLong:v9];
      v11 = 24;
    }

    else
    {
      v10 = [titleCopy copy];
      v11 = 32;
    }

    v12 = *(&v8->super.isa + v11);
    *(&v8->super.isa + v11) = v10;
  }

  return v8;
}

- (BKMLAudiobookIdentifier)initWithMediaQuery:(id)query supplementalAssetIDs:(id)ds
{
  queryCopy = query;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = BKMLAudiobookIdentifier;
  v9 = [(BKMLAudiobookIdentifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, query);
    v11 = [dsCopy copy];
    supplementalAssetIdentifiers = v10->_supplementalAssetIdentifiers;
    v10->_supplementalAssetIdentifiers = v11;
  }

  return v10;
}

- (BOOL)isValid
{
  persistentID = [(BKMLAudiobookIdentifier *)self persistentID];
  if (persistentID)
  {
    v4 = 1;
  }

  else
  {
    storeID = [(BKMLAudiobookIdentifier *)self storeID];
    if (storeID)
    {
      v4 = 1;
    }

    else
    {
      albumPersistentID = [(BKMLAudiobookIdentifier *)self albumPersistentID];
      if (albumPersistentID)
      {
        v4 = 1;
      }

      else
      {
        query = [(BKMLAudiobookIdentifier *)self query];
        if (query)
        {
          v4 = 1;
        }

        else
        {
          albumTitle = [(BKMLAudiobookIdentifier *)self albumTitle];
          v4 = [albumTitle length] != 0;
        }
      }
    }
  }

  return v4;
}

- (BOOL)isEqualToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self == identifierCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = identifierCopy;
      persistentID = [(BKMLAudiobookIdentifier *)self persistentID];
      persistentID2 = [(BKMLAudiobookIdentifier *)v5 persistentID];
      v8 = persistentID2;
      if (persistentID == persistentID2)
      {
      }

      else
      {
        persistentID3 = [(BKMLAudiobookIdentifier *)self persistentID];
        persistentID4 = [(BKMLAudiobookIdentifier *)v5 persistentID];
        v11 = [persistentID3 isEqualToNumber:persistentID4];

        if (!v11)
        {
          goto LABEL_23;
        }
      }

      storeID = [(BKMLAudiobookIdentifier *)self storeID];
      storeID2 = [(BKMLAudiobookIdentifier *)v5 storeID];
      v15 = storeID2;
      if (storeID == storeID2)
      {
      }

      else
      {
        storeID3 = [(BKMLAudiobookIdentifier *)self storeID];
        storeID4 = [(BKMLAudiobookIdentifier *)v5 storeID];
        v18 = [storeID3 isEqualToNumber:storeID4];

        if (!v18)
        {
          goto LABEL_23;
        }
      }

      albumPersistentID = [(BKMLAudiobookIdentifier *)self albumPersistentID];
      albumPersistentID2 = [(BKMLAudiobookIdentifier *)v5 albumPersistentID];
      v21 = albumPersistentID2;
      if (albumPersistentID == albumPersistentID2)
      {
      }

      else
      {
        albumPersistentID3 = [(BKMLAudiobookIdentifier *)self albumPersistentID];
        albumPersistentID4 = [(BKMLAudiobookIdentifier *)v5 albumPersistentID];
        v24 = [albumPersistentID3 isEqualToNumber:albumPersistentID4];

        if (!v24)
        {
          goto LABEL_23;
        }
      }

      query = [(BKMLAudiobookIdentifier *)self query];
      query2 = [(BKMLAudiobookIdentifier *)v5 query];
      v27 = query2;
      if (query == query2)
      {
      }

      else
      {
        query3 = [(BKMLAudiobookIdentifier *)self query];
        query4 = [(BKMLAudiobookIdentifier *)v5 query];
        v30 = [query3 isEqual:query4];

        if (!v30)
        {
          goto LABEL_23;
        }
      }

      albumTitle = [(BKMLAudiobookIdentifier *)self albumTitle];
      albumTitle2 = [(BKMLAudiobookIdentifier *)v5 albumTitle];
      v33 = albumTitle2;
      if (albumTitle == albumTitle2)
      {
      }

      else
      {
        albumTitle3 = [(BKMLAudiobookIdentifier *)self albumTitle];
        albumTitle4 = [(BKMLAudiobookIdentifier *)v5 albumTitle];
        v36 = [albumTitle3 isEqualToString:albumTitle4];

        if (!v36)
        {
LABEL_23:
          v12 = 0;
LABEL_24:

          goto LABEL_25;
        }
      }

      supplementalAssetIdentifiers = [(BKMLAudiobookIdentifier *)self supplementalAssetIdentifiers];
      supplementalAssetIdentifiers2 = [(BKMLAudiobookIdentifier *)v5 supplementalAssetIdentifiers];
      if (supplementalAssetIdentifiers == supplementalAssetIdentifiers2)
      {
        v12 = 1;
      }

      else
      {
        supplementalAssetIdentifiers3 = [(BKMLAudiobookIdentifier *)self supplementalAssetIdentifiers];
        supplementalAssetIdentifiers4 = [(BKMLAudiobookIdentifier *)v5 supplementalAssetIdentifiers];
        v12 = [supplementalAssetIdentifiers3 isEqual:supplementalAssetIdentifiers4];
      }

      goto LABEL_24;
    }

    v12 = 0;
  }

LABEL_25:

  return v12;
}

- (id)audiobookQuery
{
  query = [(BKMLAudiobookIdentifier *)self query];

  if (query)
  {
    query2 = [(BKMLAudiobookIdentifier *)self query];
    goto LABEL_14;
  }

  if ([(BKMLAudiobookIdentifier *)self isValid])
  {
    query2 = +[MPMediaQuery bk_audiobooksQuery];
    [query2 setIgnoreSystemFilterPredicates:1];
    [query2 setGroupingType:1];
    persistentID = [(BKMLAudiobookIdentifier *)self persistentID];

    if (persistentID)
    {
      persistentID2 = [(BKMLAudiobookIdentifier *)self persistentID];
      v7 = &MPMediaItemPropertyPersistentID;
LABEL_13:
      v12 = [MPMediaPropertyPredicate predicateWithValue:persistentID2 forProperty:*v7];
      [query2 addFilterPredicate:v12];

      goto LABEL_14;
    }

    albumPersistentID = [(BKMLAudiobookIdentifier *)self albumPersistentID];

    if (albumPersistentID)
    {
      persistentID2 = [(BKMLAudiobookIdentifier *)self albumPersistentID];
      v7 = &MPMediaItemPropertyAlbumPersistentID;
      goto LABEL_13;
    }

    albumTitle = [(BKMLAudiobookIdentifier *)self albumTitle];
    v11 = [albumTitle length];

    if (v11)
    {
      persistentID2 = [(BKMLAudiobookIdentifier *)self albumTitle];
      v7 = &MPMediaItemPropertyAlbumTitle;
      goto LABEL_13;
    }

    storeID = [(BKMLAudiobookIdentifier *)self storeID];

    if (storeID)
    {
      storeID2 = [(BKMLAudiobookIdentifier *)self storeID];
      v16 = MPMediaItemPropertyStorePlaylistID;
      v17 = [MPMediaPropertyPredicate predicateWithValue:storeID2 forProperty:MPMediaItemPropertyStorePlaylistID];
      [query2 addFilterPredicate:v17];

      collections = [query2 collections];
      v19 = [collections count];

      if (!v19)
      {
        [query2 removePredicatesForProperty:v16];
        persistentID2 = [(BKMLAudiobookIdentifier *)self storeID];
        v7 = &MPMediaItemPropertyStoreID;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = BKAudiobooksLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_218B4(v8);
    }

    query2 = 0;
  }

LABEL_14:

  return query2;
}

- (NSString)description
{
  persistentID = [(BKMLAudiobookIdentifier *)self persistentID];

  if (persistentID)
  {
    persistentID2 = [(BKMLAudiobookIdentifier *)self persistentID];
    [NSString stringWithFormat:@"persistentID: %@", persistentID2];
    v9 = LABEL_9:;

    goto LABEL_10;
  }

  storeID = [(BKMLAudiobookIdentifier *)self storeID];

  if (storeID)
  {
    persistentID2 = [(BKMLAudiobookIdentifier *)self storeID];
    [NSString stringWithFormat:@"storeID: %@", persistentID2];
    goto LABEL_9;
  }

  query = [(BKMLAudiobookIdentifier *)self query];

  if (query)
  {
    persistentID2 = [(BKMLAudiobookIdentifier *)self query];
    [NSString stringWithFormat:@"query: %@", persistentID2];
    goto LABEL_9;
  }

  albumTitle = [(BKMLAudiobookIdentifier *)self albumTitle];
  v8 = [albumTitle length];

  if (v8)
  {
    persistentID2 = [(BKMLAudiobookIdentifier *)self albumTitle];
    [NSString stringWithFormat:@"albumTitle: '%@'", persistentID2];
    goto LABEL_9;
  }

  v9 = @"no persistentID or assetID set";
LABEL_10:
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(NSArray *)self->_supplementalAssetIdentifiers componentsJoinedByString:@", "];
  v13 = v12;
  v14 = &__NSArray0__struct;
  if (v12)
  {
    v14 = v12;
  }

  v15 = [NSString stringWithFormat:@"<%@(%p) %@ supplementalAssetIDs=%@>", v11, self, v9, v14];

  return v15;
}

@end