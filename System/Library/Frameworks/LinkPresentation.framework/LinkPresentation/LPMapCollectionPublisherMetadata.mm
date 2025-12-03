@interface LPMapCollectionPublisherMetadata
- (BOOL)canGeneratePresentationPropertiesForURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (LPMapCollectionPublisherMetadata)initWithCoder:(id)coder;
- (id)_guideCount;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fallbackIconForTransformer:(id)transformer;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPMapCollectionPublisherMetadata

- (LPMapCollectionPublisherMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = LPMapCollectionPublisherMetadata;
  v5 = [(LPMapCollectionPublisherMetadata *)&v13 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    v7 = *&v5->_numberOfPublishedCollections;
    *&v5->_numberOfPublishedCollections = v6;

    v8 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    name = v5->_name;
    v5->_name = v8;

    v10 = decodeNumberForKey(coderCopy, @"numberOfPublishedCollections");
    *(&v5->super.__disallowsURLOverrideByDelegate + 2) = [v10 unsignedIntValue];

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:*&self->_numberOfPublishedCollections forKey:@"name"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_name forKey:@"icon"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&self->super.__disallowsURLOverrideByDelegate + 2)];
  [coderCopy _lp_encodeObjectIfNotNil:v4 forKey:@"numberOfPublishedCollections"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPMapCollectionPublisherMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(LPMapCollectionPublisherMetadata *)self name];
    [(LPMapCollectionPublisherMetadata *)v4 setName:name];

    icon = [(LPMapCollectionPublisherMetadata *)self icon];
    [(LPMapCollectionPublisherMetadata *)v4 setIcon:icon];

    [(LPMapCollectionPublisherMetadata *)v4 setNumberOfPublishedCollections:[(LPMapCollectionPublisherMetadata *)self numberOfPublishedCollections]];
    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPMapCollectionPublisherMetadata;
  if ([(LPMapCollectionPublisherMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:31];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  icon = [(LPMapCollectionPublisherMetadata *)self icon];
  [transformerCopy _populateProperties:v5 withPrimaryIcon:icon];

  v8 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v8 - 2) < 2)
  {
    name = [(LPMapCollectionPublisherMetadata *)self name];
    captionBar = [v5 captionBar];
    v21 = [captionBar top];
    leading = [v21 leading];
    [leading setText:name];

    _guideCount = [(LPMapCollectionPublisherMetadata *)self _guideCount];
    captionBar2 = [v5 captionBar];
    bottom = [captionBar2 bottom];
    leading2 = [bottom leading];
    [leading2 setText:_guideCount];

    name3 = LPLocalizedString(@" Maps");
    captionBar3 = [v5 captionBar];
    belowBottom = [captionBar3 belowBottom];
    leading3 = [belowBottom leading];
    [leading3 setText:name3];
  }

  else if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_8;
    }

    name2 = [(LPMapCollectionPublisherMetadata *)self name];
    captionBar4 = [v5 captionBar];
    v11 = [captionBar4 top];
    leading4 = [v11 leading];
    [leading4 setText:name2];

    name3 = LPLocalizedString(@" Maps");
    captionBar3 = [(LPMapCollectionPublisherMetadata *)self _guideCount];
    belowBottom = joinedByDot(name3, captionBar3);
    leading3 = [v5 captionBar];
    bottom2 = [leading3 bottom];
    leading5 = [bottom2 leading];
    [leading5 setText:belowBottom];
  }

  else
  {
    name3 = [(LPMapCollectionPublisherMetadata *)self name];
    captionBar3 = [v5 captionBar];
    belowBottom = [captionBar3 top];
    leading3 = [belowBottom leading];
    [leading3 setText:name3];
  }

LABEL_8:

  return v5;
}

- (BOOL)canGeneratePresentationPropertiesForURL:(id)l
{
  lCopy = l;
  v4 = [LPPresentationSpecializations isAppleMapsURL:lCopy]|| [LPPresentationSpecializations isAppleMapsCollectionURL:lCopy];

  return v4;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Maps Guide: %@");
  name = [(LPMapCollectionPublisherMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, name];

  return v7;
}

- (id)previewImageForTransformer:(id)transformer
{
  icon = [(LPMapCollectionPublisherMetadata *)self icon];

  return icon;
}

- (id)fallbackIconForTransformer:(id)transformer
{
  v3 = +[LPResources mapIcon];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPMapCollectionPublisherMetadata *)self name];
  [compatibilityCopy setTitle:name];

  icon = [(LPMapCollectionPublisherMetadata *)self icon];
  [compatibilityCopy setIcon:icon];
}

@end