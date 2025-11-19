@interface PHImportLibraryAsset
+ (BOOL)isValidAsSidecar:(id)a3;
- (BOOL)isSidecar;
- (PHImportLibraryAsset)initWithSource:(id)a3 url:(id)a4 type:(id)a5 supportedMediaType:(unsigned __int8)a6 uuid:(id)a7;
- (id)makeImportIdentifier;
- (id)nameKey;
- (void)configureSidecarTypeForExtension:(id)a3;
@end

@implementation PHImportLibraryAsset

+ (BOOL)isValidAsSidecar:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  v6 = [v5 uppercaseString];

  if ([v6 isEqualToString:@"PLIST"])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___PHImportLibraryAsset;
    v7 = objc_msgSendSuper2(&v9, sel_isValidAsSidecar_, v4);
  }

  return v7;
}

- (id)nameKey
{
  v3 = [(PHImportAsset *)self createdFileName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PHImportLibraryAsset;
    v5 = [(PHImportAsset *)&v8 nameKey];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isSidecar
{
  if (([(PHImportAsset *)self resourceSubType]& 0x10000) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PHImportLibraryAsset;
  return [(PHImportAsset *)&v4 isSidecar];
}

- (void)configureSidecarTypeForExtension:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"PLIST"])
  {
    [(PHImportAsset *)self setResourceType:7];
    [(PHImportAsset *)self setResourceSubType:0x10000];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PHImportLibraryAsset;
    [(PHImportAsset *)&v5 configureSidecarTypeForExtension:v4];
  }
}

- (id)makeImportIdentifier
{
  v2 = MEMORY[0x1E69BF298];
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(PHImportAsset *)self url];
  v5 = [v4 path];
  v6 = [v3 fileURLWithPath:v5];
  v7 = [v2 uuidFromURL:v6];

  return v7;
}

