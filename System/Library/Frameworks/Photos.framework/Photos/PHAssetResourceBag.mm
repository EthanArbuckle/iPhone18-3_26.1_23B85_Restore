@interface PHAssetResourceBag
+ (BOOL)_supportsAssetResourceTypes:(id)types mediaType:(int64_t *)type mediaSubtype:(unint64_t *)subtype importedBy:(signed __int16)by;
+ (id)_primaryAssetResource:(id)resource;
- (BOOL)_extractValidatedAdjustmentsURL:(id *)l fromResource:(id)resource photoLibrary:(id)library error:(id *)error;
- (BOOL)_extractValidatedAudioURL:(id *)l fromResource:(id)resource photoLibrary:(id)library error:(id *)error;
- (BOOL)_extractValidatedImageURL:(id *)l imageData:(id *)data fromResource:(id)resource photoLibrary:(id)library error:(id *)error;
- (BOOL)_extractValidatedVideoURL:(id *)l fromResource:(id)resource photoLibrary:(id)library error:(id *)error;
- (BOOL)_validateAssetResourcesForAssetCreation:(id)creation photoLibrary:(id)library error:(id *)error;
- (BOOL)hasAdjustments;
- (BOOL)validateForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (PHAssetCreationRequest)assetCreationRequest;
- (PHAssetResourceBag)initWithAssetResources:(id)resources assetCreationRequest:(id)request;
- (id)_validateAssetResourceForAssetCreation:(id)creation photoLibrary:(id)library error:(id *)error;
- (id)_validatedContextForResource:(id)resource;
- (id)assetResourceWithType:(int64_t)type;
- (id)validatedDataForAssetResource:(id)resource;
- (id)validatedURLForAssetResource:(id)resource;
@end

@implementation PHAssetResourceBag

- (PHAssetCreationRequest)assetCreationRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_assetCreationRequest);

  return WeakRetained;
}

- (id)validatedDataForAssetResource:(id)resource
{
  v3 = [(PHAssetResourceBag *)self _validatedContextForResource:resource];
  validatedData = [v3 validatedData];

  return validatedData;
}

- (id)validatedURLForAssetResource:(id)resource
{
  v3 = [(PHAssetResourceBag *)self _validatedContextForResource:resource];
  validatedURL = [v3 validatedURL];

  return validatedURL;
}

- (id)_validatedContextForResource:(id)resource
{
  resourceCopy = resource;
  assetResourceContexts = self->_assetResourceContexts;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PHAssetResourceBag__validatedContextForResource___block_invoke;
  v10[3] = &unk_1E75AA360;
  v6 = resourceCopy;
  v11 = v6;
  v7 = [(NSArray *)assetResourceContexts indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_assetResourceContexts objectAtIndexedSubscript:v7];
  }

  return v8;
}

BOOL __51__PHAssetResourceBag__validatedContextForResource___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 resource];
  v4 = v2 == v3;

  return v4;
}

