@interface AVTPhysicsController
- (AVTPhysicsController)init;
- (AVTPhysicsControllerDelegate)delegate;
- (__n128)offsetFromRestingPositionForNode:(void *)node inCoordinateSpaceOfNode:(void *)ofNode;
- (id)physicsState;
- (void)_setupPhysicsChain:(id)chain physicsRigs:(id)rigs;
- (void)addToPhysicsWorld:(id)world;
- (void)applyForcesWithMultiplier:(double)multiplier;
- (void)downforcesDidChange;
- (void)installPhysics;
- (void)physicsState;
- (void)removeFromPhysicsWorld:(id)world;
- (void)resetToPhysicsState:(id)state assumeRestStateIfNil:(BOOL)nil;
- (void)setupPhysics;
- (void)setupPhysicsIfNeeded;
- (void)updateAtTime:(double)time forceMultiplier:(double)multiplier;
@end

@implementation AVTPhysicsController

- (AVTPhysicsController)init
{
  v3.receiver = self;
  v3.super_class = AVTPhysicsController;
  result = [(AVTPhysicsController *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)applyForcesWithMultiplier:(double)multiplier
{
  v55 = *MEMORY[0x1E69E9840];
  if (!self->_hasPhysicsStateOverride)
  {
    if (!self->_setupDone)
    {
      v5 = avt_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(AVTPhysicsController *)v5 applyForcesWithMultiplier:v6, v7, v8, v9, v10, v11, v12];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_physicsWorld);
    [WeakRetained scale];
    v47 = v14;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = self->_physicsRigs;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v51;
      v19 = *v47.i32 * multiplier;
      v49 = v19;
      v45 = vdupq_lane_s32(v47, 0);
      __asm { FMOV            V0.4S, #5.0 }

      v48 = _Q0;
      v43 = vdupq_n_s32(0x42440000u);
      v44 = xmmword_1BB4F0590;
      do
      {
        v25 = 0;
        do
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v26 = *(*(&v50 + 1) + 8 * v25);
          if (v26)
          {
            v27 = *(v26 + 16);
          }

          else
          {
            v27 = 0;
          }

          presentationNode = [v27 presentationNode];
          if (v26)
          {
            v29 = *(v26 + 24);
          }

          else
          {
            v29 = 0;
          }

          presentationNode2 = [v29 presentationNode];
          if (v26)
          {
            v31 = *(v26 + 32);
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;
          [presentationNode convertPosition:presentationNode2 toNode:0.0];
          if (v26)
          {
            v34 = *(v26 + 64);
          }

          else
          {
            v34 = 0uLL;
          }

          v35 = vmulq_f32(vsubq_f32(v34, v33), v48);
          v36 = vmulq_f32(v35, v35);
          v37 = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
          if (v37 > 20.0)
          {
            v35.i64[0] = vmulq_n_f32(v35, 20.0 / v37).u64[0];
          }

          [presentationNode2 convertVector:0 toNode:*v35.i64];
          v39 = vmulq_n_f32(v38, v49);
          if (v26)
          {
            if (*(v26 + 48) < 0.0)
            {
              goto LABEL_27;
            }

            v46 = v39;
            v39 = *(v26 + 80);
          }

          else
          {
            v46 = v39;
            v39.i64[0] = 0;
          }

          [presentationNode2 convertVector:0 toNode:*v39.i64];
          if (v26)
          {
            v40 = *(v26 + 48);
          }

          else
          {
            v40 = 0.0;
          }

          v39.i64[0] = vmlaq_n_f32(v46, vmulq_f32(vmlsq_f32(v44, v45, v39), v43), v40).u64[0];
LABEL_27:
          [v32 applyForce:0 impulse:*v39.i64];

          ++v25;
        }

        while (v17 != v25);
        v41 = [(NSArray *)v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
        v17 = v41;
      }

      while (v41);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)updateAtTime:(double)time forceMultiplier:(double)multiplier
{
  if (!self->_hasPhysicsStateOverride)
  {
    if (self->_physicsBehaviorsAreInstalledInPhysicsWorld)
    {
      [(AVTPhysicsController *)self applyForcesWithMultiplier:multiplier];
    }

    else
    {
      self->_physicsBehaviorsAreInstalledInPhysicsWorld = 1;
      [(AVTPhysicsController *)self installPhysics:time];
    }
  }
}

- (__n128)offsetFromRestingPositionForNode:(void *)node inCoordinateSpaceOfNode:(void *)ofNode
{
  v40 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  ofNodeCopy = ofNode;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = 0u;
  v8 = *(self + 16);
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        if (v13)
        {
          v14 = *(v13 + 16);
        }

        else
        {
          v14 = 0;
        }

        if (v14 == nodeCopy)
        {
          if (*(self + 37))
          {
            if (v13)
            {
              v16 = *(v13 + 24);
              v17 = *(v13 + 64);
            }

            else
            {
              v16 = 0;
              *&v17 = 0;
            }

            [v16 convertPosition:ofNodeCopy toNode:*&v17];
            v33 = v18;

            [nodeCopy convertPosition:ofNodeCopy toNode:0.0];
            v32 = vsubq_f32(v19, v33);
          }

          else
          {
            presentationNode = [ofNodeCopy presentationNode];
            if (v13)
            {
              v21 = *(v13 + 24);
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;
            presentationNode2 = [v22 presentationNode];
            v24 = presentationNode2;
            if (v13)
            {
              v25 = *(v13 + 64);
            }

            else
            {
              *&v25 = 0;
            }

            [presentationNode2 convertPosition:presentationNode toNode:*&v25];
            v34 = v26;

            presentationNode3 = [nodeCopy presentationNode];
            [presentationNode3 convertPosition:presentationNode toNode:0.0];
            v31 = v28;

            v32 = vsubq_f32(v31, v34);
          }

          goto LABEL_23;
        }

        ++v12;
      }

      while (v10 != v12);
      v15 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v10 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  v29 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)installPhysics
{
  [(AVTPhysicsController *)self setupPhysicsIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_physicsWorld);
  v4 = MEMORY[0x1E69DF378];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__AVTPhysicsController_installPhysics__block_invoke;
  v6[3] = &unk_1E7F47E78;
  v6[4] = self;
  v7 = WeakRetained;
  v5 = WeakRetained;
  [v4 enqueueCommandForObject:v5 immediateTransactionBlock:v6];
}

uint64_t __38__AVTPhysicsController_installPhysics__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        if (!v7 || !*(v7 + 40))
        {
          v8 = avt_default_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            __38__AVTPhysicsController_installPhysics__block_invoke_cold_1(buf, &v21, v8);
          }
        }

        if (v7)
        {
          v9 = *(v7 + 40);
        }

        else
        {
          v9 = 0;
        }

        [*(a1 + 40) addPhysicsJoint:{v9, v16}];
        ++v6;
      }

      while (v4 != v6);
      v10 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
      v4 = v10;
    }

    while (v10);
  }

  LODWORD(v11) = 8.0;
  [*(a1 + 40) setSpeed:v11];
  v12 = 60;
  do
  {
    [*(a1 + 32) applyForcesWithMultiplier:{1.0, v16}];
    [*(a1 + 40) _step:0.0166666667];
    --v12;
  }

  while (v12);
  LODWORD(v13) = 4.0;
  result = [*(a1 + 40) setSpeed:v13];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setupPhysicsIfNeeded
{
  if (!self->_setupDone)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_setupDone)
    {
      [(AVTPhysicsController *)self setupPhysics];
      self->_setupDone = 1;
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setupPhysics
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

void __36__AVTPhysicsController_setupPhysics__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 name];
  v4 = [v3 hasSuffix:@"_DYN"];

  if (v4)
  {
    v5 = [v8 parentNode];
    v6 = [v5 name];
    v7 = [v6 hasSuffix:@"_DYN"];

    if ((v7 & 1) == 0)
    {
      [*(a1 + 32) _setupPhysicsChain:v8 physicsRigs:*(a1 + 40)];
    }
  }
}

