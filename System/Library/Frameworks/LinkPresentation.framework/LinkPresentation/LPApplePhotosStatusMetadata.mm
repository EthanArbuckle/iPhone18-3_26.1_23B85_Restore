@interface LPApplePhotosStatusMetadata
- (BOOL)isEqual:(id)equal;
- (LPApplePhotosStatusMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
@end

@implementation LPApplePhotosStatusMetadata

- (LPApplePhotosStatusMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = LPApplePhotosStatusMetadata;
  v5 = [(LPApplePhotosStatusMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeAttributedStringForKey(coderCopy, @"title");
    status = v5->_status;
    v5->_status = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPApplePhotosStatusMetadata allocWithZone:zone];
  if (v4)
  {
    status = [(LPApplePhotosStatusMetadata *)self status];
    [(LPApplePhotosStatusMetadata *)v4 setStatus:status];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPApplePhotosStatusMetadata;
  if ([(LPApplePhotosStatusMetadata *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(equalCopy[2], self->_status);
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
  if (sizeClassAllowsStatusTransformation([transformerCopy effectiveSizeClass]))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    metadata = [transformerCopy metadata];
    image = [metadata image];

    if (image)
    {
      metadata2 = [transformerCopy metadata];
      image2 = [metadata2 image];
      [v5 addObject:image2];
    }

    metadata3 = [transformerCopy metadata];
    alternateImages = [metadata3 alternateImages];

    if (alternateImages)
    {
      metadata4 = [transformerCopy metadata];
      alternateImages2 = [metadata4 alternateImages];
      [v5 addObjectsFromArray:alternateImages2];
    }

    metadata5 = [transformerCopy metadata];
    icon = [metadata5 icon];

    if (icon)
    {
      metadata6 = [transformerCopy metadata];
      icon2 = [metadata6 icon];
      [v5 addObject:icon2];
    }

    if (![v5 count])
    {
      sourceContextIcon = [transformerCopy sourceContextIcon];
      [v5 addObject:sourceContextIcon];
    }

    v19 = [LPCardHeadingPresentationProperties alloc];
    metadata7 = [transformerCopy metadata];
    title = [metadata7 title];
    status = [(LPApplePhotosStatusMetadata *)self status];
    unspecializedPresentationProperties = [(LPCardHeadingPresentationProperties *)v19 initWithStyle:38 topCaption:title attributedBottomCaption:status icons:v5];
  }

  else
  {
    unspecializedPresentationProperties = [transformerCopy unspecializedPresentationProperties];
  }

  return unspecializedPresentationProperties;
}

@end