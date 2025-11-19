@interface LPiTunesMediaPlaylistMetadata
+ (id)transcriptBoldTextFont;
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaPlaylistMetadata)initWithCoder:(id)a3;
- (id)_activeUserStateHandle;
- (id)actionURLForTransformer:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)statusForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaPlaylistMetadata

- (LPiTunesMediaPlaylistMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = LPiTunesMediaPlaylistMetadata;
  v5 = [(LPiTunesMediaPlaylistMetadata *)&v24 init];
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

    v12 = decodeStringForKey(v4, @"curator");
    curator = v5->_curator;
    v5->_curator = v12;

    v14 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"curatorProfileURL"];
    curatorProfileURL = v5->_curatorProfileURL;
    v5->_curatorProfileURL = v14;

    v16 = decodeStringForKey(v4, @"curatorHandle");
    curatorHandle = v5->_curatorHandle;
    v5->_curatorHandle = v16;

    v18 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

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
  [v4 _lp_encodeStringIfNotNil:self->_curator forKey:@"curator"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_curatorProfileURL forKey:@"curatorProfileURL"];
  [v4 _lp_encodeStringIfNotNil:self->_curatorHandle forKey:@"curatorHandle"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaPlaylistMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaPlaylistMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaPlaylistMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaPlaylistMetadata *)self storeIdentifier];
    [(LPiTunesMediaPlaylistMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaPlaylistMetadata *)self name];
    [(LPiTunesMediaPlaylistMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaPlaylistMetadata *)self curator];
    [(LPiTunesMediaPlaylistMetadata *)v4 setCurator:v8];

    v9 = [(LPiTunesMediaPlaylistMetadata *)self curatorProfileURL];
    [(LPiTunesMediaPlaylistMetadata *)v4 setCuratorProfileURL:v9];

    v10 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];
    [(LPiTunesMediaPlaylistMetadata *)v4 setCuratorHandle:v10];

    v11 = [(LPiTunesMediaPlaylistMetadata *)self artwork];
    [(LPiTunesMediaPlaylistMetadata *)v4 setArtwork:v11];

    v12 = [(LPiTunesMediaPlaylistMetadata *)self artworkMetadata];
    [(LPiTunesMediaPlaylistMetadata *)v4 setArtworkMetadata:v12];

    v13 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaPlaylistMetadata;
  if ([(LPiTunesMediaPlaylistMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 URL];
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

  v9 = [v4 commonPresentationPropertiesForStyle:v8];
  v10 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v9 setCaptionBar:v10];

  v11 = [(LPiTunesMediaPlaylistMetadata *)self name];
  v12 = [(LPiTunesMediaPlaylistMetadata *)self curator];
  v13 = appleMusicWordmark(v4);
  populateCaptionBar(v9, v11, v12, v13, 1, v4);

  v14 = [(LPiTunesMediaPlaylistMetadata *)self artwork];
  [v4 _populateProperties:v9 withPrimaryImage:v14];

  if (v7)
  {
    if (sizeClassAllowsAppleMusicCollaborationFooter([v4 effectiveSizeClass]))
    {
      if ([v4 isInComposeContext])
      {
        v15 = objc_alloc_init(LPCollaborationFooterPresentationProperties);
        v16 = MEMORY[0x1E69DCAD8];
        v17 = [MEMORY[0x1E69DC888] labelColor];
        v38[0] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
        v19 = [v16 configurationWithPaletteColors:v18];

        v20 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:@"person.2.fill"];
        v21 = [v20 _lp_imageByApplyingSymbolConfiguration:v19];
        [(LPCollaborationFooterPresentationProperties *)v15 setGlyphAttachmentImage:v21];

        v22 = LPLocalizedString(@"Collaborate");
        [(LPCollaborationFooterPresentationProperties *)v15 setTitle:v22];

        v23 = LPLocalizedString(@"Anyone with the link will be able to add, delete, and reorder songs.");
        [(LPCollaborationFooterPresentationProperties *)v15 setSubtitle:v23];

        v24 = [v9 captionBar];
        [v24 setCollaborationFooter:v15];
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
        v36 = [v9 captionBar];
        [v36 setButton:v32];
      }
    }
  }

  else
  {
    v25 = [(LPiTunesMediaPlaylistMetadata *)self storeIdentifier];
    v26 = [(LPiTunesMediaPlaylistMetadata *)self storeFrontIdentifier];
    v27 = v26;
    if (!v26)
    {
      v12 = [v4 canonicalURL];
      v27 = storefrontIdentifierFromURL(v12);
    }

    v28 = [LPInlineMediaPlaybackInformation playlistPlaybackInformationWithStoreIdentifier:v25 storefrontIdentifier:v27];
    if (!v26)
    {
    }

    [v9 setInlinePlaybackInformation:v28];
  }

  return v9;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = [(LPiTunesMediaPlaylistMetadata *)self curator];

  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = LPLocalizedString(@"Playlist: %@ – %@");
    v7 = [(LPiTunesMediaPlaylistMetadata *)self name];
    v8 = [(LPiTunesMediaPlaylistMetadata *)self curator];
    v9 = [v5 localizedStringWithFormat:v6, v7, v8];
  }

  else
  {
    v6 = LPLocalizedString(@"Playlist: %@");
    v7 = [(LPiTunesMediaPlaylistMetadata *)self name];
    v9 = [v5 localizedStringWithFormat:v6, v7];
  }

  return v9;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v8 = a3;
  v4 = [(LPiTunesMediaPlaylistMetadata *)self name];
  v5 = [(LPiTunesMediaPlaylistMetadata *)self curator];
  v6 = joinedByEmDash(v4, v5);
  [v8 setTitle:v6];

  v7 = [(LPiTunesMediaPlaylistMetadata *)self artwork];
  [v8 setImage:v7];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaPlaylistMetadata *)self storeIdentifier];

  return v3;
}