- (BOOL)validateForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  if (self->_didValidateForInsertion)
  {
    v7 = 0;
    valid = self->_valid;
    p_valid = &self->_valid;
    v8 = valid;
    if (!error || v8)
    {
      goto LABEL_10;
    }

LABEL_9:
    v13 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Previous validation failed"];
    *error = v13;

    v7 = 0;
    goto LABEL_10;
  }

  assetResources = self->_assetResources;
  v16 = 0;
  v12 = [(PHAssetResourceBag *)self _validateAssetResourcesForAssetCreation:assetResources photoLibrary:libraryCopy error:&v16];
  v7 = v16;
  self->_valid = v12;
  p_valid = &self->_valid;
  *(p_valid - 1) = 1;
  if (error && !v12)
  {
    if (v7)
    {
      v7 = v7;
      *error = v7;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  v14 = *p_valid;

  return v14;
}

- (BOOL)hasAdjustments
{
  if (self->_hasCurrentAdjustment || self->_hasOriginalAdjustment)
  {
    return 1;
  }

  v3 = [(PHAssetResourceBag *)self assetResourceWithType:18];
  v2 = v3 != 0;

  return v2;
}

- (BOOL)_validateAssetResourcesForAssetCreation:(id)creation photoLibrary:(id)library error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  creationCopy = creation;
  libraryCopy = library;
  v11 = [creationCopy valueForKey:@"type"];
  v12 = objc_opt_class();
  assetCreationRequest = [(PHAssetResourceBag *)self assetCreationRequest];
  LOBYTE(v12) = [v12 _supportsAssetResourceTypes:v11 mediaType:&self->_mediaType mediaSubtype:&self->_mediaSubtype importedBy:{objc_msgSend(assetCreationRequest, "importedBy")}];

  if (v12)
  {
    v38 = a2;
    v40 = v11;
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(creationCopy, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v41 = creationCopy;
    v15 = creationCopy;
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      errorCopy = error;
      v18 = 0;
      v19 = *v44;
LABEL_4:
      v20 = 0;
      v21 = v18;
      while (1)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v43 + 1) + 8 * v20);
        v42 = v21;
        v23 = [(PHAssetResourceBag *)self _validateAssetResourceForAssetCreation:v22 photoLibrary:libraryCopy error:&v42];
        v18 = v42;

        if (!v23)
        {
          break;
        }

        [v14 addObject:v23];

        ++v20;
        v21 = v18;
        if (v17 == v20)
        {
          v17 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v17)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      v11 = v40;
      creationCopy = v41;
      error = errorCopy;
      if (errorCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    v18 = 0;
LABEL_18:

    v26 = [v14 count];
    if (v26 != [(NSArray *)self->_assetResources count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v38 object:self file:@"PHAssetResourceBag.m" lineNumber:605 description:@"expect 1-to-1 resource to validation context"];
    }

    objc_storeStrong(&self->_assetResourceContexts, v14);
    v27 = [objc_opt_class() _primaryAssetResource:v14];
    primaryResource = self->_primaryResource;
    self->_primaryResource = v27;

    v29 = [(PHAssetResourceBag *)self assetResourceWithType:7];
    v11 = v40;
    if (v29)
    {
      self->_hasCurrentAdjustment = 1;
    }

    else
    {
      v30 = [(PHAssetResourceBag *)self assetResourceWithType:18];
      if (v30)
      {
        self->_hasCurrentAdjustment = 1;
      }

      else
      {
        v31 = [(PHAssetResourceBag *)self assetResourceWithType:107];
        self->_hasCurrentAdjustment = v31 != 0;
      }
    }

    v32 = [(PHAssetResourceBag *)self assetResourceWithType:16];
    self->_hasOriginalAdjustment = v32 != 0;

    v33 = [(PHAssetResourceBag *)self assetResourceWithType:4];
    self->_hasRAW = v33 != 0;

    v34 = [(PHAssetResourceBag *)self assetResourceWithType:13];
    if (v34)
    {
      self->_hasSpatialOverCapture = 1;
    }

    else
    {
      v35 = [(PHAssetResourceBag *)self assetResourceWithType:14];
      self->_hasSpatialOverCapture = v35 != 0;
    }

    v25 = 1;
    creationCopy = v41;
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"No known asset format supports this resource combination"];
    v14 = 0;
    if (!error)
    {
LABEL_16:
      v25 = 0;
      goto LABEL_30;
    }

LABEL_12:
    if (!v18)
    {
      v18 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Unknown error: Unable to validate resource"];
    }

    v24 = v18;
    v25 = 0;
    *error = v18;
  }

LABEL_30:

  return v25;
}