void __44__AVTPhysicsController__setupCollisionNode___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = [v8 model];

  if (v2)
  {
    v3 = [MEMORY[0x1E69DF340] kinematicBody];
    [v8 setPhysicsBody:v3];

    v4 = [v8 physicsBody];
    [v4 setRestitution:0.0];

    v5 = [v8 physicsBody];
    LODWORD(v6) = 1.0;
    [v5 setFriction:v6];

    v7 = [v8 physicsBody];
    [v7 setCategoryBitMask:8];

    [v8 setOpacity:0.0];
  }
}

- (void)_setupPhysicsChain:(id)chain physicsRigs:(id)rigs
{
  chainCopy = chain;
  rigsCopy = rigs;
  if (chainCopy)
  {
    LODWORD(v8) = 1.5;
    v9 = [MEMORY[0x1E69DF338] sphereWithRadius:v8];
    [v9 setSegmentCount:12];
    kinematicBody = [MEMORY[0x1E69DF340] kinematicBody];
    [kinematicBody setAffectedByGravity:0];
    LODWORD(v11) = 1061997773;
    [kinematicBody setDamping:v11];
    LODWORD(v12) = 1061997773;
    [kinematicBody setAngularDamping:v12];
    [chainCopy setPhysicsBody:kinematicBody];
    v13 = [MEMORY[0x1E69DF350] shapeWithModel:v9];
    [kinematicBody setPhysicsShape:v13];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__1;
    v23[4] = __Block_byref_object_dispose__1;
    v24 = chainCopy;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__AVTPhysicsController__setupPhysicsChain_physicsRigs___block_invoke;
    v16[3] = &unk_1E7F47EC8;
    v17 = v24;
    v14 = v13;
    v22 = v23;
    v18 = v14;
    selfCopy = self;
    v15 = kinematicBody;
    v20 = v15;
    v21 = rigsCopy;
    [v17 enumerateChildNodesUsingBlock:v16];

    _Block_object_dispose(v23, 8);
  }
}

