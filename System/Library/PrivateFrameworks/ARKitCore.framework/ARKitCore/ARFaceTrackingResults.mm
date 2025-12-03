@interface ARFaceTrackingResults
- (ARFaceTrackingResults)initWithCoder:(id)coder;
- (id)anchorsForCameraWithTransform:(float32x4_t)transform referenceOriginTransform:(float32x4_t)originTransform existingAnchors:(float32x4_t)anchors anchorsToRemove:(uint64_t)remove;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARFaceTrackingResults

- (id)anchorsForCameraWithTransform:(float32x4_t)transform referenceOriginTransform:(float32x4_t)originTransform existingAnchors:(float32x4_t)anchors anchorsToRemove:(uint64_t)remove
{
  v66 = *MEMORY[0x1E69E9840];
  v36 = a7;
  v41 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v36;
  v8 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v8)
  {
    v9 = *v55;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v41 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v8);
  }

  v45 = ARDictionaryFromAnchors(v41);
  v44 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  trackedFaces = [self trackedFaces];
  v12 = [trackedFaces countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v12)
  {
    v13 = *v51;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(trackedFaces);
        }

        v15 = *(*(&v50 + 1) + 8 * j);
        if ([v15 isValid])
        {
          identifier = [v15 identifier];
          v17 = [v45 objectForKeyedSubscript:identifier];

          v18 = [ARFaceAnchor alloc];
          if (v17)
          {
            [v17 identifier];
          }

          else
          {
            [v15 identifier];
          }
          v19 = ;
          v20 = [(ARFaceAnchor *)v18 initWithIdentifier:v19 trackingData:v15];

          [(ARAnchor *)v20 transform];
          v21 = 0;
          v58[0] = v22;
          v58[1] = v23;
          v58[2] = v24;
          v58[3] = v25;
          do
          {
            *(&v59 + v21 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v58[v21])), transform, *&v58[v21], 1), originTransform, v58[v21], 2), anchors, v58[v21], 3);
            ++v21;
          }

          while (v21 != 4);
          [(ARAnchor *)v20 setTransform:*&v59, *&v60, *&v61, *&v62];
          identifier2 = [(ARAnchor *)v20 identifier];
          [v45 removeObjectForKey:identifier2];

          [v44 addObject:v20];
        }
      }

      v12 = [trackedFaces countByEnumeratingWithState:&v50 objects:v64 count:16];
    }

    while (v12);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  allValues = [v45 allValues];
  v28 = [allValues countByEnumeratingWithState:&v46 objects:v63 count:16];
  if (v28)
  {
    v29 = *v47;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(allValues);
        }

        v31 = *(*(&v46 + 1) + 8 * k);
        if ([v31 isTracked])
        {
          v32 = [ARFaceAnchor alloc];
          trackingError = [v31 trackingError];
          v34 = [(ARFaceAnchor *)v32 initWithExistingFaceAnchor:v31 tracked:0 trackingError:trackingError];

          [v44 addObject:v34];
        }
      }

      v28 = [allValues countByEnumeratingWithState:&v46 objects:v63 count:16];
    }

    while (v28);
  }

  return v44;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  trackedFaces = [(ARFaceTrackingResults *)self trackedFaces];
  [coderCopy encodeObject:trackedFaces forKey:@"trackedFaces"];
}

- (ARFaceTrackingResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ARFaceTrackingResults;
  v5 = [(ARFaceTrackingResults *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"trackedFaces"];
    trackedFaces = v5->_trackedFaces;
    v5->_trackedFaces = v9;
  }

  return v5;
}

@end