- (id)_validateAssetResourceForAssetCreation:(id)creation photoLibrary:(id)library error:(id *)error
{
  creationCopy = creation;
  libraryCopy = library;
  type = [creationCopy type];
  v11 = type;
  fileURL = 0;
  v13 = 0;
  if (type > 106)
  {
    if (type > 109)
    {
      if (type == 110)
      {
LABEL_13:
        fileURL = [creationCopy fileURL];
        data = 0;
        v15 = 0;
        v17 = fileURL == 0;
LABEL_14:
        v13 = !v17;
        goto LABEL_17;
      }

      data = 0;
      v15 = 0;
      if (type != 111)
      {
        goto LABEL_17;
      }
    }

    else if (type != 107)
    {
      data = 0;
      v15 = 0;
      if (type != 108)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    fileURL = [creationCopy fileURL];
    data = [creationCopy data];
    v15 = 0;
    v17 = (fileURL | data) == 0;
    goto LABEL_14;
  }

  data = 0;
  v15 = 0;
  switch(type)
  {
    case 1:
    case 4:
    case 5:
    case 8:
    case 13:
    case 19:
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v13 = [(PHAssetResourceBag *)self _extractValidatedImageURL:&v36 imageData:&v35 fromResource:creationCopy photoLibrary:libraryCopy error:&v34];
      fileURL = v36;
      data = v35;
      v15 = v34;
      break;
    case 2:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
      v32 = 0;
      v33 = 0;
      v13 = [(PHAssetResourceBag *)self _extractValidatedVideoURL:&v33 fromResource:creationCopy photoLibrary:libraryCopy error:&v32];
      fileURL = v33;
      v16 = v32;
      goto LABEL_4;
    case 3:
      v30 = 0;
      v31 = 0;
      v13 = [(PHAssetResourceBag *)self _extractValidatedAudioURL:&v31 fromResource:creationCopy photoLibrary:libraryCopy error:&v30];
      fileURL = v31;
      v16 = v30;
      goto LABEL_4;
    case 7:
    case 16:
      v28 = 0;
      v29 = 0;
      v13 = [(PHAssetResourceBag *)self _extractValidatedAdjustmentsURL:&v29 fromResource:creationCopy photoLibrary:libraryCopy error:&v28];
      fileURL = v29;
      v16 = v28;
LABEL_4:
      v15 = v16;
      data = 0;
      break;
    case 17:
    case 18:
      goto LABEL_13;
    default:
      break;
  }

LABEL_17:
  creationOptions = [creationCopy creationOptions];
  uniformTypeIdentifier = [creationOptions uniformTypeIdentifier];

  if (v13 && uniformTypeIdentifier)
  {
    v20 = [MEMORY[0x1E6982C40] typeWithIdentifier:uniformTypeIdentifier];
    v21 = PHUniformTypeConformsToResourceType(v20, v11);

    if ((v21 & 1) == 0)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = _PHAssetResourceTypeDescription(v11);
      v24 = [v22 ph_errorWithCode:3302 localizedDescription:{@"Invalid uti '%@' specified for resource type %@", uniformTypeIdentifier, v23}];

      v15 = v24;
      goto LABEL_23;
    }

LABEL_22:
    v25 = [[PHAssetResourceValidatedContext alloc] initWithResource:creationCopy validatedURL:fileURL validatedData:data];
    goto LABEL_28;
  }

  if (v13)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (error)
  {
    if (!v15)
    {
      v15 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Unknown error: Unable to validate resource"];
    }

    v26 = v15;
    v25 = 0;
    *error = v15;
  }

  else
  {
    v25 = 0;
  }

LABEL_28:

  return v25;
}

