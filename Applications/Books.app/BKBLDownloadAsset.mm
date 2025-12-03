@interface BKBLDownloadAsset
- (BKBLDownloadAsset)initWithBLDownloadStatus:(id)status dataSourceIdentifier:(id)identifier isParent:(BOOL)parent;
- (BKBLDownloadAsset)parent;
- (BOOL)_isSupplementalPDFromDownloadStatus:(id)status;
- (BOOL)updateMetadata:(id)metadata;
- (NSArray)activeChildren;
- (NSArray)children;
- (NSString)identifier;
- (id)_assetIDFromDownloadStatus:(id)status;
- (id)_temporaryAssetIDFromDownloadStatus:(id)status;
- (void)_updateContentTypeFromKind;
- (void)_updateIfNeeded;
- (void)addChild:(id)child;
- (void)removeFromParent;
- (void)setBytesDownloaded:(int64_t)downloaded;
- (void)setBytesTotal:(int64_t)total;
- (void)setDownloadStatus:(id)status;
- (void)setProgress:(float)progress;
- (void)setSecondsRemaining:(int64_t)remaining;
@end

@implementation BKBLDownloadAsset

- (BKBLDownloadAsset)initWithBLDownloadStatus:(id)status dataSourceIdentifier:(id)identifier isParent:(BOOL)parent
{
  statusCopy = status;
  identifierCopy = identifier;
  v47.receiver = self;
  v47.super_class = BKBLDownloadAsset;
  v10 = [(BKBLDownloadAsset *)&v47 init];
  v11 = v10;
  if (v10)
  {
    v10->_active = 1;
    v10->_needsUpdate = 0;
    objc_storeStrong(&v10->_dataSourceIdentifier, identifier);
    downloadID = [statusCopy downloadID];
    downloadID = v11->_downloadID;
    v11->_downloadID = downloadID;

    genre = [statusCopy genre];
    genre = v11->_genre;
    v11->_genre = genre;

    thumbnailImageURL = [statusCopy thumbnailImageURL];
    v17 = [NSURL URLWithString:thumbnailImageURL];
    thumbnailImageURL = v11->_thumbnailImageURL;
    v11->_thumbnailImageURL = v17;

    v11->_generation = 0x7FFFFFFFFFFFFFFFLL;
    assetKind = [statusCopy assetKind];
    kind = v11->_kind;
    v11->_kind = assetKind;

    v11->_state = 2;
    v11->_sample = [statusCopy isSample];
    if (parent)
    {
      v11->_isAudiobook = 1;
      v11->_isParent = parent;
      [(BKBLDownloadAsset *)v11 _updateContentTypeFromKind];
      collectionArtistName = [statusCopy collectionArtistName];
      author = v11->_author;
      v11->_author = collectionArtistName;

      collectionTitle = [statusCopy collectionTitle];
      title = v11->_title;
      v11->_title = collectionTitle;

      storePlaylistID = [statusCopy storePlaylistID];
      stringValue = [storePlaylistID stringValue];
      assetID = v11->_assetID;
      v11->_assetID = stringValue;

      objc_storeStrong(&v11->_storeID, stringValue);
      identifierFromPermlink = objc_opt_new();
      v29 = 344;
    }

    else
    {
      v11->_isAudiobook = [statusCopy isAudiobook];
      v11->_isParent = parent;
      [(BKBLDownloadAsset *)v11 _updateContentTypeFromKind];
      artistName = [statusCopy artistName];
      v31 = v11->_author;
      v11->_author = artistName;

      title = [statusCopy title];
      v33 = v11->_title;
      v11->_title = title;

      storeID = [statusCopy storeID];
      longLongValue = [storeID longLongValue];

      if (longLongValue)
      {
        storeID2 = [statusCopy storeID];
        stringValue2 = [storeID2 stringValue];
        storeID = v11->_storeID;
        v11->_storeID = stringValue2;

        v39 = [(BKBLDownloadAsset *)v11 _assetIDFromDownloadStatus:statusCopy];
        v40 = v11->_assetID;
        v11->_assetID = v39;

        identifierFromPermlink = [(BKBLDownloadAsset *)v11 _temporaryAssetIDFromDownloadStatus:statusCopy];
      }

      else
      {
        permLink = [statusCopy permLink];

        if (!permLink)
        {
          goto LABEL_8;
        }

        permLink2 = [statusCopy permLink];
        v45 = [NSURL URLWithString:permLink2];
        permlink = v11->_permlink;
        v11->_permlink = v45;

        identifierFromPermlink = v11->_permlink;
        if (identifierFromPermlink)
        {
          identifierFromPermlink = [identifierFromPermlink identifierFromPermlink];
        }
      }

      v29 = 48;
    }

    v41 = *(&v11->super.isa + v29);
    *(&v11->super.isa + v29) = identifierFromPermlink;
  }

LABEL_8:

  return v11;
}

