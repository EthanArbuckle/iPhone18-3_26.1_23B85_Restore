@interface LPBusinessChatMetadata
- (BOOL)isEqual:(id)equal;
- (LPBusinessChatMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
@end

@implementation LPBusinessChatMetadata

- (LPBusinessChatMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = LPBusinessChatMetadata;
  v5 = [(LPBusinessChatMetadata *)&v10 init];
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
  v4 = [LPBusinessChatMetadata allocWithZone:zone];
  if (v4)
  {
    subtitle = [(LPBusinessChatMetadata *)self subtitle];
    [(LPBusinessChatMetadata *)v4 setSubtitle:subtitle];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPBusinessChatMetadata;
  if ([(LPBusinessChatMetadata *)&v7 isEqual:equalCopy])
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
  unspecializedPresentationProperties = [transformer unspecializedPresentationProperties];
  subtitle = [(LPBusinessChatMetadata *)self subtitle];

  if (subtitle)
  {
    subtitle2 = [(LPBusinessChatMetadata *)self subtitle];
    captionBar = [unspecializedPresentationProperties captionBar];
    bottom = [captionBar bottom];
    leading = [bottom leading];
    [leading setText:subtitle2];
  }

  return unspecializedPresentationProperties;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  transformerCopy = transformer;
  metadata = [transformerCopy metadata];
  title = [metadata title];
  if ([title length])
  {
    subtitle = [(LPBusinessChatMetadata *)self subtitle];
    v8 = [subtitle length];

    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      metadata4 = LPLocalizedString(@"%@: %@");
      subtitle2 = [(LPBusinessChatMetadata *)self subtitle];
      metadata2 = [transformerCopy metadata];
      title2 = [metadata2 title];
      title4 = [v9 localizedStringWithFormat:metadata4, subtitle2, title2];

      goto LABEL_7;
    }
  }

  else
  {
  }

  metadata3 = [transformerCopy metadata];
  title3 = [metadata3 title];
  v17 = [title3 length];

  if (!v17)
  {
    subtitle3 = [(LPBusinessChatMetadata *)self subtitle];
    v19 = [subtitle3 length];

    if (v19)
    {
      [(LPBusinessChatMetadata *)self subtitle];
    }

    else
    {
      LPLocalizedString(@"Messages for Business");
    }
    title4 = ;
    goto LABEL_12;
  }

  metadata4 = [transformerCopy metadata];
  title4 = [metadata4 title];
LABEL_7:

LABEL_12:

  return title4;
}

@end