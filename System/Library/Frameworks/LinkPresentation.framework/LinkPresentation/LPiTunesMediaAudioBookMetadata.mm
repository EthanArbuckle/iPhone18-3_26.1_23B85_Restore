@interface LPiTunesMediaAudioBookMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaAudioBookMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaAudioBookMetadata

- (LPiTunesMediaAudioBookMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = LPiTunesMediaAudioBookMetadata;
  v5 = [(LPiTunesMediaAudioBookMetadata *)&v24 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v10;

    v12 = decodeStringForKey(v4, @"author");
    author = v5->_author;
    v5->_author = v12;

    v14 = decodeStringForKey(v4, @"narrator");
    narrator = v5->_narrator;
    v5->_narrator = v14;

    v16 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    v18 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v18;

    v20 = decodeURLForKey(v4, @"previewURL");
    previewURL = v5->_previewURL;
    v5->_previewURL = v20;

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [v4 _lp_encodeStringIfNotNil:self->_author forKey:@"author"];
  [v4 _lp_encodeStringIfNotNil:self->_narrator forKey:@"narrator"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_previewURL forKey:@"previewURL"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaAudioBookMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaAudioBookMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaAudioBookMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaAudioBookMetadata *)self storeIdentifier];
    [(LPiTunesMediaAudioBookMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaAudioBookMetadata *)self name];
    [(LPiTunesMediaAudioBookMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaAudioBookMetadata *)self author];
    [(LPiTunesMediaAudioBookMetadata *)v4 setAuthor:v8];

    v9 = [(LPiTunesMediaAudioBookMetadata *)self narrator];
    [(LPiTunesMediaAudioBookMetadata *)v4 setNarrator:v9];

    v10 = [(LPiTunesMediaAudioBookMetadata *)self previewURL];
    [(LPiTunesMediaAudioBookMetadata *)v4 setPreviewURL:v10];

    v11 = [(LPiTunesMediaAudioBookMetadata *)self artwork];
    [(LPiTunesMediaAudioBookMetadata *)v4 setArtwork:v11];

    v12 = [(LPiTunesMediaAudioBookMetadata *)self artworkMetadata];
    [(LPiTunesMediaAudioBookMetadata *)v4 setArtworkMetadata:v12];

    v13 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaAudioBookMetadata;
  if ([(LPiTunesMediaAudioBookMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_author) && objectsAreEqual_0(v6[6], self->_narrator) && objectsAreEqual_0(v6[7], self->_artwork) && objectsAreEqual_0(v6[8], self->_artworkMetadata))
      {
        v5 = objectsAreEqual_0(v6[9], self->_previewURL);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v5 = a3;
  v6 = [v5 commonPresentationPropertiesForStyle:14];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  v8 = [(LPiTunesMediaAudioBookMetadata *)self name];
  v9 = [(LPiTunesMediaAudioBookMetadata *)self author];
  v10 = LPLocalizedString(@" Books");
  populateCaptionBar(v6, v8, v9, v10, 1, v5);

  v11 = [(LPiTunesMediaAudioBookMetadata *)self artwork];
  [v5 _populateProperties:v6 withPrimaryImage:v11];

  v12 = objc_alloc_init(LPImagePresentationProperties);
  [(LPImagePresentationProperties *)v12 setFilter:11];
  [v6 setImageProperties:v12];
  if (TCCAccessPreflight())
  {
    v13 = 0;
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v14 = getMPMediaQueryClass_softClass;
    v46 = getMPMediaQueryClass_softClass;
    if (!getMPMediaQueryClass_softClass)
    {
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __getMPMediaQueryClass_block_invoke;
      v41 = &unk_1E7A35518;
      v42 = &v43;
      __getMPMediaQueryClass_block_invoke(&v38);
      v14 = v44[3];
    }

    v15 = v14;
    _Block_object_dispose(&v43, 8);
    v16 = [v14 audiobooksQuery];
    v17 = MEMORY[0x1E696AE88];
    v18 = [(LPiTunesMediaAudioBookMetadata *)self storeIdentifier];
    v19 = [v17 scannerWithString:v18];

    v37 = 0;
    if ([v19 scanUnsignedLongLong:&v37])
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x2050000000;
      v20 = getMPMediaPropertyPredicateClass_softClass;
      v46 = getMPMediaPropertyPredicateClass_softClass;
      if (!getMPMediaPropertyPredicateClass_softClass)
      {
        v38 = MEMORY[0x1E69E9820];
        v39 = 3221225472;
        v40 = __getMPMediaPropertyPredicateClass_block_invoke;
        v41 = &unk_1E7A35518;
        v42 = &v43;
        __getMPMediaPropertyPredicateClass_block_invoke(&v38);
        v20 = v44[3];
      }

      v21 = v20;
      _Block_object_dispose(&v43, 8);
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v37];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v23 = getMPMediaItemPropertyStorePlaylistIDSymbolLoc_ptr;
      v46 = getMPMediaItemPropertyStorePlaylistIDSymbolLoc_ptr;
      if (!getMPMediaItemPropertyStorePlaylistIDSymbolLoc_ptr)
      {
        v38 = MEMORY[0x1E69E9820];
        v39 = 3221225472;
        v40 = __getMPMediaItemPropertyStorePlaylistIDSymbolLoc_block_invoke;
        v41 = &unk_1E7A35518;
        v42 = &v43;
        v24 = MediaPlayerLibrary();
        v25 = dlsym(v24, "MPMediaItemPropertyStorePlaylistID");
        *(v42[1] + 24) = v25;
        getMPMediaItemPropertyStorePlaylistIDSymbolLoc_ptr = *(v42[1] + 24);
        v23 = v44[3];
      }

      _Block_object_dispose(&v43, 8);
      if (!v23)
      {
        v35 = [MEMORY[0x1E696AAA8] currentHandler];
        v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyStorePlaylistID(void)"];
        [v35 handleFailureInFunction:v36 file:@"LPiTunesMediaTransformers.m" lineNumber:43 description:{@"%s", dlerror()}];

        __break(1u);
        return result;
      }

      v26 = [v20 predicateWithValue:v22 forProperty:*v23];
      [v16 addFilterPredicate:v26];

      v27 = [v16 items];
      v3 = [v27 firstObject];

      if (v3)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "persistentID")}];
        v13 = [v28 stringValue];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v29 = [(LPiTunesMediaAudioBookMetadata *)self storeIdentifier];
  v30 = [(LPiTunesMediaAudioBookMetadata *)self storeFrontIdentifier];
  v31 = v30;
  if (!v30)
  {
    v3 = [v5 canonicalURL];
    v31 = storefrontIdentifierFromURL(v3);
  }

  v32 = [(LPiTunesMediaAudioBookMetadata *)self previewURL];
  v33 = [LPInlineMediaPlaybackInformation audioBookPlaybackInformationWithStoreIdentifier:v29 storefrontIdentifier:v31 previewURL:v32 persistentIdentifier:v13];

  if (!v30)
  {
  }

  [v6 setInlinePlaybackInformation:v33];

  return v6;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Audiobook: %@ – %@");
  v6 = [(LPiTunesMediaAudioBookMetadata *)self name];
  v7 = [(LPiTunesMediaAudioBookMetadata *)self author];
  v8 = [v4 localizedStringWithFormat:v5, v6, v7];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v8 = a3;
  v4 = [(LPiTunesMediaAudioBookMetadata *)self name];
  v5 = [(LPiTunesMediaAudioBookMetadata *)self author];
  v6 = joinedByEmDash(v4, v5);
  [v8 setTitle:v6];

  v7 = [(LPiTunesMediaAudioBookMetadata *)self artwork];
  [v8 setImage:v7];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaAudioBookMetadata *)self storeIdentifier];

  return v3;
}

@end