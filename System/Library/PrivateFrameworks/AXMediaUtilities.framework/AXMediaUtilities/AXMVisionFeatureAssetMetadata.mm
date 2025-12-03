@interface AXMVisionFeatureAssetMetadata
+ (id)assetMetadataFromURL:(id)l;
+ (id)assetMetadataFromURL:(id)l localIdentifier:(id)identifier photoLibraryURL:(id)rL;
+ (id)assetMetadataWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l creationDate:(id)date UTI:(id)i;
- (AXMVisionFeatureAssetMetadata)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionFeatureAssetMetadata

- (AXMVisionFeatureAssetMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = AXMVisionFeatureAssetMetadata;
  v5 = [(AXMVisionFeatureAssetMetadata *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyAssetURL];
    [(AXMVisionFeatureAssetMetadata *)v5 setAssetURL:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyName];
    [(AXMVisionFeatureAssetMetadata *)v5 setName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyCreationDate];
    [(AXMVisionFeatureAssetMetadata *)v5 setCreationDate:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyUTI];
    [(AXMVisionFeatureAssetMetadata *)v5 setUti:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyLocalizedTypeDescription];
    [(AXMVisionFeatureAssetMetadata *)v5 setLocalizedTypeDescription:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyTIFFImageDescription];
    [(AXMVisionFeatureAssetMetadata *)v5 setTIFFImageDescription:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyIPTCCaptionAbstract];
    [(AXMVisionFeatureAssetMetadata *)v5 setIPTCCaptionAbstract:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyEXIFUserComment];
    [(AXMVisionFeatureAssetMetadata *)v5 setEXIFUserComment:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyPNGImageDescription];
    [(AXMVisionFeatureAssetMetadata *)v5 setPNGImageDescription:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyLocalIdentifier];
    [(AXMVisionFeatureAssetMetadata *)v5 setImageAssetLocalIdentifier:v15];

    -[AXMVisionFeatureAssetMetadata setImageAssetLocallyAvailable:](v5, "setImageAssetLocallyAvailable:", [coderCopy decodeBoolForKey:AXMVisionFeatureAssetMetadataCodingKeyAssetLocallyAvailableIdentifier]);
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingkeyPhotoLibraryURL];
    [(AXMVisionFeatureAssetMetadata *)v5 setImageAssetPhotoLibraryURL:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetURL = [(AXMVisionFeatureAssetMetadata *)self assetURL];
  [coderCopy encodeObject:assetURL forKey:AXMVisionFeatureAssetMetadataCodingKeyAssetURL];

  name = [(AXMVisionFeatureAssetMetadata *)self name];
  [coderCopy encodeObject:name forKey:AXMVisionFeatureAssetMetadataCodingKeyName];

  creationDate = [(AXMVisionFeatureAssetMetadata *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:AXMVisionFeatureAssetMetadataCodingKeyCreationDate];

  v8 = [(AXMVisionFeatureAssetMetadata *)self uti];
  [coderCopy encodeObject:v8 forKey:AXMVisionFeatureAssetMetadataCodingKeyUTI];

  localizedTypeDescription = [(AXMVisionFeatureAssetMetadata *)self localizedTypeDescription];
  [coderCopy encodeObject:localizedTypeDescription forKey:AXMVisionFeatureAssetMetadataCodingKeyLocalizedTypeDescription];

  tIFFImageDescription = [(AXMVisionFeatureAssetMetadata *)self TIFFImageDescription];
  [coderCopy encodeObject:tIFFImageDescription forKey:AXMVisionFeatureAssetMetadataCodingKeyTIFFImageDescription];

  iPTCCaptionAbstract = [(AXMVisionFeatureAssetMetadata *)self IPTCCaptionAbstract];
  [coderCopy encodeObject:iPTCCaptionAbstract forKey:AXMVisionFeatureAssetMetadataCodingKeyIPTCCaptionAbstract];

  eXIFUserComment = [(AXMVisionFeatureAssetMetadata *)self EXIFUserComment];
  [coderCopy encodeObject:eXIFUserComment forKey:AXMVisionFeatureAssetMetadataCodingKeyEXIFUserComment];

  pNGImageDescription = [(AXMVisionFeatureAssetMetadata *)self PNGImageDescription];
  [coderCopy encodeObject:pNGImageDescription forKey:AXMVisionFeatureAssetMetadataCodingKeyPNGImageDescription];

  imageAssetLocalIdentifier = [(AXMVisionFeatureAssetMetadata *)self imageAssetLocalIdentifier];
  [coderCopy encodeObject:imageAssetLocalIdentifier forKey:AXMVisionFeatureAssetMetadataCodingKeyLocalIdentifier];

  imageAssetLocallyAvailable = [(AXMVisionFeatureAssetMetadata *)self imageAssetLocallyAvailable];
  [coderCopy encodeBool:imageAssetLocallyAvailable forKey:AXMVisionFeatureAssetMetadataCodingKeyAssetLocallyAvailableIdentifier];
  imageAssetPhotoLibraryURL = [(AXMVisionFeatureAssetMetadata *)self imageAssetPhotoLibraryURL];
  [coderCopy encodeObject:imageAssetPhotoLibraryURL forKey:AXMVisionFeatureAssetMetadataCodingkeyPhotoLibraryURL];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      localIdentifier = [(AXMVisionFeatureAssetMetadata *)self localIdentifier];
      localIdentifier2 = [(AXMVisionFeatureAssetMetadata *)v5 localIdentifier];
      v8 = [localIdentifier isEqual:localIdentifier2];

      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v10 = [(AXMVisionFeatureAssetMetadata *)self url];
        v11 = [(AXMVisionFeatureAssetMetadata *)v5 url];
        v9 = [v10 isEqual:v11];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(AXMVisionFeatureAssetMetadata *)self url];
  v4 = [v3 hash];
  localIdentifier = [(AXMVisionFeatureAssetMetadata *)self localIdentifier];
  v6 = [localIdentifier hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(AXMVisionFeatureAssetMetadata *)self name];
  creationDate = [(AXMVisionFeatureAssetMetadata *)self creationDate];
  v6 = [(AXMVisionFeatureAssetMetadata *)self uti];
  localizedTypeDescription = [(AXMVisionFeatureAssetMetadata *)self localizedTypeDescription];
  imageAssetLocalIdentifier = [(AXMVisionFeatureAssetMetadata *)self imageAssetLocalIdentifier];
  imageAssetLocallyAvailable = [(AXMVisionFeatureAssetMetadata *)self imageAssetLocallyAvailable];
  imageAssetPhotoLibraryURL = [(AXMVisionFeatureAssetMetadata *)self imageAssetPhotoLibraryURL];
  v11 = [v3 stringWithFormat:@"name:%@ created:%@ UTI:%@ typeDesc:%@ assetLocalIdentifier:%@ isAssetLocallyAvailable:%d photoLibraryURL:%@", name, creationDate, v6, localizedTypeDescription, imageAssetLocalIdentifier, imageAssetLocallyAvailable, imageAssetPhotoLibraryURL];

  return v11;
}

+ (id)assetMetadataFromURL:(id)l
{
  v32[5] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = objc_alloc_init(AXMVisionFeatureAssetMetadata);
  [(AXMVisionFeatureAssetMetadata *)v4 setAssetURL:lCopy];
  if (lCopy)
  {
    v5 = *MEMORY[0x1E695DC30];
    v6 = *MEMORY[0x1E695DAA8];
    v32[0] = *MEMORY[0x1E695DC30];
    v32[1] = v6;
    v7 = *MEMORY[0x1E695DC68];
    v8 = *MEMORY[0x1E695DC18];
    v32[2] = *MEMORY[0x1E695DC68];
    v32[3] = v8;
    v32[4] = *MEMORY[0x1E695DB20];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
    v31 = 0;
    v10 = [lCopy resourceValuesForKeys:v9 error:&v31];
    v11 = v31;
    if (v11)
    {
      v12 = AXMediaLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AXMModelDetectorNode evaluate:v11 metrics:v12];
      }
    }

    v13 = [v10 objectForKeyedSubscript:v5];
    [(AXMVisionFeatureAssetMetadata *)v4 setName:v13];

    v14 = [v10 objectForKeyedSubscript:v6];
    [(AXMVisionFeatureAssetMetadata *)v4 setCreationDate:v14];

    v15 = [v10 objectForKeyedSubscript:v7];
    [(AXMVisionFeatureAssetMetadata *)v4 setUti:v15];

    v16 = [v10 objectForKeyedSubscript:v8];
    [(AXMVisionFeatureAssetMetadata *)v4 setLocalizedTypeDescription:v16];

    v17 = CGImageSourceCreateWithURL(lCopy, 0);
    if (v17)
    {
      v18 = v17;
      v19 = CGImageSourceCopyPropertiesAtIndex(v17, 0, 0);
      v30 = [(__CFDictionary *)v19 objectForKey:*MEMORY[0x1E696DF28]];
      v20 = [v30 objectForKey:*MEMORY[0x1E696DF40]];
      [(AXMVisionFeatureAssetMetadata *)v4 setTIFFImageDescription:v20];

      v29 = [(__CFDictionary *)v19 objectForKey:*MEMORY[0x1E696DD90]];
      v21 = [v29 objectForKey:*MEMORY[0x1E696DD68]];
      [(AXMVisionFeatureAssetMetadata *)v4 setIPTCCaptionAbstract:v21];

      v22 = [(__CFDictionary *)v19 objectForKey:*MEMORY[0x1E696D9B0]];
      [v22 objectForKey:*MEMORY[0x1E696DB40]];
      v24 = v23 = v9;
      [(AXMVisionFeatureAssetMetadata *)v4 setEXIFUserComment:v24];

      v25 = [(__CFDictionary *)v19 objectForKey:*MEMORY[0x1E696DEB0]];
      [v25 objectForKey:*MEMORY[0x1E696DEA8]];
      v27 = v26 = v11;
      [(AXMVisionFeatureAssetMetadata *)v4 setPNGImageDescription:v27];

      v11 = v26;
      CFRelease(v18);

      v9 = v23;
    }
  }

  return v4;
}

