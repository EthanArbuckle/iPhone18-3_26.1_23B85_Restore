@interface LPMapCollectionMetadata
- (BOOL)canGeneratePresentationPropertiesForURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (LPMapCollectionMetadata)initWithCoder:(id)coder;
- (id)_bottomLine;
- (id)_resolvedImage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fallbackIconForTransformer:(id)transformer;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPMapCollectionMetadata

- (LPMapCollectionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = LPMapCollectionMetadata;
  v5 = [(LPMapCollectionMetadata *)&v26 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    v7 = *&v5->_numberOfItems;
    *&v5->_numberOfItems = v6;

    v8 = decodeNumberForKey(coderCopy, @"numberOfItems");
    *(&v5->super.__disallowsURLOverrideByDelegate + 2) = [v8 unsignedIntValue];

    v9 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    name = v5->_name;
    v5->_name = v9;

    v11 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"image"];
    icon = v5->_icon;
    v5->_icon = v11;

    v13 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"darkImage"];
    image = v5->_image;
    v5->_image = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy _lp_strictlyDecodeArrayOfObjectsOfClasses:v17 forKey:@"addresses"];
    darkImage = v5->_darkImage;
    v5->_darkImage = v18;

    v20 = decodeStringForKey(coderCopy, @"publisherName");
    addresses = v5->_addresses;
    v5->_addresses = v20;

    v22 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"publisherIcon"];
    publisherName = v5->_publisherName;
    v5->_publisherName = v22;

    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:*&self->_numberOfItems forKey:@"name"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&self->super.__disallowsURLOverrideByDelegate + 2)];
  [coderCopy _lp_encodeObjectIfNotNil:v4 forKey:@"numberOfItems"];

  [coderCopy _lp_encodeObjectIfNotNil:self->_name forKey:@"icon"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"image"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_image forKey:@"darkImage"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_darkImage forKey:@"addresses"];
  [coderCopy _lp_encodeStringIfNotNil:self->_addresses forKey:@"publisherName"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_publisherName forKey:@"publisherIcon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPMapCollectionMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(LPMapCollectionMetadata *)self name];
    [(LPMapCollectionMetadata *)v4 setName:name];

    [(LPMapCollectionMetadata *)v4 setNumberOfItems:[(LPMapCollectionMetadata *)self numberOfItems]];
    icon = [(LPMapCollectionMetadata *)self icon];
    [(LPMapCollectionMetadata *)v4 setIcon:icon];

    image = [(LPMapCollectionMetadata *)self image];
    [(LPMapCollectionMetadata *)v4 setImage:image];

    darkImage = [(LPMapCollectionMetadata *)self darkImage];
    [(LPMapCollectionMetadata *)v4 setDarkImage:darkImage];

    addresses = [(LPMapCollectionMetadata *)self addresses];
    [(LPMapCollectionMetadata *)v4 setAddresses:addresses];

    publisherName = [(LPMapCollectionMetadata *)self publisherName];
    [(LPMapCollectionMetadata *)v4 setPublisherName:publisherName];

    publisherIcon = [(LPMapCollectionMetadata *)self publisherIcon];
    [(LPMapCollectionMetadata *)v4 setPublisherIcon:publisherIcon];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPMapCollectionMetadata;
  if ([(LPMapCollectionMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], *&self->_numberOfItems) & 1) != 0 && *(v6 + 3) == *(&self->super.__disallowsURLOverrideByDelegate + 2) && objectsAreEqual_0(v6[3], self->_name) && objectsAreEqual_0(v6[6], self->_darkImage) && objectsAreEqual_0(v6[4], self->_icon) && objectsAreEqual_0(v6[5], self->_image) && objectsAreEqual_0(v6[7], self->_addresses))
      {
        v5 = objectsAreEqual_0(v6[8], self->_publisherName);
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

- (void)_enumerateAsynchronousFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"image");
  fieldsCopy[2](fieldsCopy, @"darkImage");
  fieldsCopy[2](fieldsCopy, @"icon");
  fieldsCopy[2](fieldsCopy, @"publisherIcon");
}

- (id)_resolvedImage
{
  image = [(LPMapCollectionMetadata *)self image];
  platformImage = [image platformImage];

  if (platformImage)
  {
    v5 = [LPImage alloc];
    image2 = [(LPMapCollectionMetadata *)self image];
    platformImage = [(LPImage *)v5 _initWithImage:image2];

    darkImage = [(LPMapCollectionMetadata *)self darkImage];
    [platformImage _setDarkInterfaceAlternativeImage:darkImage];
  }

  return platformImage;
}

