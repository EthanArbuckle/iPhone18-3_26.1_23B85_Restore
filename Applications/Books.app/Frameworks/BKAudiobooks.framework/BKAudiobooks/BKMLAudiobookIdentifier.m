@interface BKMLAudiobookIdentifier
+ (id)identifierFromAlbumPersistentID:(id)a3;
+ (id)identifierFromAssetID:(id)a3 albumTitle:(id)a4;
+ (id)identifierFromMediaQuery:(id)a3 supplementalAssetIdentifiers:(id)a4;
+ (id)identifierFromPersistentID:(id)a3;
- (BKMLAudiobookIdentifier)initWithAlbumPersistentID:(id)a3;
- (BKMLAudiobookIdentifier)initWithAssetID:(id)a3 albumTitle:(id)a4;
- (BKMLAudiobookIdentifier)initWithMediaQuery:(id)a3 supplementalAssetIDs:(id)a4;
- (BKMLAudiobookIdentifier)initWithPersistentID:(id)a3;
- (BOOL)isEqualToIdentifier:(id)a3;
- (BOOL)isValid;
- (NSString)description;
- (id)audiobookQuery;
@end

@implementation BKMLAudiobookIdentifier

+ (id)identifierFromPersistentID:(id)a3
{
  v3 = a3;
  v4 = [[BKMLAudiobookIdentifier alloc] initWithPersistentID:v3];

  return v4;
}

+ (id)identifierFromAlbumPersistentID:(id)a3
{
  v3 = a3;
  v4 = [[BKMLAudiobookIdentifier alloc] initWithAlbumPersistentID:v3];

  return v4;
}

+ (id)identifierFromAssetID:(id)a3 albumTitle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BKMLAudiobookIdentifier alloc] initWithAssetID:v6 albumTitle:v5];

  return v7;
}

+ (id)identifierFromMediaQuery:(id)a3 supplementalAssetIdentifiers:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BKMLAudiobookIdentifier alloc] initWithMediaQuery:v6 supplementalAssetIDs:v5];

  return v7;
}

- (BKMLAudiobookIdentifier)initWithPersistentID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKMLAudiobookIdentifier;
  v6 = [(BKMLAudiobookIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentID, a3);
  }

  return v7;
}

- (BKMLAudiobookIdentifier)initWithAlbumPersistentID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKMLAudiobookIdentifier;
  v6 = [(BKMLAudiobookIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_albumPersistentID, a3);
  }

  return v7;
}

- (BKMLAudiobookIdentifier)initWithAssetID:(id)a3 albumTitle:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v10 = [v7 copy];
      v11 = 32;
    }

    v12 = *(&v8->super.isa + v11);
    *(&v8->super.isa + v11) = v10;
  }

  return v8;
}

- (BKMLAudiobookIdentifier)initWithMediaQuery:(id)a3 supplementalAssetIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKMLAudiobookIdentifier;
  v9 = [(BKMLAudiobookIdentifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, a3);
    v11 = [v8 copy];
    supplementalAssetIdentifiers = v10->_supplementalAssetIdentifiers;
    v10->_supplementalAssetIdentifiers = v11;
  }

  return v10;
}

- (BOOL)isValid
{
  v3 = [(BKMLAudiobookIdentifier *)self persistentID];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKMLAudiobookIdentifier *)self storeID];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(BKMLAudiobookIdentifier *)self albumPersistentID];
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(BKMLAudiobookIdentifier *)self query];
        if (v7)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(BKMLAudiobookIdentifier *)self albumTitle];
          v4 = [v8 length] != 0;
        }
      }
    }
  }

  return v4;
}

