@interface ARSpatialMappingResultData
+ (id)emptyResultData;
- (ARSpatialMappingResultData)initWithMeshChunks:(id)a3;
- (ARSpatialMappingResultData)initWithMeshList:(CV3DReconMeshList *)a3 sceneReconstruction:(unint64_t)a4 timestamp:(double)a5;
- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(double)a6;
- (id)anchorsFromMeshChunksForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(double)a6;
- (id)anchorsFromMeshListForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6;
- (void)dealloc;
- (void)updateSemanticsFromSamplingData:(__CFData *)a3;
@end

@implementation ARSpatialMappingResultData

+ (id)emptyResultData
{
  v2 = objc_opt_new();
  [v2 setEmpty:1];

  return v2;
}

- (ARSpatialMappingResultData)initWithMeshChunks:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARSpatialMappingResultData;
  v6 = [(ARSpatialMappingResultData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_meshChunks, a3);
  }

  return v7;
}

- (ARSpatialMappingResultData)initWithMeshList:(CV3DReconMeshList *)a3 sceneReconstruction:(unint64_t)a4 timestamp:(double)a5
{
  v13.receiver = self;
  v13.super_class = ARSpatialMappingResultData;
  v8 = [(ARSpatialMappingResultData *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_meshList = a3;
    v8->_sceneReconstruction = a4;
    v8->_timestamp = a5;
    v10 = MTLCreateSystemDefaultDevice();
    mtlDevice = v9->_mtlDevice;
    v9->_mtlDevice = v10;

    v9->_meshConfidenceEnabled = 0;
  }

  return v9;
}

- (void)updateSemanticsFromSamplingData:(__CFData *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a3);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(ARSpatialMappingResultData *)self meshChunks];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 faceCount];
        std::vector<unsigned char>::vector[abi:ne200100](&v16, v11);
        if (v11)
        {
          for (j = 0; j != v11; ++j)
          {
            *(v16 + j) = ARMeshClassificationFromSemantic(BytePtr[v7 + j]);
          }

          v7 += j;
        }

        __p = 0;
        v14 = 0;
        v15 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v16, v17, v17 - v16);
        [v10 setSemanticsVector:&__p];
        if (__p)
        {
          v14 = __p;
          operator delete(__p);
        }

        if (v16)
        {
          v17 = v16;
          operator delete(v16);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(double)a6
{
  v14 = a11;
  v15 = a12;
  if ([a1 isEmpty])
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
    v17 = [v14 filteredArrayUsingPredicate:v16];
    [v15 addObjectsFromArray:v17];

    v18 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (a1[3])
    {
      [a1 anchorsFromMeshListForCameraWithTransform:v14 referenceOriginTransform:v15 existingAnchors:a2 anchorsToRemove:{a3, a4, a5, a6, a7, a8, a9}];
    }

    else
    {
      [a1 anchorsFromMeshChunksForCameraWithTransform:v14 referenceOriginTransform:v15 existingAnchors:a2 anchorsToRemove:{a3, a4, a5, a6, a7, a8, a9}];
    }
    v18 = ;
  }

  return v18;
}

- (id)anchorsFromMeshChunksForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(double)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = a11;
  v15 = a12;
  v30 = v14;
  v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
  v16 = [v14 filteredArrayUsingPredicate:?];
  v17 = ARDictionaryFromAnchors(v16);

  v18 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = [a1 meshChunks];
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v20)
  {
    v21 = *v37;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        v24 = [v23 identifier];
        v25 = [v17 objectForKeyedSubscript:v24];

        v26 = [v23 anchorForReferenceOriginTransform:{a6, a7, a8, a9}];
        v27 = v26;
        if (v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 0;
        }

        if (v28)
        {
          [v15 addObject:v25];
        }

        else if (v26)
        {
          [v18 addObject:v26];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v20);
  }

  return v18;
}

- (id)anchorsFromMeshListForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6
{
  v65 = *MEMORY[0x1E69E9840];
  v50 = a11;
  v49 = a12;
  v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
  v14 = [v50 filteredArrayUsingPredicate:?];
  v51 = ARDictionaryFromAnchors(v14);

  v48 = objc_opt_new();
  v56 = 0;
  Count = CV3DReconMeshListGetCount();
  if (Count)
  {
    for (i = 0; Count != i; ++i)
    {
      MeshUUIDAtIndex = CV3DReconMeshListGetMeshUUIDAtIndex();
      if (v56)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARSpatialMappingResultData anchorsFromMeshListForCameraWithTransform:referenceOriginTransform:existingAnchors:anchorsToRemove:];
        }

        v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v19 = _ARLogGeneral();
        v20 = v19;
        if (v18 == 1)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = v56;
            *buf = 138544130;
            v58 = v22;
            v59 = 2048;
            v60 = a1;
            v61 = 2048;
            v62 = i;
            v63 = 2112;
            v64 = v56;
            _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting mesh at index %ld: %@", buf, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = v56;
          *buf = 138544130;
          v58 = v32;
          v59 = 2048;
          v60 = a1;
          v61 = 2048;
          v62 = i;
          v63 = 2112;
          v64 = v56;
          _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting mesh at index %ld: %@", buf, 0x2Au);
        }
      }

      else
      {
        v24 = MeshUUIDAtIndex;
        v25 = CV3DReconMeshListCopyMeshAtIndex();
        if (!v56)
        {
          v34 = v25;
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v53 = __129__ARSpatialMappingResultData_anchorsFromMeshListForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove___block_invoke;
          v54 = &__block_descriptor_40_e5_v8__0l;
          v55 = v25;
          v35 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:v24];
          CFRelease(v24);
          v36 = [v51 objectForKeyedSubscript:v35];
          v37 = ARMeshAnchorFromMesh(*(a1 + 48), v34, v35, v36, *(a1 + 32), *(a1 + 9), a6, a7, a8, a9, *(a1 + 40));
          v38 = v37;
          if (!v36 || v37)
          {
            if (v37)
            {
              [v48 addObject:v37];
            }
          }

          else
          {
            [v49 addObject:v36];
          }

          v53(v52);
          continue;
        }

        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARSpatialMappingResultData anchorsFromMeshListForCameraWithTransform:referenceOriginTransform:existingAnchors:anchorsToRemove:];
        }

        v26 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v27 = _ARLogGeneral();
        v20 = v27;
        if (v26 == 1)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = v56;
            *buf = 138544130;
            v58 = v29;
            v59 = 2048;
            v60 = a1;
            v61 = 2048;
            v62 = i;
            v63 = 2112;
            v64 = v56;
            _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error copying mesh at index %ld: %@", buf, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = v56;
          *buf = 138544130;
          v58 = v40;
          v59 = 2048;
          v60 = a1;
          v61 = 2048;
          v62 = i;
          v63 = 2112;
          v64 = v56;
          _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error copying mesh at index %ld: %@", buf, 0x2Au);
        }
      }
    }
  }

  return v48;
}

- (void)dealloc
{
  if (self->_meshList)
  {
    CV3DReconMeshListRelease();
  }

  v3.receiver = self;
  v3.super_class = ARSpatialMappingResultData;
  [(ARSpatialMappingResultData *)&v3 dealloc];
}

@end