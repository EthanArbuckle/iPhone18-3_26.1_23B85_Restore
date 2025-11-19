@interface LPMapCollectionPublisherMetadata
- (BOOL)canGeneratePresentationPropertiesForURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LPMapCollectionPublisherMetadata)initWithCoder:(id)a3;
- (id)_guideCount;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fallbackIconForTransformer:(id)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPMapCollectionPublisherMetadata

- (LPMapCollectionPublisherMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LPMapCollectionPublisherMetadata;
  v5 = [(LPMapCollectionPublisherMetadata *)&v13 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    v7 = *&v5->_numberOfPublishedCollections;
    *&v5->_numberOfPublishedCollections = v6;

    v8 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    name = v5->_name;
    v5->_name = v8;

    v10 = decodeNumberForKey(v4, @"numberOfPublishedCollections");
    *(&v5->super.__disallowsURLOverrideByDelegate + 2) = [v10 unsignedIntValue];

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 _lp_encodeStringIfNotNil:*&self->_numberOfPublishedCollections forKey:@"name"];
  [v5 _lp_encodeObjectIfNotNil:self->_name forKey:@"icon"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&self->super.__disallowsURLOverrideByDelegate + 2)];
  [v5 _lp_encodeObjectIfNotNil:v4 forKey:@"numberOfPublishedCollections"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPMapCollectionPublisherMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPMapCollectionPublisherMetadata *)self name];
    [(LPMapCollectionPublisherMetadata *)v4 setName:v5];

    v6 = [(LPMapCollectionPublisherMetadata *)self icon];
    [(LPMapCollectionPublisherMetadata *)v4 setIcon:v6];

    [(LPMapCollectionPublisherMetadata *)v4 setNumberOfPublishedCollections:[(LPMapCollectionPublisherMetadata *)self numberOfPublishedCollections]];
    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPMapCollectionPublisherMetadata;
  if ([(LPMapCollectionPublisherMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v5 = (objectsAreEqual_0(v6[2], *&self->_numberOfPublishedCollections) & 1) != 0 && objectsAreEqual_0(v6[3], self->_name) && *(v6 + 3) == *(&self->super.__disallowsURLOverrideByDelegate + 2);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_guideCount
{
  if ([(LPMapCollectionPublisherMetadata *)self numberOfPublishedCollections])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = LPLocalizedString(@"%d Guide(s)");
    v5 = [v3 localizedStringWithFormat:v4, -[LPMapCollectionPublisherMetadata numberOfPublishedCollections](self, "numberOfPublishedCollections")];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:31];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [(LPMapCollectionPublisherMetadata *)self icon];
  [v4 _populateProperties:v5 withPrimaryIcon:v7];

  v8 = [v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v8 - 2) < 2)
  {
    v19 = [(LPMapCollectionPublisherMetadata *)self name];
    v20 = [v5 captionBar];
    v21 = [v20 top];
    v22 = [v21 leading];
    [v22 setText:v19];

    v23 = [(LPMapCollectionPublisherMetadata *)self _guideCount];
    v24 = [v5 captionBar];
    v25 = [v24 bottom];
    v26 = [v25 leading];
    [v26 setText:v23];

    v13 = LPLocalizedString(@" Maps");
    v14 = [v5 captionBar];
    v15 = [v14 belowBottom];
    v16 = [v15 leading];
    [v16 setText:v13];
  }

  else if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_8;
    }

    v9 = [(LPMapCollectionPublisherMetadata *)self name];
    v10 = [v5 captionBar];
    v11 = [v10 top];
    v12 = [v11 leading];
    [v12 setText:v9];

    v13 = LPLocalizedString(@" Maps");
    v14 = [(LPMapCollectionPublisherMetadata *)self _guideCount];
    v15 = joinedByDot(v13, v14);
    v16 = [v5 captionBar];
    v17 = [v16 bottom];
    v18 = [v17 leading];
    [v18 setText:v15];
  }

  else
  {
    v13 = [(LPMapCollectionPublisherMetadata *)self name];
    v14 = [v5 captionBar];
    v15 = [v14 top];
    v16 = [v15 leading];
    [v16 setText:v13];
  }

LABEL_8:

  return v5;
}

- (BOOL)canGeneratePresentationPropertiesForURL:(id)a3
{
  v3 = a3;
  v4 = [LPPresentationSpecializations isAppleMapsURL:v3]|| [LPPresentationSpecializations isAppleMapsCollectionURL:v3];

  return v4;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Maps Guide: %@");
  v6 = [(LPMapCollectionPublisherMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  return v7;
}

- (id)previewImageForTransformer:(id)a3
{
  v3 = [(LPMapCollectionPublisherMetadata *)self icon];

  return v3;
}

- (id)fallbackIconForTransformer:(id)a3
{
  v3 = +[LPResources mapIcon];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v6 = a3;
  v4 = [(LPMapCollectionPublisherMetadata *)self name];
  [v6 setTitle:v4];

  v5 = [(LPMapCollectionPublisherMetadata *)self icon];
  [v6 setIcon:v5];
}

@end