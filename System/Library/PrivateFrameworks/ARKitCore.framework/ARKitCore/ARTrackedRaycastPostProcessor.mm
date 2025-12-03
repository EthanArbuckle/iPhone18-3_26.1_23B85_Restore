@interface ARTrackedRaycastPostProcessor
- (ARSession)session;
- (ARTrackedRaycastPostProcessor)initWithSession:(id)session;
- (BOOL)result:(id)result isCloseEnoughToInitialResultForRaycast:(id)raycast;
- (NSArray)trackedRaycasts;
- (double)updatePose:(__n128)pose referenceOriginTransform:(__n128)transform oldRayOrigin:(simd_float4)origin oldRayDirection:(simd_float4)direction newRayOrigin:(simd_float4)rayOrigin newRayDirection:(simd_float4)rayDirection;
- (void)addTrackedRaycast:(id)raycast andProcessInitialResults:(id)results;
- (void)dealloc;
- (void)invalidateAllRaycasts;
- (void)invalidateRaycastWithIdentifier:(id)identifier;
- (void)performBlockWhileLockingRaycasts:(id)raycasts;
- (void)processInitialResults:(id)results forRaycast:(id)raycast;
- (void)processUpdatedResults:(id)results;
- (void)removeTrackedRaycastWithIdentifier:(id)identifier;
- (void)startUpdateTimer;
- (void)updateFromPoseGraphEventWithData:(__n128)data referenceOriginTransform:(__n128)transform;
- (void)updateFromTimer:(id)timer;
@end

@implementation ARTrackedRaycastPostProcessor

- (ARTrackedRaycastPostProcessor)initWithSession:(id)session
{
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = ARTrackedRaycastPostProcessor;
  v5 = [(ARTrackedRaycastPostProcessor *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = _trackedRaycasts;
    _trackedRaycasts = v6;

    v8 = dispatch_semaphore_create(1);
    v9 = _trackedRaycastSemaphore;
    _trackedRaycastSemaphore = v8;

    v10 = objc_opt_new();
    v11 = _initialRaycastResults;
    _initialRaycastResults = v10;

    v12 = objc_opt_new();
    v13 = _targetRaycastResultUpdates;
    _targetRaycastResultUpdates = v12;

    v14 = objc_opt_new();
    v15 = _resultsHistory;
    _resultsHistory = v14;

    objc_storeWeak(&v5->_session, sessionCopy);
  }

  return v5;
}

- (void)dealloc
{
  if (_updateTimer)
  {
    [_updateTimer invalidate];
    v3 = _updateTimer;
    _updateTimer = 0;
  }

  v4.receiver = self;
  v4.super_class = ARTrackedRaycastPostProcessor;
  [(ARTrackedRaycastPostProcessor *)&v4 dealloc];
}

- (NSArray)trackedRaycasts
{
  dispatch_semaphore_wait(_trackedRaycastSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  allValues = [_trackedRaycasts allValues];
  dispatch_semaphore_signal(_trackedRaycastSemaphore);

  return allValues;
}

- (void)addTrackedRaycast:(id)raycast andProcessInitialResults:(id)results
{
  v6 = _trackedRaycastSemaphore;
  resultsCopy = results;
  raycastCopy = raycast;
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v9 = _trackedRaycasts;
  identifier = [raycastCopy identifier];
  [v9 setObject:raycastCopy forKeyedSubscript:identifier];

  [(ARTrackedRaycastPostProcessor *)self processInitialResults:resultsCopy forRaycast:raycastCopy];
  v11 = _trackedRaycastSemaphore;

  dispatch_semaphore_signal(v11);
}

- (void)removeTrackedRaycastWithIdentifier:(id)identifier
{
  v3 = _trackedRaycasts;
  identifierCopy = identifier;
  [v3 setObject:0 forKeyedSubscript:identifierCopy];
  [_initialRaycastResults setObject:0 forKeyedSubscript:identifierCopy];
  [_targetRaycastResultUpdates setObject:0 forKeyedSubscript:identifierCopy];
  [_resultsHistory setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)invalidateAllRaycasts
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allKeys = [_trackedRaycasts allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [(ARTrackedRaycastPostProcessor *)self invalidateRaycastWithIdentifier:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)invalidateRaycastWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained)
  {
    v6 = [_trackedRaycasts objectForKeyedSubscript:identifierCopy];
    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_session);
      delegateQueue = [v7 delegateQueue];
      v9 = delegateQueue;
      if (!delegateQueue)
      {
        v9 = MEMORY[0x1E69E96A0];
        v10 = MEMORY[0x1E69E96A0];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __65__ARTrackedRaycastPostProcessor_invalidateRaycastWithIdentifier___block_invoke;
      v11[3] = &unk_1E817BEC8;
      v12 = v6;
      v13 = identifierCopy;
      dispatch_async(v9, v11);
      if (!delegateQueue)
      {
      }
    }
  }
}

void __65__ARTrackedRaycastPostProcessor_invalidateRaycastWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateHandler];
  v2[2](v2, MEMORY[0x1E695E0F0]);

  [_initialRaycastResults setObject:0 forKeyedSubscript:*(a1 + 40)];
  [_targetRaycastResultUpdates setObject:0 forKeyedSubscript:*(a1 + 40)];
  v3 = _resultsHistory;
  v4 = [*(a1 + 32) identifier];
  [v3 setObject:0 forKeyedSubscript:v4];
}

