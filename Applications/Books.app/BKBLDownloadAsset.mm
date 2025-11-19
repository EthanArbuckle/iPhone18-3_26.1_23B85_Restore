@interface BKBLDownloadAsset
- (BKBLDownloadAsset)initWithBLDownloadStatus:(id)a3 dataSourceIdentifier:(id)a4 isParent:(BOOL)a5;
- (BKBLDownloadAsset)parent;
- (BOOL)_isSupplementalPDFromDownloadStatus:(id)a3;
- (BOOL)updateMetadata:(id)a3;
- (NSArray)activeChildren;
- (NSArray)children;
- (NSString)identifier;
- (id)_assetIDFromDownloadStatus:(id)a3;
- (id)_temporaryAssetIDFromDownloadStatus:(id)a3;
- (void)_updateContentTypeFromKind;
- (void)_updateIfNeeded;
- (void)addChild:(id)a3;
- (void)removeFromParent;
- (void)setBytesDownloaded:(int64_t)a3;
- (void)setBytesTotal:(int64_t)a3;
- (void)setDownloadStatus:(id)a3;
- (void)setProgress:(float)a3;
- (void)setSecondsRemaining:(int64_t)a3;
@end

@implementation BKBLDownloadAsset

- (BKBLDownloadAsset)initWithBLDownloadStatus:(id)a3 dataSourceIdentifier:(id)a4 isParent:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v47.receiver = self;
  v47.super_class = BKBLDownloadAsset;
  v10 = [(BKBLDownloadAsset *)&v47 init];
  v11 = v10;
  if (v10)
  {
    v10->_active = 1;
    v10->_needsUpdate = 0;
    objc_storeStrong(&v10->_dataSourceIdentifier, a4);
    v12 = [v8 downloadID];
    downloadID = v11->_downloadID;
    v11->_downloadID = v12;

    v14 = [v8 genre];
    genre = v11->_genre;
    v11->_genre = v14;

    v16 = [v8 thumbnailImageURL];
    v17 = [NSURL URLWithString:v16];
    thumbnailImageURL = v11->_thumbnailImageURL;
    v11->_thumbnailImageURL = v17;

    v11->_generation = 0x7FFFFFFFFFFFFFFFLL;
    v19 = [v8 assetKind];
    kind = v11->_kind;
    v11->_kind = v19;

    v11->_state = 2;
    v11->_sample = [v8 isSample];
    if (a5)
    {
      v11->_isAudiobook = 1;
      v11->_isParent = a5;
      [(BKBLDownloadAsset *)v11 _updateContentTypeFromKind];
      v21 = [v8 collectionArtistName];
      author = v11->_author;
      v11->_author = v21;

      v23 = [v8 collectionTitle];
      title = v11->_title;
      v11->_title = v23;

      v25 = [v8 storePlaylistID];
      v26 = [v25 stringValue];
      assetID = v11->_assetID;
      v11->_assetID = v26;

      objc_storeStrong(&v11->_storeID, v26);
      v28 = objc_opt_new();
      v29 = 344;
    }

    else
    {
      v11->_isAudiobook = [v8 isAudiobook];
      v11->_isParent = a5;
      [(BKBLDownloadAsset *)v11 _updateContentTypeFromKind];
      v30 = [v8 artistName];
      v31 = v11->_author;
      v11->_author = v30;

      v32 = [v8 title];
      v33 = v11->_title;
      v11->_title = v32;

      v34 = [v8 storeID];
      v35 = [v34 longLongValue];

      if (v35)
      {
        v36 = [v8 storeID];
        v37 = [v36 stringValue];
        storeID = v11->_storeID;
        v11->_storeID = v37;

        v39 = [(BKBLDownloadAsset *)v11 _assetIDFromDownloadStatus:v8];
        v40 = v11->_assetID;
        v11->_assetID = v39;

        v28 = [(BKBLDownloadAsset *)v11 _temporaryAssetIDFromDownloadStatus:v8];
      }

      else
      {
        v43 = [v8 permLink];

        if (!v43)
        {
          goto LABEL_8;
        }

        v44 = [v8 permLink];
        v45 = [NSURL URLWithString:v44];
        permlink = v11->_permlink;
        v11->_permlink = v45;

        v28 = v11->_permlink;
        if (v28)
        {
          v28 = [v28 identifierFromPermlink];
        }
      }

      v29 = 48;
    }

    v41 = *(&v11->super.isa + v29);
    *(&v11->super.isa + v29) = v28;
  }