- (void)downforcesDidChange
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)physicsState
{
  v42 = *MEMORY[0x1E69E9840];
  if (!self->_physicsRigs)
  {
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AVTPhysicsController *)v3 physicsState:v4];
    }
  }

  v34 = _AVTPoseRoundingBehaviour();
  v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_physicsRigs, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_physicsRigs;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      v15 = 0;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * v15);
        if (v16)
        {
          v17 = *(v16 + 16);
          v18 = *(v16 + 24);
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        v19 = v18;
        if (self->_physicsBehaviorsAreInstalledInPhysicsWorld)
        {
          presentationNode = [v17 presentationNode];

          presentationNode2 = [v19 presentationNode];

          v19 = presentationNode2;
          v17 = presentationNode;
        }

        name = [v17 name];
        [v19 convertPosition:v17 fromNode:0.0];
        if (v16)
        {
          v24 = *(v16 + 64);
        }

        else
        {
          v24 = 0uLL;
        }

        v25 = vsubq_f32(v23, v24);
        v26 = vmulq_f32(v25, v25);
        if ((v26.f32[2] + vaddv_f32(*v26.f32)) >= 0.1)
        {
          v39 = @"offset";
          v27 = [MEMORY[0x1E695DEC8] avt_arrayWithFloat3:v34 roundingBehavior:?];
          v40 = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          [v33 setObject:v28 forKeyedSubscript:name];
        }

        ++v15;
      }

      while (v13 != v15);
      v29 = [(NSArray *)v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
      v13 = v29;
    }

    while (v29);
  }

  v30 = [[AVTAvatarPhysicsState alloc] initWithDictionaryRepresentation:v33];
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)resetToPhysicsState:(id)state assumeRestStateIfNil:(BOOL)nil
{
  nilCopy = nil;
  v37 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  [(AVTPhysicsController *)self setupPhysicsIfNeeded];
  if (stateCopy || nilCopy)
  {
    self->_hasPhysicsStateOverride = 1;
    v26 = stateCopy;
    dictionaryRepresentation = [stateCopy dictionaryRepresentation];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = self->_physicsRigs;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        v11 = 0;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          if (v12)
          {
            v13 = *(v12 + 16);
            v14 = *(v12 + 24);
          }

          else
          {
            v13 = 0;
            v14 = 0;
          }

          v15 = v14;
          parentNode = [v13 parentNode];
          name = [v13 name];
          v18 = [(NSArray *)dictionaryRepresentation objectForKeyedSubscript:name];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 objectForKeyedSubscript:@"offset"];
            [v20 avt_float3];
            v29 = v21;

            if (v12)
            {
              v22 = *(v12 + 64);
            }

            else
            {
              v22 = 0uLL;
            }

            v22.i64[0] = vaddq_f32(v29, v22).u64[0];
          }

          else if (v12)
          {
            v22 = *(v12 + 64);
          }

          else
          {
            v22.i64[0] = 0;
          }

          [v15 convertPosition:parentNode toNode:*v22.i64];
          [v13 setPosition:?];
          physicsBody = [v13 physicsBody];
          [physicsBody setResting:1];

          ++v11;
        }

        while (v9 != v11);
        v24 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        v9 = v24;
      }

      while (v24);
    }

    stateCopy = v26;
  }

  else
  {
    self->_hasPhysicsStateOverride = 0;
    memset(v30, 0, sizeof(v30));
    dictionaryRepresentation = self->_physicsRigs;
    v7 = [(NSArray *)dictionaryRepresentation countByEnumeratingWithState:v30 objects:v35 count:16];
    if (v7)
    {
      [(AVTPhysicsController *)v30 resetToPhysicsState:dictionaryRepresentation assumeRestStateIfNil:v7, v35];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)addToPhysicsWorld:(id)world
{
  worldCopy = world;
  WeakRetained = objc_loadWeakRetained(&self->_physicsWorld);

  if (WeakRetained)
  {
    v6 = avt_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AVTPhysicsController *)v6 addToPhysicsWorld:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  objc_storeWeak(&self->_physicsWorld, worldCopy);
}

- (void)removeFromPhysicsWorld:(id)world
{
  v28 = *MEMORY[0x1E69E9840];
  worldCopy = world;
  WeakRetained = objc_loadWeakRetained(&self->_physicsWorld);

  if (WeakRetained != worldCopy)
  {
    v6 = avt_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AVTPhysicsController *)v6 removeFromPhysicsWorld:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_physicsBehaviorsAreInstalledInPhysicsWorld)
  {
    self->_physicsBehaviorsAreInstalledInPhysicsWorld = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = self->_physicsRigs;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * v18);
          if (v19)
          {
            [worldCopy removePhysicsJoint:{*(v19 + 40), v23}];
            v20 = *(v19 + 16);
          }

          else
          {
            [AVTPhysicsController removeFromPhysicsWorld:worldCopy];
            v20 = 0;
          }

          [v20 setPhysicsBody:{0, v23}];
          ++v18;
        }

        while (v16 != v18);
        v21 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v16 = v21;
      }

      while (v21);
    }
  }

  objc_storeWeak(&self->_physicsWorld, 0);

  v22 = *MEMORY[0x1E69E9840];
}

