@interface ARReferenceObject
+ (NSSet)referenceObjectsInGroupNamed:(NSString *)name bundle:(NSBundle *)bundle;
+ (id)referenceObjectsInGroupNamed:(id)named catalog:(id)catalog;
+ (id)referenceObjectsInGroupNamed:(id)named catalogName:(id)name bundle:(id)bundle;
+ (id)referenceObjectsInGroupNamed:(id)named catalogURL:(id)l;
- (ARReferenceObject)initWithArchive:(id)archive name:(id)name error:(id *)error;
- (ARReferenceObject)initWithArchiveData:(id)data name:(id)name error:(id *)error;
- (ARReferenceObject)initWithArchiveURL:(NSURL *)url error:(NSError *)error;
- (ARReferenceObject)initWithCoder:(id)coder;
- (ARReferenceObject)initWithTrackingData:(__n128)data referenceOriginTransform:(__n128)transform;
- (ARReferenceObject)referenceObjectByApplyingTransform:(simd_float4x4)transform;
- (ARReferenceObject)referenceObjectByMergingObject:(ARReferenceObject *)object error:(NSError *)error;
- (BOOL)exportObjectToURL:(NSURL *)url previewImage:(UIImage *)previewImage error:(NSError *)error;
- (BOOL)isEqual:(id)equal;
- (NSSet)keyframes;
- (id)description;
- (id)exportObjectToMemoryWithPreviewImage:(id)image error:(id *)error;
- (simd_float3)scale;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARReferenceObject

- (ARReferenceObject)initWithTrackingData:(__n128)data referenceOriginTransform:(__n128)transform
{
  v8 = a7;
  v25.receiver = self;
  v25.super_class = ARReferenceObject;
  v9 = [(ARReferenceObject *)&v25 init];
  v10 = v9;
  if (v9)
  {
    v9->_version = 1;
    v11 = [v8 copy];
    trackingData = v10->_trackingData;
    v10->_trackingData = v11;

    *&v10[1].super.isa = a2;
    *&v10[1]._name = data;
    *&v10[1]._rawFeaturePoints = transform;
    *&v10[1]._version = a5;
    v13 = [ARWorldMap featurePointsForTrackingData:v8 referenceOriginTransform:?];
    rawFeaturePoints = v10->_rawFeaturePoints;
    v10->_rawFeaturePoints = v13;

    [(ARPointCloud *)v10->_rawFeaturePoints computeBounds];
    *v10->_center = v15;
    *v10->_extent = v16;
    v17 = [MEMORY[0x1E696AFB0] ar_UUIDWithData:v8];
    identifier = v10->_identifier;
    v10->_identifier = v17;

    resourceGroupName = v10->_resourceGroupName;
    v10->_resourceGroupName = 0;
  }

  return v10;
}

- (simd_float3)scale
{
  v2 = vmulq_f32(*&self[1].super.isa, *&self[1].super.isa);
  v3 = vmulq_f32(*&self[1]._name, *&self[1]._name);
  v4 = vadd_f32(vzip1_s32(*v2.i8, *v3.i8), vzip2_s32(*v2.i8, *v3.i8));
  v5 = vextq_s8(v2, v2, 8uLL);
  *v5.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v5.f32, *&vextq_s8(v3, v3, 8uLL)), v4));
  v6 = vmulq_f32(*&self[1]._rawFeaturePoints, *&self[1]._rawFeaturePoints);
  v5.i32[2] = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  return vmulq_laneq_f32(v5, *&self[1]._version, 3);
}

- (ARReferenceObject)initWithArchiveData:(id)data name:(id)name error:(id *)error
{
  nameCopy = name;
  dataCopy = data;
  v10 = [[ARArchive alloc] initWithData:dataCopy error:error];

  v11 = [(ARReferenceObject *)self initWithArchive:v10 name:nameCopy error:error];
  return v11;
}

