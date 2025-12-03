@interface MusicKit_SoftLinking_MPMusicPlayerItem
+ (id)playerItemForMediaItem:(id)item;
- (id)_initWithMediaItem:(id)item;
- (id)description;
- (void)_initializeAdditionalAttributesWithMediaItem:(id)item;
- (void)_initializeArtworkCatalogWithMediaItem:(id)item;
- (void)_initializeBasicPropertiesWithMediaItem:(id)item;
@end

@implementation MusicKit_SoftLinking_MPMusicPlayerItem

+ (id)playerItemForMediaItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    v5 = [[self alloc] _initWithMediaItem:itemCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithMediaItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPMusicPlayerItem;
  v5 = [(MusicKit_SoftLinking_MPMusicPlayerItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MusicKit_SoftLinking_MPMusicPlayerItem *)v5 _initializeBasicPropertiesWithMediaItem:itemCopy];
    [(MusicKit_SoftLinking_MPMusicPlayerItem *)v6 _initializeArtworkCatalogWithMediaItem:itemCopy];
    [(MusicKit_SoftLinking_MPMusicPlayerItem *)v6 _initializeAdditionalAttributesWithMediaItem:itemCopy];
  }

  return v6;
}

- (void)_initializeBasicPropertiesWithMediaItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_class();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v6 = get_MPMusicPlayerMediaItemProxyClass_softClass;
  v21 = get_MPMusicPlayerMediaItemProxyClass_softClass;
  if (!get_MPMusicPlayerMediaItemProxyClass_softClass)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __get_MPMusicPlayerMediaItemProxyClass_block_invoke;
    v17[3] = &unk_278229610;
    v17[4] = &v18;
    __get_MPMusicPlayerMediaItemProxyClass_block_invoke(v17);
    v6 = v19[3];
  }

  v7 = v6;
  _Block_object_dispose(&v18, 8);
  if (v5 == objc_opt_class())
  {
    itemIdentifier = [itemCopy itemIdentifier];
  }

  else
  {
    itemIdentifier = 0;
  }

  v9 = [itemIdentifier copy];
  identifier = self->_identifier;
  self->_identifier = v9;

  title = [itemCopy title];
  v12 = [title copy];
  title = self->_title;
  self->_title = v12;

  artist = [itemCopy artist];
  v15 = [artist copy];
  subtitle = self->_subtitle;
  self->_subtitle = v15;
}

- (void)_initializeArtworkCatalogWithMediaItem:(id)item
{
  itemCopy = item;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  artworkCatalog = [itemCopy artworkCatalog];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v5 = getMPModelObjectMediaItemClass_softClass;
  v32 = getMPModelObjectMediaItemClass_softClass;
  if (!getMPModelObjectMediaItemClass_softClass)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getMPModelObjectMediaItemClass_block_invoke;
    v27 = &unk_278229610;
    v28 = &v29;
    __getMPModelObjectMediaItemClass_block_invoke(&v24);
    v5 = v30[3];
  }

  v6 = v5;
  _Block_object_dispose(&v29, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = itemCopy;
    modelObject = [v7 modelObject];
    if (objc_opt_respondsToSelector())
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v9 = getMPModelObjectClass_softClass_0;
      v32 = getMPModelObjectClass_softClass_0;
      if (!getMPModelObjectClass_softClass_0)
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __getMPModelObjectClass_block_invoke_0;
        v27 = &unk_278229610;
        v28 = &v29;
        __getMPModelObjectClass_block_invoke_0(&v24);
        v9 = v30[3];
      }

      v10 = v9;
      _Block_object_dispose(&v29, 8);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __81__MusicKit_SoftLinking_MPMusicPlayerItem__initializeArtworkCatalogWithMediaItem___block_invoke;
      v15[3] = &unk_278229C78;
      v17 = &v18;
      v16 = modelObject;
      [v9 performWithoutEnforcement:v15];
    }

    if (!v19[5])
    {
      fallbackArtworkCatalogBlock = [v7 fallbackArtworkCatalogBlock];
      v12 = fallbackArtworkCatalogBlock;
      if (fallbackArtworkCatalogBlock)
      {
        v13 = (*(fallbackArtworkCatalogBlock + 16))(fallbackArtworkCatalogBlock);
        v14 = v19[5];
        v19[5] = v13;
      }
    }
  }

  objc_storeStrong(&self->_artworkCatalog, v19[5]);
  _Block_object_dispose(&v18, 8);
}

