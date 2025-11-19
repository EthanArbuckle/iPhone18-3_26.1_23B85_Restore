@interface LPAppStoreStoryMetadata
- (BOOL)isEqual:(id)a3;
- (LPAppStoreStoryMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
@end

@implementation LPAppStoreStoryMetadata

- (LPAppStoreStoryMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LPAppStoreStoryMetadata;
  v5 = [(LPAppStoreStoryMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"subtitle");
    subtitle = v5->_subtitle;
    v5->_subtitle = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPAppStoreStoryMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPAppStoreStoryMetadata *)self subtitle];
    [(LPAppStoreStoryMetadata *)v4 setSubtitle:v5];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LPAppStoreStoryMetadata;
  if ([(LPAppStoreStoryMetadata *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(v4[2], self->_subtitle);
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
  v5 = [v4 unspecializedPresentationProperties];
  if (([v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}] - 1) < 3)
  {
    v6 = [(LPAppStoreStoryMetadata *)self subtitle];
    v7 = v6;
    if (!v6)
    {
      v7 = LPLocalizedString(@"App Store");
    }

    v8 = [v5 captionBar];
    v9 = [v8 bottom];
    v10 = [v9 leading];
    [v10 setText:v7];

    if (!v6)
    {
    }
  }

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"App Store: %@");
  v6 = [v3 metadata];
  v7 = [v6 title];
  v8 = [v4 localizedStringWithFormat:v5, v7];

  return v8;
}

- (id)previewImageForTransformer:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 image];

  return v4;
}

@end