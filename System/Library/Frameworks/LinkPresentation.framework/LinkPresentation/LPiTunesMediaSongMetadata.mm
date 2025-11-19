@interface LPiTunesMediaSongMetadata
+ (id)statusForText:(id)a3 withTransformer:(id)a4;
+ (id)transcriptBoldTextFont;
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaSongMetadata)initWithCoder:(id)a3;
- (id)actionURLForTransformer:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)inlinePlaybackInformationForURL:(id)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)sourceApplicationMetadataForTransformer:(id)a3;
- (id)statusForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)destroyForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initializeForTransformer:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaSongMetadata

- (LPiTunesMediaSongMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = LPiTunesMediaSongMetadata;
  v5 = [(LPiTunesMediaSongMetadata *)&v30 init];
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

    v12 = decodeStringForKey(v4, @"artist");
    artist = v5->_artist;
    v5->_artist = v12;

    v14 = decodeStringForKey(v4, @"album");
    album = v5->_album;
    v5->_album = v14;

    v16 = decodeStringForKey(v4, @"lyrics");
    lyrics = v5->_lyrics;
    v5->_lyrics = v16;

    v18 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

    v22 = decodeURLForKey(v4, @"previewURL");
    previewURL = v5->_previewURL;
    v5->_previewURL = v22;

    v24 = decodeArrayOfStringsForKey(v4);
    offers = v5->_offers;
    v5->_offers = v24;

    v26 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"lyricExcerpt"];
    lyricExcerpt = v5->_lyricExcerpt;
    v5->_lyricExcerpt = v26;

    v28 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [v4 _lp_encodeStringIfNotNil:self->_artist forKey:@"artist"];
  [v4 _lp_encodeStringIfNotNil:self->_album forKey:@"album"];
  [v4 _lp_encodeStringIfNotNil:self->_lyrics forKey:@"lyrics"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_previewURL forKey:@"previewURL"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
  [v4 _lp_encodeObjectIfNotNil:self->_lyricExcerpt forKey:@"lyricExcerpt"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaSongMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaSongMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaSongMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaSongMetadata *)self storeIdentifier];
    [(LPiTunesMediaSongMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaSongMetadata *)self name];
    [(LPiTunesMediaSongMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaSongMetadata *)self artist];
    [(LPiTunesMediaSongMetadata *)v4 setArtist:v8];

    v9 = [(LPiTunesMediaSongMetadata *)self album];
    [(LPiTunesMediaSongMetadata *)v4 setAlbum:v9];

    v10 = [(LPiTunesMediaSongMetadata *)self artwork];
    [(LPiTunesMediaSongMetadata *)v4 setArtwork:v10];

    v11 = [(LPiTunesMediaSongMetadata *)self artworkMetadata];
    [(LPiTunesMediaSongMetadata *)v4 setArtworkMetadata:v11];

    v12 = [(LPiTunesMediaSongMetadata *)self previewURL];
    [(LPiTunesMediaSongMetadata *)v4 setPreviewURL:v12];

    v13 = [(LPiTunesMediaSongMetadata *)self offers];
    [(LPiTunesMediaSongMetadata *)v4 setOffers:v13];

    v14 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
    [(LPiTunesMediaSongMetadata *)v4 setLyricExcerpt:v14];

    v15 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaSongMetadata;
  if ([(LPiTunesMediaSongMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_artist) && objectsAreEqual_0(v6[6], self->_album) && objectsAreEqual_0(v6[8], self->_artwork) && objectsAreEqual_0(v6[9], self->_artworkMetadata) && objectsAreEqual_0(v6[10], self->_previewURL) && objectsAreEqual_0(v6[11], self->_offers))
      {
        v5 = objectsAreEqual_0(v6[12], self->_lyricExcerpt);
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

- (id)inlinePlaybackInformationForURL:(id)a3
{
  v4 = a3;
  v5 = [(LPiTunesMediaSongMetadata *)self storeIdentifier];
  v6 = [(LPiTunesMediaSongMetadata *)self storeFrontIdentifier];
  v7 = v6;
  if (!v6)
  {
    v7 = storefrontIdentifierFromURL(v4);
  }

  v8 = [(LPiTunesMediaSongMetadata *)self offers];
  v9 = [(LPiTunesMediaSongMetadata *)self previewURL];
  v10 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
  v11 = [LPInlineMediaPlaybackInformation songPlaybackInformationWithStoreIdentifier:v5 storefrontIdentifier:v7 offers:v8 previewURL:v9 lyricExcerpt:v10];

  if (!v6)
  {
  }

  return v11;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
  if (v5 && [v4 _rowConfigurationForStyle:5] == 3)
  {
    v6 = sizeClassAllowsMedia([v4 effectiveSizeClass]);

    if (v6)
    {
      v7 = 42;
    }

    else
    {
      v7 = 5;
    }
  }

  else
  {

    v6 = 0;
    v7 = 5;
  }

  v8 = [v4 commonPresentationPropertiesForStyle:v7];
  v9 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v8 setCaptionBar:v9];

  v10 = [(LPiTunesMediaSongMetadata *)self name];
  v11 = [(LPiTunesMediaSongMetadata *)self artist];
  v12 = appleMusicWordmark(v4);
  populateCaptionBar(v8, v10, v11, v12, 1, v4);

  v13 = [(LPiTunesMediaSongMetadata *)self artwork];
  [v4 _populateProperties:v8 withPrimaryImage:v13];

  v14 = [v4 canonicalURL];
  v15 = [(LPiTunesMediaSongMetadata *)self inlinePlaybackInformationForURL:v14];
  [v8 setInlinePlaybackInformation:v15];

  if (v6)
  {
    v16 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
    v17 = [v16 lyrics];
    [v8 setQuotedText:v17];

    v18 = [(LPiTunesMediaSongMetadata *)self artwork];
    v19 = lyricBackgroundImage(v18);
    [v8 setBackgroundImage:v19];

    v20 = [v8 captionBar];
    [v20 setLeadingIcon:0];

    [v8 setImage:0];
    v21 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [v8 setMediaBottomCaptionBar:v21];

    if ([v4 allowsPlaybackControls])
    {
      v22 = objc_alloc_init(MEMORY[0x1E696AB70]);
      [v22 setUnitsStyle:0];
      [v22 setAllowedUnits:192];
      [v22 setZeroFormattingBehavior:0];
      v34 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
      v23 = [v34 endTime];
      [v23 doubleValue];
      v25 = v24;
      v26 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
      v27 = [v26 startTime];
      [v27 doubleValue];
      v29 = [v22 stringFromTimeInterval:v25 - v28];
      v30 = [v8 mediaBottomCaptionBar];
      v31 = [v30 top];
      v32 = [v31 trailing];
      [v32 setText:v29];
    }
  }

  return v8;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];

  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    LPLocalizedString(@"Lyrics: %@ – %@");
  }

  else
  {
    LPLocalizedString(@"Song: %@ – %@");
  }
  v6 = ;
  v7 = [(LPiTunesMediaSongMetadata *)self name];
  v8 = [(LPiTunesMediaSongMetadata *)self artist];
  v9 = [v5 localizedStringWithFormat:v6, v7, v8];

  return v9;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v10 = a3;
  v4 = [(LPiTunesMediaSongMetadata *)self name];
  v5 = [(LPiTunesMediaSongMetadata *)self artist];
  v6 = joinedByEmDash(v4, v5);
  [v10 setTitle:v6];

  v7 = [(LPiTunesMediaSongMetadata *)self artwork];
  [v10 setIcon:v7];

  v8 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
  v9 = [v8 lyrics];
  [v10 setSelectedText:v9];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaSongMetadata *)self storeIdentifier];

  return v3;
}