- (void)processInitialResults:(id)results forRaycast:(id)raycast
{
  resultsCopy = results;
  raycastCopy = raycast;
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_session);
    v10 = [v9 annotateAnchorToRaycastResults:resultsCopy];

    identifier = [raycastCopy identifier];
    firstObject = [v10 firstObject];
    [_initialRaycastResults setObject:firstObject forKeyedSubscript:identifier];

    query = [raycastCopy query];
    target = [query target];

    if (target == 2)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = 10;
      do
      {
        firstObject2 = [v10 firstObject];
        [v15 addObject:firstObject2];

        --v16;
      }

      while (v16);
      [_resultsHistory setObject:v15 forKeyedSubscript:identifier];
      v18 = _targetRaycastResultUpdates;
      identifier2 = [raycastCopy identifier];
      [v18 setObject:0 forKeyedSubscript:identifier2];
    }

    v20 = objc_loadWeakRetained(&self->_session);
    delegateQueue = [v20 delegateQueue];
    v22 = delegateQueue;
    if (!delegateQueue)
    {
      v22 = MEMORY[0x1E69E96A0];
      v23 = MEMORY[0x1E69E96A0];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__ARTrackedRaycastPostProcessor_processInitialResults_forRaycast___block_invoke;
    v24[3] = &unk_1E817BEC8;
    v25 = raycastCopy;
    resultsCopy = v10;
    v26 = resultsCopy;
    dispatch_async(v22, v24);
    if (!delegateQueue)
    {
    }
  }
}

void __66__ARTrackedRaycastPostProcessor_processInitialResults_forRaycast___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)processUpdatedResults:(id)results
{
  resultsCopy = results;
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained)
  {
    dispatch_semaphore_wait(_trackedRaycastSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__ARTrackedRaycastPostProcessor_processUpdatedResults___block_invoke;
    v6[3] = &unk_1E817CF78;
    v6[4] = self;
    v6[5] = &v7;
    [resultsCopy enumerateKeysAndObjectsUsingBlock:v6];
    dispatch_semaphore_signal(_trackedRaycastSemaphore);
    if (*(v8 + 24) == 1)
    {
      [(ARTrackedRaycastPostProcessor *)self startUpdateTimer];
    }

    _Block_object_dispose(&v7, 8);
  }
}

void __55__ARTrackedRaycastPostProcessor_processUpdatedResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 8));
  v9 = [WeakRetained annotateAnchorToRaycastResults:v6];

  v10 = [_trackedRaycasts objectForKeyedSubscript:v7];

  v11 = [v10 query];
  v12 = [v11 target];

  if (v12 == 2)
  {
    v13 = [v9 firstObject];
    if (v13)
    {
      if ([*(a1 + 32) result:v13 isCloseEnoughToInitialResultForRaycast:v10])
      {
        [v13 setTarget:2];
        v14 = _targetRaycastResultUpdates;
        v15 = [v10 identifier];
        [v14 setObject:v13 forKeyedSubscript:v15];

        if (!_updateTimer)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }
      }
    }
  }

  else if (v10 && [v9 count])
  {
    v16 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v17 = [v16 delegateQueue];
    v18 = v17;
    if (!v17)
    {
      v18 = MEMORY[0x1E69E96A0];
      v19 = MEMORY[0x1E69E96A0];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__ARTrackedRaycastPostProcessor_processUpdatedResults___block_invoke_2;
    v20[3] = &unk_1E817BEC8;
    v21 = v10;
    v22 = v9;
    dispatch_async(v18, v20);
    if (!v17)
    {
    }
  }
}

