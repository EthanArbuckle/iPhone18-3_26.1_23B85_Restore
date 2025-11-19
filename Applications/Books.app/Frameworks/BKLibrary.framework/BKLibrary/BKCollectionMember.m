@interface BKCollectionMember
+ (id)collectionMemberDictionariesWithAssetIDs:(id)a3;
+ (id)collectionMemberDictionaryWithLibraryAsset:(id)a3 sortKey:(id)a4;
+ (id)predicateForCollectionMembersWithAssetIDs:(id)a3;
- (NSString)collectionID;
- (id)collectionMemberRepresentation;
- (id)shortDescription;
- (void)awakeFromFetch;
- (void)configureFromCollectionMember:(id)a3;
- (void)setAsset:(id)a3;
- (void)setAssetID:(id)a3;
- (void)setCollection:(id)a3;
- (void)setSortKey:(id)a3;
- (void)setTemporaryAssetID:(id)a3;
- (void)updateLastModification;
@end

@implementation BKCollectionMember

- (void)awakeFromFetch
{
  v8.receiver = self;
  v8.super_class = BKCollectionMember;
  [(BKCollectionMember *)&v8 awakeFromFetch];
  v3 = [(BKCollectionMember *)self collection];

  if (v3)
  {
    v4 = [(BKCollectionMember *)self collection];
    v5 = [v4 collectionID];
    v6 = [v5 copy];
    collectionID = self->_collectionID;
    self->_collectionID = v6;
  }
}

+ (id)collectionMemberDictionaryWithLibraryAsset:(id)a3 sortKey:(id)a4
{
  v5 = a4;
  v6 = [a3 assetID];
  if ([v6 length])
  {
    v7 = [NSDictionary dictionaryWithObjectsAndKeys:v6, @"assetID", v5, @"sortKey", 0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)collectionMemberDictionariesWithAssetIDs:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length])
        {
          v11 = [NSDictionary alloc];
          v12 = [v11 initWithObjectsAndKeys:{v10, @"assetID", 0, v14}];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)predicateForCollectionMembersWithAssetIDs:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    [NSPredicate predicateWithFormat:@"assetID IN %@", v3];
  }

  else
  {
    [NSPredicate predicateWithValue:0];
  }
  v4 = ;

  return v4;
}

- (id)collectionMemberRepresentation
{
  v3 = [(BKCollectionMember *)self collectionID];
  if (v3 && (v4 = v3, [(BKCollectionMember *)self assetID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(BKCollectionMember *)self collectionID];
    v7 = [(BKCollectionMember *)self assetID];
    v8 = [BCCollectionMember collectionMemberIDWithCollectionID:v6 assetID:v7];

    v9 = [[BCMutableCollectionMember alloc] initWithCollectionMemberID:v8];
    v10 = [(BKCollectionMember *)self sortKey];
    [v9 setSortOrder:{objc_msgSend(v10, "intValue")}];

    [v9 setDeletedFlag:0];
    v11 = [(BKCollectionMember *)self localModDate];
    [v9 setModificationDate:v11];
  }

  else
  {
    v12 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_90E38(self);
    }

    v9 = 0;
  }

  return v9;
}

- (void)configureFromCollectionMember:(id)a3
{
  v4 = a3;
  v5 = [(BKCollectionMember *)self localModDate];
  v6 = [v4 modificationDate];
  v7 = v6;
  if (!(v5 | v6))
  {
    v18 = +[BULogUtilities shared];
    v19 = [v18 verboseLoggingEnabled];

    if (!v19)
    {
      goto LABEL_12;
    }

    v10 = BKLibraryCollectionDevelopmentLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v11 = [(BKCollectionMember *)self collection];
    v12 = [v11 title];
    v13 = [(BKCollectionMember *)self asset];
    v14 = [v13 title];
    *buf = 138412546;
    v50 = v12;
    v51 = 2112;
    v52 = v14;
    v15 = "\\configureFromCollectionMember No local modDate, No collectionMember modDate for collectionMember %@ - %@\\"";
    v16 = v10;
    v17 = 22;
    goto LABEL_10;
  }

  if (!v5 && v6)
  {
    v8 = +[BULogUtilities shared];
    v9 = [v8 verboseLoggingEnabled];

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = BKLibraryCollectionDevelopmentLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v11 = [(BKCollectionMember *)self collection];
    v12 = [v11 title];
    v13 = [(BKCollectionMember *)self asset];
    v14 = [v13 title];
    *buf = 138412802;
    v50 = v7;
    v51 = 2112;
    v52 = v12;
    v53 = 2112;
    v54 = v14;
    v15 = "\\No local modDate, collectionMember has modDate:%@  for collectionMember %@ - %@\\"";
    v16 = v10;
    v17 = 32;
    goto LABEL_10;
  }

  if (v5)
  {
    if (v6)
    {
      v43 = +[BULogUtilities shared];
      v44 = [v43 verboseLoggingEnabled];

      if (v44)
      {
        v10 = BKLibraryCollectionDevelopmentLog();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        v11 = [(BKCollectionMember *)self collection];
        v12 = [v11 title];
        v13 = [(BKCollectionMember *)self asset];
        v14 = [v13 title];
        *buf = 138413058;
        v50 = v5;
        v51 = 2112;
        v52 = v7;
        v53 = 2112;
        v54 = v12;
        v55 = 2112;
        v56 = v14;
        v15 = "\\local has modDate:%@, collectionMember has modDate:%@ for collectionMember %@ - %@\\"";
        v16 = v10;
        v17 = 42;
LABEL_10:
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);

LABEL_11:
      }
    }
  }

