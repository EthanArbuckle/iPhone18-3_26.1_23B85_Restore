@interface MPMediaLibraryArtworkRequest
+ (id)artworkTokenWithParameters:(id)parameters;
- (BOOL)isEqual:(id)equal;
- (ML3MusicLibrary)musicLibrary;
- (MPMediaLibraryArtwork)libraryArtwork;
- (MPMediaLibraryArtworkRequest)initWithLibrary:(id)library identifier:(unint64_t)identifier entityType:(int64_t)type artworkType:(int64_t)artworkType;
- (MPMediaLibraryArtworkRequest)initWithLibrary:(id)library identifier:(unint64_t)identifier entityType:(int64_t)type artworkType:(int64_t)artworkType mediaType:(unint64_t)mediaType variantType:(int64_t)variantType;
- (NSNumber)fetchableArtworkSource;
- (NSString)availableArtworkToken;
- (NSString)description;
- (NSString)fetchableArtworkToken;
- (double)retrievalTime;
- (id)_onQueue_musicLibrary;
- (id)artworkTokenParameters;
- (int64_t)artworkType;
- (int64_t)entityType;
- (int64_t)variantType;
- (unint64_t)hash;
- (unint64_t)libraryID;
- (unint64_t)mediaType;
- (void)_onQueue_updateTokens;
- (void)clearFailedFetchableToken;
- (void)promoteFetchableArtworkTokenIfNeeded;
- (void)setAvailableArtworkToken:(id)token;
- (void)setFetchableArtworkSource:(id)source;
- (void)setFetchableArtworkToken:(id)token;
- (void)setLibraryArtwork:(id)artwork;
- (void)setRetrievalTime:(double)time;
@end

@implementation MPMediaLibraryArtworkRequest

- (void)_onQueue_updateTokens
{
  os_unfair_lock_assert_owner(&self->_lock);
  _onQueue_musicLibrary = [(MPMediaLibraryArtworkRequest *)self _onQueue_musicLibrary];
  entityType = self->_entityType;
  libraryID = self->_libraryID;
  artworkType = self->_artworkType;
  variantType = self->_variantType;
  retrievalTime = self->_retrievalTime;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__MPMediaLibraryArtworkRequest__onQueue_updateTokens__block_invoke;
  v9[3] = &unk_1E7675420;
  v9[4] = self;
  [_onQueue_musicLibrary retrieveBestArtworkTokensForEntityPersistentID:libraryID entityType:entityType artworkType:artworkType variantType:variantType retrievalTime:v9 completionHandler:retrievalTime];
}

void __53__MPMediaLibraryArtworkRequest__onQueue_updateTokens__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  os_unfair_lock_assert_owner((*(a1 + 32) + 8));
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v17 = v7;

  v11 = *(a1 + 32);
  v12 = *(v11 + 48);
  *(v11 + 48) = v8;
  v13 = v8;

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = v14;

  *(*(a1 + 32) + 24) = 1;
}

- (id)_onQueue_musicLibrary
{
  os_unfair_lock_assert_owner(&self->_lock);
  libraryDataProvider = [(MPMediaLibrary *)self->_library libraryDataProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    library = [libraryDataProvider library];
  }

  else
  {
    library = 0;
  }

  return library;
}

- (void)promoteFetchableArtworkTokenIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  fetchableArtworkToken = self->_fetchableArtworkToken;
  if (fetchableArtworkToken)
  {
    objc_storeStrong(&self->_availableArtworkToken, fetchableArtworkToken);
    libraryArtwork = self->_libraryArtwork;
    self->_libraryArtwork = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearFailedFetchableToken
{
  os_unfair_lock_lock(&self->_lock);
  fetchableArtworkToken = self->_fetchableArtworkToken;
  self->_fetchableArtworkToken = 0;

  fetchableArtworkSource = self->_fetchableArtworkSource;
  self->_fetchableArtworkSource = 0;

  self->_hasRetrievedTokens = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)artworkTokenParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  os_unfair_lock_lock(&self->_lock);
  uniqueIdentifier = [(MPMediaLibrary *)self->_library uniqueIdentifier];
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"lid"];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", self->_libraryID];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"id"];
  }

  entityType = self->_entityType;
  if (entityType)
  {
    v7 = _NSStringFromMPMediaEntityType(entityType);
    if (v7)
    {
      [v3 setObject:v7 forKey:@"et"];
    }
  }

  artworkType = self->_artworkType;
  if (artworkType)
  {
    v9 = _NSStringFromMPMediaLibraryArtworkType(artworkType);
    if (v9)
    {
      [v3 setObject:v9 forKey:@"at"];
    }
  }

  variantType = self->_variantType;
  if (variantType)
  {
    v11 = _NSStringFromMPMediaLibraryArtworkVariantType(variantType);
    if (v11)
    {
      [v3 setObject:v11 forKey:@"avt"];
    }
  }

  v12 = _NSStringFromMPMediaType(self->_mediaType, @",");
  if (v12)
  {
    [v3 setObject:v12 forKey:@"mt"];
  }

  if (self->_retrievalTime > 0.00000011920929)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&self->_retrievalTime];
    if (v13)
    {
      v14 = v13;
      [v3 setObject:v13 forKey:@"rt"];
    }
  }

  availableArtworkToken = self->_availableArtworkToken;
  if (availableArtworkToken)
  {
    [v3 setObject:availableArtworkToken forKey:@"aat"];
  }

  fetchableArtworkToken = self->_fetchableArtworkToken;
  if (fetchableArtworkToken)
  {
    [v3 setObject:fetchableArtworkToken forKey:@"fat"];
  }

  integerValue = [(NSNumber *)self->_fetchableArtworkSource integerValue];
  if (integerValue)
  {
    v18 = &_MPMediaLibraryArtworkSourceTypeDescriptions;
    v19 = 7;
    while (*v18 != integerValue)
    {
      v18 += 2;
      if (!--v19)
      {
        goto LABEL_33;
      }
    }

    v20 = v18[1];
    if (v20)
    {
      v21 = v20;
      [v3 setObject:v20 forKey:@"fas"];
    }
  }

