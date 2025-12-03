@interface LPGameActivityMetadata
- (BOOL)isEqual:(id)equal;
- (LPGameActivityMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPGameActivityMetadata

- (id)presentationPropertiesForTransformer:(id)transformer
{
  v45[1] = *MEMORY[0x1E69E9840];
  transformerCopy = transformer;
  v5 = [transformerCopy unspecializedPresentationPropertiesForStyle:61];
  metadata = 0x1E7A34000;
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v7];

  v8 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setMediaBottomCaptionBar:v8];

  mediaBottomCaptionBar = [v5 mediaBottomCaptionBar];
  [mediaBottomCaptionBar setUsesBlurredBackgroundWithFadeOut:1];

  artwork = [(LPGameActivityMetadata *)self artwork];
  image = artwork;
  if (!artwork)
  {
    metadata = [transformerCopy metadata];
    image = [metadata image];
  }

  [transformerCopy _populateProperties:v5 withPrimaryImage:image];
  if (!artwork)
  {
  }

  icon = [(LPGameActivityMetadata *)self icon];
  icon2 = icon;
  if (!icon)
  {
    metadata = [transformerCopy metadata];
    icon2 = [metadata icon];
  }

  [transformerCopy _populateProperties:v5 withPrimaryIcon:icon2];
  if (!icon)
  {
  }

  title = [(LPGameActivityMetadata *)self title];
  v15 = title;
  if (title)
  {
    title2 = title;
  }

  else
  {
    metadata2 = [transformerCopy metadata];
    title2 = [metadata2 title];
  }

  subtitle = [(LPGameActivityMetadata *)self subtitle];
  v19 = subtitle;
  if (subtitle)
  {
    summary = subtitle;
  }

  else
  {
    metadata3 = [transformerCopy metadata];
    appleSummary = [metadata3 appleSummary];
    v23 = appleSummary;
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

  v25 = LPLocalizedString(@"Multiplayer Invite");
  v26 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v26 - 2) < 2)
  {
    if (sizeClassAllowsMedia([transformerCopy effectiveSizeClass]))
    {
      [v5 mediaBottomCaptionBar];
    }

    else
    {
      [v5 captionBar];
    }
    v30 = ;
    v31 = [v30 top];
    leading = [v31 leading];
    [leading setText:title2];

    captionBar = [v5 captionBar];
    bottom = [captionBar bottom];
    leading2 = [bottom leading];
    [leading2 setText:summary];

    captionBar2 = [v5 captionBar];
    belowBottom = [captionBar2 belowBottom];
    leading3 = [belowBottom leading];
    [leading3 setText:v25];
    goto LABEL_30;
  }

  if (!v26)
  {
    captionBar2 = [v5 captionBar];
    belowBottom = [captionBar2 top];
    leading3 = [belowBottom leading];
    [leading3 setText:title2];
LABEL_30:

    goto LABEL_31;
  }

  if (v26 == 1)
  {
    if (sizeClassAllowsMedia([transformerCopy effectiveSizeClass]))
    {
      [v5 mediaBottomCaptionBar];
    }

    else
    {
      [v5 captionBar];
    }
    v27 = ;
    v28 = [v27 top];
    leading4 = [v28 leading];
    [leading4 setText:title2];

    captionBar2 = [v5 captionBar];
    belowBottom = [captionBar2 bottom];
    leading3 = [belowBottom leading];
    [leading3 setText:summary];
    goto LABEL_30;
  }

LABEL_31:
  if (!sizeClassIsCardHeading([transformerCopy effectiveSizeClass]) && (objc_msgSend(transformerCopy, "isInComposeContext") & 1) == 0 && !sizeClassRequiresTrailingIcon(objc_msgSend(transformerCopy, "effectiveSizeClass")))
  {
    v39 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    v40 = LPLocalizedString(@"Join");
    v41 = [LPButtonAction actionWithTitle:v40 image:0 handler:0];
    v45[0] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [(LPCaptionButtonPresentationProperties *)v39 setActions:v42];

    [(LPCaptionButtonPresentationProperties *)v39 setShape:2];
    captionBar3 = [v5 captionBar];
    [captionBar3 setButton:v39];
  }

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  transformerCopy = transformer;
  title = [(LPGameActivityMetadata *)self title];
  v6 = title;
  if (title)
  {
    title2 = title;
  }

  else
  {
    metadata = [transformerCopy metadata];
    title2 = [metadata title];
  }

  return title2;
}

- (id)previewImageForTransformer:(id)transformer
{
  transformerCopy = transformer;
  artwork = [(LPGameActivityMetadata *)self artwork];
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

- (LPGameActivityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = LPGameActivityMetadata;
  v5 = [(LPGameActivityMetadata *)&v16 init];
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

    v12 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [coderCopy _lp_encodeStringIfNotNil:self->_subtitle forKey:@"subtitle"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPGameActivityMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(LPGameActivityMetadata *)self title];
    [(LPGameActivityMetadata *)v4 setTitle:title];

    subtitle = [(LPGameActivityMetadata *)self subtitle];
    [(LPGameActivityMetadata *)v4 setSubtitle:subtitle];

    artwork = [(LPGameActivityMetadata *)self artwork];
    [(LPGameActivityMetadata *)v4 setArtwork:artwork];

    icon = [(LPGameActivityMetadata *)self icon];
    [(LPGameActivityMetadata *)v4 setIcon:icon];

    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPGameActivityMetadata;
  if ([(LPGameActivityMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_title) & 1) != 0 && objectsAreEqual_0(v6[3], self->_subtitle) && objectsAreEqual_0(v6[4], self->_artwork))
      {
        v5 = objectsAreEqual_0(v6[5], self->_icon);
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

- (void)_enumerateAsynchronousFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"artwork");
  fieldsCopy[2](fieldsCopy, @"icon");
}

@end