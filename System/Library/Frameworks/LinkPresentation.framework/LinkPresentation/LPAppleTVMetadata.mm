@interface LPAppleTVMetadata
- (BOOL)canGeneratePresentationPropertiesForURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (LPAppleTVMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPAppleTVMetadata

- (LPAppleTVMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = LPAppleTVMetadata;
  v5 = [(LPAppleTVMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(coderCopy, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [coderCopy _lp_encodeStringIfNotNil:self->_subtitle forKey:@"subtitle"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPAppleTVMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(LPAppleTVMetadata *)self title];
    [(LPAppleTVMetadata *)v4 setTitle:title];

    subtitle = [(LPAppleTVMetadata *)self subtitle];
    [(LPAppleTVMetadata *)v4 setSubtitle:subtitle];

    artwork = [(LPAppleTVMetadata *)self artwork];
    [(LPAppleTVMetadata *)v4 setArtwork:artwork];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPAppleTVMetadata;
  if ([(LPAppleTVMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v6 = [transformerCopy unspecializedPresentationPropertiesForStyle:34];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  artwork = [(LPAppleTVMetadata *)self artwork];
  image = artwork;
  if (!artwork)
  {
    metadata = [transformerCopy metadata];
    image = [metadata image];
  }

  [transformerCopy _populateProperties:v6 withPrimaryImage:image];
  if (!artwork)
  {
  }

  title = [(LPAppleTVMetadata *)self title];
  v11 = title;
  if (title)
  {
    title2 = title;
  }

  else
  {
    metadata2 = [transformerCopy metadata];
    title2 = [metadata2 title];
  }

  subtitle = [(LPAppleTVMetadata *)self subtitle];
  v15 = subtitle;
  if (subtitle)
  {
    summary = subtitle;
  }

  else
  {
    metadata3 = [transformerCopy metadata];
    appleSummary = [metadata3 appleSummary];
    v19 = appleSummary;
    if (appleSummary)
    {
      summary = appleSummary;
    }

    else
    {
      metadata4 = [transformerCopy metadata];
      summary = [metadata4 summary];
    }
  }

  v21 = LPLocalizedString(@" tv");
  v22 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v6, "style")}];
  if ((v22 - 2) < 2)
  {
    captionBar = [v6 captionBar];
    v31 = [captionBar top];
    leading = [v31 leading];
    [leading setText:title2];

    captionBar2 = [v6 captionBar];
    bottom = [captionBar2 bottom];
    leading2 = [bottom leading];
    [leading2 setText:summary];

    captionBar3 = [v6 captionBar];
    belowBottom = [captionBar3 belowBottom];
    leading3 = [belowBottom leading];
    [leading3 setText:v21];
  }

  else if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_24;
    }

    captionBar4 = [v6 captionBar];
    v24 = [captionBar4 top];
    leading4 = [v24 leading];
    [leading4 setText:title2];

    if (summary)
    {
      v26 = summary;
    }

    else
    {
      v26 = v21;
    }

    captionBar3 = [v6 captionBar];
    belowBottom = [captionBar3 bottom];
    leading3 = [belowBottom leading];
    [leading3 setText:v26];
  }

  else
  {
    captionBar3 = [v6 captionBar];
    belowBottom = [captionBar3 top];
    leading3 = [belowBottom leading];
    [leading3 setText:title2];
  }

LABEL_24:

  return v6;
}

- (BOOL)canGeneratePresentationPropertiesForURL:(id)l
{
  lCopy = l;
  v4 = [LPPresentationSpecializations isAppleTVURL:lCopy]|| [LPPresentationSpecializations isiTunesStoreOrAdjacentURL:lCopy];

  return v4;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v6 = MEMORY[0x1E696AEC0];
  v7 = LPLocalizedString(@" tv: %@");
  title = [(LPAppleTVMetadata *)self title];
  title2 = title;
  if (!title)
  {
    metadata = [transformerCopy metadata];
    title2 = [metadata title];
  }

  v10 = [v6 localizedStringWithFormat:v7, title2];
  if (!title)
  {
  }

  return v10;
}

- (id)previewImageForTransformer:(id)transformer
{
  transformerCopy = transformer;
  artwork = [(LPAppleTVMetadata *)self artwork];
  v6 = artwork;
  if (artwork)
  {
    image = artwork;
  }

  else
  {
    metadata = [transformerCopy metadata];
    image = [metadata image];
  }

  return image;
}

@end