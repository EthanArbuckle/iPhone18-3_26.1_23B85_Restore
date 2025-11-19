@interface ARFaceTrackingResults
- (ARFaceTrackingResults)initWithCoder:(id)a3;
- (id)anchorsForCameraWithTransform:(float32x4_t)a3 referenceOriginTransform:(float32x4_t)a4 existingAnchors:(float32x4_t)a5 anchorsToRemove:(uint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARFaceTrackingResults

- (id)anchorsForCameraWithTransform:(float32x4_t)a3 referenceOriginTransform:(float32x4_t)a4 existingAnchors:(float32x4_t)a5 anchorsToRemove:(uint64_t)a6
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
  v42 = [a1 trackedFaces];
  v12 = [v42 countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v12)
  {
    v13 = *v51;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v42);
        }

        v15 = *(*(&v50 + 1) + 8 * j);
        if ([v15 isValid])
        {
          v16 = [v15 identifier];
          v17 = [v45 objectForKeyedSubscript:v16];

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
            *(&v59 + v21 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v58[v21])), a3, *&v58[v21], 1), a4, v58[v21], 2), a5, v58[v21], 3);
            ++v21;
          }

          while (v21 != 4);
          [(ARAnchor *)v20 setTransform:*&v59, *&v60, *&v61, *&v62];
          v26 = [(ARAnchor *)v20 identifier];
          [v45 removeObjectForKey:v26];

          [v44 addObject:v20];
        }
      }

      v12 = [v42 countByEnumeratingWithState:&v50 objects:v64 count:16];
    }

    while (v12);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v27 = [v45 allValues];
  v28 = [v27 countByEnumeratingWithState:&v46 objects:v63 count:16];
  if (v28)
  {
    v29 = *v47;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v46 + 1) + 8 * k);
        if ([v31 isTracked])
        {
          v32 = [ARFaceAnchor alloc];
          v33 = [v31 trackingError];
          v34 = [(ARFaceAnchor *)v32 initWithExistingFaceAnchor:v31 tracked:0 trackingError:v33];

          [v44 addObject:v34];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v46 objects:v63 count:16];
    }

    while (v28);
  }

  return v44;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ARFaceTrackingResults *)self trackedFaces];
  [v5 encodeObject:v4 forKey:@"trackedFaces"];
}

- (ARFaceTrackingResults)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ARFaceTrackingResults;
  v5 = [(ARFaceTrackingResults *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"trackedFaces"];
    trackedFaces = v5->_trackedFaces;
    v5->_trackedFaces = v9;
  }

  return v5;
}

@end