+ (id)assetMetadataFromURL:(id)l localIdentifier:(id)identifier photoLibraryURL:(id)rL
{
  rLCopy = rL;
  identifierCopy = identifier;
  v10 = [self assetMetadataFromURL:l];
  [v10 setImageAssetLocalIdentifier:identifierCopy];

  [v10 setImageAssetLocallyAvailable:0];
  [v10 setImageAssetPhotoLibraryURL:rLCopy];

  return v10;
}

+ (id)assetMetadataWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l creationDate:(id)date UTI:(id)i
{
  lCopy = l;
  dateCopy = date;
  iCopy = i;
  identifierCopy = identifier;
  v13 = objc_alloc_init(AXMVisionFeatureAssetMetadata);
  [(AXMVisionFeatureAssetMetadata *)v13 setImageAssetLocalIdentifier:identifierCopy];

  [(AXMVisionFeatureAssetMetadata *)v13 setImageAssetLocallyAvailable:1];
  if (identifierCopy)
  {
    [(AXMVisionFeatureAssetMetadata *)v13 setCreationDate:dateCopy];
    [(AXMVisionFeatureAssetMetadata *)v13 setUti:iCopy];
    [(AXMVisionFeatureAssetMetadata *)v13 setImageAssetPhotoLibraryURL:lCopy];
  }

  return v13;
}

@end