+ (id)transcriptBoldTextFont
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  if (transcriptBoldTextFont_contentSizeCategory_165 != v3)
  {
    v4 = emphasizedPreferredFontForTextStyle(*MEMORY[0x1E69DDD10]);
    v5 = transcriptBoldTextFont_font_166;
    transcriptBoldTextFont_font_166 = v4;

    objc_storeStrong(&transcriptBoldTextFont_contentSizeCategory_165, v3);
  }

  v6 = transcriptBoldTextFont_font_166;
  v7 = transcriptBoldTextFont_font_166;

  return v6;
}

- (id)_activeUserStateHandle
{
  v2 = [MEMORY[0x1E69E4460] shared];
  v3 = [v2 activeUserState];

  if (v3)
  {
    v4 = [v3 music];
    v5 = [v4 userProfile];
    v6 = [v5 handle];
  }

  else
  {
    v7 = LPLogChannelUI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get active iTunes user state.", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)statusForTransformer:(id)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[LPiTunesStoreInformation shared];
  v6 = [(LPiTunesMediaPlaylistMetadata *)self storeFrontIdentifier];
  v7 = [v5 userStateForMediaStorefrontIdentifier:v6];

  v8 = subscribeToAppleMusicStatus(v7);
  if (v8)
  {
    v9 = LPLogChannelUI();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE886000, v9, OS_LOG_TYPE_DEFAULT, "Failed to show playlist transformer status label; showing subscription status text instead.", buf, 2u);
    }

    v10 = [LPiTunesMediaSongMetadata statusForText:v8 withTransformer:v4];
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

  v11 = [(LPiTunesMediaPlaylistMetadata *)self curator];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = [(LPiTunesMediaPlaylistMetadata *)self curatorProfileURL];
  if (!v12)
  {
    v15 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];

    if (v15)
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
  v16 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];
  if (v16)
  {
    v17 = [(LPiTunesMediaPlaylistMetadata *)self _activeUserStateHandle];
    v18 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];
    v19 = [v17 isEqual:v18];

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
  v20 = [objc_opt_class() transcriptBoldTextFont];
  v35[0] = v20;
  v34[1] = *MEMORY[0x1E69DB650];
  v21 = [MEMORY[0x1E69DC888] systemBlueColor];
  v35[1] = v21;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v22 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v23 = [(LPiTunesMediaPlaylistMetadata *)self curator];
  v24 = [v22 personNameComponentsFromString:v23];

  v25 = [v24 givenName];
  v26 = objc_alloc(MEMORY[0x1E696AD40]);
  v27 = MEMORY[0x1E696AEC0];
  v28 = LPLocalizedString(@"Follow %@ on Apple Music");
  v29 = v25;
  if (!v25)
  {
    v29 = [(LPiTunesMediaPlaylistMetadata *)self curator];
  }

  v30 = [v27 localizedStringWithFormat:v28, v29];
  v10 = [v26 initWithString:v30 attributes:v32];

  if (!v25)
  {
  }

LABEL_25:

  return v10;
}

- (id)actionURLForTransformer:(id)a3
{
  v4 = [(LPiTunesMediaPlaylistMetadata *)self curatorProfileURL];

  if (v4)
  {
    v5 = [(LPiTunesMediaPlaylistMetadata *)self curatorProfileURL];
  }

  else
  {
    v6 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v7 setScheme:@"https"];
      [v7 setHost:@"music.apple.com"];
      v8 = MEMORY[0x1E696AEC0];
      v9 = [(LPiTunesMediaPlaylistMetadata *)self curatorHandle];
      v10 = [v8 stringWithFormat:@"/profile/%@", v9];
      [v7 setPath:v10];

      v5 = [v7 URL];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end