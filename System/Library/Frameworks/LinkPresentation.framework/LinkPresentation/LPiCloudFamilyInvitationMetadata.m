@interface LPiCloudFamilyInvitationMetadata
- (BOOL)isEqual:(id)a3;
- (LPiCloudFamilyInvitationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (unint64_t)hash;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiCloudFamilyInvitationMetadata

- (LPiCloudFamilyInvitationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LPiCloudFamilyInvitationMetadata;
  v5 = [(LPiCloudFamilyInvitationMetadata *)&v20 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(v4, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = decodeStringForKey(v4, @"action");
    action = v5->_action;
    v5->_action = v10;

    v12 = decodeStringForKey(v4, @"kind");
    kind = v5->_kind;
    v5->_kind = v12;

    v14 = [v4 _lp_strictlyDecodeLPImageForKey:@"image"];
    image = v5->_image;
    v5->_image = v14;

    v16 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [v4 _lp_encodeStringIfNotNil:self->_subtitle forKey:@"subtitle"];
  [v4 _lp_encodeStringIfNotNil:self->_action forKey:@"action"];
  [v4 _lp_encodeStringIfNotNil:self->_kind forKey:@"kind"];
  [v4 _lp_encodeObjectIfNotNil:self->_image forKey:@"image"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiCloudFamilyInvitationMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiCloudFamilyInvitationMetadata *)self title];
    [(LPiCloudFamilyInvitationMetadata *)v4 setTitle:v5];

    v6 = [(LPiCloudFamilyInvitationMetadata *)self subtitle];
    [(LPiCloudFamilyInvitationMetadata *)v4 setSubtitle:v6];

    v7 = [(LPiCloudFamilyInvitationMetadata *)self action];
    [(LPiCloudFamilyInvitationMetadata *)v4 setAction:v7];

    v8 = [(LPiCloudFamilyInvitationMetadata *)self kind];
    [(LPiCloudFamilyInvitationMetadata *)v4 setKind:v8];

    v9 = [(LPiCloudFamilyInvitationMetadata *)self image];
    [(LPiCloudFamilyInvitationMetadata *)v4 setImage:v9];

    v10 = [(LPiCloudFamilyInvitationMetadata *)self icon];
    [(LPiCloudFamilyInvitationMetadata *)v4 setIcon:v10];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiCloudFamilyInvitationMetadata;
  if ([(LPiCloudFamilyInvitationMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_title) & 1) != 0 && objectsAreEqual_0(v6[3], self->_subtitle) && objectsAreEqual_0(v6[4], self->_action) && objectsAreEqual_0(v6[5], self->_kind) && objectsAreEqual_0(v6[6], self->_image))
      {
        v5 = objectsAreEqual_0(v6[7], self->_icon);
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash]^ v3;
  v5 = [(NSString *)self->_action hash];
  return v4 ^ v5 ^ [(LPImage *)self->_image hash];
}

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = a3;
  v3[2](v3, @"image");
  v3[2](v3, @"icon");
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:24];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if (sizeClassAllowsMedia([v4 effectiveSizeClass]))
  {
    v7 = [(LPiCloudFamilyInvitationMetadata *)self image];
    v8 = v7;
    if (!v7)
    {
      v8 = [(LPiCloudFamilyInvitationMetadata *)self icon];
    }

    [v4 _populateProperties:v5 withPrimaryImage:v8];
  }

  else
  {
    v7 = [(LPiCloudFamilyInvitationMetadata *)self icon];
    v8 = v7;
    if (!v7)
    {
      v8 = [(LPiCloudFamilyInvitationMetadata *)self image];
    }

    [v4 _populateProperties:v5 withPrimaryIcon:v8];
  }

  if (!v7)
  {
  }

  v9 = [v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v9 - 1) >= 3)
  {
    if (v9)
    {
      goto LABEL_24;
    }

    v25 = [(LPiCloudFamilyInvitationMetadata *)self kind];

    if (!v25)
    {
      v16 = [(LPiCloudFamilyInvitationMetadata *)self title];
      v17 = [v5 captionBar];
      v18 = [v17 top];
      v19 = [v18 leading];
      [v19 setText:v16];
      goto LABEL_23;
    }

    v16 = [(LPiCloudFamilyInvitationMetadata *)self kind];
    v17 = LPLocalizedString(@"Invitation");
    v18 = joinedByEmDash(v16, v17);
    v19 = [v5 captionBar];
    v26 = [v19 top];
    v27 = [v26 leading];
    [v27 setText:v18];

    goto LABEL_22;
  }

  v10 = [(LPiCloudFamilyInvitationMetadata *)self kind];
  if (!v10 || (v11 = [v4 effectiveSizeClass], v10, v11 != 2))
  {
    v20 = [v4 preferredContentSizeCategory];
    v16 = v20;
    if (v20 && UIContentSizeCategoryCompareToCategory(v20, *MEMORY[0x1E69DDC70]) == NSOrderedDescending)
    {
      v21 = [(LPiCloudFamilyInvitationMetadata *)self title];
      v22 = [v5 captionBar];
      v23 = [v22 top];
      v24 = [v23 leading];
      [v24 setText:v21];
    }

    else
    {
      v21 = [(LPiCloudFamilyInvitationMetadata *)self subtitle];
      v22 = [v5 captionBar];
      v23 = [v22 top];
      v24 = [v23 leading];
      [v24 setText:v21];
    }

    v17 = [(LPiCloudFamilyInvitationMetadata *)self action];
    v18 = [v5 captionBar];
    v19 = [v18 bottom];
    v26 = [v19 leading];
    [v26 setText:v17];
LABEL_22:

    goto LABEL_23;
  }

  v12 = [(LPiCloudFamilyInvitationMetadata *)self kind];
  v13 = [v5 captionBar];
  v14 = [v13 top];
  v15 = [v14 leading];
  [v15 setText:v12];

  v16 = LPLocalizedString(@"Invitation");
  v17 = [v5 captionBar];
  v18 = [v17 bottom];
  v19 = [v18 leading];
  [v19 setText:v16];
LABEL_23:

LABEL_24:

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = [(LPiCloudFamilyInvitationMetadata *)self kind];

  if (v4)
  {
    v5 = [(LPiCloudFamilyInvitationMetadata *)self kind];
    v6 = LPLocalizedString(@"Invitation");
    v7 = joinedByEmDash(v5, v6);
  }

  else
  {
    v7 = [(LPiCloudFamilyInvitationMetadata *)self title];
  }

  return v7;
}

- (id)previewImageForTransformer:(id)a3
{
  v3 = [(LPiCloudFamilyInvitationMetadata *)self image];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v8 = a3;
  v4 = [(LPiCloudFamilyInvitationMetadata *)self title];
  [v8 setTitle:v4];

  v5 = [(LPiCloudFamilyInvitationMetadata *)self image];
  [v8 setImage:v5];

  v6 = [(LPiCloudFamilyInvitationMetadata *)self icon];
  [v8 setIcon:v6];

  v7 = [(LPiCloudFamilyInvitationMetadata *)self action];
  [v8 setSummary:v7];
}

@end