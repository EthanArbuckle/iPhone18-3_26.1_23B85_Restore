@interface LPAppStoreStoryMetadata
- (BOOL)isEqual:(id)equal;
- (LPAppStoreStoryMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
@end

@implementation LPAppStoreStoryMetadata

- (LPAppStoreStoryMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = LPAppStoreStoryMetadata;
  v5 = [(LPAppStoreStoryMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPAppStoreStoryMetadata allocWithZone:zone];
  if (v4)
  {
    subtitle = [(LPAppStoreStoryMetadata *)self subtitle];
    [(LPAppStoreStoryMetadata *)v4 setSubtitle:subtitle];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPAppStoreStoryMetadata;
  if ([(LPAppStoreStoryMetadata *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(equalCopy[2], self->_subtitle);
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
  unspecializedPresentationProperties = [transformerCopy unspecializedPresentationProperties];
  if (([transformerCopy _rowConfigurationForStyle:{objc_msgSend(unspecializedPresentationProperties, "style")}] - 1) < 3)
  {
    subtitle = [(LPAppStoreStoryMetadata *)self subtitle];
    v7 = subtitle;
    if (!subtitle)
    {
      v7 = LPLocalizedString(@"App Store");
    }

    captionBar = [unspecializedPresentationProperties captionBar];
    bottom = [captionBar bottom];
    leading = [bottom leading];
    [leading setText:v7];

    if (!subtitle)
    {
    }
  }

  return unspecializedPresentationProperties;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"App Store: %@");
  metadata = [transformerCopy metadata];
  title = [metadata title];
  v8 = [v4 localizedStringWithFormat:v5, title];

  return v8;
}

- (id)previewImageForTransformer:(id)transformer
{
  metadata = [transformer metadata];
  image = [metadata image];

  return image;
}

@end