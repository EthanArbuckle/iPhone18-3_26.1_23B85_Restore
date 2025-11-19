@interface ARWorldTrackingReferenceAnchorData
- (ARWorldTrackingReferenceAnchorData)initWithCoder:(id)a3;
- (ARWorldTrackingReferenceAnchorData)initWithUpdatedAnchors:(id)a3 addedAnchors:(id)a4 removedAnchors:(id)a5 externalAnchors:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6;
- (id)externalAnchorsWithReferenceOriginTransform:(float32x4_t)a3 existingAnchors:(float32x4_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARWorldTrackingReferenceAnchorData

- (ARWorldTrackingReferenceAnchorData)initWithUpdatedAnchors:(id)a3 addedAnchors:(id)a4 removedAnchors:(id)a5 externalAnchors:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = ARWorldTrackingReferenceAnchorData;
  v15 = [(ARWorldTrackingReferenceAnchorData *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_updatedAnchors, a3);
    objc_storeStrong(&v16->_addedAnchors, a4);
    objc_storeStrong(&v16->_removedAnchors, a5);
    objc_storeStrong(&v16->_externalAnchors, a6);
    v17 = [MEMORY[0x1E695DFD8] set];
    receivedAnchors = v16->_receivedAnchors;
    v16->_receivedAnchors = v17;
  }

  return v16;
}

- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6
{
  v120 = *MEMORY[0x1E69E9840];
  v14 = a11;
  v80 = a12;
  v15 = [a1 updatedAnchors];
  [v15 count];
  v16 = [a1 addedAnchors];
  [v16 count];
  v17 = [a1 removedAnchors];
  [v17 count];
  kdebug_trace();

  v81 = v14;
  v97 = ARDictionaryFromAnchors(v14);
  v96 = objc_opt_new();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v18 = [a1 updatedAnchors];
  v19 = [v18 countByEnumeratingWithState:&v106 objects:v116 count:16];
  v83 = a1;
  if (v19)
  {
    v20 = v19;
    v21 = *v107;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v107 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v106 + 1) + 8 * i);
        v24 = [v23 identifier];
        v25 = [v97 objectForKey:v24];

        if (!v25)
        {
          v35 = _ARLogGeneral_20();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            v45 = [v23 identifier];
            *buf = 138543874;
            *&buf[4] = v44;
            *&buf[12] = 2048;
            *&buf[14] = v83;
            *&buf[22] = 2114;
            *&buf[24] = v45;
            _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VIO returned an updated anchor that is not surfaced by ARSession: %{public}@", buf, 0x20u);

            a1 = v83;
          }

          goto LABEL_16;
        }

        [a1 timestamp];
        v27 = v26;
        [v25 lastUpdateTimestamp];
        if (v27 > v28)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v25 referenceTransform];
            ARInnerScaleFromMatrix(v29, v30);
            ARMatrixFromScale();
            v92 = v32;
            v94 = v31;
            v88 = v34;
            v90 = v33;
            v35 = [v25 copy];
            [v23 transform];
            v40 = 0;
            v110 = v94;
            v111 = v92;
            v112 = v90;
            v113 = v88;
            memset(buf, 0, sizeof(buf));
            v118 = 0u;
            *v119 = 0u;
            do
            {
              *&buf[v40] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v110 + v40))), v37, *(&v110 + v40), 1), v38, *(&v110 + v40), 2), v39, *(&v110 + v40), 3);
              v40 += 16;
            }

            while (v40 != 64);
            v41 = 0;
            v110 = *buf;
            v111 = *&buf[16];
            v112 = v118;
            v113 = *v119;
            memset(buf, 0, sizeof(buf));
            v118 = 0u;
            *v119 = 0u;
            do
            {
              *&buf[v41] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, COERCE_FLOAT(*(&v110 + v41))), a7, *(&v110 + v41), 1), a8, *(&v110 + v41), 2), a9, *(&v110 + v41), 3);
              v41 += 16;
            }

            while (v41 != 64);
            [v35 setTransform:*buf, *&buf[16], *&v118, v119[0]];
            v42 = [v23 sessionIdentifier];
            [v35 setSessionIdentifier:v42];

            [v96 addObject:v35];
