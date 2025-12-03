@interface MPExportableArtworkProperties
- (BOOL)isEqual:(id)equal;
- (ICStoreArtworkInfo)artworkInfo;
- (MPExportableArtworkProperties)initWithJSONRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonRepresentation;
@end

@implementation MPExportableArtworkProperties

- (id)jsonRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_artworkTemplateItems count])
  {
    firstObject = [(NSArray *)self->_artworkTemplateItems firstObject];
  }

  else if ([(NSString *)self->_resolvedURLString length])
  {
    resolvedURLString = self->_resolvedURLString;
    v6 = @"url";
    v7[0] = resolvedURLString;
    firstObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    firstObject = MEMORY[0x1E695E0F8];
  }

  return firstObject;
}

- (ICStoreArtworkInfo)artworkInfo
{
  artworkTemplateItems = [(MPExportableArtworkProperties *)self artworkTemplateItems];
  v4 = [artworkTemplateItems count];

  if (v4 >= 2)
  {
    v5 = objc_alloc(MEMORY[0x1E69E45C0]);
    artworkTemplateItems2 = [(MPExportableArtworkProperties *)self artworkTemplateItems];
    v7 = [v5 initWithArtworkResponseArray:artworkTemplateItems2];
LABEL_8:

    goto LABEL_9;
  }

  artworkTemplateItems3 = [(MPExportableArtworkProperties *)self artworkTemplateItems];
  v9 = [artworkTemplateItems3 count];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69E45C0]);
    artworkTemplateItems2 = [(MPExportableArtworkProperties *)self artworkTemplateItems];
    firstObject = [artworkTemplateItems2 firstObject];
    v12 = [v10 initWithArtworkResponseDictionary:firstObject];
LABEL_7:
    v7 = v12;

    goto LABEL_8;
  }

  resolvedURLString = [(MPExportableArtworkProperties *)self resolvedURLString];
  v14 = [resolvedURLString length];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69E45C0]);
    v16 = MEMORY[0x1E695DFF8];
    artworkTemplateItems2 = [(MPExportableArtworkProperties *)self resolvedURLString];
    firstObject = [v16 URLWithString:artworkTemplateItems2];
    v12 = [v15 initWithArtworkURL:firstObject];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p resolvedURL:%@ artworkTemplateItems:%@ mediaType:%ld artworkType:%ld>", v5, self, self->_resolvedURLString, self->_artworkTemplateItems, self->_mediaType, self->_mediaLibraryArtworkType];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(NSString *)self->_resolvedURLString isEqualToString:v5->_resolvedURLString]&& [(NSArray *)self->_artworkTemplateItems isEqual:v5->_artworkTemplateItems]&& self->_mediaType == v5->_mediaType && self->_mediaLibraryArtworkType == v5->_mediaLibraryArtworkType;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MPExportableArtworkProperties);
  resolvedURLString = [(MPExportableArtworkProperties *)self resolvedURLString];
  [(MPExportableArtworkProperties *)v4 setResolvedURLString:resolvedURLString];

  artworkTemplateItems = [(MPExportableArtworkProperties *)self artworkTemplateItems];
  [(MPExportableArtworkProperties *)v4 setArtworkTemplateItems:artworkTemplateItems];

  [(MPExportableArtworkProperties *)v4 setMediaType:[(MPExportableArtworkProperties *)self mediaType]];
  [(MPExportableArtworkProperties *)v4 setMediaLibraryArtworkType:[(MPExportableArtworkProperties *)self mediaLibraryArtworkType]];
  return v4;
}

- (MPExportableArtworkProperties)initWithJSONRepresentation:(id)representation
{
  v14[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = MPExportableArtworkProperties;
  v5 = [(MPExportableArtworkProperties *)&v13 init];
  if (v5)
  {
    if (_NSIsNSDictionary())
    {
      v6 = representationCopy;
      v7 = [v6 objectForKeyedSubscript:@"url"];
      if ([v7 length])
      {
        if ([v7 containsString:@"{"] && objc_msgSend(v7, "containsString:", @"}"))
        {
          v14[0] = v6;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
          artworkTemplateItems = v5->_artworkTemplateItems;
          v5->_artworkTemplateItems = v8;
        }

        else
        {
          v10 = v7;
          artworkTemplateItems = v5->_resolvedURLString;
          v5->_resolvedURLString = v10;
        }

        goto LABEL_9;
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v11 = v5;
LABEL_12:

  return v11;
}

@end