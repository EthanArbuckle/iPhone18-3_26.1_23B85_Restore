@interface LPiTunesMediaSongMetadata
+ (id)statusForText:(id)text withTransformer:(id)transformer;
+ (id)transcriptBoldTextFont;
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaSongMetadata)initWithCoder:(id)coder;
- (id)actionURLForTransformer:(id)transformer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)inlinePlaybackInformationForURL:(id)l;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)sourceApplicationMetadataForTransformer:(id)transformer;
- (id)statusForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)destroyForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)initializeForTransformer:(id)transformer;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaSongMetadata

- (LPiTunesMediaSongMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = LPiTunesMediaSongMetadata;
  v5 = [(LPiTunesMediaSongMetadata *)&v30 init];
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

    v12 = decodeStringForKey(coderCopy, @"artist");
    artist = v5->_artist;
    v5->_artist = v12;

    v14 = decodeStringForKey(coderCopy, @"album");
    album = v5->_album;
    v5->_album = v14;

    v16 = decodeStringForKey(coderCopy, @"lyrics");
    lyrics = v5->_lyrics;
    v5->_lyrics = v16;

    v18 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

    v22 = decodeURLForKey(coderCopy, @"previewURL");
    previewURL = v5->_previewURL;
    v5->_previewURL = v22;

    v24 = decodeArrayOfStringsForKey(coderCopy);
    offers = v5->_offers;
    v5->_offers = v24;

    v26 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"lyricExcerpt"];
    lyricExcerpt = v5->_lyricExcerpt;
    v5->_lyricExcerpt = v26;

    v28 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy _lp_encodeStringIfNotNil:self->_artist forKey:@"artist"];
  [coderCopy _lp_encodeStringIfNotNil:self->_album forKey:@"album"];
  [coderCopy _lp_encodeStringIfNotNil:self->_lyrics forKey:@"lyrics"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_previewURL forKey:@"previewURL"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_lyricExcerpt forKey:@"lyricExcerpt"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaSongMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaSongMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaSongMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaSongMetadata *)self storeIdentifier];
    [(LPiTunesMediaSongMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaSongMetadata *)self name];
    [(LPiTunesMediaSongMetadata *)v4 setName:name];

    artist = [(LPiTunesMediaSongMetadata *)self artist];
    [(LPiTunesMediaSongMetadata *)v4 setArtist:artist];

    album = [(LPiTunesMediaSongMetadata *)self album];
    [(LPiTunesMediaSongMetadata *)v4 setAlbum:album];

    artwork = [(LPiTunesMediaSongMetadata *)self artwork];
    [(LPiTunesMediaSongMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaSongMetadata *)self artworkMetadata];
    [(LPiTunesMediaSongMetadata *)v4 setArtworkMetadata:artworkMetadata];

    previewURL = [(LPiTunesMediaSongMetadata *)self previewURL];
    [(LPiTunesMediaSongMetadata *)v4 setPreviewURL:previewURL];

    offers = [(LPiTunesMediaSongMetadata *)self offers];
    [(LPiTunesMediaSongMetadata *)v4 setOffers:offers];

    lyricExcerpt = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
    [(LPiTunesMediaSongMetadata *)v4 setLyricExcerpt:lyricExcerpt];

    v15 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaSongMetadata;
  if ([(LPiTunesMediaSongMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (id)inlinePlaybackInformationForURL:(id)l
{
  lCopy = l;
  storeIdentifier = [(LPiTunesMediaSongMetadata *)self storeIdentifier];
  storeFrontIdentifier = [(LPiTunesMediaSongMetadata *)self storeFrontIdentifier];
  v7 = storeFrontIdentifier;
  if (!storeFrontIdentifier)
  {
    v7 = storefrontIdentifierFromURL(lCopy);
  }

  offers = [(LPiTunesMediaSongMetadata *)self offers];
  previewURL = [(LPiTunesMediaSongMetadata *)self previewURL];
  lyricExcerpt = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
  v11 = [LPInlineMediaPlaybackInformation songPlaybackInformationWithStoreIdentifier:storeIdentifier storefrontIdentifier:v7 offers:offers previewURL:previewURL lyricExcerpt:lyricExcerpt];

  if (!storeFrontIdentifier)
  {
  }

  return v11;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  lyricExcerpt = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
  if (lyricExcerpt && [transformerCopy _rowConfigurationForStyle:5] == 3)
  {
    v6 = sizeClassAllowsMedia([transformerCopy effectiveSizeClass]);

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

  v8 = [transformerCopy commonPresentationPropertiesForStyle:v7];
  v9 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v8 setCaptionBar:v9];

  name = [(LPiTunesMediaSongMetadata *)self name];
  artist = [(LPiTunesMediaSongMetadata *)self artist];
  v12 = appleMusicWordmark(transformerCopy);
  populateCaptionBar(v8, name, artist, v12, 1, transformerCopy);

  artwork = [(LPiTunesMediaSongMetadata *)self artwork];
  [transformerCopy _populateProperties:v8 withPrimaryImage:artwork];

  canonicalURL = [transformerCopy canonicalURL];
  v15 = [(LPiTunesMediaSongMetadata *)self inlinePlaybackInformationForURL:canonicalURL];
  [v8 setInlinePlaybackInformation:v15];

  if (v6)
  {
    lyricExcerpt2 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
    lyrics = [lyricExcerpt2 lyrics];
    [v8 setQuotedText:lyrics];

    artwork2 = [(LPiTunesMediaSongMetadata *)self artwork];
    v19 = lyricBackgroundImage(artwork2);
    [v8 setBackgroundImage:v19];

    captionBar = [v8 captionBar];
    [captionBar setLeadingIcon:0];

    [v8 setImage:0];
    v21 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [v8 setMediaBottomCaptionBar:v21];

    if ([transformerCopy allowsPlaybackControls])
    {
      v22 = objc_alloc_init(MEMORY[0x1E696AB70]);
      [v22 setUnitsStyle:0];
      [v22 setAllowedUnits:192];
      [v22 setZeroFormattingBehavior:0];
      lyricExcerpt3 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
      endTime = [lyricExcerpt3 endTime];
      [endTime doubleValue];
      v25 = v24;
      lyricExcerpt4 = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
      startTime = [lyricExcerpt4 startTime];
      [startTime doubleValue];
      v29 = [v22 stringFromTimeInterval:v25 - v28];
      mediaBottomCaptionBar = [v8 mediaBottomCaptionBar];
      v31 = [mediaBottomCaptionBar top];
      trailing = [v31 trailing];
      [trailing setText:v29];
    }
  }

  return v8;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  lyricExcerpt = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];

  v5 = MEMORY[0x1E696AEC0];
  if (lyricExcerpt)
  {
    LPLocalizedString(@"Lyrics: %@ – %@");
  }

  else
  {
    LPLocalizedString(@"Song: %@ – %@");
  }
  v6 = ;
  name = [(LPiTunesMediaSongMetadata *)self name];
  artist = [(LPiTunesMediaSongMetadata *)self artist];
  v9 = [v5 localizedStringWithFormat:v6, name, artist];

  return v9;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaSongMetadata *)self name];
  artist = [(LPiTunesMediaSongMetadata *)self artist];
  v6 = joinedByEmDash(name, artist);
  [compatibilityCopy setTitle:v6];

  artwork = [(LPiTunesMediaSongMetadata *)self artwork];
  [compatibilityCopy setIcon:artwork];

  lyricExcerpt = [(LPiTunesMediaSongMetadata *)self lyricExcerpt];
  lyrics = [lyricExcerpt lyrics];
  [compatibilityCopy setSelectedText:lyrics];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaSongMetadata *)self storeIdentifier];

  return storeIdentifier;
}