- (AVTPhysicsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__AVTPhysicsController__setupPhysicsChain_physicsRigs___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v64 = objc_alloc_init(AVTPhysicsRig);
  [(AVTPhysicsRig *)v64 setRig:v5];
  [(AVTPhysicsRig *)v64 setChainRoot:?];
  v6 = [MEMORY[0x1E69DF340] dynamicBody];
  [v6 setPhysicsShape:*(a1 + 40)];
  [v6 setCategoryBitMask:3];
  [v6 setCollisionBitMask:8];
  [v6 setAffectedByGravity:0];
  LODWORD(v7) = 1061997773;
  [v6 setDamping:v7];
  LODWORD(v8) = 1061997773;
  [v6 setAngularDamping:v8];
  [v5 setPhysicsBody:v6];
  [(AVTPhysicsRig *)v64 setPhysicsBody:v6];
  [v5 convertPosition:*(a1 + 32) toNode:0.0];
  v60 = v9;
  OUTLINED_FUNCTION_1_0();
  [v5 convertPosition:*(v10 + 40) toNode:0.0];
  v62 = v11;
  if (v64)
  {
    *v64->_restPosition_chainRoot = v60;
    [*(a1 + 32) convertVector:0 fromNode:-0.0078125];
    *v64->_restGravityVector_chainRoot = v12;
  }

  else
  {
    [*(a1 + 32) convertVector:0 fromNode:-0.0078125];
  }

  v13 = [v5 name];
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 40));
    v15 = *(a1 + 48);
    v3 = [v5 name];
    [WeakRetained physicsController:v15 downforceForNodeNamed:v3];
  }

  else
  {
    v14 = -1.0;
  }

  if (v64)
  {
    v64->_downForceFactor = v14;
  }

  if (v13)
  {
  }

  v16 = vmulq_f32(v62, v62);
  v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  if (v64)
  {
    v64->_coneConstraintLength = sqrtf(v17);
    v64->_coneConstraintSinusAngularLimit = 0.30902;
  }

  v18 = v17;
  v19 = vrsqrte_f32(LODWORD(v17));
  v20 = vmul_f32(v19, vrsqrts_f32(LODWORD(v18), vmul_f32(v19, v19)));
  v21 = vmulq_n_f32(v62, vmul_f32(v20, vrsqrts_f32(LODWORD(v18), vmul_f32(v20, v20))).f32[0]);
  v22 = vabsq_f32(v21);
  if (v22.f32[0] >= v22.f32[1])
  {
    if (v22.f32[1] < v22.f32[2])
    {
      v23.i32[1] = 0;
      v23.f32[0] = -v21.f32[2];
      v23.i64[1] = v21.u32[0];
      goto LABEL_18;
    }
  }

  else if (v22.f32[0] < v22.f32[2])
  {
    v23.i32[0] = 0;
    v23.f32[1] = -v21.f32[2];
    v23.i64[1] = v21.u32[1];
    goto LABEL_18;
  }

  v23.i64[1] = 0;
  v23.f32[0] = -v21.f32[1];
  v23.i32[1] = v21.i32[0];
