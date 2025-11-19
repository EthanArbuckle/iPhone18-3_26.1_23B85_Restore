@interface LPFaceTimeInviteMetadata
- (BOOL)isEqual:(id)a3;
- (LPFaceTimeInviteMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fallbackIconForTransformer:(id)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPFaceTimeInviteMetadata

- (LPFaceTimeInviteMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LPFaceTimeInviteMetadata;
  v5 = [(LPFaceTimeInviteMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPFaceTimeInviteMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPFaceTimeInviteMetadata *)self title];
    [(LPFaceTimeInviteMetadata *)v4 setTitle:v5];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LPFaceTimeInviteMetadata;
  if ([(LPFaceTimeInviteMetadata *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(v4[2], self->_title);
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
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:46];
  v6 = +[LPResources faceTimeBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v7];

  v8 = objc_alloc_init(LPImagePresentationProperties);
  if (sizeClassIsCardHeading([v4 effectiveSizeClass]))
  {
    v9 = [(LPFaceTimeInviteMetadata *)self title];
    v10 = v9;
    if (!v9)
    {
      v10 = LPLocalizedString(@"FaceTime Link");
    }

    v11 = [v5 captionBar];
    v12 = [v11 top];
    v13 = [v12 leading];
    [v13 setText:v10];

    if (!v9)
    {
    }

    v14 = +[LPResources linkIcon];
  }

  else
  {
    v14 = +[LPResources faceTimeIcon];
    v15 = objc_alloc_init(LPImagePresentationProperties);

    [(LPImagePresentationProperties *)v15 setFilter:1];
    if ([v4 isSolariumEnabled])
    {
      v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(LPImagePresentationProperties *)v15 setMaskColor:v16];
    }

    [(LPImagePresentationProperties *)v15 setScalingMode:1];
    v17 = [(LPFaceTimeInviteMetadata *)self title];
    v18 = v17;
    if (!v17)
    {
      v18 = LPLocalizedString(@"FaceTime");
    }

    v19 = [v5 captionBar];
    v20 = [v19 top];
    v21 = [v20 leading];
    [v21 setText:v18];

    if (!v17)
    {
    }

    v22 = [(LPFaceTimeInviteMetadata *)self title];
    if (v22)
    {
      LPLocalizedString(@"FaceTime Link");
    }

    else
    {
      LPLocalizedString(@"Link");
    }
    v23 = ;
    v24 = [v5 captionBar];
    v25 = [v24 bottom];
    v26 = [v25 leading];
    [v26 setText:v23];

    if ([v4 effectiveSizeClass] != 1 && (!objc_msgSend(v4, "hasOverriddenBackgroundColor") || objc_msgSend(v4, "usesInferredAppearanceWithOverriddenBackgroundColor")))
    {
      v27 = [MEMORY[0x1E69DC888] whiteColor];
      [(LPImagePresentationProperties *)v15 setMaskColor:v27];

      v28 = [MEMORY[0x1E69DC888] whiteColor];
      v29 = [v5 captionBar];
      v30 = [v29 top];
      v31 = [v30 leading];
      [v31 setColor:v28];

      v32 = [MEMORY[0x1E69DC888] whiteColor];
      v33 = [v32 colorWithAlphaComponent:0.6];
      v34 = [v5 captionBar];
      v35 = [v34 bottom];
      v36 = [v35 leading];
      [v36 setColor:v33];
    }

    v8 = v15;
  }

  [v4 _populateProperties:v5 withPrimaryIcon:v14 iconProperties:v8];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = [(LPFaceTimeInviteMetadata *)self title];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = LPLocalizedString(@"FaceTime Link: %@");
    v7 = [(LPFaceTimeInviteMetadata *)self title];
    v8 = [v5 localizedStringWithFormat:v6, v7];
  }

  else
  {
    v8 = LPLocalizedString(@"FaceTime Link");
  }

  return v8;
}

- (id)fallbackIconForTransformer:(id)a3
{
  v3 = +[LPResources faceTimeIcon];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v6 = a3;
  v4 = [(LPFaceTimeInviteMetadata *)self title];
  v5 = v4;
  if (!v4)
  {
    v5 = LPLocalizedString(@"FaceTime Link");
  }

  [v6 setTitle:v5];
  if (!v4)
  {
  }
}

@end