@interface AVTPhysicalizedMorpherDynamic
+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar ignoredUpperNodes:(void *)nodes usingBlock:;
- (BOOL)affectsNode:(id)node;
- (NSString)description;
- (void)evaluateAtTime:(double)time physicsController:(id)controller;
- (void)resetTarget;
@end

@implementation AVTPhysicalizedMorpherDynamic

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  writeMorpher = self->_writeMorpher;
  name = [(VFXNode *)self->_drivingNode name];
  v7 = [v3 stringWithFormat:@"<%@ %p | Morpher %p driven by %@>", v4, self, writeMorpher, name];

  return v7;
}

+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar ignoredUpperNodes:(void *)nodes usingBlock:
{
  hierarchyCopy = hierarchy;
  avatarCopy = avatar;
  nodesCopy = nodes;
  v11 = a2;
  objc_opt_self();
  avatarNode = [hierarchyCopy avatarNode];
  v13 = [avatarNode childNodeWithName:@"head_JNT" recursively:1];
  specializationSettings = [hierarchyCopy specializationSettings];
  v15 = [specializationSettings objectForKeyedSubscript:@"dynamics"];
  v16 = [v15 objectForKeyedSubscript:@"dynamic nodes"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __101__AVTPhysicalizedMorpherDynamic_enumerateDynamicsInHierarchy_forAvatar_ignoredUpperNodes_usingBlock___block_invoke;
  v23[3] = &unk_1E7F47D90;
  v24 = avatarCopy;
  v25 = avatarNode;
  v26 = v16;
  v27 = v13;
  v28 = hierarchyCopy;
  v29 = nodesCopy;
  v17 = nodesCopy;
  v18 = hierarchyCopy;
  v19 = v13;
  v20 = v16;
  v21 = avatarNode;
  v22 = avatarCopy;
  [v11 enumerateHierarchyUsingBlock:v23];
}

void __101__AVTPhysicalizedMorpherDynamic_enumerateDynamicsInHierarchy_forAvatar_ignoredUpperNodes_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v46 = a2;
  v51 = [v46 morpher];
  v2 = v51;
  if (v51)
  {
    v3 = [*(a1 + 32) containsObject:v46];
    v52 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v4 = [v51 targets];
    v5 = [v4 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v5)
    {
      v6 = *v60;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v60 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v59 + 1) + 8 * i);
          if (v3)
          {
            v9 = [*(*(&v59 + 1) + 8 * i) name];
            v10 = [v9 containsString:@"upper"];

            if (v10)
            {
              continue;
            }
          }

          v11 = [v8 name];
          v12 = [v11 rangeOfString:@"_DYN"];
          v14 = v13;

          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = [v8 name];
            v16 = [v15 substringToIndex:v12 + v14];

            [v52 addObject:v16];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v5);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v52;
    v49 = [obj countByEnumeratingWithState:&v55 objects:v72 count:16];
    if (v49)
    {
      v48 = *v56;
      *&v17 = 138412546;
      v45 = v17;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v56 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v55 + 1) + 8 * v18);
          v53 = [*(a1 + 40) childNodeWithName:v19 recursively:{1, v45}];
          if (!v53)
          {
            v43 = avt_default_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v67) = 138412290;
              *(&v67 + 4) = v19;
              _os_log_impl(&dword_1BB472000, v43, OS_LOG_TYPE_DEFAULT, "Failed to find physicalized morpher driving node named '%@'", &v67, 0xCu);
            }

            goto LABEL_40;
          }

          *&v67 = 0;
          *(&v67 + 1) = &v67;
          v68 = 0x3032000000;
          v69 = __Block_byref_object_copy__0;
          v70 = __Block_byref_object_dispose__0;
          v71 = 0;
          v20 = *(a1 + 48);
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __101__AVTPhysicalizedMorpherDynamic_enumerateDynamicsInHierarchy_forAvatar_ignoredUpperNodes_usingBlock___block_invoke_11;
          v54[3] = &unk_1E7F47D68;
          v54[4] = v19;
          v54[5] = &v67;
          [v20 enumerateKeysAndObjectsUsingBlock:v54];
          v21 = [v19 stringByAppendingString:@"_forward"];
          v22 = [v51 _weightIndexForTargetNamed:v21];

          v23 = [v19 stringByAppendingString:@"_backward"];
          v24 = [v51 _weightIndexForTargetNamed:v23];

          v25 = [v19 stringByAppendingString:@"_leftward"];
          v26 = [v51 _weightIndexForTargetNamed:v25];

          v27 = [v19 stringByAppendingString:@"_rightward"];
          v28 = [v51 _weightIndexForTargetNamed:v27];

          v29 = [v19 stringByAppendingString:@"_upward"];
          v30 = [v51 _weightIndexForTargetNamed:v29];

          v31 = [v19 stringByAppendingString:@"_downward"];
          v32 = [v51 _weightIndexForTargetNamed:v31];

          if ((v22 == 0x7FFFFFFFFFFFFFFFLL || v24 == 0x7FFFFFFFFFFFFFFFLL) && (v26 == 0x7FFFFFFFFFFFFFFFLL || v28 == 0x7FFFFFFFFFFFFFFFLL) && (v30 == 0x7FFFFFFFFFFFFFFFLL || v32 == 0x7FFFFFFFFFFFFFFFLL))
          {
            v34 = avt_default_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [v46 name];
              *buf = v45;
              v64 = v41;
              v65 = 2112;
              v66 = v19;
              _os_log_impl(&dword_1BB472000, v34, OS_LOG_TYPE_DEFAULT, "Failed to create physicalized morpher dynamic: '%@' driven by '%@'", buf, 0x16u);
            }
          }

          else
          {
            v33 = [*(*(&v67 + 1) + 40) objectForKeyedSubscript:@"simulation factor"];
            v34 = v33;
            if (v33)
            {
              [v33 floatValue];
              v36 = v35;
            }

            else
            {
              v36 = 0.5;
            }

            v37 = objc_opt_new();
            *(v37 + 8) = v36;
            objc_storeStrong((v37 + 16), *(a1 + 56));
            objc_storeStrong((v37 + 24), v53);
            objc_storeStrong((v37 + 32), v51);
            *(v37 + 40) = v22;
            *(v37 + 48) = v24;
            *(v37 + 56) = v26;
            *(v37 + 64) = v28;
            *(v37 + 72) = v30;
            *(v37 + 80) = v32;
            v38 = [*(*(&v67 + 1) + 40) objectForKeyedSubscript:@"morph target weight as simulation factor"];
            if (v38)
            {
              v39 = [*(a1 + 64) effectiveMorphedNodeForTargetName:v38];
              objc_storeStrong((v37 + 88), v39);
              v40 = [v39 morpher];
              *(v37 + 96) = [v40 _weightIndexForTargetNamed:v38];
            }

            (*(*(a1 + 72) + 16))();
          }

          _Block_object_dispose(&v67, 8);
          ++v18;
        }

        while (v49 != v18);
        v42 = [obj countByEnumeratingWithState:&v55 objects:v72 count:16];
        v49 = v42;
        if (v42)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:

    v2 = v51;
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __101__AVTPhysicalizedMorpherDynamic_enumerateDynamicsInHierarchy_forAvatar_ignoredUpperNodes_usingBlock___block_invoke_11(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) containsString:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)evaluateAtTime:(double)time physicsController:(id)controller
{
  controllerCopy = controller;
  simulationFactor = self->_simulationFactor;
  v5 = self->_extraSimulationFactorReadMorpherNode;
  v6 = v5;
  if (v5)
  {
    presentationNode = [(VFXNode *)v5 presentationNode];
    morpher = [presentationNode morpher];
    [morpher weightForTargetAtIndex:self->_extraSimulationFactorTargetIndex];
    v10 = v9;

    simulationFactor = simulationFactor * v10;
  }

  [controllerCopy offsetFromRestingPositionForNode:self->_drivingNode inCoordinateSpaceOfNode:self->_referenceNode];
  v12 = vmulq_n_f32(v11, simulationFactor);
  v13 = vnegq_f32(v12);
  v12.i32[3] = 0;
  v14 = vmaxnmq_f32(v12, 0);
  v14.i32[3] = 0;
  v24 = vminnmq_f32(v14, xmmword_1BB4F0560);
  v13.i32[3] = 0;
  v15 = vmaxnmq_f32(v13, 0);
  v15.i32[3] = 0;
  v20 = v15;
  v16 = self->_writeMorpher;
  v17 = v16;
  if (self->_leftwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)v16 setWeight:*v24.i64 forTargetAtIndex:?];
  }

  v21 = vminnmq_f32(v20, xmmword_1BB4F0560);
  if (self->_rightwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)v17 setWeight:*v21.i64 forTargetAtIndex:?];
  }

  if (self->_forwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)v17 setWeight:COERCE_DOUBLE(__PAIR64__(v24.u32[1] forTargetAtIndex:v24.u32[2]))];
  }

  if (self->_backwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)v17 setWeight:COERCE_DOUBLE(__PAIR64__(v21.u32[1] forTargetAtIndex:v21.u32[2]))];
  }

  if (self->_upwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    HIDWORD(v18) = v24.i32[1];
    LODWORD(v18) = v24.i32[1];
    [(VFXMorpher *)v17 setWeight:v18 forTargetAtIndex:?];
  }

  if (self->_downwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    HIDWORD(v19) = v21.i32[1];
    LODWORD(v19) = v21.i32[1];
    [(VFXMorpher *)v17 setWeight:v19 forTargetAtIndex:?];
  }
}

- (void)resetTarget
{
  if (self->_leftwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)self->_writeMorpher setWeight:0.0 forTargetAtIndex:?];
  }

  if (self->_rightwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)self->_writeMorpher setWeight:0.0 forTargetAtIndex:?];
  }

  if (self->_forwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)self->_writeMorpher setWeight:0.0 forTargetAtIndex:?];
  }

  if (self->_backwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)self->_writeMorpher setWeight:0.0 forTargetAtIndex:?];
  }

  if (self->_upwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(VFXMorpher *)self->_writeMorpher setWeight:0.0 forTargetAtIndex:?];
  }

  if (self->_downwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    writeMorpher = self->_writeMorpher;

    [(VFXMorpher *)writeMorpher setWeight:0.0 forTargetAtIndex:?];
  }
}

- (BOOL)affectsNode:(id)node
{
  morpher = [node morpher];
  LOBYTE(self) = morpher == self->_writeMorpher;

  return self;
}

@end