LABEL_16:
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v106 objects:v116 count:16];
    }

    while (v20);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = [a1 addedAnchors];
  v46 = [obj countByEnumeratingWithState:&v102 objects:v115 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v103;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v103 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v102 + 1) + 8 * j);
        v51 = [a1[6] member:v50];
        v52 = v51;
        if (v51)
        {
          [v51 referenceTransform];
          ARInnerScaleFromMatrix(v53, v54);
          ARMatrixFromScale();
          v93 = v56;
          v95 = v55;
          v89 = v58;
          v91 = v57;
          v59 = [v52 copy];
          [v50 transform];
          v64 = 0;
          v110 = v95;
          v111 = v93;
          v112 = v91;
          v113 = v89;
          memset(buf, 0, sizeof(buf));
          v118 = 0u;
          *v119 = 0u;
          do
          {
            *&buf[v64] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*(&v110 + v64))), v61, *(&v110 + v64), 1), v62, *(&v110 + v64), 2), v63, *(&v110 + v64), 3);
            v64 += 16;
          }

          while (v64 != 64);
          v65 = 0;
          v110 = *buf;
          v111 = *&buf[16];
          v112 = v118;
          v113 = *v119;
          memset(buf, 0, sizeof(buf));
          v118 = 0u;
          *v119 = 0u;
          do
          {
            *&buf[v65] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, COERCE_FLOAT(*(&v110 + v65))), a7, *(&v110 + v65), 1), a8, *(&v110 + v65), 2), a9, *(&v110 + v65), 3);
            v65 += 16;
          }

          while (v65 != 64);
          [v59 setTransform:*buf, *&buf[16], *&v118, v119[0]];
          v66 = [v50 sessionIdentifier];
          [v59 setSessionIdentifier:v66];

          [v96 addObject:v59];
        }

        else
        {
          v59 = _ARLogGeneral_20();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v67 = objc_opt_class();
            v68 = NSStringFromClass(v67);
            v69 = [v50 identifier];
            *buf = 138543874;
            *&buf[4] = v68;
            *&buf[12] = 2048;
            *&buf[14] = v83;
            *&buf[22] = 2114;
            *&buf[24] = v69;
            _os_log_impl(&dword_1C241C000, v59, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Ignoring locally added anchor: %{public}@", buf, 0x20u);

            a1 = v83;
          }
        }
      }

      v47 = [obj countByEnumeratingWithState:&v102 objects:v115 count:16];
    }

    while (v47);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v70 = [a1 removedAnchors];
  v71 = [v70 countByEnumeratingWithState:&v98 objects:v114 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v99;
    do
    {
      for (k = 0; k != v72; ++k)
      {
        if (*v99 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v98 + 1) + 8 * k);
        v76 = [v75 identifier];
        v77 = [v97 objectForKey:v76];

        if ([v77 isMemberOfClass:objc_opt_class()])
        {
          [v96 removeObject:v75];
          [v80 addObject:v75];
        }
      }

      v72 = [v70 countByEnumeratingWithState:&v98 objects:v114 count:16];
    }

    while (v72);
  }

  [v96 count];
  [v80 count];
  kdebug_trace();
  v78 = [v96 allObjects];

  return v78;
}