- (BOOL)_isSupplementalPDFromDownloadStatus:(id)status
{
  statusCopy = status;
  storePlaylistID = [statusCopy storePlaylistID];
  stringValue = [storePlaylistID stringValue];

  if (stringValue)
  {
    v6 = [statusCopy isAudiobook] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_assetIDFromDownloadStatus:(id)status
{
  statusCopy = status;
  if ([(BKBLDownloadAsset *)self _isSupplementalPDFromDownloadStatus:statusCopy])
  {
    stringValue = 0;
  }

  else
  {
    storeID = [statusCopy storeID];
    stringValue = [storeID stringValue];
  }

  return stringValue;
}

- (id)_temporaryAssetIDFromDownloadStatus:(id)status
{
  statusCopy = status;
  if ([(BKBLDownloadAsset *)self _isSupplementalPDFromDownloadStatus:statusCopy])
  {
    storeID = [statusCopy storeID];
    stringValue = [storeID stringValue];
    goto LABEL_6;
  }

  permLink = [statusCopy permLink];

  if (permLink)
  {
    permLink2 = [statusCopy permLink];
    storeID = [NSURL URLWithString:permLink2];

    if (!storeID)
    {
      v9 = 0;
      goto LABEL_7;
    }

    stringValue = [(NSURL *)self->_permlink identifierFromPermlink];
LABEL_6:
    v9 = stringValue;
LABEL_7:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)updateMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (![(BKBLDownloadAsset *)self isParent])
  {
    title = [metadataCopy title];
    if ([title length])
    {
    }

    else
    {
      artistName = [metadataCopy artistName];
      v17 = [artistName length];

      if (!v17)
      {
        goto LABEL_13;
      }
    }

    artistName2 = [metadataCopy artistName];
    author = self->_author;
    self->_author = artistName2;

    title2 = [metadataCopy title];
    title = self->_title;
    self->_title = title2;

    storeID = [metadataCopy storeID];
    longLongValue = [storeID longLongValue];

    if (longLongValue)
    {
      storeID2 = [metadataCopy storeID];
      stringValue = [storeID2 stringValue];
      storeID = self->_storeID;
      self->_storeID = stringValue;

      v27 = [(BKBLDownloadAsset *)self _assetIDFromDownloadStatus:metadataCopy];
      assetID = self->_assetID;
      self->_assetID = v27;

      identifierFromPermlink = [(BKBLDownloadAsset *)self _temporaryAssetIDFromDownloadStatus:metadataCopy];
    }

    else
    {
      permLink = [metadataCopy permLink];

      if (!permLink)
      {
        goto LABEL_13;
      }

      permLink2 = [metadataCopy permLink];
      v45 = [NSURL URLWithString:permLink2];
      permlink = self->_permlink;
      self->_permlink = v45;

      v47 = self->_permlink;
      if (!v47)
      {
        temporaryAssetID = self->_temporaryAssetID;
        self->_temporaryAssetID = 0;
        goto LABEL_12;
      }

      identifierFromPermlink = [(NSURL *)v47 identifierFromPermlink];
    }

    temporaryAssetID = self->_temporaryAssetID;
    self->_temporaryAssetID = identifierFromPermlink;
LABEL_12:

    goto LABEL_13;
  }

  collectionTitle = [metadataCopy collectionTitle];
  if ([collectionTitle length])
  {

LABEL_7:
    collectionArtistName = [metadataCopy collectionArtistName];
    v10 = self->_author;
    self->_author = collectionArtistName;

    collectionTitle2 = [metadataCopy collectionTitle];
    v12 = self->_title;
    self->_title = collectionTitle2;

    temporaryAssetID = [metadataCopy storePlaylistID];
    stringValue2 = [temporaryAssetID stringValue];
    v15 = self->_assetID;
    self->_assetID = stringValue2;

    objc_storeStrong(&self->_storeID, stringValue2);
    goto LABEL_12;
  }

  collectionArtistName2 = [metadataCopy collectionArtistName];
  v8 = [collectionArtistName2 length];

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (![(NSString *)self->_storeID length])
  {
    absoluteString = [(NSURL *)self->_permlink absoluteString];
    v31 = [absoluteString length];

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

  genre = [metadataCopy genre];
  genre = self->_genre;
  self->_genre = genre;

  thumbnailImageURL = [metadataCopy thumbnailImageURL];
  v37 = [NSURL URLWithString:thumbnailImageURL];
  thumbnailImageURL = self->_thumbnailImageURL;
  self->_thumbnailImageURL = v37;

  self->_generation = 0x7FFFFFFFFFFFFFFFLL;
  assetKind = [metadataCopy assetKind];
  kind = self->_kind;
  self->_kind = assetKind;

  if ([(BKBLDownloadAsset *)self isParent])
  {
    isAudiobook = 1;
  }

  else
  {
    isAudiobook = [metadataCopy isAudiobook];
  }

  self->_isAudiobook = isAudiobook;
  [(BKBLDownloadAsset *)self _updateContentTypeFromKind];
  self->_state = 2;
  self->_sample = [metadataCopy isSample];

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
    kind = [(BKBLDownloadAsset *)self kind];
    v7 = [kind isEqualToString:BLDownloadKindEBook];

    if (v7)
    {
      v5 = 1;
    }

    else
    {
      kind2 = [(BKBLDownloadAsset *)self kind];
      v9 = [kind2 isEqualToString:BLDownloadKindPDF];

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
  storeID = [(BKBLDownloadAsset *)self storeID];
  v4 = storeID;
  if (storeID)
  {
    temporaryAssetID = storeID;
  }

  else
  {
    temporaryAssetID = [(BKBLDownloadAsset *)self temporaryAssetID];
  }

  v6 = temporaryAssetID;

  return v6;
}

- (void)setProgress:(float)progress
{
  self->_progress = progress;
  parent = [(BKBLDownloadAsset *)self parent];
  [parent setNeedsUpdate:1];
}

- (void)setSecondsRemaining:(int64_t)remaining
{
  if (self->_secondsRemaining != remaining)
  {
    self->_secondsRemaining = remaining;
    parent = [(BKBLDownloadAsset *)self parent];
    [parent setNeedsUpdate:1];
  }
}

- (void)setBytesDownloaded:(int64_t)downloaded
{
  if (self->_bytesDownloaded != downloaded)
  {
    self->_bytesDownloaded = downloaded;
    parent = [(BKBLDownloadAsset *)self parent];
    [parent setNeedsUpdate:1];
  }
}

- (void)setBytesTotal:(int64_t)total
{
  if (self->_bytesTotal != total)
  {
    self->_bytesTotal = total;
    parent = [(BKBLDownloadAsset *)self parent];
    [parent setNeedsUpdate:1];
  }
}

- (void)setDownloadStatus:(id)status
{
  if (status)
  {
    statusCopy = status;
    percentComplete = [statusCopy percentComplete];
    [percentComplete floatValue];
    self->_progress = v6;

    estimatedTimeRemaining = [statusCopy estimatedTimeRemaining];
    self->_secondsRemaining = [estimatedTimeRemaining integerValue];

    transferBytesWritten = [statusCopy transferBytesWritten];
    self->_bytesDownloaded = [transferBytesWritten longLongValue];

    transferBytesExpected = [statusCopy transferBytesExpected];
    self->_bytesTotal = [transferBytesExpected longLongValue];

    downloadPhase = [statusCopy downloadPhase];
    if (downloadPhase <= 8)
    {
      self->_downloadState = qword_10080B5F0[downloadPhase];
    }

    parent = [(BKBLDownloadAsset *)self parent];
    [parent setNeedsUpdate:1];
  }
}

- (void)_updateIfNeeded
{
  if ([(BKBLDownloadAsset *)self needsUpdate])
  {
    self->_downloadState = 4;
    children = [(BKBLDownloadAsset *)self children];
    if ([children count])
    {
      self->_secondsRemaining = 0;
      self->_bytesDownloaded = 0;
      self->_bytesTotal = 0;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v4 = children;
      v5 = [v4 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v5)
      {
        v6 = v5;
        v29 = children;
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
            downloadState = [v15 downloadState];
            if (downloadState == 7)
            {
              v18 = v9 + 1;
            }

            else
            {
              v18 = v9;
            }

            if (downloadState == 8)
            {
              v19 = v8 + 1;
            }

            else
            {
              v19 = v8;
            }

            if (downloadState == 8)
            {
              v18 = v9;
            }

            if (downloadState == 6)
            {
              v19 = v8;
              v18 = v9;
              v20 = v10 + 1;
            }

            else
            {
              v20 = v10;
            }

            if (downloadState == 5)
            {
              v21 = v11 + 1;
            }

            else
            {
              v21 = v11;
            }

            if (downloadState == 4)
            {
              v21 = v11;
              v22 = v12 + 1;
            }

            else
            {
              v22 = v12;
            }

            if (downloadState == 3)
            {
              v23 = v7 + 1;
            }

            else
            {
              v23 = v7;
            }

            if (downloadState == 3)
            {
              v21 = v11;
              v22 = v12;
            }

            if (downloadState > 5)
            {
              v8 = v19;
            }

            else
            {
              v7 = v23;
            }

            if (downloadState <= 5)
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
        children = v29;
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

      children2 = [(BKBLDownloadAsset *)self children];
      self->_progress = v13 / [children2 count];

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

- (void)addChild:(id)child
{
  childCopy = child;
  childAssets = [(BKBLDownloadAsset *)self childAssets];
  [childAssets addObject:childCopy];

  [(BKBLDownloadAsset *)self setNumberOfAddedChildren:[(BKBLDownloadAsset *)self numberOfAddedChildren]+ 1];
  [childCopy setParent:self];
}

- (void)removeFromParent
{
  parent = [(BKBLDownloadAsset *)self parent];
  childAssets = [parent childAssets];
  [childAssets removeObject:self];

  [(BKBLDownloadAsset *)self setParent:0];
}

- (NSArray)children
{
  childAssets = [(BKBLDownloadAsset *)self childAssets];
  v3 = [childAssets copy];

  return v3;
}

- (NSArray)activeChildren
{
  v3 = [NSPredicate predicateWithFormat:@"active == YES"];
  childAssets = [(BKBLDownloadAsset *)self childAssets];
  v5 = [childAssets filteredArrayUsingPredicate:v3];

  return v5;
}

- (BKBLDownloadAsset)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end