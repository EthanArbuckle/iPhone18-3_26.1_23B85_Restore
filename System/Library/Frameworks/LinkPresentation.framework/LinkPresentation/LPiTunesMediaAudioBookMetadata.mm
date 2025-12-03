@interface LPiTunesMediaAudioBookMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaAudioBookMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaAudioBookMetadata

- (LPiTunesMediaAudioBookMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = LPiTunesMediaAudioBookMetadata;
  v5 = [(LPiTunesMediaAudioBookMetadata *)&v24 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v10;

    v12 = decodeStringForKey(coderCopy, @"author");
    author = v5->_author;
    v5->_author = v12;

    v14 = decodeStringForKey(coderCopy, @"narrator");
    narrator = v5->_narrator;
    v5->_narrator = v14;

    v16 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    v18 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v18;

    v20 = decodeURLForKey(coderCopy, @"previewURL");
    previewURL = v5->_previewURL;
    v5->_previewURL = v20;

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy _lp_encodeStringIfNotNil:self->_author forKey:@"author"];
  [coderCopy _lp_encodeStringIfNotNil:self->_narrator forKey:@"narrator"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_previewURL forKey:@"previewURL"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaAudioBookMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaAudioBookMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaAudioBookMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaAudioBookMetadata *)self storeIdentifier];
    [(LPiTunesMediaAudioBookMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaAudioBookMetadata *)self name];
    [(LPiTunesMediaAudioBookMetadata *)v4 setName:name];

    author = [(LPiTunesMediaAudioBookMetadata *)self author];
    [(LPiTunesMediaAudioBookMetadata *)v4 setAuthor:author];

    narrator = [(LPiTunesMediaAudioBookMetadata *)self narrator];
    [(LPiTunesMediaAudioBookMetadata *)v4 setNarrator:narrator];

    previewURL = [(LPiTunesMediaAudioBookMetadata *)self previewURL];
    [(LPiTunesMediaAudioBookMetadata *)v4 setPreviewURL:previewURL];

    artwork = [(LPiTunesMediaAudioBookMetadata *)self artwork];
    [(LPiTunesMediaAudioBookMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaAudioBookMetadata *)self artworkMetadata];
    [(LPiTunesMediaAudioBookMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v13 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaAudioBookMetadata;
  if ([(LPiTunesMediaAudioBookMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v6 = [transformerCopy commonPresentationPropertiesForStyle:14];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  name = [(LPiTunesMediaAudioBookMetadata *)self name];
  author = [(LPiTunesMediaAudioBookMetadata *)self author];
  v10 = LPLocalizedString(@" Books");
  populateCaptionBar(v6, name, author, v10, 1, transformerCopy);

  artwork = [(LPiTunesMediaAudioBookMetadata *)self artwork];
  [transformerCopy _populateProperties:v6 withPrimaryImage:artwork];

  v12 = objc_alloc_init(LPImagePresentationProperties);
  [(LPImagePresentationProperties *)v12 setFilter:11];
  [v6 setImageProperties:v12];
  if (TCCAccessPreflight())
  {
    stringValue = 0;
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
    audiobooksQuery = [v14 audiobooksQuery];
    v17 = MEMORY[0x1E696AE88];
    storeIdentifier = [(LPiTunesMediaAudioBookMetadata *)self storeIdentifier];
    v19 = [v17 scannerWithString:storeIdentifier];

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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyStorePlaylistID(void)"];
        [currentHandler handleFailureInFunction:v36 file:@"LPiTunesMediaTransformers.m" lineNumber:43 description:{@"%s", dlerror()}];

        __break(1u);
        return result;
      }

      v26 = [v20 predicateWithValue:v22 forProperty:*v23];
      [audiobooksQuery addFilterPredicate:v26];

      items = [audiobooksQuery items];
      firstObject = [items firstObject];

      if (firstObject)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(firstObject, "persistentID")}];
        stringValue = [v28 stringValue];
      }

      else
      {
        stringValue = 0;
      }
    }

    else
    {
      stringValue = 0;
    }
  }

  storeIdentifier2 = [(LPiTunesMediaAudioBookMetadata *)self storeIdentifier];
  storeFrontIdentifier = [(LPiTunesMediaAudioBookMetadata *)self storeFrontIdentifier];
  v31 = storeFrontIdentifier;
  if (!storeFrontIdentifier)
  {
    firstObject = [transformerCopy canonicalURL];
    v31 = storefrontIdentifierFromURL(firstObject);
  }

  previewURL = [(LPiTunesMediaAudioBookMetadata *)self previewURL];
  v33 = [LPInlineMediaPlaybackInformation audioBookPlaybackInformationWithStoreIdentifier:storeIdentifier2 storefrontIdentifier:v31 previewURL:previewURL persistentIdentifier:stringValue];

  if (!storeFrontIdentifier)
  {
  }

  [v6 setInlinePlaybackInformation:v33];

  return v6;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Audiobook: %@ – %@");
  name = [(LPiTunesMediaAudioBookMetadata *)self name];
  author = [(LPiTunesMediaAudioBookMetadata *)self author];
  v8 = [v4 localizedStringWithFormat:v5, name, author];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaAudioBookMetadata *)self name];
  author = [(LPiTunesMediaAudioBookMetadata *)self author];
  v6 = joinedByEmDash(name, author);
  [compatibilityCopy setTitle:v6];

  artwork = [(LPiTunesMediaAudioBookMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaAudioBookMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end