- (id)sourceApplicationMetadataForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v4 = objc_alloc_init(LPSourceApplicationMetadata);
  [transformerCopy scaleFactor];
  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:@"com.apple.Music"];
  v8 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:16.0 scale:{16.0, v6}];
  [v8 setShouldApplyMask:0];
  v9 = [v7 prepareImageForDescriptor:v8];
  v10 = -[LPImage _initWithCGImage:]([LPImage alloc], "_initWithCGImage:", [v9 CGImage]);

  [(LPSourceApplicationMetadata *)v4 setIcon:v10];

  return v4;
}

- (void)initializeForTransformer:(id)transformer
{
  transformerCopy = transformer;
  objc_initWeak(&location, transformerCopy);
  v4 = +[LPiTunesStoreInformation shared];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__LPiTunesMediaSongMetadata_Transformer__initializeForTransformer___block_invoke;
  v5[3] = &unk_1E7A35D40;
  objc_copyWeak(&v6, &location);
  [v4 registerForStoreAvailablityChangesWithToken:transformerCopy handler:v5];

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

- (void)destroyForTransformer:(id)transformer
{
  v4 = +[LPiTunesStoreInformation shared];
  [v4 unregisterForStoreAvailablityChangesWithToken:self];
}

+ (id)transcriptBoldTextFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (transcriptBoldTextFont_contentSizeCategory != preferredContentSizeCategory)
  {
    v4 = emphasizedPreferredFontForTextStyle(*MEMORY[0x1E69DDD10]);
    v5 = transcriptBoldTextFont_font;
    transcriptBoldTextFont_font = v4;

    objc_storeStrong(&transcriptBoldTextFont_contentSizeCategory, preferredContentSizeCategory);
  }

  v6 = transcriptBoldTextFont_font;
  v7 = transcriptBoldTextFont_font;

  return v6;
}

