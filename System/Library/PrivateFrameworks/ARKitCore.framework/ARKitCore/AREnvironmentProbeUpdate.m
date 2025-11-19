@interface AREnvironmentProbeUpdate
- (AREnvironmentProbeManager)manager;
- (AREnvironmentProbeUpdate)init;
- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6;
- (void)updateAddedProbeAnchors:(id)a3 updatedProbeAnchors:(id)a4 removedProbeAnchors:(id)a5;
@end

@implementation AREnvironmentProbeUpdate

- (AREnvironmentProbeUpdate)init
{
  v3.receiver = self;
  v3.super_class = AREnvironmentProbeUpdate;
  result = [(AREnvironmentProbeUpdate *)&v3 init];
  if (result)
  {
    result->_probeAnchorsLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)updateAddedProbeAnchors:(id)a3 updatedProbeAnchors:(id)a4 removedProbeAnchors:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock_with_options();
  addedProbeAnchors = self->_addedProbeAnchors;
  if (addedProbeAnchors)
  {
    v11 = [(NSArray *)addedProbeAnchors arrayByAddingObjectsFromArray:v19];
  }

  else
  {
    v11 = [v19 copy];
  }

  v12 = self->_addedProbeAnchors;
  self->_addedProbeAnchors = v11;

  updatedProbeAnchors = self->_updatedProbeAnchors;
  if (updatedProbeAnchors)
  {
    v14 = [(NSArray *)updatedProbeAnchors arrayByAddingObjectsFromArray:v8];
  }

  else
  {
    v14 = [v8 copy];
  }

  v15 = self->_updatedProbeAnchors;
  self->_updatedProbeAnchors = v14;

  removedProbeAnchors = self->_removedProbeAnchors;
  if (removedProbeAnchors)
  {
    v17 = [(NSArray *)removedProbeAnchors arrayByAddingObjectsFromArray:v9];
  }

  else
  {
    v17 = [v9 copy];
  }

  v18 = self->_removedProbeAnchors;
  self->_removedProbeAnchors = v17;

  os_unfair_lock_unlock(&self->_probeAnchorsLock);
}

- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6
{
  v74 = *MEMORY[0x1E69E9840];
  v51 = a11;
  v14 = a12;
  os_unfair_lock_lock_with_options();
  v15 = *(a1 + 16);
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;

  v50 = *(a1 + 24);
  v17 = *(a1 + 24);
  *(a1 + 24) = 0;

  v18 = *(a1 + 32);
  v19 = *(a1 + 32);
  *(a1 + 32) = 0;

  os_unfair_lock_unlock((a1 + 8));
  v47 = v14;
  v48 = v18;
  [v14 addObjectsFromArray:{v18, v15}];
  v20 = [ARProbeFilter filter:v14];
  v21 = [v20 mutableCopy];

  v49 = v21;
  v22 = [ARProbeFilter filter:v51];
  v23 = [v22 mutableCopy];

  if ([v21 count])
  {
    [v23 removeObjectsInArray:v21];
  }

  if ([v15 count])
  {
    [v23 addObjectsFromArray:v15];
  }

  v24 = [a1 manager];
  [v24 _updateProbesFromExistingAnchors:v23];

  v25 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v26 = v15;
  v27 = [v26 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v27)
  {
    v28 = *v61;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v61 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v60 + 1) + 8 * i);
        [v30 referenceTransform];
        v31 = 0;
        v64 = v32;
        v65 = v33;
        v66 = v34;
        v67 = v35;
        do
        {
          *(&v68 + v31) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, COERCE_FLOAT(*(&v64 + v31))), a7, *(&v64 + v31), 1), a8, *(&v64 + v31), 2), a9, *(&v64 + v31), 3);
          v31 += 16;
        }

        while (v31 != 64);
        [v30 setTransform:{*&v68, *&v69, *&v70, *&v71}];
        [v25 addObject:v30];
      }

      v27 = [v26 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v27);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v36 = v50;
  v37 = [v36 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v37)
  {
    v38 = *v57;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v57 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v56 + 1) + 8 * j);
        [v40 referenceTransform];
        v41 = 0;
        v64 = v42;
        v65 = v43;
        v66 = v44;
        v67 = v45;
        do
        {
          *(&v68 + v41) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, COERCE_FLOAT(*(&v64 + v41))), a7, *(&v64 + v41), 1), a8, *(&v64 + v41), 2), a9, *(&v64 + v41), 3);
          v41 += 16;
        }

        while (v41 != 64);
        [v40 setTransform:{*&v68, *&v69, *&v70, *&v71}];
        [v25 addObject:v40];
      }

      v37 = [v36 countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v37);
  }

  return v25;
}

- (AREnvironmentProbeManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end