void __55__ARTrackedRaycastPostProcessor_processUpdatedResults___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) updateHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)performBlockWhileLockingRaycasts:(id)raycasts
{
  v3 = _trackedRaycastSemaphore;
  raycastsCopy = raycasts;
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  raycastsCopy[2](raycastsCopy);

  v5 = _trackedRaycastSemaphore;

  dispatch_semaphore_signal(v5);
}

- (void)updateFromPoseGraphEventWithData:(__n128)data referenceOriginTransform:(__n128)transform
{
  *&v97[32] = transform;
  *&v97[48] = a5;
  *v97 = a2;
  *&v97[16] = data;
  v112 = *MEMORY[0x1E69E9840];
  v8 = a7;
  dispatch_semaphore_wait(_trackedRaycastSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v68 = v8;
  obj = [v8 updatedAnchors];
  v72 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (v72)
  {
    v71 = *v99;
    selfCopy = self;
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v99 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v98 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [_trackedRaycasts objectForKeyedSubscript:identifier];
        if (v12)
        {
          *v13.i64 = ARRenderingToVisionCoordinateTransform();
          v90 = v14;
          v93 = v13;
          v84 = v16;
          v87 = v15;
          [v10 transform];
          v17 = 0;
          v107 = v18;
          v108 = v19;
          v109 = v20;
          v110 = v21;
          memset(&v111, 0, sizeof(v111));
          do
          {
            v111.columns[v17 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v107 + v17 * 8))), v90, *&v107.f64[v17], 1), v87, *(&v107 + v17 * 8), 2), v84, *(&v107 + v17 * 8), 3);
            v17 += 2;
          }

          while (v17 != 8);
          v91 = v111.columns[1];
          v94 = v111.columns[0];
          v85 = v111.columns[3];
          v88 = v111.columns[2];
          v22.f64[0] = ARVisionToRenderingCoordinateTransform();
          v23 = 0;
          v107 = v22;
          v108 = v24;
          v109 = v25;
          v110 = v26;
          memset(&v111, 0, sizeof(v111));
          do
          {
            v111.columns[v23 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, COERCE_FLOAT(*(&v107 + v23 * 8))), v91, *&v107.f64[v23], 1), v88, *(&v107 + v23 * 8), 2), v85, *(&v107 + v23 * 8), 3);
            v23 += 2;
          }

          while (v23 != 8);
          v77 = v111.columns[3];
          v80 = v111.columns[2];
          v113 = __invert_f4(v111);
          v92 = v113.columns[1];
          v95 = v113.columns[0];
          v86 = v113.columns[3];
          v89 = v113.columns[2];
          v111.columns[0] = vcvtq_f64_f32(*v77.f32);
          *v111.columns[1].i64 = v77.f32[2];
          v107 = vcvtq_f64_f32(*v80.f32);
          *&v108 = v80.f32[2];
          query = [v12 query];
          [query direction];
          v81 = v28;

          v114 = __invert_f4(*v97);
          v75 = v114.columns[0];
          v76 = v114.columns[1];
          v74 = v114.columns[3];
          v78 = v114.columns[2];
          v82 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114.columns[0], v81.f32[0]), v114.columns[1], *v81.f32, 1), v114.columns[2], v81, 2), 0, v114.columns[3]);
          *v29.i64 = ARRenderingToVisionCoordinateTransform();
          v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v82.f32[0]), v30, *v82.f32, 1), v31, v82, 2), v32, v82, 3);
          query2 = [v12 query];
          [query2 origin];
          v73 = v34;

          v79 = vaddq_f32(v74, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, v73.f32[0]), v76, *v73.f32, 1), v78, v73, 2));
          *v35.i64 = ARRenderingToVisionCoordinateTransform();
          v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v79.f32[0]), v36, *v79.f32, 1), v37, v79, 2), v38, v79, 3);
          v104 = vcvtq_f64_f32(*v39.f32);
          v105 = v39.f32[2];
          v115.columns[3] = v86;
          v102 = vcvtq_f64_f32(*v83.f32);
          v103 = v83.f32[2];
          v115.columns[1] = v92;
          v115.columns[0] = v95;
          v115.columns[2] = v89;
          ARWorldTransformFromVisionTransform(v115, *v97, *&v97[16], *&v97[32], *&v97[48]);
          v92.i64[0] = v41;
          v95.i64[0] = v40;
          v42 = [ARRaycastQuery alloc];
          query3 = [v12 query];
          target = [query3 target];
          query4 = [v12 query];
          v46 = -[ARRaycastQuery initWithOrigin:direction:allowingTarget:alignment:](v42, "initWithOrigin:direction:allowingTarget:alignment:", target, [query4 targetAlignment], *v92.i64, *v95.i64);

          v96 = v46;
          [v12 setTrackedQuery:v46];
          v47 = [_initialRaycastResults objectForKeyedSubscript:identifier];
          v48 = v47;
          if (v47)
          {
            [v47 worldTransform];
            [self updatePose:&v104 referenceOriginTransform:&v102 oldRayOrigin:&v111 oldRayDirection:&v107 newRayOrigin:? newRayDirection:?];
            v53 = -[ARRaycastResult initWithWorldTransform:target:targetAlignment:]([ARRaycastResult alloc], "initWithWorldTransform:target:targetAlignment:", [v48 target], objc_msgSend(v48, "targetAlignment"), v49, v50, v51, v52);
            anchor = [v48 anchor];
            [(ARRaycastResult *)v53 setAnchor:anchor];

            anchorIdentifier = [v48 anchorIdentifier];
            [(ARRaycastResult *)v53 setAnchorIdentifier:anchorIdentifier];

            [_initialRaycastResults setObject:v53 forKeyedSubscript:identifier];
          }

          v56 = [_targetRaycastResultUpdates objectForKeyedSubscript:identifier];
          v57 = v56;
          if (v56)
          {
            [v56 worldTransform];
            [self updatePose:&v104 referenceOriginTransform:&v102 oldRayOrigin:&v111 oldRayDirection:&v107 newRayOrigin:? newRayDirection:?];
            v62 = -[ARRaycastResult initWithWorldTransform:target:targetAlignment:]([ARRaycastResult alloc], "initWithWorldTransform:target:targetAlignment:", [v57 target], objc_msgSend(v57, "targetAlignment"), v58, v59, v60, v61);
            anchor2 = [v57 anchor];
            [(ARRaycastResult *)v62 setAnchor:anchor2];

            anchorIdentifier2 = [v57 anchorIdentifier];
            [(ARRaycastResult *)v62 setAnchorIdentifier:anchorIdentifier2];

            [_targetRaycastResultUpdates setObject:v62 forKeyedSubscript:identifier];
            v65 = [_resultsHistory objectForKeyedSubscript:identifier];
            v66 = v65;
            if (v65)
            {
              [v65 removeAllObjects];
              v67 = 10;
              do
              {
                [v66 addObject:v62];
                --v67;
              }

              while (v67);
            }

            self = selfCopy;
          }
        }
      }

      v72 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v72);
  }

  dispatch_semaphore_signal(_trackedRaycastSemaphore);
}

