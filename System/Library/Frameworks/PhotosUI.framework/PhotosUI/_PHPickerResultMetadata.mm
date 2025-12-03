@interface _PHPickerResultMetadata
- (BOOL)isEqual:(id)equal;
- (CGRect)acceptableCropRect;
- (CGRect)normalizedFaceAreaRect;
- (CGRect)preferredCropRect;
- (_PHPickerResultMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PHPickerResultMetadata

- (CGRect)normalizedFaceAreaRect
{
  x = self->_normalizedFaceAreaRect.origin.x;
  y = self->_normalizedFaceAreaRect.origin.y;
  width = self->_normalizedFaceAreaRect.size.width;
  height = self->_normalizedFaceAreaRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)acceptableCropRect
{
  x = self->_acceptableCropRect.origin.x;
  y = self->_acceptableCropRect.origin.y;
  width = self->_acceptableCropRect.size.width;
  height = self->_acceptableCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->_preferredCropRect.origin.x;
  y = self->_preferredCropRect.origin.y;
  width = self->_preferredCropRect.size.width;
  height = self->_preferredCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  pixelWidth = self->_pixelWidth;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:pixelWidth];
  [coderCopy encodeObject:v6 forKey:@"PHPickerResultMetadataPixelWidthKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_pixelHeight];
  [coderCopy encodeObject:v7 forKey:@"PHPickerResultMetadataPixelHeightKey"];

  [coderCopy encodeCGRect:@"PHPickerResultMetadataPreferredCropRectKey" forKey:{self->_preferredCropRect.origin.x, self->_preferredCropRect.origin.y, self->_preferredCropRect.size.width, self->_preferredCropRect.size.height}];
  [coderCopy encodeCGRect:@"PHPickerResultMetadataAcceptableCropRectKey" forKey:{self->_acceptableCropRect.origin.x, self->_acceptableCropRect.origin.y, self->_acceptableCropRect.size.width, self->_acceptableCropRect.size.height}];
  [coderCopy encodeCGRect:@"PHPickerResultMetadataNormalizedFaceAreaRectKey" forKey:{self->_normalizedFaceAreaRect.origin.x, self->_normalizedFaceAreaRect.origin.y, self->_normalizedFaceAreaRect.size.width, self->_normalizedFaceAreaRect.size.height}];
  [coderCopy encodeBool:self->_allowsItemProviderOpenInPlace forKey:@"PHPickerResultMetadataAllowsItemProviderOpenInPlaceKey"];
  [coderCopy encodeObject:self->_suggestedName forKey:@"PHPickerResultMetadataSuggestedNameKey"];
  [coderCopy encodeObject:self->_typeIdentifiers forKey:@"PHPickerResultMetadataTypeIdentifiersKey"];
  [coderCopy encodeObject:self->_filePromiseURLs forKey:@"PHPickerResultMetadataFilePromiseURLsKey"];
  [coderCopy encodeObject:self->_sandboxExtensionTokens forKey:@"PHPickerResultMetadataSandboxExtensionTokensKey"];
  [coderCopy encodeObject:self->_itemIdentifier forKey:@"PHPickerResultMetadataItemIdentifierKey"];
}

- (_PHPickerResultMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = _PHPickerResultMetadata;
  v5 = [(_PHPickerResultMetadata *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerResultMetadataPixelWidthKey"];
    v5->_pixelWidth = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerResultMetadataPixelHeightKey"];
    v5->_pixelHeight = [v7 unsignedIntegerValue];

    [coderCopy decodeCGRectForKey:@"PHPickerResultMetadataPreferredCropRectKey"];
    v5->_preferredCropRect.origin.x = v8;
    v5->_preferredCropRect.origin.y = v9;
    v5->_preferredCropRect.size.width = v10;
    v5->_preferredCropRect.size.height = v11;
    [coderCopy decodeCGRectForKey:@"PHPickerResultMetadataAcceptableCropRectKey"];
    v5->_acceptableCropRect.origin.x = v12;
    v5->_acceptableCropRect.origin.y = v13;
    v5->_acceptableCropRect.size.width = v14;
    v5->_acceptableCropRect.size.height = v15;
    [coderCopy decodeCGRectForKey:@"PHPickerResultMetadataNormalizedFaceAreaRectKey"];
    v5->_normalizedFaceAreaRect.origin.x = v16;
    v5->_normalizedFaceAreaRect.origin.y = v17;
    v5->_normalizedFaceAreaRect.size.width = v18;
    v5->_normalizedFaceAreaRect.size.height = v19;
    v5->_allowsItemProviderOpenInPlace = [coderCopy decodeBoolForKey:@"PHPickerResultMetadataAllowsItemProviderOpenInPlaceKey"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerResultMetadataSuggestedNameKey"];
    suggestedName = v5->_suggestedName;
    v5->_suggestedName = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"PHPickerResultMetadataTypeIdentifiersKey"];
    typeIdentifiers = v5->_typeIdentifiers;
    v5->_typeIdentifiers = v25;

    v27 = objc_opt_class();
    v28 = [coderCopy decodeDictionaryWithKeysOfClass:v27 objectsOfClass:objc_opt_class() forKey:@"PHPickerResultMetadataFilePromiseURLsKey"];
    filePromiseURLs = v5->_filePromiseURLs;
    v5->_filePromiseURLs = v28;

    v30 = objc_opt_class();
    v31 = [coderCopy decodeDictionaryWithKeysOfClass:v30 objectsOfClass:objc_opt_class() forKey:@"PHPickerResultMetadataSandboxExtensionTokensKey"];
    sandboxExtensionTokens = v5->_sandboxExtensionTokens;
    v5->_sandboxExtensionTokens = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerResultMetadataItemIdentifierKey"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v33;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_PHPickerResultMetadata);
  v4->_pixelWidth = self->_pixelWidth;
  v4->_pixelHeight = self->_pixelHeight;
  origin = self->_preferredCropRect.origin;
  v4->_preferredCropRect.size = self->_preferredCropRect.size;
  v4->_preferredCropRect.origin = origin;
  size = self->_acceptableCropRect.size;
  v4->_acceptableCropRect.origin = self->_acceptableCropRect.origin;
  v4->_acceptableCropRect.size = size;
  v7 = self->_normalizedFaceAreaRect.size;
  v4->_normalizedFaceAreaRect.origin = self->_normalizedFaceAreaRect.origin;
  v4->_normalizedFaceAreaRect.size = v7;
  v4->_allowsItemProviderOpenInPlace = self->_allowsItemProviderOpenInPlace;
  v8 = [(NSString *)self->_suggestedName copy];
  suggestedName = v4->_suggestedName;
  v4->_suggestedName = v8;

  v10 = [(NSOrderedSet *)self->_typeIdentifiers copy];
  typeIdentifiers = v4->_typeIdentifiers;
  v4->_typeIdentifiers = v10;

  v12 = [(NSDictionary *)self->_filePromiseURLs copy];
  filePromiseURLs = v4->_filePromiseURLs;
  v4->_filePromiseURLs = v12;

  v14 = [(NSDictionary *)self->_sandboxExtensionTokens copy];
  sandboxExtensionTokens = v4->_sandboxExtensionTokens;
  v4->_sandboxExtensionTokens = v14;

  v16 = [(NSString *)self->_itemIdentifier copy];
  itemIdentifier = v4->_itemIdentifier;
  v4->_itemIdentifier = v16;

  return v4;
}

- (unint64_t)hash
{
  width = self->_preferredCropRect.size.width;
  if (width == 0.0 || (height = self->_preferredCropRect.size.height, height == 0.0) || (height == *(MEMORY[0x1E69BDDB0] + 8) ? (v5 = width == *MEMORY[0x1E69BDDB0]) : (v5 = 0), v5))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = width * height;
  }

  v7 = self->_acceptableCropRect.size.width;
  if (v7 == 0.0 || (v8 = self->_acceptableCropRect.size.height, v8 == 0.0) || (v8 == *(MEMORY[0x1E69BDDB0] + 8) ? (v9 = v7 == *MEMORY[0x1E69BDDB0]) : (v9 = 0), v9))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7 * v8;
  }

  v11 = self->_normalizedFaceAreaRect.size.width;
  if (v11 == 0.0 || (v12 = self->_normalizedFaceAreaRect.size.height, v12 == 0.0) || (v12 == *(MEMORY[0x1E69BDDB0] + 8) ? (v13 = v11 == *MEMORY[0x1E69BDDB0]) : (v13 = 0), v13))
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11 * v12;
  }

  v15 = self->_pixelHeight - self->_pixelWidth + 32 * self->_pixelWidth;
  v16 = vcvtmd_u64_f64(v6) - v15 + 32 * v15;
  v17 = vcvtmd_u64_f64(v10) - v16 + 32 * v16;
  v18 = vcvtmd_u64_f64(v14) - v17 + 32 * v17;
  v19 = self->_allowsItemProviderOpenInPlace - v18 + 32 * v18;
  v20 = [(NSString *)self->_suggestedName hash]- v19 + 32 * v19;
  v21 = [(NSOrderedSet *)self->_typeIdentifiers hash]- v20 + 32 * v20;
  v22 = [(NSDictionary *)self->_filePromiseURLs hash]- v21 + 32 * v21;
  v23 = [(NSDictionary *)self->_sandboxExtensionTokens hash]- v22 + 32 * v22;
  return [(NSString *)self->_itemIdentifier hash]- v23 + 32 * v23 + 0x5A44E007B1A55FLL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v5 = 0x1E83F6000;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = objc_opt_class();
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          if (self->_pixelWidth != v6->_pixelWidth || self->_pixelHeight != v6->_pixelHeight || vabdd_f64(self->_preferredCropRect.origin.x, v6->_preferredCropRect.origin.x) > 0.00000999999975 || vabdd_f64(self->_preferredCropRect.origin.y, v6->_preferredCropRect.origin.y) > 0.00000999999975 || vabdd_f64(self->_preferredCropRect.size.width, v6->_preferredCropRect.size.width) > 0.00000999999975 || vabdd_f64(self->_preferredCropRect.size.height, v6->_preferredCropRect.size.height) > 0.00000999999975 || vabdd_f64(self->_acceptableCropRect.origin.x, v6->_acceptableCropRect.origin.x) > 0.00000999999975 || vabdd_f64(self->_acceptableCropRect.origin.y, v6->_acceptableCropRect.origin.y) > 0.00000999999975 || vabdd_f64(self->_acceptableCropRect.size.width, v6->_acceptableCropRect.size.width) > 0.00000999999975 || vabdd_f64(self->_acceptableCropRect.size.height, v6->_acceptableCropRect.size.height) > 0.00000999999975 || vabdd_f64(self->_normalizedFaceAreaRect.origin.x, v6->_normalizedFaceAreaRect.origin.x) > 0.00000999999975 || vabdd_f64(self->_normalizedFaceAreaRect.origin.y, v6->_normalizedFaceAreaRect.origin.y) > 0.00000999999975 || vabdd_f64(self->_normalizedFaceAreaRect.size.width, v6->_normalizedFaceAreaRect.size.width) > 0.00000999999975 || vabdd_f64(self->_normalizedFaceAreaRect.size.height, v6->_normalizedFaceAreaRect.size.height) > 0.00000999999975 || self->_allowsItemProviderOpenInPlace != v6->_allowsItemProviderOpenInPlace)
          {
            goto LABEL_39;
          }

          suggestedName = v6->_suggestedName;
          v9 = self->_suggestedName;
          v5 = v9;
          if (v9 != suggestedName)
          {
            v10 = [(NSString *)v9 isEqual:suggestedName];

            if (!v10)
            {
              goto LABEL_39;
            }

LABEL_29:
            typeIdentifiers = v6->_typeIdentifiers;
            v15 = self->_typeIdentifiers;
            v16 = v15;
            if (v15 == typeIdentifiers)
            {
            }

            else
            {
              v17 = [(NSOrderedSet *)v15 isEqual:typeIdentifiers];

              if (!v17)
              {
                goto LABEL_39;
              }
            }

            filePromiseURLs = v6->_filePromiseURLs;
            v19 = self->_filePromiseURLs;
            v20 = v19;
            if (v19 == filePromiseURLs)
            {
            }

            else
            {
              v21 = [(NSDictionary *)v19 isEqual:filePromiseURLs];

              if (!v21)
              {
                goto LABEL_39;
              }
            }

            sandboxExtensionTokens = v6->_sandboxExtensionTokens;
            v23 = self->_sandboxExtensionTokens;
            v24 = v23;
            if (v23 == sandboxExtensionTokens)
            {
            }

            else
            {
              v25 = [(NSDictionary *)v23 isEqual:sandboxExtensionTokens];

              if (!v25)
              {
LABEL_39:
                v11 = 0;
LABEL_40:

                goto LABEL_41;
              }
            }

            itemIdentifier = self->_itemIdentifier;
            v28 = v6->_itemIdentifier;
            v29 = itemIdentifier;
            v30 = v29;
            if (v29 == v28)
            {
              v11 = 1;
            }

            else
            {
              v11 = [(NSString *)v29 isEqual:v28];
            }

            goto LABEL_40;
          }

LABEL_28:

          goto LABEL_29;
        }

        v12 = objc_opt_class();
        equalCopy = NSStringFromClass(v12);
        v13 = objc_opt_class();
        NSStringFromClass(v13);
        objc_claimAutoreleasedReturnValue();
      }

      else
      {
        NSStringFromClass(v7);
        objc_claimAutoreleasedReturnValue();
      }

      _PFAssertFailHandler();
      goto LABEL_28;
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

@end