- (id)sourceApplicationMetadataForTransformer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LPSourceApplicationMetadata);
  [v3 scaleFactor];
  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:@"com.apple.Music"];
  v8 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:16.0 scale:{16.0, v6}];
  [v8 setShouldApplyMask:0];
  v9 = [v7 prepareImageForDescriptor:v8];
  v10 = -[LPImage _initWithCGImage:]([LPImage alloc], "_initWithCGImage:", [v9 CGImage]);

  [(LPSourceApplicationMetadata *)v4 setIcon:v10];

  return v4;
}

- (void)initializeForTransformer:(id)a3
{
  v3 = a3;
  objc_initWeak(&location, v3);
  v4 = +[LPiTunesStoreInformation shared];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__LPiTunesMediaSongMetadata_Transformer__initializeForTransformer___block_invoke;
  v5[3] = &unk_1E7A35D40;
  objc_copyWeak(&v6, &location);
  [v4 registerForStoreAvailablityChangesWithToken:v3 handler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__LPiTunesMediaSongMetadata_Transformer__initializeForTransformer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained delegate];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 delegate];
      [v3 statusTransformerDidUpdate:v4];

      WeakRetained = v4;
    }
  }
}

- (void)destroyForTransformer:(id)a3
{
  v4 = +[LPiTunesStoreInformation shared];
  [v4 unregisterForStoreAvailablityChangesWithToken:self];
}