LABEL_8:

  return v11;
}

- (BOOL)_isSupplementalPDFromDownloadStatus:(id)a3
{
  v3 = a3;
  v4 = [v3 storePlaylistID];
  v5 = [v4 stringValue];

  if (v5)
  {
    v6 = [v3 isAudiobook] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_assetIDFromDownloadStatus:(id)a3
{
  v4 = a3;
  if ([(BKBLDownloadAsset *)self _isSupplementalPDFromDownloadStatus:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 storeID];
    v5 = [v6 stringValue];
  }

  return v5;
}

- (id)_temporaryAssetIDFromDownloadStatus:(id)a3
{
  v4 = a3;
  if ([(BKBLDownloadAsset *)self _isSupplementalPDFromDownloadStatus:v4])
  {
    v5 = [v4 storeID];
    v6 = [v5 stringValue];
    goto LABEL_6;
  }

  v7 = [v4 permLink];

  if (v7)
  {
    v8 = [v4 permLink];
    v5 = [NSURL URLWithString:v8];

    if (!v5)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v6 = [(NSURL *)self->_permlink identifierFromPermlink];
LABEL_6:
    v9 = v6;
LABEL_7:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)updateMetadata:(id)a3
{
  v4 = a3;
  if (![(BKBLDownloadAsset *)self isParent])
  {
    v6 = [v4 title];
    if ([v6 length])
    {
    }

    else
    {
      v16 = [v4 artistName];
      v17 = [v16 length];

      if (!v17)
      {
        goto LABEL_13;
      }
    }

    v18 = [v4 artistName];
    author = self->_author;
    self->_author = v18;

    v20 = [v4 title];
    title = self->_title;
    self->_title = v20;

    v22 = [v4 storeID];
    v23 = [v22 longLongValue];

    if (v23)
    {
      v24 = [v4 storeID];
      v25 = [v24 stringValue];
      storeID = self->_storeID;
      self->_storeID = v25;

      v27 = [(BKBLDownloadAsset *)self _assetIDFromDownloadStatus:v4];
      assetID = self->_assetID;
      self->_assetID = v27;

      v29 = [(BKBLDownloadAsset *)self _temporaryAssetIDFromDownloadStatus:v4];
    }

    else
    {
      v43 = [v4 permLink];

      if (!v43)
      {
        goto LABEL_13;
      }

      v44 = [v4 permLink];
      v45 = [NSURL URLWithString:v44];
      permlink = self->_permlink;
      self->_permlink = v45;

      v47 = self->_permlink;
      if (!v47)
      {
        temporaryAssetID = self->_temporaryAssetID;
        self->_temporaryAssetID = 0;
        goto LABEL_12;
      }

      v29 = [(NSURL *)v47 identifierFromPermlink];
    }

    temporaryAssetID = self->_temporaryAssetID;
    self->_temporaryAssetID = v29;
LABEL_12:

    goto LABEL_13;
  }

  v5 = [v4 collectionTitle];
  if ([v5 length])
  {

LABEL_7:
    v9 = [v4 collectionArtistName];
    v10 = self->_author;
    self->_author = v9;

    v11 = [v4 collectionTitle];
    v12 = self->_title;
    self->_title = v11;

    temporaryAssetID = [v4 storePlaylistID];
    v14 = [temporaryAssetID stringValue];
    v15 = self->_assetID;
    self->_assetID = v14;

    objc_storeStrong(&self->_storeID, v14);
    goto LABEL_12;
  }

  v7 = [v4 collectionArtistName];
  v8 = [v7 length];

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (![(NSString *)self->_storeID length])
  {
    v30 = [(NSURL *)self->_permlink absoluteString];
    v31 = [v30 length];

    if (!v31)
    {
      v32 = BCBookDownloadLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100792E20(v32);
      }
    }
  }

  if (![(NSString *)self->_title length])
  {
    v33 = BCBookDownloadLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100792E64(v33);
    }
  }

  v34 = [v4 genre];
  genre = self->_genre;
  self->_genre = v34;

  v36 = [v4 thumbnailImageURL];
  v37 = [NSURL URLWithString:v36];
  thumbnailImageURL = self->_thumbnailImageURL;
  self->_thumbnailImageURL = v37;

  self->_generation = 0x7FFFFFFFFFFFFFFFLL;
  v39 = [v4 assetKind];
  kind = self->_kind;
  self->_kind = v39;

  if ([(BKBLDownloadAsset *)self isParent])
  {
    v41 = 1;
  }

  else
  {
    v41 = [v4 isAudiobook];
  }

  self->_isAudiobook = v41;
  [(BKBLDownloadAsset *)self _updateContentTypeFromKind];
  self->_state = 2;
  self->_sample = [v4 isSample];

  return 1;
}

- (void)_updateContentTypeFromKind
{
  if (-[BKBLDownloadAsset isParent](self, "isParent") || (-[BKBLDownloadAsset kind](self, "kind"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:BLDownloadKindAudiobook], v3, (v4 & 1) != 0))
  {
    v5 = 6;
  }

  else
  {
    v6 = [(BKBLDownloadAsset *)self kind];
    v7 = [v6 isEqualToString:BLDownloadKindEBook];

    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [(BKBLDownloadAsset *)self kind];
      v9 = [v8 isEqualToString:BLDownloadKindPDF];

      if (!v9)
      {
        return;
      }

      v5 = 3;
    }
  }

  [(BKBLDownloadAsset *)self setContentType:v5];
}

