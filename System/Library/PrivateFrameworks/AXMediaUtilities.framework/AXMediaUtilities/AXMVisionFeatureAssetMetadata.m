@interface AXMVisionFeatureAssetMetadata
+ (id)assetMetadataFromURL:(id)a3;
+ (id)assetMetadataFromURL:(id)a3 localIdentifier:(id)a4 photoLibraryURL:(id)a5;
+ (id)assetMetadataWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 creationDate:(id)a5 UTI:(id)a6;
- (AXMVisionFeatureAssetMetadata)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMVisionFeatureAssetMetadata

- (AXMVisionFeatureAssetMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AXMVisionFeatureAssetMetadata;
  v5 = [(AXMVisionFeatureAssetMetadata *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyAssetURL];
    [(AXMVisionFeatureAssetMetadata *)v5 setAssetURL:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyName];
    [(AXMVisionFeatureAssetMetadata *)v5 setName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyCreationDate];
    [(AXMVisionFeatureAssetMetadata *)v5 setCreationDate:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyUTI];
    [(AXMVisionFeatureAssetMetadata *)v5 setUti:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyLocalizedTypeDescription];
    [(AXMVisionFeatureAssetMetadata *)v5 setLocalizedTypeDescription:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyTIFFImageDescription];
    [(AXMVisionFeatureAssetMetadata *)v5 setTIFFImageDescription:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyIPTCCaptionAbstract];
    [(AXMVisionFeatureAssetMetadata *)v5 setIPTCCaptionAbstract:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyEXIFUserComment];
    [(AXMVisionFeatureAssetMetadata *)v5 setEXIFUserComment:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyPNGImageDescription];
    [(AXMVisionFeatureAssetMetadata *)v5 setPNGImageDescription:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingKeyLocalIdentifier];
    [(AXMVisionFeatureAssetMetadata *)v5 setImageAssetLocalIdentifier:v15];

    -[AXMVisionFeatureAssetMetadata setImageAssetLocallyAvailable:](v5, "setImageAssetLocallyAvailable:", [v4 decodeBoolForKey:AXMVisionFeatureAssetMetadataCodingKeyAssetLocallyAvailableIdentifier]);
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureAssetMetadataCodingkeyPhotoLibraryURL];
    [(AXMVisionFeatureAssetMetadata *)v5 setImageAssetPhotoLibraryURL:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionFeatureAssetMetadata *)self assetURL];
  [v4 encodeObject:v5 forKey:AXMVisionFeatureAssetMetadataCodingKeyAssetURL];

  v6 = [(AXMVisionFeatureAssetMetadata *)self name];
  [v4 encodeObject:v6 forKey:AXMVisionFeatureAssetMetadataCodingKeyName];

  v7 = [(AXMVisionFeatureAssetMetadata *)self creationDate];
  [v4 encodeObject:v7 forKey:AXMVisionFeatureAssetMetadataCodingKeyCreationDate];

  v8 = [(AXMVisionFeatureAssetMetadata *)self uti];
  [v4 encodeObject:v8 forKey:AXMVisionFeatureAssetMetadataCodingKeyUTI];

  v9 = [(AXMVisionFeatureAssetMetadata *)self localizedTypeDescription];
  [v4 encodeObject:v9 forKey:AXMVisionFeatureAssetMetadataCodingKeyLocalizedTypeDescription];

  v10 = [(AXMVisionFeatureAssetMetadata *)self TIFFImageDescription];
  [v4 encodeObject:v10 forKey:AXMVisionFeatureAssetMetadataCodingKeyTIFFImageDescription];

  v11 = [(AXMVisionFeatureAssetMetadata *)self IPTCCaptionAbstract];
  [v4 encodeObject:v11 forKey:AXMVisionFeatureAssetMetadataCodingKeyIPTCCaptionAbstract];

  v12 = [(AXMVisionFeatureAssetMetadata *)self EXIFUserComment];
  [v4 encodeObject:v12 forKey:AXMVisionFeatureAssetMetadataCodingKeyEXIFUserComment];

  v13 = [(AXMVisionFeatureAssetMetadata *)self PNGImageDescription];
  [v4 encodeObject:v13 forKey:AXMVisionFeatureAssetMetadataCodingKeyPNGImageDescription];

  v14 = [(AXMVisionFeatureAssetMetadata *)self imageAssetLocalIdentifier];
  [v4 encodeObject:v14 forKey:AXMVisionFeatureAssetMetadataCodingKeyLocalIdentifier];

  v15 = [(AXMVisionFeatureAssetMetadata *)self imageAssetLocallyAvailable];
  [v4 encodeBool:v15 forKey:AXMVisionFeatureAssetMetadataCodingKeyAssetLocallyAvailableIdentifier];
  v16 = [(AXMVisionFeatureAssetMetadata *)self imageAssetPhotoLibraryURL];
  [v4 encodeObject:v16 forKey:AXMVisionFeatureAssetMetadataCodingkeyPhotoLibraryURL];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXMVisionFeatureAssetMetadata *)self localIdentifier];
      v7 = [(AXMVisionFeatureAssetMetadata *)v5 localIdentifier];
      v8 = [v6 isEqual:v7];

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
  v5 = [(AXMVisionFeatureAssetMetadata *)self localIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXMVisionFeatureAssetMetadata *)self name];
  v5 = [(AXMVisionFeatureAssetMetadata *)self creationDate];
  v6 = [(AXMVisionFeatureAssetMetadata *)self uti];
  v7 = [(AXMVisionFeatureAssetMetadata *)self localizedTypeDescription];
  v8 = [(AXMVisionFeatureAssetMetadata *)self imageAssetLocalIdentifier];
  v9 = [(AXMVisionFeatureAssetMetadata *)self imageAssetLocallyAvailable];
  v10 = [(AXMVisionFeatureAssetMetadata *)self imageAssetPhotoLibraryURL];
  v11 = [v3 stringWithFormat:@"name:%@ created:%@ UTI:%@ typeDesc:%@ assetLocalIdentifier:%@ isAssetLocallyAvailable:%d photoLibraryURL:%@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

+ (id)assetMetadataFromURL:(id)a3
{
  v32[5] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(AXMVisionFeatureAssetMetadata);
  [(AXMVisionFeatureAssetMetadata *)v4 setAssetURL:v3];
  if (v3)
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
    v10 = [v3 resourceValuesForKeys:v9 error:&v31];
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

    v17 = CGImageSourceCreateWithURL(v3, 0);
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

+ (id)assetMetadataFromURL:(id)a3 localIdentifier:(id)a4 photoLibraryURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 assetMetadataFromURL:a3];
  [v10 setImageAssetLocalIdentifier:v9];

  [v10 setImageAssetLocallyAvailable:0];
  [v10 setImageAssetPhotoLibraryURL:v8];

  return v10;
}

+ (id)assetMetadataWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 creationDate:(id)a5 UTI:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = objc_alloc_init(AXMVisionFeatureAssetMetadata);
  [(AXMVisionFeatureAssetMetadata *)v13 setImageAssetLocalIdentifier:v12];

  [(AXMVisionFeatureAssetMetadata *)v13 setImageAssetLocallyAvailable:1];
  if (v12)
  {
    [(AXMVisionFeatureAssetMetadata *)v13 setCreationDate:v10];
    [(AXMVisionFeatureAssetMetadata *)v13 setUti:v11];
    [(AXMVisionFeatureAssetMetadata *)v13 setImageAssetPhotoLibraryURL:v9];
  }

  return v13;
}

@end