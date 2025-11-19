@interface PHTextFeature
+ (id)_momentLocalIdentifierByAssetLocalIdentifiersForAssets:(id)a3;
+ (id)_textFeaturesByMomentLocalIdentifierForMomentLocalIdentifiers:(id)a3 inPhotoLibrary:(id)a4;
+ (id)fetchTextFeaturesByAssetLocalIdentifierForAssets:(id)a3;
+ (id)stringForOrigin:(unint64_t)a3;
+ (id)stringForType:(int64_t)a3;
+ (id)textFeatureWithData:(id)a3;
+ (id)textFeatureWithType:(int64_t)a3 string:(id)a4 weight:(float)a5 origin:(unint64_t)a6;
- (PHTextFeature)initWithCoder:(id)a3;
- (PHTextFeature)initWithType:(int64_t)a3 string:(id)a4 weight:(float)a5 origin:(unint64_t)a6;
- (id)description;
- (id)encodedData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHTextFeature

- (id)description
{
  v3 = [PHTextFeature stringForType:self->_type];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"Undefined";
  }

  v6 = v5;

  v7 = [PHTextFeature stringForOrigin:self->_origin];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Undefined";
  }

  v10 = v9;

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, Type = %@, Weight = %0.2f, Origin = %@", self->_string, v6, self->_weight, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  [v6 encodeInteger:type forKey:@"type"];
  [v6 encodeObject:self->_string forKey:@"string"];
  *&v5 = self->_weight;
  [v6 encodeFloat:@"weight" forKey:v5];
  [v6 encodeInteger:self->_origin forKey:@"origin"];
}

- (PHTextFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
  [v4 decodeFloatForKey:@"weight"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"origin"];

  LODWORD(v10) = v8;
  v11 = [(PHTextFeature *)self initWithType:v5 string:v6 weight:v9 origin:v10];

  return v11;
}

- (id)encodedData
{
  v3 = [[PHTextFeatureEncoder alloc] initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  v4 = [v3 encodedData];

  return v4;
}

- (PHTextFeature)initWithType:(int64_t)a3 string:(id)a4 weight:(float)a5 origin:(unint64_t)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PHTextFeature;
  v12 = [(PHTextFeature *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_string, a4);
    v13->_type = a3;
    v13->_weight = a5;
    v13->_origin = a6;
  }

  return v13;
}

+ (id)_momentLocalIdentifierByAssetLocalIdentifiersForAssets:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [PHFetchOptions fetchOptionsWithPhotoLibrary:0 orObject:v4];

  v27[0] = @"PHAssetPropertySetIdentifier";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v5 setFetchPropertySets:v6];

  [v5 setWantsIncrementalChangeDetails:0];
  [v5 setSortDescriptors:MEMORY[0x1E695E0F0]];
  [v5 setChunkSizeForFetch:2000];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v25 = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        v15 = [PHAssetCollection fetchAssetCollectionsContainingAssets:v14 withType:3 options:v5];

        memset(v19, 0, sizeof(v19));
        if ([v15 countByEnumeratingWithState:v19 objects:v24 count:16])
        {
          v16 = [**(&v19[0] + 1) localIdentifier];
          v17 = [v13 localIdentifier];
          [v7 setObject:v16 forKeyedSubscript:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)_textFeaturesByMomentLocalIdentifierForMomentLocalIdentifiers:(id)a3 inPhotoLibrary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v16 = 0;
  v8 = [v5 requestTextFeaturesForMomentLocalIdentifiers:v6 error:&v16];

  v9 = v16;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__PHTextFeature__textFeaturesByMomentLocalIdentifierForMomentLocalIdentifiers_inPhotoLibrary___block_invoke;
  v14[3] = &unk_1E75A73E0;
  v10 = v7;
  v15 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];
  v11 = v15;
  v12 = v10;

  return v10;
}

void __94__PHTextFeature__textFeaturesByMomentLocalIdentifierForMomentLocalIdentifiers_inPhotoLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [PHTextFeature textFeatureWithData:*(*(&v14 + 1) + 8 * v12), v14];
        if (v13)
        {
          [v7 addObject:v13];
        }

        [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

+ (id)fetchTextFeaturesByAssetLocalIdentifierForAssets:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _momentLocalIdentifierByAssetLocalIdentifiersForAssets:v4];
  if ([v5 count])
  {
    v6 = [v4 firstObject];
    v7 = [v6 photoLibrary];

    v8 = [v5 allValues];
    v20 = v7;
    v9 = [a1 _textFeaturesByMomentLocalIdentifierForMomentLocalIdentifiers:v8 inPhotoLibrary:v7];

    v10 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v4;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * i) localIdentifier];
          v17 = [v5 objectForKeyedSubscript:v16];
          v18 = [v9 objectForKeyedSubscript:v17];
          [v10 setObject:v18 forKeyedSubscript:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v4 = v21;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

+ (id)stringForOrigin:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E75A74B0[a3 - 1];
  }
}

+ (id)stringForType:(int64_t)a3
{
  if (a3 > 0x15)
  {
    return 0;
  }

  else
  {
    return off_1E75A7400[a3];
  }
}

+ (id)textFeatureWithData:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v8 = 0;
  v4 = [[PHTextFeatureDecoder alloc] initForReadingFromData:v3 error:&v8];

  v5 = v8;
  if (v4)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Couldn't unarchive text feature: error %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)textFeatureWithType:(int64_t)a3 string:(id)a4 weight:(float)a5 origin:(unint64_t)a6
{
  v9 = a4;
  if ([v9 length])
  {
    v10 = [PHTextFeature alloc];
    *&v11 = a5;
    v12 = [(PHTextFeature *)v10 initWithType:a3 string:v9 weight:a6 origin:v11];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot create a PHTextFeature from an empty string", v14, 2u);
    }

    v12 = 0;
  }

  return v12;
}

@end