LABEL_33:
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  libraryID = [(MPMediaLibraryArtworkRequest *)self libraryID];
  v6 = _NSStringFromMPMediaEntityType([(MPMediaLibraryArtworkRequest *)self entityType]);
  v7 = _NSStringFromMPMediaLibraryArtworkType([(MPMediaLibraryArtworkRequest *)self artworkType]);
  v8 = _NSStringFromMPMediaLibraryArtworkVariantType([(MPMediaLibraryArtworkRequest *)self variantType]);
  v9 = [v3 stringWithFormat:@"<%@:%p libraryID=%llu entityType=%@ artworkType=%@ variantType=%@", v4, self, libraryID, v6, v7, v8];

  [(MPMediaLibraryArtworkRequest *)self retrievalTime];
  if (v10 > 0.0)
  {
    [(MPMediaLibraryArtworkRequest *)self retrievalTime];
    [v9 appendFormat:@" retrievalTime=%f", v11];
  }

  [v9 appendString:@">"];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    libraryID = [v5 libraryID];
    libraryID2 = [(MPMediaLibraryArtworkRequest *)self libraryID];
    entityType = [v5 entityType];
    entityType2 = [(MPMediaLibraryArtworkRequest *)self entityType];
    artworkType = [v5 artworkType];
    artworkType2 = [(MPMediaLibraryArtworkRequest *)self artworkType];
    [v5 retrievalTime];
    v13 = v12;
    [(MPMediaLibraryArtworkRequest *)self retrievalTime];
    v16 = v13 == v14 && artworkType == artworkType2;
    if (entityType != entityType2)
    {
      v16 = 0;
    }

    v17 = libraryID == libraryID2 && v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  os_unfair_lock_lock(&self->_lock);
  entityType = self->_entityType;
  libraryID = self->_libraryID;
  v11 = v5 ^ 0x7465646279746573 ^ libraryID;
  v12 = (v6 + v7) ^ __ROR8__(v7, 51);
  v13 = v8 + v11;
  v14 = (v8 + v11) ^ __ROR8__(v11, 48);
  v15 = v14 + __ROR8__(v6 + v7, 32);
  v16 = v15 ^ __ROR8__(v14, 43);
  v17 = v13 + v12;
  v18 = v17 ^ __ROR8__(v12, 47);
  v19 = v15 ^ libraryID;
  artworkType = self->_artworkType;
  v21 = v19 + v18;
  v22 = v21 ^ __ROR8__(v18, 51);
  v23 = v16 ^ artworkType;
  v24 = __ROR8__(v17, 32) + v23;
  v25 = __ROR8__(v23, 48);
  v26 = (v24 ^ v25) + __ROR8__(v21, 32);
  v27 = v26 ^ __ROR8__(v24 ^ v25, 43);
  v28 = v24 + v22;
  v73 = v26 ^ artworkType;
  v76 = v28 ^ __ROR8__(v22, 47);
  v29 = v27 ^ entityType;
  v30 = ((v26 ^ artworkType) + v76) ^ __ROR8__(v76, 51);
  v31 = __ROR8__(v28, 32) + v29;
  v32 = __ROR8__(v29, 48);
  v33 = (v31 ^ v32) + __ROR8__(v73 + v76, 32);
  v34 = v33 ^ __ROR8__(v31 ^ v32, 43);
  v35 = v31 + v30;
  v74 = v33 ^ entityType;
  v77 = v35 ^ __ROR8__(v30, 47);
  retrievalTime = self->_retrievalTime;
  v37 = v34 ^ retrievalTime;
  v38 = (v74 + v77) ^ __ROR8__(v77, 51);
  v39 = __ROR8__(v35, 32) + v37;
  v40 = __ROR8__(v37, 48);
  v41 = (v39 ^ v40) + __ROR8__(v74 + v77, 32);
  v42 = v41 ^ __ROR8__(v39 ^ v40, 43);
  v43 = v39 + v38;
  v79 = __ROR8__(v43, 32);
  v80 = v42;
  v75 = v41 ^ retrievalTime;
  v78 = v43 ^ __ROR8__(v38, 47);
  os_unfair_lock_unlock(&self->_lock);
  v44 = (v75 + v78) ^ __ROR8__(v78, 51);
  v45 = v79 + (v80 ^ 0x2000000000000000);
  v46 = __ROR8__(v80 ^ 0x2000000000000000, 48);
  v47 = (v45 ^ v46) + __ROR8__(v75 + v78, 32);
  v48 = v47 ^ __ROR8__(v45 ^ v46, 43);
  v49 = v45 + v44;
  v50 = v49 ^ __ROR8__(v44, 47);
  v51 = (v47 ^ 0x2000000000000000) + v50;
  v52 = v51 ^ __ROR8__(v50, 51);
  v53 = (__ROR8__(v49, 32) ^ 0xFFLL) + v48;
  v54 = __ROR8__(v48, 48);
  v55 = __ROR8__(v51, 32) + (v53 ^ v54);
  v56 = v55 ^ __ROR8__(v53 ^ v54, 43);
  v57 = v52 + v53;
  v58 = v57 ^ __ROR8__(v52, 47);
  v59 = v58 + v55;
  v60 = v59 ^ __ROR8__(v58, 51);
  v61 = __ROR8__(v57, 32) + v56;
  v62 = __ROR8__(v56, 48);
  v63 = __ROR8__(v59, 32) + (v61 ^ v62);
  v64 = v63 ^ __ROR8__(v61 ^ v62, 43);
  v65 = v60 + v61;
  v66 = v65 ^ __ROR8__(v60, 47);
  v67 = v66 + v63;
  v68 = v67 ^ __ROR8__(v66, 51);
  v69 = __ROR8__(v65, 32) + v64;
  v70 = __ROR8__(v64, 48);
  v71 = __ROR8__(v67, 32) + (v69 ^ v70);
  return (v68 + v69) ^ __ROR8__(v68, 47) ^ v71 ^ __ROR8__(v68 + v69, 32) ^ v71 ^ __ROR8__(v69 ^ v70, 43);
}

- (ML3MusicLibrary)musicLibrary
{
  os_unfair_lock_lock(&self->_lock);
  _onQueue_musicLibrary = [(MPMediaLibraryArtworkRequest *)self _onQueue_musicLibrary];
  os_unfair_lock_unlock(&self->_lock);

  return _onQueue_musicLibrary;
}

