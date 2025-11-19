@interface LPMapCollectionMetadata
- (BOOL)canGeneratePresentationPropertiesForURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LPMapCollectionMetadata)initWithCoder:(id)a3;
- (id)_bottomLine;
- (id)_resolvedImage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fallbackIconForTransformer:(id)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPMapCollectionMetadata

- (LPMapCollectionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = LPMapCollectionMetadata;
  v5 = [(LPMapCollectionMetadata *)&v26 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    v7 = *&v5->_numberOfItems;
    *&v5->_numberOfItems = v6;

    v8 = decodeNumberForKey(v4, @"numberOfItems");
    *(&v5->super.__disallowsURLOverrideByDelegate + 2) = [v8 unsignedIntValue];

    v9 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    name = v5->_name;
    v5->_name = v9;

    v11 = [v4 _lp_strictlyDecodeLPImageForKey:@"image"];
    icon = v5->_icon;
    v5->_icon = v11;

    v13 = [v4 _lp_strictlyDecodeLPImageForKey:@"darkImage"];
    image = v5->_image;
    v5->_image = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClasses:v17 forKey:@"addresses"];
    darkImage = v5->_darkImage;
    v5->_darkImage = v18;

    v20 = decodeStringForKey(v4, @"publisherName");
    addresses = v5->_addresses;
    v5->_addresses = v20;

    v22 = [v4 _lp_strictlyDecodeLPImageForKey:@"publisherIcon"];
    publisherName = v5->_publisherName;
    v5->_publisherName = v22;

    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 _lp_encodeStringIfNotNil:*&self->_numberOfItems forKey:@"name"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&self->super.__disallowsURLOverrideByDelegate + 2)];
  [v5 _lp_encodeObjectIfNotNil:v4 forKey:@"numberOfItems"];

  [v5 _lp_encodeObjectIfNotNil:self->_name forKey:@"icon"];
  [v5 _lp_encodeObjectIfNotNil:self->_icon forKey:@"image"];
  [v5 _lp_encodeObjectIfNotNil:self->_image forKey:@"darkImage"];
  [v5 _lp_encodeObjectIfNotNil:self->_darkImage forKey:@"addresses"];
  [v5 _lp_encodeStringIfNotNil:self->_addresses forKey:@"publisherName"];
  [v5 _lp_encodeObjectIfNotNil:self->_publisherName forKey:@"publisherIcon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPMapCollectionMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPMapCollectionMetadata *)self name];
    [(LPMapCollectionMetadata *)v4 setName:v5];

    [(LPMapCollectionMetadata *)v4 setNumberOfItems:[(LPMapCollectionMetadata *)self numberOfItems]];
    v6 = [(LPMapCollectionMetadata *)self icon];
    [(LPMapCollectionMetadata *)v4 setIcon:v6];

    v7 = [(LPMapCollectionMetadata *)self image];
    [(LPMapCollectionMetadata *)v4 setImage:v7];

    v8 = [(LPMapCollectionMetadata *)self darkImage];
    [(LPMapCollectionMetadata *)v4 setDarkImage:v8];

    v9 = [(LPMapCollectionMetadata *)self addresses];
    [(LPMapCollectionMetadata *)v4 setAddresses:v9];

    v10 = [(LPMapCollectionMetadata *)self publisherName];
    [(LPMapCollectionMetadata *)v4 setPublisherName:v10];

    v11 = [(LPMapCollectionMetadata *)self publisherIcon];
    [(LPMapCollectionMetadata *)v4 setPublisherIcon:v11];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPMapCollectionMetadata;
  if ([(LPMapCollectionMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = a3;
  v3[2](v3, @"image");
  v3[2](v3, @"darkImage");
  v3[2](v3, @"icon");
  v3[2](v3, @"publisherIcon");
}

- (id)_resolvedImage
{
  v3 = [(LPMapCollectionMetadata *)self image];
  v4 = [v3 platformImage];

  if (v4)
  {
    v5 = [LPImage alloc];
    v6 = [(LPMapCollectionMetadata *)self image];
    v4 = [(LPImage *)v5 _initWithImage:v6];

    v7 = [(LPMapCollectionMetadata *)self darkImage];
    [v4 _setDarkInterfaceAlternativeImage:v7];
  }

  return v4;
}

- (id)_bottomLine
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = LPLocalizedString(@"%d Place(s)");
  v5 = [v3 localizedStringWithFormat:v4, -[LPMapCollectionMetadata numberOfItems](self, "numberOfItems")];

  v6 = [(LPMapCollectionMetadata *)self publisherName];

  if (v6)
  {
    v7 = [(LPMapCollectionMetadata *)self publisherName];
    v8 = joinedByDot(v7, v5);
  }

  else
  {
    v9 = [(LPMapCollectionMetadata *)self addresses];
    v10 = [v9 count];

    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = [(LPMapCollectionMetadata *)self addresses];
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [v16 city];
            v18 = [v17 length];

            if (v18)
            {
              v19 = [v16 city];
              [v11 addObject:v19];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      if ([v11 count])
      {
        v20 = MEMORY[0x1E696AD08];
        v21 = [v11 allObjects];
        v10 = [v20 localizedStringByJoiningStrings:v21];
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:31];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if ([v4 effectiveSizeClass] == 2 && (-[LPMapCollectionMetadata icon](self, "icon"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v8 = [(LPMapCollectionMetadata *)self image];

    if (v8)
    {
      v9 = [(LPMapCollectionMetadata *)self _resolvedImage];
      [v4 _populateProperties:v5 withPrimaryImage:v9];
      goto LABEL_7;
    }
  }

  v9 = [(LPMapCollectionMetadata *)self icon];
  [v4 _populateProperties:v5 withPrimaryIcon:v9];
LABEL_7:

  v10 = [v5 image];

  if (v10)
  {
    v11 = [(LPMapCollectionMetadata *)self publisherIcon];
    v12 = [v5 captionBar];
    [v12 setTrailingIcon:v11];
  }

  else
  {
    if (!sizeClassRequiresLargeMedia([v4 effectiveSizeClass]))
    {
      goto LABEL_12;
    }

    v11 = +[LPResources mapIcon];
    [v5 setImage:v11];
  }

LABEL_12:
  v13 = [v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v13 - 2) < 2)
  {
    v18 = [(LPMapCollectionMetadata *)self name];
    v19 = [v5 captionBar];
    v20 = [v19 top];
    v21 = [v20 leading];
    [v21 setText:v18];

    v22 = [(LPMapCollectionMetadata *)self _bottomLine];
    v23 = [v5 captionBar];
    v24 = [v23 bottom];
    v25 = [v24 leading];
    [v25 setText:v22];

    v14 = LPLocalizedString(@" Maps");
    v15 = [v5 captionBar];
    v16 = [v15 belowBottom];
    v17 = [v16 leading];
    [v17 setText:v14];
  }

  else if (v13 == 1)
  {
    v26 = [(LPMapCollectionMetadata *)self name];
    v27 = [v5 captionBar];
    v28 = [v27 top];
    v29 = [v28 leading];
    [v29 setText:v26];

    v14 = [(LPMapCollectionMetadata *)self _bottomLine];
    v15 = [v5 captionBar];
    v16 = [v15 bottom];
    v17 = [v16 leading];
    [v17 setText:v14];
  }

  else
  {
    if (v13)
    {
      goto LABEL_19;
    }

    v14 = [(LPMapCollectionMetadata *)self name];
    v15 = [v5 captionBar];
    v16 = [v15 top];
    v17 = [v16 leading];
    [v17 setText:v14];
  }

LABEL_19:

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
  v6 = [(LPMapCollectionMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  return v7;
}

- (id)previewImageForTransformer:(id)a3
{
  v4 = [(LPMapCollectionMetadata *)self image];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(LPMapCollectionMetadata *)self icon];
  }

  v7 = v6;

  return v7;
}

- (id)fallbackIconForTransformer:(id)a3
{
  v3 = [LPImage _systemImageNamed:@"mappin"];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v7 = a3;
  v4 = [(LPMapCollectionMetadata *)self name];
  [v7 setTitle:v4];

  v5 = [(LPMapCollectionMetadata *)self icon];
  [v7 setIcon:v5];

  v6 = [(LPMapCollectionMetadata *)self image];
  [v7 setImage:v6];
}

@end