+ (id)statusForText:(id)text withTransformer:(id)transformer
{
  v31[2] = *MEMORY[0x1E69E9840];
  textCopy = text;
  transformerCopy = transformer;
  v6 = *MEMORY[0x1E69DB648];
  v30[0] = *MEMORY[0x1E69DB648];
  transcriptBoldTextFont = [objc_opt_class() transcriptBoldTextFont];
  v31[0] = transcriptBoldTextFont;
  v8 = *MEMORY[0x1E69DB650];
  v30[1] = *MEMORY[0x1E69DB650];
  foregroundColor = [transformerCopy foregroundColor];
  systemGrayColor = foregroundColor;
  if (!foregroundColor)
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  v31[1] = systemGrayColor;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:{2, textCopy}];
  if (!foregroundColor)
  {
  }

  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v27 attributes:v11];
  v28[0] = v6;
  transcriptBoldTextFont2 = [objc_opt_class() transcriptBoldTextFont];
  v28[1] = v8;
  v29[0] = transcriptBoldTextFont2;
  systemPinkColor = [MEMORY[0x1E69DC888] systemPinkColor];
  v29[1] = systemPinkColor;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  string = [v12 string];
  v17 = [string rangeOfString:@"<link>"];
  v19 = v18;

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    [v12 replaceCharactersInRange:v17 withString:{v19, &stru_1F2447CF0}];
    string2 = [v12 string];
    v22 = [string2 rangeOfString:@"</link>"];
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

- (id)statusForTransformer:(id)transformer
{
  transformerCopy = transformer;
  canonicalURL = [transformerCopy canonicalURL];
  v6 = [(LPiTunesMediaSongMetadata *)self inlinePlaybackInformationForURL:canonicalURL];

  v7 = +[LPiTunesStoreInformation shared];
  storefrontIdentifier = [v6 storefrontIdentifier];
  v9 = [v7 userStateForMediaStorefrontIdentifier:storefrontIdentifier];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    goto LABEL_8;
  }

  availability = [v6 availability];
  if (availability >= 2)
  {
    if (availability == 2)
    {
      v11 = LPLocalizedString(@"Buy Song on <link>iTunes</link>");
      v12 = [LPiTunesMediaSongMetadata statusForText:v11 withTransformer:transformerCopy];
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

  v12 = [LPiTunesMediaSongMetadata statusForText:v11 withTransformer:transformerCopy];
LABEL_7:
  v13 = v12;
LABEL_10:

LABEL_11:

  return v13;
}

- (id)actionURLForTransformer:(id)transformer
{
  transformerCopy = transformer;
  canonicalURL = [transformerCopy canonicalURL];
  v6 = [(LPiTunesMediaSongMetadata *)self inlinePlaybackInformationForURL:canonicalURL];

  v7 = +[LPiTunesStoreInformation shared];
  storefrontIdentifier = [v6 storefrontIdentifier];
  v9 = [v7 userStateForMediaStorefrontIdentifier:storefrontIdentifier];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    availability = [v6 availability];
    if (availability >= 2)
    {
      if (availability == 2)
      {
        canonicalURL2 = [transformerCopy canonicalURL];
        v12 = replaceScheme(canonicalURL2, @"itms");
        goto LABEL_7;
      }
    }

    else if (v9 != 1)
    {
      canonicalURL2 = [transformerCopy canonicalURL];
      v12 = replaceScheme(canonicalURL2, @"music");
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