- (int64_t)variantType
{
  os_unfair_lock_lock(&self->_lock);
  variantType = self->_variantType;
  os_unfair_lock_unlock(&self->_lock);
  return variantType;
}

- (int64_t)artworkType
{
  os_unfair_lock_lock(&self->_lock);
  artworkType = self->_artworkType;
  os_unfair_lock_unlock(&self->_lock);
  return artworkType;
}

- (unint64_t)libraryID
{
  os_unfair_lock_lock(&self->_lock);
  libraryID = self->_libraryID;
  os_unfair_lock_unlock(&self->_lock);
  return libraryID;
}

- (int64_t)entityType
{
  os_unfair_lock_lock(&self->_lock);
  entityType = self->_entityType;
  os_unfair_lock_unlock(&self->_lock);
  return entityType;
}

- (void)setRetrievalTime:(double)time
{
  os_unfair_lock_lock(&self->_lock);
  self->_retrievalTime = time;

  os_unfair_lock_unlock(&self->_lock);
}

- (double)retrievalTime
{
  os_unfair_lock_lock(&self->_lock);
  retrievalTime = self->_retrievalTime;
  os_unfair_lock_unlock(&self->_lock);
  return retrievalTime;
}

- (void)setLibraryArtwork:(id)artwork
{
  artworkCopy = artwork;
  os_unfair_lock_lock(&self->_lock);
  libraryArtwork = self->_libraryArtwork;
  self->_libraryArtwork = artworkCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (MPMediaLibraryArtwork)libraryArtwork
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_libraryArtwork;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFetchableArtworkSource:(id)source
{
  sourceCopy = source;
  os_unfair_lock_lock(&self->_lock);
  v5 = [sourceCopy copy];

  fetchableArtworkSource = self->_fetchableArtworkSource;
  self->_fetchableArtworkSource = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)fetchableArtworkSource
{
  os_unfair_lock_lock(&self->_lock);
  fetchableArtworkSource = self->_fetchableArtworkSource;
  if (!fetchableArtworkSource)
  {
    if (self->_hasRetrievedTokens)
    {
      fetchableArtworkSource = 0;
    }

    else
    {
      [(MPMediaLibraryArtworkRequest *)self _onQueue_updateTokens];
      fetchableArtworkSource = self->_fetchableArtworkSource;
    }
  }

  v4 = fetchableArtworkSource;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setFetchableArtworkToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v5 = [tokenCopy copy];

  fetchableArtworkToken = self->_fetchableArtworkToken;
  self->_fetchableArtworkToken = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)fetchableArtworkToken
{
  os_unfair_lock_lock(&self->_lock);
  fetchableArtworkToken = self->_fetchableArtworkToken;
  if (!fetchableArtworkToken)
  {
    if (self->_hasRetrievedTokens)
    {
      fetchableArtworkToken = 0;
    }

    else
    {
      [(MPMediaLibraryArtworkRequest *)self _onQueue_updateTokens];
      fetchableArtworkToken = self->_fetchableArtworkToken;
    }
  }

  v4 = fetchableArtworkToken;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setAvailableArtworkToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v5 = [tokenCopy copy];

  availableArtworkToken = self->_availableArtworkToken;
  self->_availableArtworkToken = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)availableArtworkToken
{
  os_unfair_lock_lock(&self->_lock);
  availableArtworkToken = self->_availableArtworkToken;
  if (!availableArtworkToken)
  {
    if (self->_hasRetrievedTokens)
    {
      availableArtworkToken = 0;
    }

    else
    {
      [(MPMediaLibraryArtworkRequest *)self _onQueue_updateTokens];
      availableArtworkToken = self->_availableArtworkToken;
    }
  }

  v4 = availableArtworkToken;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (unint64_t)mediaType
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_artworkType == 4)
  {
    mediaType = -1;
  }

  else
  {
    mediaType = self->_mediaType;
    if (!mediaType)
    {
      v4 = objc_alloc(MEMORY[0x1E69B3538]);
      libraryID = self->_libraryID;
      _onQueue_musicLibrary = [(MPMediaLibraryArtworkRequest *)self _onQueue_musicLibrary];
      v7 = [v4 initWithPersistentID:libraryID inLibrary:_onQueue_musicLibrary];

      v8 = [v7 valueForProperty:*MEMORY[0x1E69B3138]];
      unsignedIntValue = [v8 unsignedIntValue];

      v10 = 255;
      if (unsignedIntValue != 0xFF)
      {
        v10 = 0;
      }

      if ((~unsignedIntValue & 0xFF00) == 0)
      {
        v10 |= 0xFF00uLL;
      }

      v11 = vandq_s8(vshlq_u32(vdupq_n_s32(unsignedIntValue), xmmword_1A273DD80), xmmword_1A273DD90);
      *v11.i8 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
      self->_mediaType = v10 | v11.i32[0] | unsignedIntValue & 0x3210 | v11.i32[1] | (4 * unsignedIntValue) & 0x400 | (4 * ((unsignedIntValue >> 1) & 1)) | (2 * unsignedIntValue) & 0x800;

      mediaType = self->_mediaType;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return mediaType;
}

- (MPMediaLibraryArtworkRequest)initWithLibrary:(id)library identifier:(unint64_t)identifier entityType:(int64_t)type artworkType:(int64_t)artworkType mediaType:(unint64_t)mediaType variantType:(int64_t)variantType
{
  libraryCopy = library;
  v21.receiver = self;
  v21.super_class = MPMediaLibraryArtworkRequest;
  v16 = [(MPMediaLibraryArtworkRequest *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v16->_library, library);
    v17->_libraryID = identifier;
    v17->_artworkType = artworkType;
    v17->_entityType = type;
    v17->_mediaType = mediaType;
    userIdentity = [libraryCopy userIdentity];
    userIdentity = v17->_userIdentity;
    v17->_userIdentity = userIdentity;

    v17->_variantType = variantType;
  }

  return v17;
}

- (MPMediaLibraryArtworkRequest)initWithLibrary:(id)library identifier:(unint64_t)identifier entityType:(int64_t)type artworkType:(int64_t)artworkType
{
  libraryCopy = library;
  v11 = libraryCopy;
  if (artworkType == 4)
  {
    mediaType = 0;
  }

  else
  {
    v13 = [libraryCopy itemWithPersistentID:identifier verifyExistence:0];
    mediaType = [v13 mediaType];
  }

  v14 = [(MPMediaLibraryArtworkRequest *)self initWithLibrary:v11 identifier:identifier entityType:type artworkType:artworkType mediaType:mediaType];

  return v14;
}

+ (id)artworkTokenWithParameters:(id)parameters
{
  v81 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v4 = [parametersCopy objectForKey:@"lid"];
  v5 = [MPMediaLibrary mediaLibraryWithUniqueIdentifier:v4 allowsLoadingFromDisk:1];
  v6 = [parametersCopy objectForKey:@"id"];
  v69 = strtoull([v6 UTF8String], 0, 0);
  v7 = [parametersCopy objectForKey:@"et"];
  v8 = &_MPMediaEntityTypeDescriptions;
  v9 = 7;
  while (1)
  {
    v10 = v8[1];
    v11 = v10;
    if (v10 == v7)
    {
      break;
    }

    v12 = [v7 isEqual:v10];

    if (v12)
    {
      goto LABEL_7;
    }

    v8 += 2;
    if (!--v9)
    {
      v68 = 0;
      goto LABEL_8;
    }
  }

LABEL_7:
  v68 = *v8;
LABEL_8:

  v13 = [parametersCopy objectForKey:@"at"];
  v14 = &_MPMediaLibraryArtworkTypeDescriptions;
  v15 = 6;
  while (1)
  {
    v16 = v14[1];
    v17 = v16;
    if (v16 == v13)
    {
      break;
    }

    v18 = [v13 isEqual:v16];

    if (v18)
    {
      goto LABEL_14;
    }

    v14 += 2;
    if (!--v15)
    {
      v19 = 0;
      goto LABEL_15;
    }
  }

LABEL_14:
  v19 = *v14;
LABEL_15:

  v20 = [parametersCopy objectForKey:@"mt"];
  v21 = @",";
  v72 = v4;
  v73 = parametersCopy;
  v74 = v5;
  v71 = v6;
  if ([v20 isEqualToString:@"anyMedia"])
  {
    v22 = -1;
    v24 = v69;
    selfCopy2 = self;
    v25 = v68;
  }

  else
  {
    v66 = v20;
    v67 = v19;
    [v20 componentsSeparatedByString:{@", "}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v79 = 0u;
    v26 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
    if (v26)
    {
      v27 = v26;
      v22 = 0;
      v28 = *v77;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v77 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = 0;
          v31 = *(*(&v76 + 1) + 8 * i);
          do
          {
            if ([v31 isEqualToString:_NSStringFromMPMediaType_strings1[v30]])
            {
              v22 |= _NSStringFromMPMediaType_types1[v30];
            }

            ++v30;
          }

          while (v30 != 6);
          for (j = 0; j != 7; ++j)
          {
            if ([v31 isEqualToString:_NSStringFromMPMediaType_strings2[j]])
            {
              v22 |= _NSStringFromMPMediaType_types2[j];
            }
          }
        }

        v27 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
      }

      while (v27);
    }

    else
    {
      v22 = 0;
    }

    v24 = v69;
    selfCopy2 = self;
    v19 = v67;
    v25 = v68;
    v20 = v66;
  }

  v33 = [parametersCopy objectForKey:@"avt"];
  v34 = v33;
  if (v33 == @"default" || (v35 = [(__CFString *)v33 isEqual:@"default"], v34, (v35 & 1) != 0))
  {
    v36 = 0;
  }

  else
  {
    v37 = v34;
    if (v37 == @"portrait")
    {
      v36 = 1;
    }

    else
    {
      v38 = v37;
      v39 = v19;
      v40 = [(__CFString *)v37 isEqual:@"portrait"];

      if (v40)
      {
        v36 = 1;
      }

      else
      {
        v41 = v38;
        if (v41 == @"motion" || (v42 = v41, v43 = [(__CFString *)v41 isEqual:@"motion"], v42, (v43 & 1) != 0))
        {
          v36 = 2;
        }

        else
        {
          v44 = v42;
          if (v44 == @"portraitMotion" || (v45 = v44, v46 = [(__CFString *)v44 isEqual:@"portraitMotion"], v45, (v46 & 1) != 0))
          {
            v36 = 3;
          }

          else
          {
            v47 = v45;
            if (v47 == @"motionPreviewFrame" || (v48 = v47, v49 = [(__CFString *)v47 isEqual:@"motionPreviewFrame"], v48, v49))
            {
              v36 = 4;
            }

            else
            {
              v36 = 0;
            }
          }
        }
      }

      v19 = v39;
    }
  }

  v50 = [[selfCopy2 alloc] initWithLibrary:v5 identifier:v24 entityType:v25 artworkType:v19 mediaType:v22 variantType:v36];
  v51 = [parametersCopy objectForKey:@"rt"];
  v52 = v51;
  if (v51)
  {
    [v51 doubleValue];
    [v50 setRetrievalTime:?];
  }

  v53 = [parametersCopy objectForKey:@"aat"];
  if (v53)
  {
    [v50 setAvailableArtworkToken:v53];
  }

  v54 = [parametersCopy objectForKey:@"fat"];
  if (v54)
  {
    [v50 setFetchableArtworkToken:v54];
  }

  v55 = [parametersCopy objectForKey:@"fas"];
  v56 = v55;
  if (v55)
  {
    v57 = v55;
    v58 = &_MPMediaLibraryArtworkSourceTypeDescriptions;
    v59 = 7;
    while (1)
    {
      v60 = v58[1];
      v61 = v60;
      if (v60 == v57)
      {
        break;
      }

      v62 = [v57 isEqual:v60];

      if (v62)
      {
        goto LABEL_66;
      }

      v58 += 2;
      if (!--v59)
      {
        v63 = 0;
        goto LABEL_67;
      }
    }

LABEL_66:
    v63 = *v58;
LABEL_67:

    v64 = [MEMORY[0x1E696AD98] numberWithInteger:v63];
    [v50 setFetchableArtworkSource:v64];

    parametersCopy = v73;
  }

  return v50;
}

@end