- (ARReferenceObject)initWithArchiveURL:(NSURL *)url error:(NSError *)error
{
  v6 = url;
  v7 = [[ARArchive alloc] initWithContentsOfURL:v6 error:error];
  if (v7)
  {
    lastPathComponent = [(NSURL *)v6 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    self = [(ARReferenceObject *)self initWithArchive:v7 name:stringByDeletingPathExtension error:error];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ARReferenceObject)initWithArchive:(id)archive name:(id)name error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  nameCopy = name;
  if (archiveCopy)
  {
    v10 = [archiveCopy dataForResourceAtPath:@"Info.plist"];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:0];
      objc_opt_class();
      v12 = 0;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = [v12 objectForKeyedSubscript:@"Version"];
    integerValue = [v14 integerValue];

    if (integerValue < 2)
    {
      v16 = [v12 objectForKeyedSubscript:@"TrackingDataReference"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([archiveCopy dataForResourceAtPath:v16], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v20 = v19;
        v21 = [v12 objectForKeyedSubscript:@"ReferenceOrigin"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = ARMatrix4x4FromDictionary(v21);
          [ARWorldMap boundsForTrackingData:v20, v27, v28, v25, v26, v23, v24, *&v22];
        }

        else
        {
          [ARWorldMap boundsForTrackingData:v20, *(MEMORY[0x1E69E9B18] + 48), *(MEMORY[0x1E69E9B18] + 56), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 40), *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 24), *MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 8)];
        }

        ARMatrix4x4FromRotationAndTranslation();
        v31 = 0;
        v43[0] = v32;
        v43[1] = v33;
        v43[2] = v34;
        v43[3] = v35;
        memset(buf, 0, sizeof(buf));
        v45 = 0u;
        v46 = 0u;
        do
        {
          *&buf[v31 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(v43[v31])), v41, *&v43[v31], 1), v40, v43[v31], 2), v39, v43[v31], 3);
          ++v31;
        }

        while (v31 != 4);
        v36 = [(ARReferenceObject *)self initWithTrackingData:v20 referenceOriginTransform:*buf, *&buf[16], *&v45, *&v46];
        v37 = v36;
        if (v36)
        {
          v36->_version = integerValue;
          objc_storeStrong(&v36->_name, name);
        }

        self = v37;

        selfCopy = self;
      }

      else
      {
        if (error)
        {
          *error = ARErrorWithCodeAndUserInfo(301, 0);
        }

        v20 = _ARLogGeneral_27();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2048;
          *&buf[14] = self;
          _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading reference object: Malformed data", buf, 0x16u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      if (error)
      {
        *error = ARErrorWithCodeAndUserInfo(301, 0);
      }

      v16 = _ARLogGeneral_27();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543874;
        *&buf[4] = v18;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        *&buf[24] = integerValue;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading reference object: Unsupported object version (%ld)", buf, 0x20u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)exportObjectToURL:(NSURL *)url previewImage:(UIImage *)previewImage error:(NSError *)error
{
  v8 = url;
  v9 = [(ARReferenceObject *)self writeToArchiveWithPreviewImage:previewImage error:error];
  LOBYTE(error) = [v9 writeToURL:v8 error:error];

  return error;
}

- (id)exportObjectToMemoryWithPreviewImage:(id)image error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = [(ARReferenceObject *)self writeToArchiveWithPreviewImage:image error:?];
  dataRepresentation = [v5 dataRepresentation];
  v7 = dataRepresentation;
  if (error && !dataRepresentation)
  {
    v12 = *MEMORY[0x1E696A588];
    v8 = ARKitCoreBundle();
    v9 = [v8 localizedStringForKey:@"Unable to create archive." value:&stru_1F4208A80 table:@"Localizable"];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    *error = ARErrorWithCodeAndUserInfo(500, v10);
  }

  return v7;
}

