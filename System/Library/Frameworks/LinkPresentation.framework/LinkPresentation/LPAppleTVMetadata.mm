@interface LPAppleTVMetadata
- (BOOL)canGeneratePresentationPropertiesForURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LPAppleTVMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPAppleTVMetadata

- (LPAppleTVMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = LPAppleTVMetadata;
  v5 = [(LPAppleTVMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(v4, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [v4 _lp_encodeStringIfNotNil:self->_subtitle forKey:@"subtitle"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPAppleTVMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPAppleTVMetadata *)self title];
    [(LPAppleTVMetadata *)v4 setTitle:v5];

    v6 = [(LPAppleTVMetadata *)self subtitle];
    [(LPAppleTVMetadata *)v4 setSubtitle:v6];

    v7 = [(LPAppleTVMetadata *)self artwork];
    [(LPAppleTVMetadata *)v4 setArtwork:v7];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPAppleTVMetadata;
  if ([(LPAppleTVMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_title) & 1) != 0 && objectsAreEqual_0(v6[3], self->_subtitle))
      {
        v5 = objectsAreEqual_0(v6[4], self->_artwork);
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
  v6 = [v5 unspecializedPresentationPropertiesForStyle:34];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  v8 = [(LPAppleTVMetadata *)self artwork];
  v9 = v8;
  if (!v8)
  {
    v3 = [v5 metadata];
    v9 = [v3 image];
  }

  [v5 _populateProperties:v6 withPrimaryImage:v9];
  if (!v8)
  {
  }

  v10 = [(LPAppleTVMetadata *)self title];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v5 metadata];
    v12 = [v13 title];
  }

  v14 = [(LPAppleTVMetadata *)self subtitle];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [v5 metadata];
    v18 = [v17 appleSummary];
    v19 = v18;
    if (v18)
    {
      v16 = v18;
    }

    else
    {
      v20 = [v5 metadata];
      v16 = [v20 summary];
    }
  }

  v21 = LPLocalizedString(@" tv");
  v22 = [v5 _rowConfigurationForStyle:{objc_msgSend(v6, "style")}];
  if ((v22 - 2) < 2)
  {
    v30 = [v6 captionBar];
    v31 = [v30 top];
    v32 = [v31 leading];
    [v32 setText:v12];

    v33 = [v6 captionBar];
    v34 = [v33 bottom];
    v35 = [v34 leading];
    [v35 setText:v16];

    v27 = [v6 captionBar];
    v28 = [v27 belowBottom];
    v29 = [v28 leading];
    [v29 setText:v21];
  }

  else if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_24;
    }

    v23 = [v6 captionBar];
    v24 = [v23 top];
    v25 = [v24 leading];
    [v25 setText:v12];

    if (v16)
    {
      v26 = v16;
    }

    else
    {
      v26 = v21;
    }

    v27 = [v6 captionBar];
    v28 = [v27 bottom];
    v29 = [v28 leading];
    [v29 setText:v26];
  }

  else
  {
    v27 = [v6 captionBar];
    v28 = [v27 top];
    v29 = [v28 leading];
    [v29 setText:v12];
  }

LABEL_24:

  return v6;
}

- (BOOL)canGeneratePresentationPropertiesForURL:(id)a3
{
  v3 = a3;
  v4 = [LPPresentationSpecializations isAppleTVURL:v3]|| [LPPresentationSpecializations isiTunesStoreOrAdjacentURL:v3];

  return v4;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = LPLocalizedString(@" tv: %@");
  v8 = [(LPAppleTVMetadata *)self title];
  v9 = v8;
  if (!v8)
  {
    v3 = [v5 metadata];
    v9 = [v3 title];
  }

  v10 = [v6 localizedStringWithFormat:v7, v9];
  if (!v8)
  {
  }

  return v10;
}

- (id)previewImageForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPAppleTVMetadata *)self artwork];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 metadata];
    v7 = [v8 image];
  }

  return v7;
}

@end