+ (id)transcriptBoldTextFont
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  if (transcriptBoldTextFont_contentSizeCategory != v3)
  {
    v4 = emphasizedPreferredFontForTextStyle(*MEMORY[0x1E69DDD10]);
    v5 = transcriptBoldTextFont_font;
    transcriptBoldTextFont_font = v4;

    objc_storeStrong(&transcriptBoldTextFont_contentSizeCategory, v3);
  }

  v6 = transcriptBoldTextFont_font;
  v7 = transcriptBoldTextFont_font;

  return v6;
}

+ (id)statusForText:(id)a3 withTransformer:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v26 = a3;
  v5 = a4;
  v6 = *MEMORY[0x1E69DB648];
  v30[0] = *MEMORY[0x1E69DB648];
  v7 = [objc_opt_class() transcriptBoldTextFont];
  v31[0] = v7;
  v8 = *MEMORY[0x1E69DB650];
  v30[1] = *MEMORY[0x1E69DB650];
  v9 = [v5 foregroundColor];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  v31[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:{2, v26}];
  if (!v9)
  {
  }

  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v27 attributes:v11];
  v28[0] = v6;
  v13 = [objc_opt_class() transcriptBoldTextFont];
  v28[1] = v8;
  v29[0] = v13;
  v14 = [MEMORY[0x1E69DC888] systemPinkColor];
  v29[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v16 = [v12 string];
  v17 = [v16 rangeOfString:@"<link>"];
  v19 = v18;

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    [v12 replaceCharactersInRange:v17 withString:{v19, &stru_1F2447CF0}];
    v21 = [v12 string];
    v22 = [v21 rangeOfString:@"</link>"];
    v24 = v23;

    v20 = 0;
    if (v22 != 0x7FFFFFFFFFFFFFFFLL && v22 >= v17)
    {
      [v12 replaceCharactersInRange:v22 withString:{v24, &stru_1F2447CF0}];
      [v12 addAttributes:v15 range:{v17, v22 - v17}];
      v20 = v12;
    }
  }

  return v20;
}

- (id)statusForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 canonicalURL];
  v6 = [(LPiTunesMediaSongMetadata *)self inlinePlaybackInformationForURL:v5];

  v7 = +[LPiTunesStoreInformation shared];
  v8 = [v6 storefrontIdentifier];
  v9 = [v7 userStateForMediaStorefrontIdentifier:v8];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    goto LABEL_8;
  }

  v10 = [v6 availability];
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      v11 = LPLocalizedString(@"Buy Song on <link>iTunes</link>");
      v12 = [LPiTunesMediaSongMetadata statusForText:v11 withTransformer:v4];
      goto LABEL_7;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_11;
  }

  v11 = subscribeToAppleMusicStatus(v9);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v12 = [LPiTunesMediaSongMetadata statusForText:v11 withTransformer:v4];
LABEL_7:
  v13 = v12;
LABEL_10:

LABEL_11:

  return v13;
}

- (id)actionURLForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 canonicalURL];
  v6 = [(LPiTunesMediaSongMetadata *)self inlinePlaybackInformationForURL:v5];

  v7 = +[LPiTunesStoreInformation shared];
  v8 = [v6 storefrontIdentifier];
  v9 = [v7 userStateForMediaStorefrontIdentifier:v8];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v10 = [v6 availability];
    if (v10 >= 2)
    {
      if (v10 == 2)
      {
        v11 = [v4 canonicalURL];
        v12 = replaceScheme(v11, @"itms");
        goto LABEL_7;
      }
    }

    else if (v9 != 1)
    {
      v11 = [v4 canonicalURL];
      v12 = replaceScheme(v11, @"music");
LABEL_7:
      v13 = v12;

      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

@end