LABEL_12:
  v20 = [v4 collectionMemberID];
  v21 = [BCCollectionMember collectionIDFromCollectionMemberID:v20];

  v22 = [v4 collectionMemberID];
  v23 = [BCCollectionMember assetIDFromCollectionMemberID:v22];

  if ([v4 deletedFlag])
  {
    v24 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_90EEC(self);
    }
  }

  v25 = [(BKCollectionMember *)self collectionID];
  if (v25)
  {
    v26 = v25;
    v27 = [(BKCollectionMember *)self collectionID];
    v28 = [v21 isEqualToString:v27];

    if ((v28 & 1) == 0)
    {
      v29 = BKLibraryCollectionLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_90F7C(self);
      }
    }
  }

  v30 = [(BKCollectionMember *)self assetID];

  if (!v30)
  {
    [(BKCollectionMember *)self setAssetID:v23];
    v33 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_9109C(self, v33);
    }

    goto LABEL_27;
  }

  v31 = [(BKCollectionMember *)self assetID];
  v32 = [v23 isEqualToString:v31];

  if ((v32 & 1) == 0)
  {
    v33 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_9100C(self);
    }

LABEL_27:
  }

  if (v7)
  {
    if (!v5 || ([v7 timeIntervalSinceReferenceDate], v35 = v34, objc_msgSend(v5, "timeIntervalSinceReferenceDate"), v35 > v36))
    {
      v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 sortOrder]);
      [(BKCollectionMember *)self setDifferentNumber:v37 forKey:@"sortKey"];
      v38 = [(BKCollectionMember *)self hasChanges];
      [(BKCollectionMember *)self setDifferentDate:v7 forKey:@"localModDate"];
      v39 = +[BULogUtilities shared];
      v40 = [v39 verboseLoggingEnabled];

      if (v38)
      {
        if (v40)
        {
          v41 = BKLibraryCollectionDevelopmentLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [(BKCollectionMember *)self shortDescription];
            *buf = 138412290;
            v50 = v42;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "\\BKCollectionMember Configured with changes: %@\\"", buf, 0xCu);
          }

LABEL_43:
        }
      }

      else if (v40)
      {
        v41 = BKLibraryCollectionDevelopmentLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [(BKCollectionMember *)self collection];
          v45 = [v48 title];
          v46 = [(BKCollectionMember *)self asset];
          v47 = [v46 title];
          *buf = 138412546;
          v50 = v45;
          v51 = 2112;
          v52 = v47;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "\\BKCollectionMember Configure - No changes besides date for collectionMember %@ - %@\\"", buf, 0x16u);
        }

        goto LABEL_43;
      }
    }
  }
}

- (id)shortDescription
{
  v3 = [(BKCollectionMember *)self collection];
  v4 = [v3 collectionID];
  v5 = [(BKCollectionMember *)self assetID];
  v6 = [(BKCollectionMember *)self asset];
  v7 = [v6 title];
  v8 = [(BKCollectionMember *)self sortKey];
  v9 = [NSString stringWithFormat:@"BKCollectionMember collectionID: %@ assetID: %@ title: %@ sortKey:%@", v4, v5, v7, v8];

  return v9;
}

- (void)updateLastModification
{
  v3 = +[NSDate date];
  [(BKCollectionMember *)self setLocalModDate:v3];
}

- (void)setAssetID:(id)a3
{
  v6 = a3;
  v4 = [(BKCollectionMember *)self assetID];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"assetID"];
    [(BKCollectionMember *)self setPrimitiveValue:v6 forKey:@"assetID"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"assetID"];
  }
}

- (void)setTemporaryAssetID:(id)a3
{
  v6 = a3;
  v4 = [(BKCollectionMember *)self temporaryAssetID];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"temporaryAssetID"];
    [(BKCollectionMember *)self setPrimitiveValue:v6 forKey:@"temporaryAssetID"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"temporaryAssetID"];
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  v4 = [(BKCollectionMember *)self asset];

  if (v4 != v5)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"asset"];
    [(BKCollectionMember *)self setPrimitiveValue:v5 forKey:@"asset"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"asset"];
  }
}

- (void)setSortKey:(id)a3
{
  v6 = a3;
  v4 = [(BKCollectionMember *)self sortKey];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"sortKey"];
    [(BKCollectionMember *)self setPrimitiveValue:v6 forKey:@"sortKey"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"sortKey"];
  }
}

- (void)setCollection:(id)a3
{
  v10 = a3;
  v4 = [(BKCollectionMember *)self collection];

  if (v4 != v10)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"collection"];
    [(BKCollectionMember *)self setPrimitiveValue:v10 forKey:@"collection"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"collection"];
    v5 = [(BKCollectionMember *)self collection];

    if (v5)
    {
      v6 = [(BKCollectionMember *)self collection];
      v7 = [v6 collectionID];
      v8 = [v7 copy];
      collectionID = self->_collectionID;
      self->_collectionID = v8;
    }
  }
}

- (NSString)collectionID
{
  if (!self->_collectionID)
  {
    v3 = [(BKCollectionMember *)self collection];

    if (v3)
    {
      v4 = [(BKCollectionMember *)self collection];
      v5 = [v4 collectionID];
      v6 = [v5 copy];
      collectionID = self->_collectionID;
      self->_collectionID = v6;
    }
  }

  v8 = self->_collectionID;

  return v8;
}

@end