- (double)updatePose:(__n128)pose referenceOriginTransform:(__n128)transform oldRayOrigin:(simd_float4)origin oldRayDirection:(simd_float4)direction newRayOrigin:(simd_float4)rayOrigin newRayDirection:(simd_float4)rayDirection
{
  v20 = *MEMORY[0x1E69E9840];
  *v8.i64 = ARVisionTransformFromWorldTransform(self, a2, pose, transform, origin, direction, rayOrigin, rayDirection);
  ARMatrix4x4RowMajorRotationAndTranslation(v19, &v18, v8, v9, v10, v11);
  CV3DUpdateHitTestResultPose();
  *v21.columns[0].i64 = ARMatrix4x4MakeRowMajorTransform(v17);
  return ARWorldTransformFromVisionTransform(v21, origin, direction, rayOrigin, rayDirection);
}

- (BOOL)result:(id)result isCloseEnoughToInitialResultForRaycast:(id)raycast
{
  resultCopy = result;
  raycastCopy = raycast;
  v7 = _initialRaycastResults;
  identifier = [raycastCopy identifier];
  v9 = [v7 objectForKeyedSubscript:identifier];

  v10 = 1;
  if (resultCopy && v9)
  {
    [v9 worldTransform];
    v23 = v11;
    [resultCopy worldTransform];
    v22 = v12;
    query = [raycastCopy query];
    [query origin];
    v15 = vsubq_f32(v14, v23);
    v16 = vmulq_f32(v15, v15);
    v17 = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));

    v18 = v17 * 0.1;
    v19 = vsubq_f32(v23, v22);
    v20 = vmulq_f32(v19, v19);
    v10 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)) <= v18;
  }

  return v10;
}

