@interface ARObjectDetectionResultData
- (BOOL)isEqual:(id)a3;
- (NSDictionary)tracingEntry;
- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6;
@end

@implementation ARObjectDetectionResultData

- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6
{
  v95 = *MEMORY[0x1E69E9840];
  v12 = a11;
  v13 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v81 objects:v94 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v82;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v82 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v81 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v19 identifier];
          [v13 setObject:v19 forKey:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v81 objects:v94 count:16];
    }

    while (v16);
  }

  v54 = v14;

  v60 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = [a1 detectedObjects];
  v21 = [obj countByEnumeratingWithState:&v77 objects:v93 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v78;
    v57 = *(MEMORY[0x1E69E9B18] + 16);
    v58 = *MEMORY[0x1E69E9B18];
    v55 = *(MEMORY[0x1E69E9B18] + 48);
    v56 = *(MEMORY[0x1E69E9B18] + 32);
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v78 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v77 + 1) + 8 * j);
        v26 = [v25 referenceObject];
        v27 = [v26 identifier];
        v28 = [v13 objectForKeyedSubscript:v27];

        if (v28)
        {
          v29 = [v28 copy];
        }

        else
        {
          v30 = [ARObjectAnchor alloc];
          v31 = [v25 referenceObject];
          v29 = [(ARObjectAnchor *)v30 initWithReferenceObject:v31 transform:*&v58, *&v57, *&v56, *&v55];
        }

        v32 = [v25 referenceObject];
        [v32 referenceOriginTransform];
        v98 = __invert_f4(v97);
        v75 = v98.columns[1];
        v76 = v98.columns[0];
        v73 = v98.columns[3];
        v74 = v98.columns[2];

        *v33.i64 = ARVisionToRenderingCoordinateTransform();
        v69 = v34;
        v71 = v33;
        v65 = v36;
        v67 = v35;
        [v25 visionTransform];
        v37 = 0;
        v85 = v38;
        v86 = v39;
        v87 = v40;
        v88 = v41;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        do
        {
          *(&v89 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*(&v85 + v37))), v69, *&v85.f32[v37 / 4], 1), v67, *(&v85 + v37), 2), v65, *(&v85 + v37), 3);
          v37 += 16;
        }

        while (v37 != 64);
        v70 = v90;
        v72 = v89;
        v66 = v92;
        v68 = v91;
        *v42.i64 = ARRenderingToVisionCoordinateTransform();
        v43 = 0;
        v85 = v42;
        v86 = v44;
        v87 = v45;
        v88 = v46;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        do
        {
          *(&v89 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v85 + v43))), v70, *&v85.f32[v43 / 4], 1), v68, *(&v85 + v43), 2), v66, *(&v85 + v43), 3);
          v43 += 16;
        }

        while (v43 != 64);
        v47 = 0;
        v48 = v89;
        v49 = v90;
        v50 = v91;
        v51 = v92;
        v85 = v76;
        v86 = v75;
        v87 = v74;
        v88 = v73;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        do
        {
          *(&v89 + v47) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*(&v85 + v47))), v49, *&v85.f32[v47 / 4], 1), v50, *(&v85 + v47), 2), v51, *(&v85 + v47), 3);
          v47 += 16;
        }

        while (v47 != 64);
        v52 = 0;
        v85 = v89;
        v86 = v90;
        v87 = v91;
        v88 = v92;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        do
        {
          *(&v89 + v52) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, COERCE_FLOAT(*(&v85 + v52))), a7, *&v85.f32[v52 / 4], 1), a8, *(&v85 + v52), 2), a9, *(&v85 + v52), 3);
          v52 += 16;
        }

        while (v52 != 64);
        [(ARAnchor *)v29 setTransform:*v89.i64, *v90.i64, *v91.i64, *v92.i64];
        if (v29)
        {
          [v60 addObject:v29];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v77 objects:v93 count:16];
    }

    while (v22);
  }

  return v60;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 detectedObjects];
    v7 = [(ARObjectDetectionResultData *)self detectedObjects];
    if ([v6 isEqual:v7])
    {
      [v5 timestamp];
      v9 = v8 == self->_timestamp;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDictionary)tracingEntry
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = ARQATraceableDefaultEntryForResultData(self);
  v21 = [v3 mutableCopy];

  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [(ARObjectDetectionResultData *)self detectedObjects];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(ARObjectDetectionResultData *)self detectedObjects];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = objc_opt_new();
        v13 = [v11 referenceObject];
        v14 = [v13 identifier];
        [v12 setObject:v14 forKeyedSubscript:@"identifier"];

        v15 = [v11 referenceObject];
        [v15 extent];
        v16 = [ARQAHelper arrayWithVector3:?];
        [v12 setObject:v16 forKeyedSubscript:@"extent"];

        v17 = [v11 referenceObject];
        [v17 center];
        v18 = [ARQAHelper arrayWithVector3:?];
        [v12 setObject:v18 forKeyedSubscript:@"center"];

        [v11 visionTransform];
        v19 = [ARQAHelper arrayWithMatrix4x4:?];
        [v12 setObject:v19 forKeyedSubscript:@"transform"];

        [v6 addObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  [v21 setObject:v6 forKeyedSubscript:@"objects"];

  return v21;
}

@end