- (BOOL)_extractValidatedAdjustmentsURL:(id *)l fromResource:(id)resource photoLibrary:(id)library error:(id *)error
{
  resourceCopy = resource;
  fileURL = [resourceCopy fileURL];
  if (fileURL)
  {
    v10 = fileURL;
    v11 = [objc_alloc(MEMORY[0x1E69C0660]) initWithURL:fileURL];

    if (v11)
    {
      v12 = 0;
      v13 = 1;
      if (!l)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    data = [resourceCopy data];

    if (data)
    {
      v15 = @"NSData unsupported for adjustments; pass a url instead";
      v16 = 3300;
    }

    else
    {
      v15 = @"Missing required adjustment data file url";
      v16 = 3303;
    }

    v12 = [MEMORY[0x1E696ABC0] ph_errorWithCode:v16 localizedDescription:v15];
    if (v12)
    {
      if (!error)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  v12 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Unable to obtain adjustment data"];
  if (!error)
  {
LABEL_15:
    v13 = 0;
    v10 = 0;
    if (!l)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v17 = v12;
  v13 = 0;
  v10 = 0;
  *error = v12;
  if (l)
  {
LABEL_12:
    v18 = v10;
    *l = v10;
  }

LABEL_13:

  return v13;
}

- (BOOL)_extractValidatedAudioURL:(id *)l fromResource:(id)resource photoLibrary:(id)library error:(id *)error
{
  resourceCopy = resource;
  fileURL = [resourceCopy fileURL];
  v10 = fileURL;
  if (fileURL)
  {
    v11 = MEMORY[0x1E69BE670];
    pathExtension = [fileURL pathExtension];
    LOBYTE(v11) = [v11 isAudioFileExtension:pathExtension];

    if (v11)
    {
      v13 = 0;
      v14 = 1;
      if (!l)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v18 = MEMORY[0x1E696ABC0];
    pathExtension2 = [v10 pathExtension];
    v13 = [v18 ph_errorWithCode:3302 localizedDescription:{@"Unsupported audio file extension: %@", pathExtension2}];
  }

  else
  {
    data = [resourceCopy data];

    if (data)
    {
      v16 = @"NSData unsupported for audio; pass a url instead";
      v17 = 3300;
    }

    else
    {
      v16 = @"Missing required audio file url";
      v17 = 3303;
    }

    v13 = [MEMORY[0x1E696ABC0] ph_errorWithCode:v17 localizedDescription:v16];
  }

  if (v13)
  {
    if (error)
    {
      goto LABEL_12;
    }

LABEL_16:
    v14 = 0;
    v10 = 0;
    if (!l)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Unable to obtain audio url"];
  if (!error)
  {
    goto LABEL_16;
  }

LABEL_12:
  v20 = v13;
  v14 = 0;
  v10 = 0;
  *error = v13;
  if (l)
  {
LABEL_13:
    v21 = v10;
    *l = v10;
  }

LABEL_14:

  return v14;
}

- (BOOL)_extractValidatedVideoURL:(id *)l fromResource:(id)resource photoLibrary:(id)library error:(id *)error
{
  resourceCopy = resource;
  libraryCopy = library;
  fileURL = [resourceCopy fileURL];
  v13 = [[_PHPhotoLibraryValidator alloc] initWithPhotoLibrary:libraryCopy];

  if (fileURL)
  {
    v29 = 0;
    v14 = [(PHValidator *)v13 validateURL:fileURL withOptions:8 error:&v29];
    v15 = v29;
    if (v14)
    {
      WeakRetained = objc_loadWeakRetained(&self->_assetCreationRequest);
      v28 = v15;
      v17 = [WeakRetained validateReadAccessForContentURL:fileURL assetResource:resourceCopy error:&v28];
      v18 = v28;

      if (v17)
      {
        v27 = v18;
        v19 = [(PHValidator *)v13 validateURL:fileURL withOptions:32 error:&v27];
        v15 = v27;

        if (v19)
        {
          v20 = 1;
          if (!l)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v15 = v18;
      }
    }
  }

  else
  {
    data = [resourceCopy data];

    if (data)
    {
      v22 = @"NSData unsupported for video; pass a url instead";
      v23 = 3300;
    }

    else
    {
      v22 = @"Missing required video url";
      v23 = 3303;
    }

    v15 = [MEMORY[0x1E696ABC0] ph_errorWithCode:v23 localizedDescription:v22];
  }

  if (v15)
  {
    if (error)
    {
      goto LABEL_14;
    }

LABEL_18:
    v20 = 0;
    fileURL = 0;
    if (!l)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Unable to obtain video url"];
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_14:
  v24 = v15;
  v20 = 0;
  fileURL = 0;
  *error = v15;
  if (l)
  {
LABEL_15:
    v25 = fileURL;
    *l = fileURL;
  }

LABEL_16:

  return v20;
}

- (BOOL)_extractValidatedImageURL:(id *)l imageData:(id *)data fromResource:(id)resource photoLibrary:(id)library error:(id *)error
{
  resourceCopy = resource;
  libraryCopy = library;
  data = [resourceCopy data];
  fileURL = [resourceCopy fileURL];
  v17 = fileURL;
  if (data && fileURL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResourceBag.m" lineNumber:377 description:@"have both image data and url; can't tell which to validate"];
  }

  type = [resourceCopy type];
  v19 = [[_PHPhotoLibraryValidator alloc] initWithPhotoLibrary:libraryCopy];

  if (!data)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    v31 = 0;
    v22 = [(PHValidator *)v19 validateURL:v17 withOptions:4 error:&v31];
    v21 = v31;
    if (!v22)
    {
      goto LABEL_15;
    }

    data = 0;
LABEL_12:
    v23 = 1;
    if (!l)
    {
      goto LABEL_19;
    }

LABEL_18:
    v27 = v17;
    *l = v17;
    goto LABEL_19;
  }

  if (type != 1 && type != 19)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = _PHAssetResourceTypeDescription(type);
    v21 = [v24 ph_errorWithCode:3300 localizedDescription:{@"NSData unsupported for resource type %@ pass a url instead", v25}];;

    goto LABEL_15;
  }

  v32 = 0;
  v20 = [(PHValidator *)v19 validateData:data withOptions:16 error:&v32];
  v21 = v32;
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_15:

  if (v21)
  {
    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  v21 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3303 localizedDescription:@"Unable to obtain image url"];
  if (error)
  {
LABEL_17:
    v26 = v21;
    v23 = 0;
    v17 = 0;
    data = 0;
    *error = v21;
    if (!l)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_23:
  v23 = 0;
  v17 = 0;
  data = 0;
  if (l)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (data)
  {
    v28 = data;
    *data = data;
  }

  return v23;
}

- (id)assetResourceWithType:(int64_t)type
{
  assetResources = self->_assetResources;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PHAssetResourceBag_assetResourceWithType___block_invoke;
  v8[3] = &__block_descriptor_40_e40_B32__0__PHExternalAssetResource_8Q16_B24l;
  v8[4] = type;
  v5 = [(NSArray *)assetResources indexOfObjectPassingTest:v8];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_assetResources objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (PHAssetResourceBag)initWithAssetResources:(id)resources assetCreationRequest:(id)request
{
  resourcesCopy = resources;
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = PHAssetResourceBag;
  v9 = [(PHAssetResourceBag *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetResources, resources);
    objc_storeWeak(&v10->_assetCreationRequest, requestCopy);
  }

  return v10;
}

+ (id)_primaryAssetResource:(id)resource
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  resourceCopy = resource;
  v4 = [resourceCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_20;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v19;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(resourceCopy);
      }

      resource = [*(*(&v18 + 1) + 8 * i) resource];
      type = [resource type];
      v12 = type;
      if ((type - 1) < 2)
      {
        goto LABEL_9;
      }

      if (type == 3)
      {

        v6 = resource;
        continue;
      }

      if (type == 19)
      {
LABEL_9:
        v13 = resource;

        v7 = v13;
      }

      if (v12 <= 0x13 && ((1 << v12) & 0x80006) != 0)
      {
        goto LABEL_20;
      }
    }

    v5 = [resourceCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v5);
LABEL_20:

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v6;
  }

  v16 = v15;

  return v15;
}

+ (BOOL)_supportsAssetResourceTypes:(id)types mediaType:(int64_t *)type mediaSubtype:(unint64_t *)subtype importedBy:(signed __int16)by
{
  v84 = *MEMORY[0x1E69E9840];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  typesCopy = types;
  v10 = [typesCopy countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v79;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v79 != v13)
        {
          objc_enumerationMutation(typesCopy);
        }

        v15 = 1 << [*(*(&v78 + 1) + 8 * i) unsignedIntegerValue];
        if ((v15 & v12) != 0)
        {

          goto LABEL_135;
        }

        v12 |= v15;
      }

      v11 = [typesCopy countByEnumeratingWithState:&v78 objects:v83 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  typeCopy = type;
  subtypeCopy = subtype;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v16 = typesCopy;
  v17 = [v16 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (!v17)
  {
    v19 = 0;
    v69 = 0;
LABEL_138:

    if (typeCopy)
    {
      *typeCopy = v19;
    }

    if (subtypeCopy)
    {
      *subtypeCopy = v69;
    }

    v53 = 1;
    goto LABEL_136;
  }

  v18 = v17;
  v19 = 0;
  v69 = 0;
  byCopy = by;
  v21 = by & 0xFFFE;
  v22 = v12 & 0x2AE0A;
  v23 = (v12 & 0x2AE0A) != 175626;
  v24 = (v12 & 0x2AE0A) != 0x2AE0A && (v12 & 0x4004) == 16388;
  v63 = v24;
  v25 = v22 == 175626;
  v26 = v22 == 175626;
  v27 = v25 || (v12 & 4) == 0;
  if ((v12 & 0xC4) == 0xC4)
  {
    v26 = 1;
  }

  if ((v12 & 0x4004) != 0x4004)
  {
    v26 = 1;
  }

  v68 = v26;
  v28 = (v12 & 0x45044) == 0x45044 || (v12 & 2) == 0;
  v29 = (v12 & 0x45044) != 282692;
  v30 = (v12 & 0x45044) != 0x45044 && (v12 & 0x2002) == 8194;
  v67 = v30;
  v31 = (v12 & 0x45044) == 0x45044 || (v12 & 0x2002) != 8194;
  v32 = (v12 & 0xC4) != 0xC4 && (v12 & 0x4004) == 16388;
  v33 = (~v12 & 0xEE00) != 0 && (v12 & 0x45044) != 282692;
  v34 = v29 & (v12 >> 1);
  if ((~v12 & 0x12) != 0)
  {
    v33 = 0;
  }

  v73 = v33;
  v35 = v12 & 0x18;
  v36 = (v12 & 0x200) == 0;
  if (v35 == 24)
  {
    v36 = 1;
    LOBYTE(v37) = 0;
  }

  else
  {
    v37 = v29 & (v12 >> 1);
  }

  v57 = v37;
  v38 = v23 & (v12 >> 6);
  if ((~v12 & 0x84) != 0)
  {
    LOBYTE(v38) = 0;
  }

  v72 = v38;
  v39 = (v12 & 0x8202) == 0x202 && v28;
  v40 = byCopy != 5 || v28;
  v61 = v40;
  v62 = v39;
  v64 = v21;
  v41 = *v75;
  v42 = v21 != 4 || v27;
  if (v21 != 4)
  {
    v28 = 1;
  }

  v43 = v23 & (v12 >> 2);
  if ((~v12 & 0x30080) != 0)
  {
    v44 = v42;
  }

  else
  {
    v44 = 1;
  }

  v60 = v44;
  v45 = (v12 & 0x80002) != 0 && (v12 & 0x45044) != 282692;
  v59 = v31 || v36;
  v71 = v29 & (v12 >> 19);
  HIDWORD(v55) = v34 | v43;
  v56 = v45;
  v46 = v27 || v32;
  v47 = (~v12 & 0xFE44) == 0 || v28;
  v58 = v47;
  v70 = v45 | v43;
  LODWORD(v55) = v46 ^ 1;
  while (2)
  {
    v48 = 0;
LABEL_67:
    if (*v75 != v41)
    {
      objc_enumerationMutation(v16);
    }

    integerValue = [*(*(&v74 + 1) + 8 * v48) integerValue];
    switch(integerValue)
    {
      case 1:
        if ((v34 & 1) == 0)
        {
          goto LABEL_134;
        }

        goto LABEL_96;
      case 2:
        if ((v43 & 1) == 0)
        {
          goto LABEL_134;
        }

        v19 = 2;
        goto LABEL_131;
      case 3:
        if (v58)
        {
          goto LABEL_134;
        }

        if (!v19)
        {
          v19 = 3;
        }

        goto LABEL_131;
      case 4:
        if (!v73)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 5:
        valid = hasValidFullSizePhoto(v12);
        goto LABEL_114;
      case 6:
      case 12:
        if ((v72 & 1) == 0)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 7:
        if (v64 == 4)
        {
          if (!HIDWORD(v55))
          {
            goto LABEL_134;
          }

LABEL_127:
          if (v67)
          {
            if ((hasValidFullSizePhoto(v12) & v68 & 1) == 0)
            {
              goto LABEL_134;
            }
          }

          else if (!v68)
          {
            goto LABEL_134;
          }

LABEL_131:
          if (v18 == ++v48)
          {
            v18 = [v16 countByEnumeratingWithState:&v74 objects:v82 count:16];
            if (!v18)
            {
              goto LABEL_138;
            }

            continue;
          }

          goto LABEL_67;
        }

        if (v56 || ((hasValidFullSizePhoto(v12) | v55) & 1) != 0)
        {
          goto LABEL_131;
        }

LABEL_134:

LABEL_135:
        v53 = 0;
LABEL_136:

        return v53;
      case 8:
        goto LABEL_113;
      case 9:
        if (v71)
        {
          if (v35 == 24)
          {
            goto LABEL_134;
          }
        }

        else if ((v57 & 1) == 0)
        {
          goto LABEL_134;
        }

        v69 = 8;
        goto LABEL_131;
      case 10:
        v51 = hasValidFullSizePhoto(v12);
        goto LABEL_109;
      case 11:
        v51 = hasValidFullSizePhoto(v12);
        if ((v12 & 0x100) == 0)
        {
          goto LABEL_134;
        }

LABEL_109:
        if (!v51 || v35 == 24)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 13:
        if (v62)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 14:
        if (!v63)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 15:
        if (v59)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 16:
        if (!v73)
        {
          goto LABEL_131;
        }

LABEL_113:
        valid = hasValidFullSizePhoto(v12);
        if ((v12 & 0x100) == 0)
        {
          goto LABEL_134;
        }

LABEL_114:
        if ((valid & 1) == 0)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 17:
        if (v61)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 18:
        if (v60)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      case 19:
        if ((v71 & 1) == 0)
        {
          goto LABEL_134;
        }

LABEL_96:
        v19 = 1;
        goto LABEL_131;
      case 20:
        goto LABEL_134;
      default:
        v50 = integerValue - 107;
        if ((integerValue - 107) > 0xC)
        {
          goto LABEL_131;
        }

        if (((1 << v50) & 0x11) != 0)
        {
          if ((v70 & 1) == 0)
          {
            goto LABEL_134;
          }

          goto LABEL_131;
        }

        if (integerValue != 110)
        {
          if (((1 << v50) & 0x1EA4) != 0)
          {
            goto LABEL_134;
          }

          goto LABEL_131;
        }

        if (v34)
        {
          if ((v12 & 0x80) == 0)
          {
            goto LABEL_134;
          }
        }

        else if ((v43 & ((v12 & 0x80) >> 7) & 1) == 0)
        {
          goto LABEL_134;
        }

        goto LABEL_127;
    }
  }
}

@end