- (void)_initializeAdditionalAttributesWithMediaItem:(id)item
{
  itemCopy = item;
  if (_initializeAdditionalAttributesWithMediaItem__sMediaItemPropertiesOnceToken != -1)
  {
    [MusicKit_SoftLinking_MPMusicPlayerItem _initializeAdditionalAttributesWithMediaItem:];
  }

  v107 = itemCopy;
  v5 = [itemCopy valuesForProperties:_initializeAdditionalAttributesWithMediaItem__sMediaItemProperties];
  v6 = getMPMediaItemPropertyStoreID();
  v7 = [v5 objectForKey:v6];

  v106 = v7;
  if (_NSIsNSNumber())
  {
    unsignedLongLongValue = [v7 unsignedLongLongValue];
    if (unsignedLongLongValue)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", unsignedLongLongValue];
      v10 = [[MusicKit_SoftLinking_CatalogID alloc] initWithValue:v9 kind:0];

      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = getMPMediaItemPropertySubscriptionStoreItemID();
  v12 = [v5 objectForKey:v11];

  if (_NSIsNSNumber() && (v13 = [v12 unsignedLongLongValue]) != 0)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v13];
    v10 = [[MusicKit_SoftLinking_CatalogID alloc] initWithValue:v14 kind:6];

    if (v10)
    {
LABEL_9:
      v108 = 0;
      v15 = 0;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v16 = getMPMediaItemPropertyStoreCloudUniversalLibraryID();
  v17 = [v5 objectForKey:v16];

  if (_NSIsNSString())
  {
    v18 = v17;
    if ([v18 length])
    {
      v15 = v18;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v10 = 0;
  v108 = 1;
LABEL_18:
  objc_storeStrong(&self->_underlyingItemCatalogID, v10);
  v19 = [v15 copy];
  underlyingItemLibraryID = self->_underlyingItemLibraryID;
  self->_underlyingItemLibraryID = v19;

  v21 = getMPMediaItemPropertyAlbumTitle();
  v22 = [v5 objectForKey:v21];

  if (_NSIsNSString())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v104 = v23;
  v24 = [v23 copy];
  albumTitle = self->_albumTitle;
  self->_albumTitle = v24;

  v26 = getMPMediaItemPropertyArtist();
  v27 = [v5 objectForKey:v26];

  if (_NSIsNSString())
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v102 = v28;
  v29 = [v28 copy];
  artistName = self->_artistName;
  self->_artistName = v29;

  v31 = getMPMediaItemPropertyStoreGenreID();
  v32 = [v5 objectForKey:v31];

  if (_NSIsNSNumber())
  {
    unsignedLongLongValue2 = [v32 unsignedLongLongValue];
    if (unsignedLongLongValue2)
    {
      unsignedLongLongValue2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", unsignedLongLongValue2];
    }
  }

  else
  {
    unsignedLongLongValue2 = 0;
  }

  v100 = unsignedLongLongValue2;
  v34 = [unsignedLongLongValue2 copy];
  genreIdentifier = self->_genreIdentifier;
  self->_genreIdentifier = v34;

  v36 = getMPMediaItemPropertyGenre();
  v37 = [v5 objectForKey:v36];

  v109 = v15;
  if (_NSIsNSString())
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v98 = v38;
  v39 = [v38 copy];
  genreName = self->_genreName;
  self->_genreName = v39;

  v41 = getMPMediaItemPropertyPlaybackDuration();
  v42 = [v5 objectForKey:v41];

  v97 = v42;
  if (_NSIsNSNumber())
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v96 = v43;
  v44 = [v43 copy];
  duration = self->_duration;
  self->_duration = v44;

  v46 = getMPMediaItemPropertyAlbumTrackNumber();
  v47 = [v5 objectForKey:v46];

  v103 = v27;
  if (_NSIsNSNumber())
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v94 = v48;
  v49 = [v48 copy];
  trackNumber = self->_trackNumber;
  self->_trackNumber = v49;

  v51 = getMPMediaItemPropertyDiscNumber();
  v52 = [v5 objectForKey:v51];

  v93 = v52;
  if (_NSIsNSNumber())
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v92 = v53;
  v54 = [v53 copy];
  discNumber = self->_discNumber;
  self->_discNumber = v54;

  v56 = getMPMediaItemPropertyReleaseDate();
  v57 = [v5 objectForKey:v56];

  if (_NSIsNSDate())
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v90 = v58;
  v59 = [v58 copy];
  releaseDate = self->_releaseDate;
  self->_releaseDate = v59;

  v61 = getMPMediaItemPropertyIsExplicit();
  v62 = [v5 objectForKey:v61];

  v63 = _NSIsNSNumber();
  v101 = v32;
  v89 = v62;
  if (v63)
  {
    LOBYTE(v63) = [v62 BOOLValue];
  }

  v99 = v37;
  self->_isExplicit = v63;
  v64 = getMPMediaItemPropertyIsMusicVideo();
  v65 = [v5 objectForKey:v64];

  v110 = v10;
  v91 = v57;
  if (_NSIsNSNumber())
  {
    bOOLValue = [v65 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v95 = v47;
  self->_isMusicVideo = bOOLValue;
  v67 = getMPMediaItemPropertyVideoQuality();
  v68 = [v5 objectForKey:v67];

  v105 = v22;
  if (_NSIsNSNumber())
  {
    v69 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v68, "integerValue") == 3}];
  }

  else
  {
    v69 = 0;
  }

  v70 = [v69 copy];
  has4K = self->_has4K;
  self->_has4K = v70;

  v72 = getMPMediaItemPropertyColorCapability();
  v73 = [v5 objectForKey:v72];

  if (_NSIsNSNumber())
  {
    integerValue = [v73 integerValue];
    v75 = [MEMORY[0x277CCABB0] numberWithBool:integerValue & 1];
  }

  else
  {
    v75 = 0;
  }

  v76 = [v75 copy];
  hasHDR = self->_hasHDR;
  self->_hasHDR = v76;

  v78 = &v112;
  if (!bOOLValue)
  {
    goto LABEL_59;
  }

  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v79 = getMPStoreItemMetadataItemKindMusicVideoSymbolLoc_ptr;
  v115 = getMPStoreItemMetadataItemKindMusicVideoSymbolLoc_ptr;
  if (!getMPStoreItemMetadataItemKindMusicVideoSymbolLoc_ptr)
  {
    v80 = MediaPlayerLibrary_3();
    v113[3] = dlsym(v80, "MPStoreItemMetadataItemKindMusicVideo");
    getMPStoreItemMetadataItemKindMusicVideoSymbolLoc_ptr = v113[3];
    v79 = v113[3];
  }

  _Block_object_dispose(&v112, 8);
  if (!v79)
  {
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
LABEL_59:
    v112 = 0;
    v113 = v78;
    v114 = 0x2020000000;
    v79 = getMPStoreItemMetadataItemKindSongSymbolLoc_ptr;
    v115 = getMPStoreItemMetadataItemKindSongSymbolLoc_ptr;
    if (!getMPStoreItemMetadataItemKindSongSymbolLoc_ptr)
    {
      v111 = v78;
      v81 = MediaPlayerLibrary_3();
      *(v111[1] + 24) = dlsym(v81, "MPStoreItemMetadataItemKindSong");
      getMPStoreItemMetadataItemKindSongSymbolLoc_ptr = *(v111[1] + 24);
      v79 = v113[3];
    }

    _Block_object_dispose(&v112, 8);
    if (!v79)
    {
      v88 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
      _Block_object_dispose(&v112, 8);
      _Unwind_Resume(v88);
    }
  }

  v82 = *v79;
  if (v108)
  {
    value = v109;
  }

  else
  {
    value = [(MusicKit_SoftLinking_CatalogID *)v110 value];
  }

  v84 = value;
  v85 = 0;
  if (v82)
  {
    if (value)
    {
      v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v85 setObject:v82 forKey:@"kind"];
      [v85 setObject:v84 forKey:@"id"];
      if (v108)
      {
        [v85 setObject:MEMORY[0x277CBEC38] forKey:@"isLibrary"];
      }
    }
  }

  v86 = [v85 copy];
  playParametersDictionary = self->_playParametersDictionary;
  self->_playParametersDictionary = v86;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_identifier)
  {
    [v6 appendFormat:@"; identifier = %@", self->_identifier];
  }

  if (self->_title)
  {
    [v6 appendFormat:@"; title = %@", self->_title];
  }

  if (self->_subtitle)
  {
    [v6 appendFormat:@"; subtitle = %@", self->_subtitle];
  }

  if (self->_artworkCatalog)
  {
    [v6 appendFormat:@"; artworkCatalog = %@", self->_artworkCatalog];
  }

  if (self->_underlyingItemCatalogID)
  {
    [v6 appendFormat:@"; underlyingItemCatalogID = %@", self->_underlyingItemCatalogID];
  }

  if (self->_underlyingItemLibraryID)
  {
    [v6 appendFormat:@"; underlyingItemLibraryID = %@", self->_underlyingItemLibraryID];
  }

  if (self->_albumTitle)
  {
    [v6 appendFormat:@"; albumTitle = %@", self->_albumTitle];
  }

  if (self->_artistName)
  {
    [v6 appendFormat:@"; artistName = %@", self->_artistName];
  }

  if (self->_genreIdentifier)
  {
    [v6 appendFormat:@"; genreIdentifier = %@", self->_genreIdentifier];
  }

  if (self->_genreName)
  {
    [v6 appendFormat:@"; genreName = %@", self->_genreName];
  }

  if (self->_duration)
  {
    [v6 appendFormat:@"; duration = %@", self->_duration];
  }

  if (self->_trackNumber)
  {
    [v6 appendFormat:@"; trackNumber = %@", self->_trackNumber];
  }

  if (self->_discNumber)
  {
    [v6 appendFormat:@"; discNumber = %@", self->_discNumber];
  }

  if (self->_releaseDate)
  {
    [v6 appendFormat:@"; releaseDate = %@", self->_releaseDate];
  }

  if (self->_isExplicit)
  {
    [v6 appendString:@"; isExplicit = YES"];
  }

  if (self->_isMusicVideo)
  {
    [v6 appendString:@"; isMusicVideo = YES"];
    has4K = self->_has4K;
    if (has4K)
    {
      if ([(NSNumber *)has4K BOOLValue])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      [v6 appendFormat:@"; has4K = %@", v8];
    }

    hasHDR = self->_hasHDR;
    if (hasHDR)
    {
      if ([(NSNumber *)hasHDR BOOLValue])
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      [v6 appendFormat:@"; hasHDR = %@", v10];
    }
  }

  [v6 appendString:@">"];

  return v6;
}

@end