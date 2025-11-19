@interface LPGameActivityMetadata
- (BOOL)isEqual:(id)a3;
- (LPGameActivityMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPGameActivityMetadata

- (id)presentationPropertiesForTransformer:(id)a3
{
  v45[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 unspecializedPresentationPropertiesForStyle:61];
  v6 = 0x1E7A34000;
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v7];

  v8 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setMediaBottomCaptionBar:v8];

  v9 = [v5 mediaBottomCaptionBar];
  [v9 setUsesBlurredBackgroundWithFadeOut:1];

  v10 = [(LPGameActivityMetadata *)self artwork];
  v11 = v10;
  if (!v10)
  {
    v6 = [v4 metadata];
    v11 = [v6 image];
  }

  [v4 _populateProperties:v5 withPrimaryImage:v11];
  if (!v10)
  {
  }

  v12 = [(LPGameActivityMetadata *)self icon];
  v13 = v12;
  if (!v12)
  {
    v6 = [v4 metadata];
    v13 = [v6 icon];
  }

  [v4 _populateProperties:v5 withPrimaryIcon:v13];
  if (!v12)
  {
  }

  v14 = [(LPGameActivityMetadata *)self title];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [v4 metadata];
    v16 = [v17 title];
  }

  v18 = [(LPGameActivityMetadata *)self subtitle];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v21 = [v4 metadata];
    v22 = [v21 appleSummary];
    v23 = v22;
    if (v22)
    {
      v20 = v22;
    }

    else
    {
      v24 = [v4 metadata];
      v20 = [v24 summary];
    }
  }

  v25 = LPLocalizedString(@"Multiplayer Invite");
  v26 = [v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v26 - 2) < 2)
  {
    if (sizeClassAllowsMedia([v4 effectiveSizeClass]))
    {
      [v5 mediaBottomCaptionBar];
    }

    else
    {
      [v5 captionBar];
    }
    v30 = ;
    v31 = [v30 top];
    v32 = [v31 leading];
    [v32 setText:v16];

    v36 = [v5 captionBar];
    v37 = [v36 bottom];
    v38 = [v37 leading];
    [v38 setText:v20];

    v33 = [v5 captionBar];
    v34 = [v33 belowBottom];
    v35 = [v34 leading];
    [v35 setText:v25];
    goto LABEL_30;
  }

  if (!v26)
  {
    v33 = [v5 captionBar];
    v34 = [v33 top];
    v35 = [v34 leading];
    [v35 setText:v16];
LABEL_30:

    goto LABEL_31;
  }

  if (v26 == 1)
  {
    if (sizeClassAllowsMedia([v4 effectiveSizeClass]))
    {
      [v5 mediaBottomCaptionBar];
    }

    else
    {
      [v5 captionBar];
    }
    v27 = ;
    v28 = [v27 top];
    v29 = [v28 leading];
    [v29 setText:v16];

    v33 = [v5 captionBar];
    v34 = [v33 bottom];
    v35 = [v34 leading];
    [v35 setText:v20];
    goto LABEL_30;
  }

LABEL_31:
  if (!sizeClassIsCardHeading([v4 effectiveSizeClass]) && (objc_msgSend(v4, "isInComposeContext") & 1) == 0 && !sizeClassRequiresTrailingIcon(objc_msgSend(v4, "effectiveSizeClass")))
  {
    v39 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    v40 = LPLocalizedString(@"Join");
    v41 = [LPButtonAction actionWithTitle:v40 image:0 handler:0];
    v45[0] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [(LPCaptionButtonPresentationProperties *)v39 setActions:v42];

    [(LPCaptionButtonPresentationProperties *)v39 setShape:2];
    v43 = [v5 captionBar];
    [v43 setButton:v39];
  }

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPGameActivityMetadata *)self title];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 metadata];
    v7 = [v8 title];
  }

  return v7;
}

- (id)previewImageForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPGameActivityMetadata *)self artwork];
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

- (LPGameActivityMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = LPGameActivityMetadata;
  v5 = [(LPGameActivityMetadata *)&v16 init];
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

    v12 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [v4 _lp_encodeStringIfNotNil:self->_subtitle forKey:@"subtitle"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPGameActivityMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPGameActivityMetadata *)self title];
    [(LPGameActivityMetadata *)v4 setTitle:v5];

    v6 = [(LPGameActivityMetadata *)self subtitle];
    [(LPGameActivityMetadata *)v4 setSubtitle:v6];

    v7 = [(LPGameActivityMetadata *)self artwork];
    [(LPGameActivityMetadata *)v4 setArtwork:v7];

    v8 = [(LPGameActivityMetadata *)self icon];
    [(LPGameActivityMetadata *)v4 setIcon:v8];

    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPGameActivityMetadata;
  if ([(LPGameActivityMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = a3;
  v3[2](v3, @"artwork");
  v3[2](v3, @"icon");
}

@end