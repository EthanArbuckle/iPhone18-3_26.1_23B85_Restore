@interface LPiTunesMediaPlaylistMetadata
+ (id)transcriptBoldTextFont;
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaPlaylistMetadata)initWithCoder:(id)coder;
- (id)_activeUserStateHandle;
- (id)actionURLForTransformer:(id)transformer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)statusForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaPlaylistMetadata

- (LPiTunesMediaPlaylistMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = LPiTunesMediaPlaylistMetadata;
  v5 = [(LPiTunesMediaPlaylistMetadata *)&v24 init];
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

    v12 = decodeStringForKey(coderCopy, @"curator");
    curator = v5->_curator;
    v5->_curator = v12;

    v14 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"curatorProfileURL"];
    curatorProfileURL = v5->_curatorProfileURL;
    v5->_curatorProfileURL = v14;

    v16 = decodeStringForKey(coderCopy, @"curatorHandle");
    curatorHandle = v5->_curatorHandle;
    v5->_curatorHandle = v16;

    v18 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

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
  [coderCopy _lp_encodeStringIfNotNil:self->_curator forKey:@"curator"];
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_curatorProfileURL forKey:@"curatorProfileURL"];
  [coderCopy _lp_encodeStringIfNotNil:self->_curatorHandle forKey:@"curatorHandle"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaPlaylistMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaPlaylistMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaPlaylistMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaPlaylistMetadata *)self storeIdentifier];
    [(LPiTunesMediaPlaylistMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaPlaylistMetadata *)self name];
    [(LPiTunesMediaPlaylistMetadata *)v4 setName:name];

    curator = [(LPiTunesMediaPlaylistMetadata *)self curator];
    [(LPiTunesMediaPlaylistMetadata *)v4 setCurator:curator];

    curatorProfileURL = [(LPiTunesMediaPlaylistMetadata *)self curatorProfileURL];
    [(LPiTunesMediaPlaylistMetadata *)v4 setCuratorProfileURL:curatorProfileURL];

    curatorHandle = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];
    [(LPiTunesMediaPlaylistMetadata *)v4 setCuratorHandle:curatorHandle];

    artwork = [(LPiTunesMediaPlaylistMetadata *)self artwork];
    [(LPiTunesMediaPlaylistMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaPlaylistMetadata *)self artworkMetadata];
    [(LPiTunesMediaPlaylistMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v13 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaPlaylistMetadata;
  if ([(LPiTunesMediaPlaylistMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_curator) && objectsAreEqual_0(v6[8], self->_artwork) && objectsAreEqual_0(v6[9], self->_artworkMetadata) && objectsAreEqual_0(v6[6], self->_curatorProfileURL))
      {
        v5 = objectsAreEqual_0(v6[7], self->_curatorProfileURL);
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
  v38[1] = *MEMORY[0x1E69E9840];
  transformerCopy = transformer;
  v5 = [transformerCopy URL];
  v6 = [v5 _lp_valueForQueryKey:@"a"];
  v7 = [v6 _lp_isEqualIgnoringCase:@"join"];

  if (v7)
  {
    v8 = 56;
  }

  else
  {
    v8 = 9;
  }

  v9 = [transformerCopy commonPresentationPropertiesForStyle:v8];
  v10 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v9 setCaptionBar:v10];

  name = [(LPiTunesMediaPlaylistMetadata *)self name];
  curator = [(LPiTunesMediaPlaylistMetadata *)self curator];
  v13 = appleMusicWordmark(transformerCopy);
  populateCaptionBar(v9, name, curator, v13, 1, transformerCopy);

  artwork = [(LPiTunesMediaPlaylistMetadata *)self artwork];
  [transformerCopy _populateProperties:v9 withPrimaryImage:artwork];

  if (v7)
  {
    if (sizeClassAllowsAppleMusicCollaborationFooter([transformerCopy effectiveSizeClass]))
    {
      if ([transformerCopy isInComposeContext])
      {
        v15 = objc_alloc_init(LPCollaborationFooterPresentationProperties);
        v16 = MEMORY[0x1E69DCAD8];
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        v38[0] = labelColor;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
        v19 = [v16 configurationWithPaletteColors:v18];

        v20 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:@"person.2.fill"];
        v21 = [v20 _lp_imageByApplyingSymbolConfiguration:v19];
        [(LPCollaborationFooterPresentationProperties *)v15 setGlyphAttachmentImage:v21];

        v22 = LPLocalizedString(@"Collaborate");
        [(LPCollaborationFooterPresentationProperties *)v15 setTitle:v22];

        v23 = LPLocalizedString(@"Anyone with the link will be able to add, delete, and reorder songs.");
        [(LPCollaborationFooterPresentationProperties *)v15 setSubtitle:v23];

        captionBar = [v9 captionBar];
        [captionBar setCollaborationFooter:v15];
      }

      else
      {
        v30 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD08] scale:2];
        v31 = [LPImage _systemImageNamed:@"person.2.fill" withSymbolConfiguration:v30];
        v32 = objc_alloc_init(LPCaptionButtonPresentationProperties);
        v33 = LPLocalizedString(@"Join Playlist");
        v34 = [LPButtonAction actionWithTitle:v33 image:v31 handler:0];
        v37 = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [(LPCaptionButtonPresentationProperties *)v32 setActions:v35];

        [(LPCaptionButtonPresentationProperties *)v32 setShape:2];
        captionBar2 = [v9 captionBar];
        [captionBar2 setButton:v32];
      }
    }
  }

  else
  {
    storeIdentifier = [(LPiTunesMediaPlaylistMetadata *)self storeIdentifier];
    storeFrontIdentifier = [(LPiTunesMediaPlaylistMetadata *)self storeFrontIdentifier];
    v27 = storeFrontIdentifier;
    if (!storeFrontIdentifier)
    {
      curator = [transformerCopy canonicalURL];
      v27 = storefrontIdentifierFromURL(curator);
    }

    v28 = [LPInlineMediaPlaybackInformation playlistPlaybackInformationWithStoreIdentifier:storeIdentifier storefrontIdentifier:v27];
    if (!storeFrontIdentifier)
    {
    }

    [v9 setInlinePlaybackInformation:v28];
  }

  return v9;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  curator = [(LPiTunesMediaPlaylistMetadata *)self curator];

  v5 = MEMORY[0x1E696AEC0];
  if (curator)
  {
    v6 = LPLocalizedString(@"Playlist: %@ – %@");
    name = [(LPiTunesMediaPlaylistMetadata *)self name];
    curator2 = [(LPiTunesMediaPlaylistMetadata *)self curator];
    v9 = [v5 localizedStringWithFormat:v6, name, curator2];
  }

  else
  {
    v6 = LPLocalizedString(@"Playlist: %@");
    name = [(LPiTunesMediaPlaylistMetadata *)self name];
    v9 = [v5 localizedStringWithFormat:v6, name];
  }

  return v9;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaPlaylistMetadata *)self name];
  curator = [(LPiTunesMediaPlaylistMetadata *)self curator];
  v6 = joinedByEmDash(name, curator);
  [compatibilityCopy setTitle:v6];

  artwork = [(LPiTunesMediaPlaylistMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaPlaylistMetadata *)self storeIdentifier];

  return storeIdentifier;
}