- (BOOL)isEqualToIdentifier:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BKMLAudiobookIdentifier *)self persistentID];
      v7 = [(BKMLAudiobookIdentifier *)v5 persistentID];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(BKMLAudiobookIdentifier *)self persistentID];
        v10 = [(BKMLAudiobookIdentifier *)v5 persistentID];
        v11 = [v9 isEqualToNumber:v10];

        if (!v11)
        {
          goto LABEL_23;
        }
      }

      v13 = [(BKMLAudiobookIdentifier *)self storeID];
      v14 = [(BKMLAudiobookIdentifier *)v5 storeID];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(BKMLAudiobookIdentifier *)self storeID];
        v17 = [(BKMLAudiobookIdentifier *)v5 storeID];
        v18 = [v16 isEqualToNumber:v17];

        if (!v18)
        {
          goto LABEL_23;
        }
      }

      v19 = [(BKMLAudiobookIdentifier *)self albumPersistentID];
      v20 = [(BKMLAudiobookIdentifier *)v5 albumPersistentID];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(BKMLAudiobookIdentifier *)self albumPersistentID];
        v23 = [(BKMLAudiobookIdentifier *)v5 albumPersistentID];
        v24 = [v22 isEqualToNumber:v23];

        if (!v24)
        {
          goto LABEL_23;
        }
      }

      v25 = [(BKMLAudiobookIdentifier *)self query];
      v26 = [(BKMLAudiobookIdentifier *)v5 query];
      v27 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        v28 = [(BKMLAudiobookIdentifier *)self query];
        v29 = [(BKMLAudiobookIdentifier *)v5 query];
        v30 = [v28 isEqual:v29];

        if (!v30)
        {
          goto LABEL_23;
        }
      }

      v31 = [(BKMLAudiobookIdentifier *)self albumTitle];
      v32 = [(BKMLAudiobookIdentifier *)v5 albumTitle];
      v33 = v32;
      if (v31 == v32)
      {
      }

      else
      {
        v34 = [(BKMLAudiobookIdentifier *)self albumTitle];
        v35 = [(BKMLAudiobookIdentifier *)v5 albumTitle];
        v36 = [v34 isEqualToString:v35];

        if (!v36)
        {
LABEL_23:
          v12 = 0;
LABEL_24:

          goto LABEL_25;
        }
      }

      v38 = [(BKMLAudiobookIdentifier *)self supplementalAssetIdentifiers];
      v39 = [(BKMLAudiobookIdentifier *)v5 supplementalAssetIdentifiers];
      if (v38 == v39)
      {
        v12 = 1;
      }

      else
      {
        v40 = [(BKMLAudiobookIdentifier *)self supplementalAssetIdentifiers];
        v41 = [(BKMLAudiobookIdentifier *)v5 supplementalAssetIdentifiers];
        v12 = [v40 isEqual:v41];
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
  v3 = [(BKMLAudiobookIdentifier *)self query];

  if (v3)
  {
    v4 = [(BKMLAudiobookIdentifier *)self query];
    goto LABEL_14;
  }

  if ([(BKMLAudiobookIdentifier *)self isValid])
  {
    v4 = +[MPMediaQuery bk_audiobooksQuery];
    [v4 setIgnoreSystemFilterPredicates:1];
    [v4 setGroupingType:1];
    v5 = [(BKMLAudiobookIdentifier *)self persistentID];

    if (v5)
    {
      v6 = [(BKMLAudiobookIdentifier *)self persistentID];
      v7 = &MPMediaItemPropertyPersistentID;
LABEL_13:
      v12 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:*v7];
      [v4 addFilterPredicate:v12];

      goto LABEL_14;
    }

    v9 = [(BKMLAudiobookIdentifier *)self albumPersistentID];

    if (v9)
    {
      v6 = [(BKMLAudiobookIdentifier *)self albumPersistentID];
      v7 = &MPMediaItemPropertyAlbumPersistentID;
      goto LABEL_13;
    }

    v10 = [(BKMLAudiobookIdentifier *)self albumTitle];
    v11 = [v10 length];

    if (v11)
    {
      v6 = [(BKMLAudiobookIdentifier *)self albumTitle];
      v7 = &MPMediaItemPropertyAlbumTitle;
      goto LABEL_13;
    }

    v14 = [(BKMLAudiobookIdentifier *)self storeID];

    if (v14)
    {
      v15 = [(BKMLAudiobookIdentifier *)self storeID];
      v16 = MPMediaItemPropertyStorePlaylistID;
      v17 = [MPMediaPropertyPredicate predicateWithValue:v15 forProperty:MPMediaItemPropertyStorePlaylistID];
      [v4 addFilterPredicate:v17];

      v18 = [v4 collections];
      v19 = [v18 count];

      if (!v19)
      {
        [v4 removePredicatesForProperty:v16];
        v6 = [(BKMLAudiobookIdentifier *)self storeID];
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

    v4 = 0;
  }

LABEL_14:

  return v4;
}

- (NSString)description
{
  v3 = [(BKMLAudiobookIdentifier *)self persistentID];

  if (v3)
  {
    v4 = [(BKMLAudiobookIdentifier *)self persistentID];
    [NSString stringWithFormat:@"persistentID: %@", v4];
    v9 = LABEL_9:;

    goto LABEL_10;
  }

  v5 = [(BKMLAudiobookIdentifier *)self storeID];

  if (v5)
  {
    v4 = [(BKMLAudiobookIdentifier *)self storeID];
    [NSString stringWithFormat:@"storeID: %@", v4];
    goto LABEL_9;
  }

  v6 = [(BKMLAudiobookIdentifier *)self query];

  if (v6)
  {
    v4 = [(BKMLAudiobookIdentifier *)self query];
    [NSString stringWithFormat:@"query: %@", v4];
    goto LABEL_9;
  }

  v7 = [(BKMLAudiobookIdentifier *)self albumTitle];
  v8 = [v7 length];

  if (v8)
  {
    v4 = [(BKMLAudiobookIdentifier *)self albumTitle];
    [NSString stringWithFormat:@"albumTitle: '%@'", v4];
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