- (ARReferenceObject)referenceObjectByApplyingTransform:(simd_float4x4)transform
{
  v4 = [ARReferenceObject alloc];
  trackingData = [(ARReferenceObject *)self trackingData];
  v24 = __invert_f4(transform);
  v16 = v24.columns[1];
  v17 = v24.columns[0];
  v14 = v24.columns[3];
  v15 = v24.columns[2];
  [(ARReferenceObject *)self referenceOriginTransform];
  v6 = 0;
  v18[0] = v7;
  v18[1] = v8;
  v18[2] = v9;
  v18[3] = v10;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  do
  {
    *(&v19 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(v18[v6])), v16, *&v18[v6], 1), v15, v18[v6], 2), v14, v18[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v11 = [(ARReferenceObject *)v4 initWithTrackingData:trackingData referenceOriginTransform:*&v19, *&v20, *&v21, *&v22];

  return v11;
}

- (ARReferenceObject)referenceObjectByMergingObject:(ARReferenceObject *)object error:(NSError *)error
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = object;
  trackingData = [(ARReferenceObject *)v6 trackingData];
  trackingData2 = [(ARReferenceObject *)self trackingData];
  v9 = [trackingData isEqual:trackingData2];

  if (v9)
  {
    v10 = [ARReferenceObject alloc];
    trackingData3 = [(ARReferenceObject *)self trackingData];
    [(ARReferenceObject *)self referenceOriginTransform];
    error = [(ARReferenceObject *)v10 initWithTrackingData:trackingData3 referenceOriginTransform:?];

    name = [(ARReferenceObject *)self name];
    [error setName:name];
  }

  else
  {
    name = objc_opt_new();
    trackingData4 = [(ARReferenceObject *)self trackingData];
    trackingData5 = [(ARReferenceObject *)v6 trackingData];
    v15 = CV3DVIOAlignAndMergeMaps();

    if (v15 || ![name length])
    {
      v16 = _ARLogGeneral_27();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [(ARReferenceObject *)self description];
        v20 = [(ARReferenceObject *)v6 description];
        v26 = 138544386;
        v27 = v18;
        v28 = 2048;
        selfCopy = self;
        v30 = 2114;
        v31 = v19;
        v32 = 2114;
        v33 = v20;
        v34 = 1024;
        v35 = v15;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to merge reference object %{public}@ with %{public}@ (%u)", &v26, 0x30u);
      }

      if (error)
      {
        if (v15 == 19)
        {
          v21 = 301;
        }

        else
        {
          v21 = 401;
        }

        v24 = ARErrorWithCodeAndUserInfo(v21, 0);
        *error = v24;

        error = 0;
      }
    }

    else
    {
      v22 = [ARReferenceObject alloc];
      [(ARReferenceObject *)self referenceOriginTransform];
      error = [(ARReferenceObject *)v22 initWithTrackingData:name referenceOriginTransform:?];
      name2 = [(ARReferenceObject *)self name];
      [error setName:name2];
    }
  }

  return error;
}

- (NSSet)keyframes
{
  keyframes = self->_keyframes;
  if (!keyframes)
  {
    trackingData = [(ARReferenceObject *)self trackingData];
    rawFeaturePoints = self->_rawFeaturePoints;
    [(ARReferenceObject *)self referenceOriginTransform];
    v6 = [ARWorldMap keyframesForTrackingData:trackingData withFeaturePoints:rawFeaturePoints referenceOriginTransform:?];
    v7 = self->_keyframes;
    self->_keyframes = v6;

    keyframes = self->_keyframes;
  }

  return keyframes;
}