+ (id)transcriptBoldTextFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (transcriptBoldTextFont_contentSizeCategory_165 != preferredContentSizeCategory)
  {
    v4 = emphasizedPreferredFontForTextStyle(*MEMORY[0x1E69DDD10]);
    v5 = transcriptBoldTextFont_font_166;
    transcriptBoldTextFont_font_166 = v4;

    objc_storeStrong(&transcriptBoldTextFont_contentSizeCategory_165, preferredContentSizeCategory);
  }

  v6 = transcriptBoldTextFont_font_166;
  v7 = transcriptBoldTextFont_font_166;

  return v6;
}

- (id)_activeUserStateHandle
{
  mEMORY[0x1E69E4460] = [MEMORY[0x1E69E4460] shared];
  activeUserState = [mEMORY[0x1E69E4460] activeUserState];

  if (activeUserState)
  {
    music = [activeUserState music];
    userProfile = [music userProfile];
    handle = [userProfile handle];
  }

  else
  {
    v7 = LPLogChannelUI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get active iTunes user state.", v9, 2u);
    }

    handle = 0;
  }

  return handle;
}

- (id)statusForTransformer:(id)transformer
{
  v35[2] = *MEMORY[0x1E69E9840];
  transformerCopy = transformer;
  v5 = +[LPiTunesStoreInformation shared];
  storeFrontIdentifier = [(LPiTunesMediaPlaylistMetadata *)self storeFrontIdentifier];
  v7 = [v5 userStateForMediaStorefrontIdentifier:storeFrontIdentifier];

  v8 = subscribeToAppleMusicStatus(v7);
  if (v8)
  {
    v9 = LPLogChannelUI();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE886000, v9, OS_LOG_TYPE_DEFAULT, "Failed to show playlist transformer status label; showing subscription status text instead.", buf, 2u);
    }

    v10 = [LPiTunesMediaSongMetadata statusForText:v8 withTransformer:transformerCopy];
    goto LABEL_25;
  }

  if (!v7)
  {
    v13 = LPLogChannelUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Failed to show playlist transformer status label; unknown iTunes Store user state.";
LABEL_18:
      _os_log_impl(&dword_1AE886000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_19:
    v10 = 0;
    goto LABEL_25;
  }

  curator = [(LPiTunesMediaPlaylistMetadata *)self curator];
  if (!curator)
  {
    goto LABEL_16;
  }

  curatorProfileURL = [(LPiTunesMediaPlaylistMetadata *)self curatorProfileURL];
  if (!curatorProfileURL)
  {
    curatorHandle = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];

    if (curatorHandle)
    {
      goto LABEL_12;
    }

LABEL_16:
    v13 = LPLogChannelUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Failed to show playlist transformer status label; no curator name and/or no profile url or handle.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_12:
  curatorHandle2 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];
  if (curatorHandle2)
  {
    _activeUserStateHandle = [(LPiTunesMediaPlaylistMetadata *)self _activeUserStateHandle];
    curatorHandle3 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];
    v19 = [_activeUserStateHandle isEqual:curatorHandle3];

    if (v19)
    {
      v13 = LPLogChannelUI();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "Failed to show playlist transformer status label; user is sharing own playlist.";
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  v34[0] = *MEMORY[0x1E69DB648];
  transcriptBoldTextFont = [objc_opt_class() transcriptBoldTextFont];
  v35[0] = transcriptBoldTextFont;
  v34[1] = *MEMORY[0x1E69DB650];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v35[1] = systemBlueColor;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v22 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  curator2 = [(LPiTunesMediaPlaylistMetadata *)self curator];
  v24 = [v22 personNameComponentsFromString:curator2];

  givenName = [v24 givenName];
  v26 = objc_alloc(MEMORY[0x1E696AD40]);
  v27 = MEMORY[0x1E696AEC0];
  v28 = LPLocalizedString(@"Follow %@ on Apple Music");
  curator3 = givenName;
  if (!givenName)
  {
    curator3 = [(LPiTunesMediaPlaylistMetadata *)self curator];
  }

  v30 = [v27 localizedStringWithFormat:v28, curator3];
  v10 = [v26 initWithString:v30 attributes:v32];

  if (!givenName)
  {
  }

LABEL_25:

  return v10;
}

- (id)actionURLForTransformer:(id)transformer
{
  curatorProfileURL = [(LPiTunesMediaPlaylistMetadata *)self curatorProfileURL];

  if (curatorProfileURL)
  {
    curatorProfileURL2 = [(LPiTunesMediaPlaylistMetadata *)self curatorProfileURL];
  }

  else
  {
    curatorHandle = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];

    if (curatorHandle)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v7 setScheme:@"https"];
      [v7 setHost:@"music.apple.com"];
      v8 = MEMORY[0x1E696AEC0];
      curatorHandle2 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];
      v10 = [v8 stringWithFormat:@"/profile/%@", curatorHandle2];
      [v7 setPath:v10];

      curatorProfileURL2 = [v7 URL];
    }

    else
    {
      curatorProfileURL2 = 0;
    }
  }

  return curatorProfileURL2;
}

@end