- (NSString)identifier
{
  v3 = [(BKBLDownloadAsset *)self storeID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(BKBLDownloadAsset *)self temporaryAssetID];
  }

  v6 = v5;

  return v6;
}

- (void)setProgress:(float)a3
{
  self->_progress = a3;
  v3 = [(BKBLDownloadAsset *)self parent];
  [v3 setNeedsUpdate:1];
}

- (void)setSecondsRemaining:(int64_t)a3
{
  if (self->_secondsRemaining != a3)
  {
    self->_secondsRemaining = a3;
    v4 = [(BKBLDownloadAsset *)self parent];
    [v4 setNeedsUpdate:1];
  }
}

- (void)setBytesDownloaded:(int64_t)a3
{
  if (self->_bytesDownloaded != a3)
  {
    self->_bytesDownloaded = a3;
    v4 = [(BKBLDownloadAsset *)self parent];
    [v4 setNeedsUpdate:1];
  }
}

- (void)setBytesTotal:(int64_t)a3
{
  if (self->_bytesTotal != a3)
  {
    self->_bytesTotal = a3;
    v4 = [(BKBLDownloadAsset *)self parent];
    [v4 setNeedsUpdate:1];
  }
}

- (void)setDownloadStatus:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 percentComplete];
    [v5 floatValue];
    self->_progress = v6;

    v7 = [v4 estimatedTimeRemaining];
    self->_secondsRemaining = [v7 integerValue];

    v8 = [v4 transferBytesWritten];
    self->_bytesDownloaded = [v8 longLongValue];

    v9 = [v4 transferBytesExpected];
    self->_bytesTotal = [v9 longLongValue];

    v10 = [v4 downloadPhase];
    if (v10 <= 8)
    {
      self->_downloadState = qword_10080B5F0[v10];
    }

    v11 = [(BKBLDownloadAsset *)self parent];
    [v11 setNeedsUpdate:1];
  }
}

