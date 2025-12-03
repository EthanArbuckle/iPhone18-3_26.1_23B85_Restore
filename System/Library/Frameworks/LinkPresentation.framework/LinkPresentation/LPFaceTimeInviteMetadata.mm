@interface LPFaceTimeInviteMetadata
- (BOOL)isEqual:(id)equal;
- (LPFaceTimeInviteMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fallbackIconForTransformer:(id)transformer;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPFaceTimeInviteMetadata

- (LPFaceTimeInviteMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = LPFaceTimeInviteMetadata;
  v5 = [(LPFaceTimeInviteMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPFaceTimeInviteMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(LPFaceTimeInviteMetadata *)self title];
    [(LPFaceTimeInviteMetadata *)v4 setTitle:title];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPFaceTimeInviteMetadata;
  if ([(LPFaceTimeInviteMetadata *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(equalCopy[2], self->_title);
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
  v5 = [transformerCopy commonPresentationPropertiesForStyle:46];
  v6 = +[LPResources faceTimeBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v7];

  v8 = objc_alloc_init(LPImagePresentationProperties);
  if (sizeClassIsCardHeading([transformerCopy effectiveSizeClass]))
  {
    title = [(LPFaceTimeInviteMetadata *)self title];
    v10 = title;
    if (!title)
    {
      v10 = LPLocalizedString(@"FaceTime Link");
    }

    captionBar = [v5 captionBar];
    v12 = [captionBar top];
    leading = [v12 leading];
    [leading setText:v10];

    if (!title)
    {
    }

    v14 = +[LPResources linkIcon];
  }

  else
  {
    v14 = +[LPResources faceTimeIcon];
    v15 = objc_alloc_init(LPImagePresentationProperties);

    [(LPImagePresentationProperties *)v15 setFilter:1];
    if ([transformerCopy isSolariumEnabled])
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(LPImagePresentationProperties *)v15 setMaskColor:secondaryLabelColor];
    }

    [(LPImagePresentationProperties *)v15 setScalingMode:1];
    title2 = [(LPFaceTimeInviteMetadata *)self title];
    v18 = title2;
    if (!title2)
    {
      v18 = LPLocalizedString(@"FaceTime");
    }

    captionBar2 = [v5 captionBar];
    v20 = [captionBar2 top];
    leading2 = [v20 leading];
    [leading2 setText:v18];

    if (!title2)
    {
    }

    title3 = [(LPFaceTimeInviteMetadata *)self title];
    if (title3)
    {
      LPLocalizedString(@"FaceTime Link");
    }

    else
    {
      LPLocalizedString(@"Link");
    }
    v23 = ;
    captionBar3 = [v5 captionBar];
    bottom = [captionBar3 bottom];
    leading3 = [bottom leading];
    [leading3 setText:v23];

    if ([transformerCopy effectiveSizeClass] != 1 && (!objc_msgSend(transformerCopy, "hasOverriddenBackgroundColor") || objc_msgSend(transformerCopy, "usesInferredAppearanceWithOverriddenBackgroundColor")))
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(LPImagePresentationProperties *)v15 setMaskColor:whiteColor];

      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      captionBar4 = [v5 captionBar];
      v30 = [captionBar4 top];
      leading4 = [v30 leading];
      [leading4 setColor:whiteColor2];

      whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
      v33 = [whiteColor3 colorWithAlphaComponent:0.6];
      captionBar5 = [v5 captionBar];
      bottom2 = [captionBar5 bottom];
      leading5 = [bottom2 leading];
      [leading5 setColor:v33];
    }

    v8 = v15;
  }

  [transformerCopy _populateProperties:v5 withPrimaryIcon:v14 iconProperties:v8];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  title = [(LPFaceTimeInviteMetadata *)self title];

  if (title)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = LPLocalizedString(@"FaceTime Link: %@");
    title2 = [(LPFaceTimeInviteMetadata *)self title];
    v8 = [v5 localizedStringWithFormat:v6, title2];
  }

  else
  {
    v8 = LPLocalizedString(@"FaceTime Link");
  }

  return v8;
}

- (id)fallbackIconForTransformer:(id)transformer
{
  v3 = +[LPResources faceTimeIcon];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  title = [(LPFaceTimeInviteMetadata *)self title];
  v5 = title;
  if (!title)
  {
    v5 = LPLocalizedString(@"FaceTime Link");
  }

  [compatibilityCopy setTitle:v5];
  if (!title)
  {
  }
}

@end