LABEL_18:
  if (v64)
  {
    v24 = vmulq_f32(v23, v23);
    *&v25 = v24.f32[2] + vaddv_f32(*v24.f32);
    *v24.f32 = vrsqrte_f32(v25);
    *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)));
    v26 = vmulq_n_f32(v23, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]);
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v21)), v26, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
    *v64->_anon_60 = v21;
    *&v64->_anon_60[16] = v26;
    *&v64->_anon_60[32] = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  }

  v28 = *MEMORY[0x1E69E9B18];
  v29 = *(MEMORY[0x1E69E9B18] + 16);
  v30 = *(MEMORY[0x1E69E9B18] + 32);
  v31 = *(MEMORY[0x1E69E9B18] + 48);
  OUTLINED_FUNCTION_1_0();
  v61 = v34;
  v63 = v33;
  v58 = v36;
  v59 = v35;
  [v5 convertTransform:*(v32 + 40) fromNode:?];
  if (v64)
  {
    *&v64[1].super.isa = v37;
    *&v64[1]._rig = v38;
    *&v64[1]._physicsBody = v39;
    *&v64[1]._downForceFactor = v40;
  }

  OUTLINED_FUNCTION_1_0();
  v43 = *(v42 + 40);
  v44 = *(a1 + 32);
  v45 = MEMORY[0x1E69DF348];
  if (v43 == v44)
  {
    v46 = *(a1 + 56);
  }

  else
  {
    v46 = [v43 physicsBody];
    v41 = v64;
  }

  if (v41)
  {
    v47 = *&v41[1].super.isa;
    v48 = *&v41[1]._rig;
    v49 = *&v41[1]._physicsBody;
    v50 = *&v41[1]._downForceFactor;
  }

  else
  {
    *&v49 = 0;
    *&v48 = 0;
    *&v47 = 0;
    *&v50 = 0;
  }

  v51 = [v45 jointWithBodyA:v46 frameA:v6 bodyB:v63 frameB:{v61, v59, v58, *&v47, *&v48, *&v49, *&v50}];
  v53 = 0;
  if (v43 != v44)
  {

    v53 = 1050728828;
  }

  LODWORD(v52) = 1050728828;
  [v51 setMaximumAngularLimit1:v52];
  LODWORD(v54) = 1050728828;
  [v51 setMaximumAngularLimit2:v54];
  LODWORD(v55) = v53;
  [v51 setMaximumTwistAngle:v55];
  [(AVTPhysicsRig *)v64 setPhysicsBehavior:v51];
  [*(a1 + 64) addObject:v64];
  OUTLINED_FUNCTION_1_0();
  v57 = *(v56 + 40);
  *(v56 + 40) = v5;
}

- (void)applyForcesWithMultiplier:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Internal consistency error, at this point we should have a initialized the physcis controller", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __38__AVTPhysicsController_installPhysics__block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "physicsRig.physicsBehavior";
}

- (void)physicsState
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

- (uint64_t)resetToPhysicsState:(uint64_t)a3 assumeRestStateIfNil:(uint64_t)a4 .cold.1(uint64_t a1, id obj, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 16);
  do
  {
    v9 = 0;
    do
    {
      if (**(a1 + 16) != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(a1 + 8) + 8 * v9);
      if (v10)
      {
        v11 = *(v10 + 16);
      }

      else
      {
        v11 = 0;
      }

      v12 = [v11 physicsBody];
      [v12 setResting:0];

      ++v9;
    }

    while (a3 != v9);
    result = [obj countByEnumeratingWithState:a1 objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

- (void)addToPhysicsWorld:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. An avatar should not be shared across renderers", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeFromPhysicsWorld:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. An avatar should not be shared across renderers", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end