- (void)startUpdateTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ARTrackedRaycastPostProcessor_startUpdateTimer__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __49__ARTrackedRaycastPostProcessor_startUpdateTimer__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_updateFromTimer_ selector:0 userInfo:1 repeats:0.1];
  v2 = _updateTimer;
  _updateTimer = v1;

  v3 = _updateTimer;

  return [v3 fire];
}

- (void)updateFromTimer:(id)timer
{
  if (_updateTimer == timer)
  {
    v6[7] = v3;
    v6[8] = v4;
    dispatch_semaphore_wait(_trackedRaycastSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__ARTrackedRaycastPostProcessor_updateFromTimer___block_invoke;
    v6[3] = &unk_1E817CFA0;
    v6[4] = self;
    [_trackedRaycasts enumerateKeysAndObjectsUsingBlock:v6];
    dispatch_semaphore_signal(_trackedRaycastSemaphore);
  }

  else
  {

    [timer invalidate];
  }
}

void __49__ARTrackedRaycastPostProcessor_updateFromTimer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v123 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 query];
  v8 = [v7 target];

  if (v8 == 2)
  {
    v9 = [_targetRaycastResultUpdates objectForKeyedSubscript:v5];
    v10 = v9;
    if (v9)
    {
      [v9 worldTransform];
      v106 = v11;
      *v124.columns[0].i64 = ARMatrix3x3FromMatrix4x4([v10 worldTransform]);
      *v12.i64 = simd_quaternion(v124);
      v102 = v12;
      p_vtable = &OBJC_METACLASS___ARTrackedRaycastPostProcessor.vtable;
      v14 = [_resultsHistory objectForKeyedSubscript:v5];
      v15 = [v14 lastObject];
      [v15 worldTransform];
      v108 = v16;
      *v125.columns[0].i64 = ARMatrix3x3FromMatrix4x4([v15 worldTransform]);
      *v17.i64 = simd_quaternion(v125);
      v18 = v17;
      v19 = vsubq_f32(v108, v106);
      v20 = vmulq_f32(v19, v19);
      v100 = v18;
      if (sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)) > 0.005)
      {
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v21 = v14;
        v22 = [v21 countByEnumeratingWithState:&v118 objects:v122 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v119;
          v109 = 0u;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v119 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [*(*(&v118 + 1) + 8 * i) worldTransform];
              v109 = vaddq_f32(v109, v26);
            }

            v23 = [v21 countByEnumeratingWithState:&v118 objects:v122 count:16];
          }

          while (v23);
        }

        [v21 count];
        p_vtable = (&OBJC_METACLASS___ARTrackedRaycastPostProcessor + 24);
        v18 = v100;
      }

      v27 = vmulq_f32(v18, v18);
      v28 = atan2f(sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)), v18.f32[3]);
      v29 = v28 + v28;
      v30 = vmulq_f32(v102, v102);
      v31 = atan2f(sqrtf(v30.f32[2] + vaddv_f32(*v30.f32)), v102.f32[3]);
      _Q19 = v102;
      v33 = vabds_f32(v29, v31 + v31);
      if (v33 > 0.0087266)
      {
        v34 = 0.0087266 / v33;
        v35 = vmulq_f32(v102, v100);
        v36 = vextq_s8(v35, v35, 8uLL);
        *v35.f32 = vadd_f32(*v35.f32, *v36.f32);
        v35.f32[0] = vaddv_f32(*v35.f32);
        v36.i64[0] = 0;
        v37 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v35, v36)), 0), vnegq_f32(v102), v102);
        v38 = 1.0;
        v39 = 1.0 - v34;
        v40 = vsubq_f32(v100, v37);
        v41 = vmulq_f32(v40, v40);
        v110 = v37;
        v42 = vaddq_f32(v100, v37);
        v43 = vmulq_f32(v42, v42);
        v44 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)))));
        v45 = v44 + v44;
        _ZF = (v44 + v44) == 0.0;
        v47 = 1.0;
        if (!_ZF)
        {
          v47 = sinf(v45) / v45;
        }

        v48 = v47;
        v49 = vrecpe_f32(LODWORD(v47));
        v50 = vmul_f32(v49, vrecps_f32(LODWORD(v48), v49));
        LODWORD(v51) = vmul_f32(v50, vrecps_f32(LODWORD(v48), v50)).u32[0];
        if ((v39 * v45) != 0.0)
        {
          v103 = v51;
          v50.f32[0] = sinf(v39 * v45);
          v51 = v103;
          v38 = v50.f32[0] / (v39 * v45);
        }

        v50.f32[0] = v39 * (v51 * v38);
        v52 = vdupq_lane_s32(v50, 0);
        v53 = v34 * v45;
        v54 = 1.0;
        if (v53 != 0.0)
        {
          v104 = v51;
          v99 = v52;
          v55 = sinf(v53);
          v52 = v99;
          v51 = v104;
          v54 = v55 / v53;
        }

        v56 = vmlaq_f32(vmulq_n_f32(v110, v34 * (v51 * v54)), v100, v52);
        v57 = vmulq_f32(v56, v56);
        v58 = vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
        if (vaddv_f32(v58) == 0.0)
        {
          _Q19 = xmmword_1C25C8560;
        }

        else
        {
          v59 = vadd_f32(v58, vdup_lane_s32(v58, 1)).u32[0];
          v60 = vrsqrte_f32(v59);
          v61 = vmul_f32(v60, vrsqrts_f32(v59, vmul_f32(v60, v60)));
          _Q19 = vmulq_n_f32(v56, vmul_f32(v61, vrsqrts_f32(v59, vmul_f32(v61, v61))).f32[0]);
        }
      }

      _S3 = _Q19.i32[1];
      _S4 = _Q19.i32[2];
      __asm { FMLS            S0, S4, V19.S[2] }

      _S5 = _Q19.i32[3];
      __asm
      {
        FMLA            S0, S5, V19.S[3]
        FMLA            S2, S3, V19.S[1]
        FMLA            S2, S5, V19.S[3]
        FMLA            S2, S4, V19.S[1]
        FMLA            S5, S4, V19.S[2]
        FMLS            S4, S3, V19.S[1]
      }

      ARMatrix4x4FromRotationAndTranslation();
      v107 = v76;
      v111 = v75;
      v101 = v78;
      v105 = v77;
      [v10 worldTransform];
      if (AREqualTransforms(v111, v107, v105, v101, v79, v80, v81, v82))
      {
        [v14 removeAllObjects];
        [v14 addObject:v10];
        [_targetRaycastResultUpdates setObject:0 forKeyedSubscript:v5];
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        v84 = [WeakRetained delegateQueue];
        v85 = v84;
        if (!v84)
        {
          v85 = MEMORY[0x1E69E96A0];
          v86 = MEMORY[0x1E69E96A0];
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__ARTrackedRaycastPostProcessor_updateFromTimer___block_invoke_3;
        block[3] = &unk_1E817BEC8;
        v113 = v6;
        v114 = v10;
        dispatch_async(v85, block);
        if (!v84)
        {
        }

        v87 = v113;
      }

      else
      {
        v88 = [ARRaycastResult alloc];
        v89 = [v6 query];
        v90 = [v89 target];
        v91 = [v6 query];
        v92 = -[ARRaycastResult initWithWorldTransform:target:targetAlignment:](v88, "initWithWorldTransform:target:targetAlignment:", v90, [v91 targetAlignment], *v111.i64, *v107.i64, *v105.i64, *v101.i64);

        v93 = [v10 anchor];
        [(ARRaycastResult *)v92 setAnchor:v93];

        v94 = [v10 anchorIdentifier];
        [(ARRaycastResult *)v92 setAnchorIdentifier:v94];

        [v14 addObject:v92];
        if ([v14 count] >= 0xB)
        {
          [v14 removeObjectAtIndex:0];
        }

        v95 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v96 = [v95 delegateQueue];
        v97 = v96;
        if (!v96)
        {
          v97 = MEMORY[0x1E69E96A0];
          v98 = MEMORY[0x1E69E96A0];
        }

        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 3221225472;
        v115[2] = __49__ARTrackedRaycastPostProcessor_updateFromTimer___block_invoke_2;
        v115[3] = &unk_1E817BEC8;
        v116 = v6;
        v117 = v92;
        v87 = v92;
        dispatch_async(v97, v115);
        if (!v96)
        {
        }

        p_vtable = &OBJC_METACLASS___ARTrackedRaycastPostProcessor.vtable;
      }

      [p_vtable[238] setObject:v14 forKeyedSubscript:v5];
    }
  }
}

void __49__ARTrackedRaycastPostProcessor_updateFromTimer___block_invoke_2(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) updateHandler];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  (v2)[2](v2, v3);
}

void __49__ARTrackedRaycastPostProcessor_updateFromTimer___block_invoke_3(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) updateHandler];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  (v2)[2](v2, v3);
}

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end