- (id)description
{
  name = [(ARReferenceObject *)self name];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (name)
  {
    name2 = [(ARReferenceObject *)self name];
    [(ARReferenceObject *)self center];
    v9 = ARVector3Description(v8);
    [(ARReferenceObject *)self extent];
    v11 = ARVector3Description(v10);
    v12 = [v4 stringWithFormat:@"<%@: %p name=%@ center=%@ extent=%@>", v6, self, name2, v9, v11];
  }

  else
  {
    [(ARReferenceObject *)self center];
    name2 = ARVector3Description(v13);
    [(ARReferenceObject *)self extent];
    v9 = ARVector3Description(v14);
    v12 = [v4 stringWithFormat:@"<%@: %p center=%@ extent=%@>", v6, self, name2, v9];
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(ARReferenceObject *)self referenceOriginTransform];
    v20 = v7;
    v21 = v6;
    v18 = v9;
    v19 = v8;
    [v5 referenceOriginTransform];
    if (AREqualTransforms(v21, v20, v19, v18, v10, v11, v12, v13))
    {
      trackingData = [v5 trackingData];
      trackingData2 = [(ARReferenceObject *)self trackingData];
      v16 = [trackingData isEqual:trackingData2];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ARReferenceObject version](self forKey:{"version"), @"version"}];
  trackingData = [(ARReferenceObject *)self trackingData];
  [coderCopy encodeObject:trackingData forKey:@"trackingData"];

  [(ARReferenceObject *)self referenceOriginTransform];
  [coderCopy ar_encodeMatrix4x4:@"referenceOriginTransform" forKey:?];
  name = [(ARReferenceObject *)self name];
  [coderCopy encodeObject:name forKey:@"name"];
}

- (ARReferenceObject)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  if (v5 >= 2)
  {
    v6 = ARErrorWithCodeAndUserInfo(301, 0);
    [coderCopy failWithError:v6];

    v7 = _ARLogGeneral_27();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v20 = 138543874;
      v21 = v9;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2048;
      v25 = v5;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading reference object: Unsupported object version (%ld)", &v20, 0x20u);
    }

LABEL_11:
    selfCopy3 = 0;
    goto LABEL_12;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingData"];
  if (!v7)
  {
    v15 = ARErrorWithCodeAndUserInfo(301, 0);
    [coderCopy failWithError:v15];

    v16 = _ARLogGeneral_27();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v20 = 138543618;
      v21 = v18;
      v22 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading reference object: Malformed data", &v20, 0x16u);
    }

    goto LABEL_11;
  }

  [coderCopy ar_decodeMatrix4x4ForKey:@"referenceOriginTransform"];
  v10 = [(ARReferenceObject *)self initWithTrackingData:v7 referenceOriginTransform:?];
  v11 = v10;
  if (v10)
  {
    v10->_version = v5;
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v11->_name;
    v11->_name = v12;
  }

  self = v11;
  selfCopy3 = self;
LABEL_12:

  return selfCopy3;
}