- (void)_updateIfNeeded
{
  if ([(BKBLDownloadAsset *)self needsUpdate])
  {
    self->_downloadState = 4;
    v3 = [(BKBLDownloadAsset *)self children];
    if ([v3 count])
    {
      self->_secondsRemaining = 0;
      self->_bytesDownloaded = 0;
      self->_bytesTotal = 0;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v5)
      {
        v6 = v5;
        v29 = v3;
        obj = v4;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v31 = *v33;
        v13 = 0.0;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v33 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v32 + 1) + 8 * i);
            self->_secondsRemaining += [v15 secondsRemaining];
            self->_bytesDownloaded += [v15 bytesDownloaded];
            self->_bytesTotal += [v15 bytesTotal];
            [v15 progress];
            v13 = v13 + v16;
            v17 = [v15 downloadState];
            if (v17 == 7)
            {
              v18 = v9 + 1;
            }

            else
            {
              v18 = v9;
            }

            if (v17 == 8)
            {
              v19 = v8 + 1;
            }

            else
            {
              v19 = v8;
            }

            if (v17 == 8)
            {
              v18 = v9;
            }

            if (v17 == 6)
            {
              v19 = v8;
              v18 = v9;
              v20 = v10 + 1;
            }

            else
            {
              v20 = v10;
            }

            if (v17 == 5)
            {
              v21 = v11 + 1;
            }

            else
            {
              v21 = v11;
            }

            if (v17 == 4)
            {
              v21 = v11;
              v22 = v12 + 1;
            }

            else
            {
              v22 = v12;
            }

            if (v17 == 3)
            {
              v23 = v7 + 1;
            }

            else
            {
              v23 = v7;
            }

            if (v17 == 3)
            {
              v21 = v11;
              v22 = v12;
            }

            if (v17 > 5)
            {
              v8 = v19;
            }

            else
            {
              v7 = v23;
            }

            if (v17 <= 5)
            {
              v11 = v21;
              v12 = v22;
            }

            else
            {
              v9 = v18;
              v10 = v20;
            }
          }

          v6 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v6);
        v24 = v9 > 0;
        v25 = v12 > 0;
        v3 = v29;
        v4 = obj;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v24 = 0;
        v10 = 0;
        v11 = 0;
        v25 = 0;
        v13 = 0.0;
      }

      v26 = [(BKBLDownloadAsset *)self children];
      self->_progress = v13 / [v26 count];

      v27 = 4;
      if (v24)
      {
        v27 = 7;
      }

      if (!v24 && !v25)
      {
        if ([v4 count] == v11)
        {
          v27 = 5;
        }

        else if ([v4 count] == v10)
        {
          v27 = 6;
        }

        else if (v8 <= 0)
        {
          if ([v4 count] == v7)
          {
            v27 = 3;
          }

          else
          {
            v28 = BCBookDownloadLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109888;
              v37 = v11;
              v38 = 1024;
              v39 = v10;
              v40 = 1024;
              v41 = v8;
              v42 = 1024;
              v43 = v7;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "unexpected audiobook download state downloaded=%d paused=%d cancelled=%d waiting=%d", buf, 0x1Au);
            }

            v27 = 0;
          }
        }

        else
        {
          v27 = 8;
        }
      }

      self->_downloadState = v27;
    }

    [(BKBLDownloadAsset *)self setNeedsUpdate:0];
  }
}

- (void)addChild:(id)a3
{
  v5 = a3;
  v4 = [(BKBLDownloadAsset *)self childAssets];
  [v4 addObject:v5];

  [(BKBLDownloadAsset *)self setNumberOfAddedChildren:[(BKBLDownloadAsset *)self numberOfAddedChildren]+ 1];
  [v5 setParent:self];
}

- (void)removeFromParent
{
  v3 = [(BKBLDownloadAsset *)self parent];
  v4 = [v3 childAssets];
  [v4 removeObject:self];

  [(BKBLDownloadAsset *)self setParent:0];
}

- (NSArray)children
{
  v2 = [(BKBLDownloadAsset *)self childAssets];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)activeChildren
{
  v3 = [NSPredicate predicateWithFormat:@"active == YES"];
  v4 = [(BKBLDownloadAsset *)self childAssets];
  v5 = [v4 filteredArrayUsingPredicate:v3];

  return v5;
}

- (BKBLDownloadAsset)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end