- (id)externalAnchorsWithReferenceOriginTransform:(float32x4_t)a3 existingAnchors:(float32x4_t)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a7;
  v9 = [a1 externalAnchors];
  v10 = [v9 count];

  if (v10)
  {
    v11 = objc_opt_new();
    v12 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v40 = a1;
    v13 = [a1 externalAnchors];
    v14 = [v13 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = v14;
    v45 = *v51;
    v39 = v13;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v50 + 1) + 8 * v16);
        v18 = [v12 member:v17];
        if (v18 || ([v40[6] member:v17], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v19 = v18;
          [v18 referenceTransform];
          ARInnerScaleFromMatrix(v20, v21);
          ARMatrixFromScale();
          v48 = v23;
          v49 = v22;
          v46 = v25;
          v47 = v24;
          v26 = [v19 copy];
          [v17 transform];
          v31 = 0;
          v54 = v49;
          v55 = v48;
          v56 = v47;
          v57 = v46;
          memset(buf, 0, sizeof(buf));
          v60 = 0u;
          v61 = 0u;
          do
          {
            *&buf[v31] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v54 + v31))), v28, *(&v54 + v31), 1), v29, *(&v54 + v31), 2), v30, *(&v54 + v31), 3);
            v31 += 16;
          }

          while (v31 != 64);
          v32 = 0;
          v54 = *buf;
          v55 = *&buf[16];
          v56 = v60;
          v57 = v61;
          memset(buf, 0, sizeof(buf));
          v60 = 0u;
          v61 = 0u;
          do
          {
            *&buf[v32] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v54 + v32))), a3, *(&v54 + v32), 1), a4, *(&v54 + v32), 2), a5, *(&v54 + v32), 3);
            v32 += 16;
          }

          while (v32 != 64);
          [v26 setTransform:{*buf, *&buf[16], *&v60, *&v61}];
          v33 = [v17 sessionIdentifier];
          [v26 setSessionIdentifier:v33];

          [v11 addObject:v26];
          goto LABEL_14;
        }

        v19 = _ARLogGeneral_20();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v34 = objc_opt_class();
          v26 = NSStringFromClass(v34);
          v35 = [v17 identifier];
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 2048;
          *&buf[14] = v40;
          v13 = v39;
          *&buf[22] = 2114;
          *&buf[24] = v35;
          _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: External anchor was neither found in received list nor existing anchors: %{public}@", buf, 0x20u);

LABEL_14:
        }

        ++v16;
      }

      while (v16 != v15);
      v36 = [v13 countByEnumeratingWithState:&v50 objects:v58 count:16];
      v15 = v36;
      if (!v36)
      {
LABEL_20:

        v37 = [v11 allObjects];

        goto LABEL_22;
      }
    }
  }

  v37 = MEMORY[0x1E695E0F0];
LABEL_22:

  return v37;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 encodeObject:self->_updatedAnchors forKey:@"updatedAnchors"];
  [v5 encodeObject:self->_addedAnchors forKey:@"addedAnchors"];
  [v5 encodeObject:self->_removedAnchors forKey:@"removedAnchors"];
  [v5 encodeObject:self->_externalAnchors forKey:@"externalAnchors"];
}

- (ARWorldTrackingReferenceAnchorData)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = ARWorldTrackingReferenceAnchorData;
  v5 = [(ARWorldTrackingReferenceAnchorData *)&v32 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"updatedAnchors"];
    updatedAnchors = v5->_updatedAnchors;
    v5->_updatedAnchors = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"addedAnchors"];
    addedAnchors = v5->_addedAnchors;
    v5->_addedAnchors = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"removedAnchors"];
    removedAnchors = v5->_removedAnchors;
    v5->_removedAnchors = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"externalAnchors"];
    externalAnchors = v5->_externalAnchors;
    v5->_externalAnchors = v29;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = vabdd_f64(self->_timestamp, v5[1]) < 2.22044605e-16 && [(NSSet *)self->_updatedAnchors isEqualToSet:*(v5 + 2)]&& [(NSSet *)self->_addedAnchors isEqualToSet:*(v5 + 3)]&& [(NSSet *)self->_removedAnchors isEqualToSet:*(v5 + 4)]&& [(NSSet *)self->_externalAnchors isEqualToSet:*(v5 + 5)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end