- (PHImportLibraryAsset)initWithSource:(id)a3 url:(id)a4 type:(id)a5 supportedMediaType:(unsigned __int8)a6 uuid:(id)a7
{
  v8 = a6;
  v12 = a4;
  v63.receiver = self;
  v63.super_class = PHImportLibraryAsset;
  v13 = [(PHImportAsset *)&v63 initWithSource:a3 url:v12 type:a5 supportedMediaType:v8 uuid:a7];
  if (v13)
  {
    v14 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v12 exists:0 includeUnknownAttributes:0];
    v61 = [v14 stringForKey:*MEMORY[0x1E69BFDF8]];
    v15 = v61;
    v16 = [MEMORY[0x1E695DF90] dictionary];
    v70[0] = 0;
    if ([v14 getUInt16:v70 forKey:*MEMORY[0x1E69BFDA0]])
    {
      v17 = v70[0] == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
      [v16 setObject:v18 forKeyedSubscript:@"importedBy"];
    }

    v19 = [v14 stringForKey:*MEMORY[0x1E69BFD90]];
    if (v19)
    {
      [v16 setObject:v19 forKeyedSubscript:@"importedByBundleIdentifier"];
    }

    v20 = [v14 stringForKey:*MEMORY[0x1E69BFD98]];
    if (v20)
    {
      [v16 setObject:v20 forKeyedSubscript:@"importedByDisplayName"];
    }

    v69 = 0;
    if ([v14 getUInt16:&v69 forKey:*MEMORY[0x1E69BFD88]])
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v69];
      [v16 setObject:v21 forKeyedSubscript:@"hidden"];
    }

    v68 = 0;
    if ([v14 getUInt16:&v68 forKey:*MEMORY[0x1E69BFD80]])
    {
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v68];
      [v16 setObject:v22 forKeyedSubscript:@"favorite"];
    }

    v67 = 0;
    if ([v14 getUInt16:&v67 forKey:*MEMORY[0x1E69BFE58]])
    {
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v67];
      [v16 setObject:v23 forKeyedSubscript:@"trashedState"];

      LOWORD(v66.value) = 0;
      [v14 getUInt16:&v66 forKey:*MEMORY[0x1E69BFE60]];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:LOWORD(v66.value)];
      [v16 setObject:v24 forKeyedSubscript:@"trashedReason"];
    }

    v25 = [v14 dataForKey:*MEMORY[0x1E69BFD78]];
    if (v25)
    {
      v66 = **&MEMORY[0x1E6960C70];
      v65 = v66;
      [MEMORY[0x1E69BE250] fromExtraDurationData:v25 getStillDisplayTime:&v66 videoDuration:&v65];
      v26 = *MEMORY[0x1E695E480];
      time = v65;
      v27 = CMTimeCopyAsDictionary(&time, v26);
      [v16 setObject:v27 forKeyedSubscript:@"photoIrisVideoDuration"];

      time = v66;
      v28 = CMTimeCopyAsDictionary(&time, v26);
      [v16 setObject:v28 forKeyedSubscript:@"photoIrisStillDisplayTime"];
    }

    LOWORD(v65.value) = 0;
    if ([v14 getUInt16:&v65 forKey:*MEMORY[0x1E69BFE70]])
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:LOWORD(v65.value)];
      [v16 setObject:v29 forKeyedSubscript:@"videoCpVisibilityState"];
    }

    v58 = v25;
    v30 = [v14 stringForKey:*MEMORY[0x1E69BFE50]];
    if (v30)
    {
      [v16 setObject:v30 forKeyedSubscript:@"title"];
    }

    v31 = [v14 stringForKey:*MEMORY[0x1E69BFD00]];
    if (v31)
    {
      [v16 setObject:v31 forKeyedSubscript:@"accessibilityDescription"];
    }

    v62 = v12;
    v32 = [v14 stringForKey:*MEMORY[0x1E69BFD70]];
    if (v32)
    {
      [v16 setObject:v32 forKeyedSubscript:@"additionalAttributes.longDescription"];
    }

    v33 = [v14 stringForKey:{*MEMORY[0x1E69BFE40], v30}];
    if (v33)
    {
      [v16 setObject:v33 forKeyedSubscript:@"additionalAttributes.timeZoneName"];
    }

    LODWORD(v66.value) = 0;
    if ([v14 getInt32:&v66 forKey:*MEMORY[0x1E69BFE48]])
    {
      v34 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(v66.value)];
      [v16 setObject:v34 forKeyedSubscript:@"additionalAttributes.timeZoneOffset"];
    }

    v59 = v13;
    v60 = v19;
    v35 = [v14 dataForKey:*MEMORY[0x1E69BFD40]];
    if (v35)
    {
      v36 = [MEMORY[0x1E696AE40] propertyListWithData:v35 options:0 format:0 error:0];
      if (v36)
      {
        v37 = v36;
        [v16 setObject:v36 forKeyedSubscript:@"dateCreated"];
      }
    }

    v38 = v20;
    v39 = [v14 dataForKey:*MEMORY[0x1E69BFE00]];
    if (v39)
    {
      [v16 setObject:v39 forKeyedSubscript:@"placeAnnotationData"];
    }

    v40 = [v14 dataForKey:*MEMORY[0x1E69BFD48]];
    if (v40)
    {
      [v16 setObject:v40 forKeyedSubscript:@"location"];
    }

    if ([v16 count])
    {
      v41 = v16;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;

    v43 = v61;
    v13 = v59;
    [(PHImportAsset *)v59 setCustomAssetProperties:v42];

    if (v43)
    {
      [(PHImportAsset *)v59 setCreatedFileName:v43];
    }

    else
    {
      v44 = [(PHImportAsset *)v59 fileName];
      [(PHImportAsset *)v59 setCreatedFileName:v44];
    }

    v45 = objc_alloc(MEMORY[0x1E69BF298]);
    v46 = [(PHImportAsset *)v59 uuid];
    v47 = [(PHImportAsset *)v59 contentType];
    v48 = [v47 identifier];
    v49 = [v45 initWithAssetUuid:v46 bundleScope:0 uti:v48 resourceVersion:1 recipeID:0];

    v50 = [(PHImportAsset *)v59 source];
    v51 = [v50 pathManager];
    v52 = [v51 readOnlyUrlWithIdentifier:v49];

    v53 = [(PHImportAsset *)v59 url];
    v54 = [v53 lastPathComponent];
    v55 = [v52 lastPathComponent];
    v59->_isPenultimate = [v54 isEqualToString:v55];

    v12 = v62;
  }

  return v13;
}

@end