- (id)_bottomLine
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = LPLocalizedString(@"%d Place(s)");
  v5 = [v3 localizedStringWithFormat:v4, -[LPMapCollectionMetadata numberOfItems](self, "numberOfItems")];

  publisherName = [(LPMapCollectionMetadata *)self publisherName];

  if (publisherName)
  {
    publisherName2 = [(LPMapCollectionMetadata *)self publisherName];
    v8 = joinedByDot(publisherName2, v5);
  }

  else
  {
    addresses = [(LPMapCollectionMetadata *)self addresses];
    v10 = [addresses count];

    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      addresses2 = [(LPMapCollectionMetadata *)self addresses];
      v13 = [addresses2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(addresses2);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            city = [v16 city];
            v18 = [city length];

            if (v18)
            {
              city2 = [v16 city];
              [v11 addObject:city2];
            }
          }

          v13 = [addresses2 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      if ([v11 count])
      {
        v20 = MEMORY[0x1E696AD08];
        allObjects = [v11 allObjects];
        v10 = [v20 localizedStringByJoiningStrings:allObjects];
      }

      else
      {
        v10 = 0;
      }
    }

    v8 = joinedByDot(v5, v10);
  }

  return v8;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:31];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if ([transformerCopy effectiveSizeClass] == 2 && (-[LPMapCollectionMetadata icon](self, "icon"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    image = [(LPMapCollectionMetadata *)self image];

    if (image)
    {
      _resolvedImage = [(LPMapCollectionMetadata *)self _resolvedImage];
      [transformerCopy _populateProperties:v5 withPrimaryImage:_resolvedImage];
      goto LABEL_7;
    }
  }

  _resolvedImage = [(LPMapCollectionMetadata *)self icon];
  [transformerCopy _populateProperties:v5 withPrimaryIcon:_resolvedImage];
LABEL_7:

  image2 = [v5 image];

  if (image2)
  {
    publisherIcon = [(LPMapCollectionMetadata *)self publisherIcon];
    captionBar = [v5 captionBar];
    [captionBar setTrailingIcon:publisherIcon];
  }

  else
  {
    if (!sizeClassRequiresLargeMedia([transformerCopy effectiveSizeClass]))
    {
      goto LABEL_12;
    }

    publisherIcon = +[LPResources mapIcon];
    [v5 setImage:publisherIcon];
  }

LABEL_12:
  v13 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v13 - 2) < 2)
  {
    name = [(LPMapCollectionMetadata *)self name];
    captionBar2 = [v5 captionBar];
    v20 = [captionBar2 top];
    leading = [v20 leading];
    [leading setText:name];

    _bottomLine = [(LPMapCollectionMetadata *)self _bottomLine];
    captionBar3 = [v5 captionBar];
    bottom = [captionBar3 bottom];
    leading2 = [bottom leading];
    [leading2 setText:_bottomLine];

    _bottomLine2 = LPLocalizedString(@" Maps");
    captionBar4 = [v5 captionBar];
    belowBottom = [captionBar4 belowBottom];
    leading3 = [belowBottom leading];
    [leading3 setText:_bottomLine2];
  }

  else if (v13 == 1)
  {
    name2 = [(LPMapCollectionMetadata *)self name];
    captionBar5 = [v5 captionBar];
    v28 = [captionBar5 top];
    leading4 = [v28 leading];
    [leading4 setText:name2];

    _bottomLine2 = [(LPMapCollectionMetadata *)self _bottomLine];
    captionBar4 = [v5 captionBar];
    belowBottom = [captionBar4 bottom];
    leading3 = [belowBottom leading];
    [leading3 setText:_bottomLine2];
  }

  else
  {
    if (v13)
    {
      goto LABEL_19;
    }

    _bottomLine2 = [(LPMapCollectionMetadata *)self name];
    captionBar4 = [v5 captionBar];
    belowBottom = [captionBar4 top];
    leading3 = [belowBottom leading];
    [leading3 setText:_bottomLine2];
  }

LABEL_19:

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
  name = [(LPMapCollectionMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, name];

  return v7;
}

- (id)previewImageForTransformer:(id)transformer
{
  image = [(LPMapCollectionMetadata *)self image];
  v5 = image;
  if (image)
  {
    icon = image;
  }

  else
  {
    icon = [(LPMapCollectionMetadata *)self icon];
  }

  v7 = icon;

  return v7;
}

- (id)fallbackIconForTransformer:(id)transformer
{
  v3 = [LPImage _systemImageNamed:@"mappin"];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPMapCollectionMetadata *)self name];
  [compatibilityCopy setTitle:name];

  icon = [(LPMapCollectionMetadata *)self icon];
  [compatibilityCopy setIcon:icon];

  image = [(LPMapCollectionMetadata *)self image];
  [compatibilityCopy setImage:image];
}

@end