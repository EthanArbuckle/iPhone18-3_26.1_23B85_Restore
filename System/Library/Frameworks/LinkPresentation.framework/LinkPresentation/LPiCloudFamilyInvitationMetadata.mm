@interface LPiCloudFamilyInvitationMetadata
- (BOOL)isEqual:(id)equal;
- (LPiCloudFamilyInvitationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (unint64_t)hash;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiCloudFamilyInvitationMetadata

- (LPiCloudFamilyInvitationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = LPiCloudFamilyInvitationMetadata;
  v5 = [(LPiCloudFamilyInvitationMetadata *)&v20 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(coderCopy, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = decodeStringForKey(coderCopy, @"action");
    action = v5->_action;
    v5->_action = v10;

    v12 = decodeStringForKey(coderCopy, @"kind");
    kind = v5->_kind;
    v5->_kind = v12;

    v14 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"image"];
    image = v5->_image;
    v5->_image = v14;

    v16 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [coderCopy _lp_encodeStringIfNotNil:self->_subtitle forKey:@"subtitle"];
  [coderCopy _lp_encodeStringIfNotNil:self->_action forKey:@"action"];
  [coderCopy _lp_encodeStringIfNotNil:self->_kind forKey:@"kind"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_image forKey:@"image"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiCloudFamilyInvitationMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(LPiCloudFamilyInvitationMetadata *)self title];
    [(LPiCloudFamilyInvitationMetadata *)v4 setTitle:title];

    subtitle = [(LPiCloudFamilyInvitationMetadata *)self subtitle];
    [(LPiCloudFamilyInvitationMetadata *)v4 setSubtitle:subtitle];

    action = [(LPiCloudFamilyInvitationMetadata *)self action];
    [(LPiCloudFamilyInvitationMetadata *)v4 setAction:action];

    kind = [(LPiCloudFamilyInvitationMetadata *)self kind];
    [(LPiCloudFamilyInvitationMetadata *)v4 setKind:kind];

    image = [(LPiCloudFamilyInvitationMetadata *)self image];
    [(LPiCloudFamilyInvitationMetadata *)v4 setImage:image];

    icon = [(LPiCloudFamilyInvitationMetadata *)self icon];
    [(LPiCloudFamilyInvitationMetadata *)v4 setIcon:icon];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiCloudFamilyInvitationMetadata;
  if ([(LPiCloudFamilyInvitationMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (void)_enumerateAsynchronousFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"image");
  fieldsCopy[2](fieldsCopy, @"icon");
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:24];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if (sizeClassAllowsMedia([transformerCopy effectiveSizeClass]))
  {
    image = [(LPiCloudFamilyInvitationMetadata *)self image];
    icon = image;
    if (!image)
    {
      icon = [(LPiCloudFamilyInvitationMetadata *)self icon];
    }

    [transformerCopy _populateProperties:v5 withPrimaryImage:icon];
  }

  else
  {
    image = [(LPiCloudFamilyInvitationMetadata *)self icon];
    icon = image;
    if (!image)
    {
      icon = [(LPiCloudFamilyInvitationMetadata *)self image];
    }

    [transformerCopy _populateProperties:v5 withPrimaryIcon:icon];
  }

  if (!image)
  {
  }

  v9 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v9 - 1) >= 3)
  {
    if (v9)
    {
      goto LABEL_24;
    }

    kind = [(LPiCloudFamilyInvitationMetadata *)self kind];

    if (!kind)
    {
      title = [(LPiCloudFamilyInvitationMetadata *)self title];
      captionBar = [v5 captionBar];
      captionBar3 = [captionBar top];
      leading = [captionBar3 leading];
      [leading setText:title];
      goto LABEL_23;
    }

    title = [(LPiCloudFamilyInvitationMetadata *)self kind];
    captionBar = LPLocalizedString(@"Invitation");
    captionBar3 = joinedByEmDash(title, captionBar);
    leading = [v5 captionBar];
    v19Leading = [leading top];
    leading2 = [v19Leading leading];
    [leading2 setText:captionBar3];

    goto LABEL_22;
  }

  kind2 = [(LPiCloudFamilyInvitationMetadata *)self kind];
  if (!kind2 || (v11 = [transformerCopy effectiveSizeClass], kind2, v11 != 2))
  {
    preferredContentSizeCategory = [transformerCopy preferredContentSizeCategory];
    title = preferredContentSizeCategory;
    if (preferredContentSizeCategory && UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC70]) == NSOrderedDescending)
    {
      title2 = [(LPiCloudFamilyInvitationMetadata *)self title];
      captionBar2 = [v5 captionBar];
      v23 = [captionBar2 top];
      leading3 = [v23 leading];
      [leading3 setText:title2];
    }

    else
    {
      title2 = [(LPiCloudFamilyInvitationMetadata *)self subtitle];
      captionBar2 = [v5 captionBar];
      v23 = [captionBar2 top];
      leading3 = [v23 leading];
      [leading3 setText:title2];
    }

    captionBar = [(LPiCloudFamilyInvitationMetadata *)self action];
    captionBar3 = [v5 captionBar];
    leading = [captionBar3 bottom];
    v19Leading = [leading leading];
    [v19Leading setText:captionBar];
LABEL_22:

    goto LABEL_23;
  }

  kind3 = [(LPiCloudFamilyInvitationMetadata *)self kind];
  captionBar4 = [v5 captionBar];
  v14 = [captionBar4 top];
  leading4 = [v14 leading];
  [leading4 setText:kind3];

  title = LPLocalizedString(@"Invitation");
  captionBar = [v5 captionBar];
  captionBar3 = [captionBar bottom];
  leading = [captionBar3 leading];
  [leading setText:title];
LABEL_23:

LABEL_24:

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  kind = [(LPiCloudFamilyInvitationMetadata *)self kind];

  if (kind)
  {
    kind2 = [(LPiCloudFamilyInvitationMetadata *)self kind];
    v6 = LPLocalizedString(@"Invitation");
    title = joinedByEmDash(kind2, v6);
  }

  else
  {
    title = [(LPiCloudFamilyInvitationMetadata *)self title];
  }

  return title;
}

- (id)previewImageForTransformer:(id)transformer
{
  image = [(LPiCloudFamilyInvitationMetadata *)self image];

  return image;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  title = [(LPiCloudFamilyInvitationMetadata *)self title];
  [compatibilityCopy setTitle:title];

  image = [(LPiCloudFamilyInvitationMetadata *)self image];
  [compatibilityCopy setImage:image];

  icon = [(LPiCloudFamilyInvitationMetadata *)self icon];
  [compatibilityCopy setIcon:icon];

  action = [(LPiCloudFamilyInvitationMetadata *)self action];
  [compatibilityCopy setSummary:action];
}

@end