+ (id)referenceObjectsInGroupNamed:(id)named catalog:(id)catalog
{
  v62 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  v5 = [catalog namedRecognitionGroupWithName:?];
  if (v5)
  {
    v38 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    namedRecognitionObjectObjectList = [v5 namedRecognitionObjectObjectList];
    v7 = [namedRecognitionObjectObjectList countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    v9 = *v54;
    v40 = v5;
    v50 = *v54;
    v51 = namedRecognitionObjectObjectList;
    while (1)
    {
      v10 = 0;
      v52 = v8;
      do
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(namedRecognitionObjectObjectList);
        }

        v11 = *(*(&v53 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v5;
          v13 = [v5 recognitionObjectWithName:v11];
          v14 = v13;
          if (v13 && ([v13 objectData], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
          {
            version = [v14 version];
            if (version < 2)
            {
              objectData = [v14 objectData];
              [ARWorldMap boundsForTrackingData:objectData];

              [v14 referenceOriginTransformation];
              v45 = v25;
              v47 = v24;
              v41 = v27;
              v42 = v26;
              ARMatrix4x4FromRotationAndTranslation();
              v28 = 0;
              v57[0] = v29;
              v57[1] = v30;
              v57[2] = v31;
              v57[3] = v32;
              memset(buf, 0, sizeof(buf));
              v60 = 0u;
              *v61 = 0u;
              do
              {
                *&buf[v28 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(v57[v28])), v45, *&v57[v28], 1), v42, v57[v28], 2), v41, v57[v28], 3);
                ++v28;
              }

              while (v28 != 4);
              v46 = *&v60;
              v48 = v61[0];
              v43 = *buf;
              v44 = *&buf[16];
              v33 = [ARReferenceObject alloc];
              objectData2 = [v14 objectData];
              v18 = [(ARReferenceObject *)v33 initWithTrackingData:objectData2 referenceOriginTransform:v43, v44, v46, v48];

              [v18 setName:v11];
              [v18 setResourceGroupName:namedCopy];
              [v38 addObject:v18];
              v12 = v40;
              v9 = v50;
              namedRecognitionObjectObjectList = v51;
            }

            else
            {
              v17 = version;
              v18 = _ARLogGeneral_27();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = objc_opt_class();
                v20 = NSStringFromClass(v19);
                *buf = 138544130;
                *&buf[4] = v20;
                *&buf[12] = 2048;
                *&buf[14] = self;
                *&buf[22] = 2114;
                *&buf[24] = v11;
                LOWORD(v60) = 2048;
                *(&v60 + 2) = v17;
                _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading reference object %{public}@: Unsupported object version (%ld)", buf, 0x2Au);

                v9 = v50;
                v12 = v40;
              }

LABEL_15:
              namedRecognitionObjectObjectList = v51;
            }
          }

          else
          {
            v18 = _ARLogGeneral_27();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              *buf = 138543874;
              *&buf[4] = v22;
              *&buf[12] = 2048;
              *&buf[14] = self;
              v9 = v50;
              *&buf[22] = 2114;
              *&buf[24] = v11;
              _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Invalid reference object in catalog: %{public}@", buf, 0x20u);

              goto LABEL_15;
            }
          }

          v8 = v52;
          v5 = v12;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [namedRecognitionObjectObjectList countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (!v8)
      {
        goto LABEL_26;
      }
    }
  }

  namedRecognitionObjectObjectList = _ARLogGeneral_27();
  if (os_log_type_enabled(namedRecognitionObjectObjectList, OS_LOG_TYPE_ERROR))
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    *buf = 138543874;
    *&buf[4] = v36;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = namedCopy;
    _os_log_impl(&dword_1C241C000, namedRecognitionObjectObjectList, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: No resource group with name %{public}@ found", buf, 0x20u);
  }

  v38 = 0;
LABEL_26:

  return v38;
}

+ (NSSet)referenceObjectsInGroupNamed:(NSString *)name bundle:(NSBundle *)bundle
{
  v5 = bundle;
  v6 = name;
  v7 = [objc_opt_class() referenceObjectsInGroupNamed:v6 catalogName:@"Assets" bundle:v5];

  return v7;
}

+ (id)referenceObjectsInGroupNamed:(id)named catalogName:(id)name bundle:(id)bundle
{
  v29 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  nameCopy = name;
  bundleCopy = bundle;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E6999368]) initWithName:nameCopy fromBundle:bundleCopy error:&v18];
  v12 = v18;
  if (v12)
  {
    v13 = _ARLogGeneral_27();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544386;
      v20 = v15;
      v21 = 2048;
      selfCopy = self;
      v23 = 2114;
      v24 = nameCopy;
      v25 = 2114;
      v26 = bundleCopy;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error while opening catalog named %{public}@ in bundle %{public}@: %@", buf, 0x34u);
    }

    v16 = 0;
  }

  else
  {
    v16 = [objc_opt_class() referenceObjectsInGroupNamed:namedCopy catalog:v11];
  }

  return v16;
}

+ (id)referenceObjectsInGroupNamed:(id)named catalogURL:(id)l
{
  v26 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  lCopy = l;
  v15 = 0;
  v8 = [objc_alloc(MEMORY[0x1E6999368]) initWithURL:lCopy error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = _ARLogGeneral_27();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544386;
      v17 = v12;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = namedCopy;
      v22 = 2114;
      v23 = lCopy;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error while opening catalog named %{public}@ from URL %{public}@: %@", buf, 0x34u);
    }

    v13 = 0;
  }

  else
  {
    v13 = [objc_opt_class() referenceObjectsInGroupNamed:namedCopy catalog:v8];
  }

  return v13;
}

@end