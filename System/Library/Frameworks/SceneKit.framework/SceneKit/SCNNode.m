@interface SCNNode
+ (SCNNode)node;
+ (SCNNode)nodeWithGeometry:(SCNGeometry *)geometry;
+ (SCNNode)nodeWithMDLAsset:(id)a3 options:(id)a4;
+ (SCNNode)nodeWithMDLObject:(id)a3 masterObjects:(id)a4 sceneNodes:(id)a5 skinnedMeshes:(id)a6 skelNodesMap:(void *)a7 asset:(id)a8 options:(id)a9;
+ (SCNNode)nodeWithMDLObject:(id)a3 options:(id)a4;
+ (SCNNode)nodeWithNodeRef:(__C3DNode *)a3;
+ (SCNVector3)localFront;
+ (SCNVector3)localRight;
+ (SCNVector3)localUp;
+ (id)_dumpNodeTree:(id)a3 tab:(id)a4;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)_childNodesPassingTest:(id)a3 recursively:(BOOL)a4 output:(id)a5;
- (BOOL)_enumerateChildNodesUsingBlock:(id)a3;
- (BOOL)_isEffectivelyHidden;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)canAddChildNode:(id)a3;
- (BOOL)castsShadow;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4;
- (BOOL)getFrustum:(id *)a3 withViewport:;
- (BOOL)isAnimationForKeyPaused:(id)a3;
- (BOOL)isHidden;
- (BOOL)parseSpecialKey:(id)a3 withPath:(id)a4 intoDestination:(id *)a5;
- (BOOL)simdGetBoundingSphereCenter:(SCNNode *)self radius:(SEL)a2;
- (BOOL)usesDepthPrePass;
- (CGFloat)opacity;
- (CGRect)_focusFrameInView:(id)a3;
- (CGRect)frame;
- (NSArray)animationKeys;
- (NSArray)childNodes;
- (NSArray)constraints;
- (NSArray)filters;
- (NSArray)hitTestWithSegmentFromPoint:(SCNVector3)pointA toPoint:(SCNVector3)pointB options:(NSDictionary *)options;
- (NSArray)particleSystems;
- (NSInteger)renderingOrder;
- (NSString)description;
- (NSString)name;
- (NSUInteger)categoryBitMask;
- (SCNMatrix4)convertTransform:(SEL)a3 fromNode:(SCNMatrix4 *)transform;
- (SCNMatrix4)convertTransform:(SEL)a3 toNode:(SCNMatrix4 *)transform;
- (SCNMatrix4)pivot;
- (SCNMatrix4)transform;
- (SCNMatrix4)worldTransform;
- (SCNMovabilityHint)movabilityHint;
- (SCNNode)childNodeWithName:(NSString *)name recursively:(BOOL)recursively;
- (SCNNode)clone;
- (SCNNode)flattenedClone;
- (SCNNode)init;
- (SCNNode)initWithCoder:(id)a3;
- (SCNNode)initWithNodeRef:(__C3DNode *)a3;
- (SCNNode)parentNode;
- (SCNNode)presentationNode;
- (SCNQuaternion)orientation;
- (SCNQuaternion)worldOrientation;
- (SCNVector3)convertPosition:(SCNVector3)position fromNode:(SCNNode *)node;
- (SCNVector3)convertPosition:(SCNVector3)position toNode:(SCNNode *)node;
- (SCNVector3)convertVector:(SCNVector3)vector fromNode:(SCNNode *)node;
- (SCNVector3)convertVector:(SCNVector3)vector toNode:(SCNNode *)node;
- (SCNVector3)eulerAngles;
- (SCNVector3)position;
- (SCNVector3)scale;
- (SCNVector3)worldFront;
- (SCNVector3)worldPosition;
- (SCNVector3)worldRight;
- (SCNVector3)worldUp;
- (SCNVector4)rotation;
- (UICoordinateSpace)coordinateSpace;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (double)_euler;
- (id)__camera;
- (id)__geometry;
- (id)__light;
- (id)__morpher;
- (id)__skinner;
- (id)_audioPlayers;
- (id)_copyRecursively;
- (id)_dumpTree;
- (id)_findComponentWithType:(int64_t)a3;
- (id)_scnAnimationForKey:(id)a3;
- (id)_subdividedCopyWithSubdivisionLevel:(int64_t)a3;
- (id)actionForKey:(id)a3;
- (id)animationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)attributeForKey:(id)a3;
- (id)childNodesPassingTest:(id)a3 recursively:(BOOL)a4;
- (id)childNodesWithAttribute:(Class)a3 recursively:(BOOL)a4;
- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)flattenedCopy;
- (id)getBoundingBox;
- (id)getBoundingSphere;
- (id)identifier;
- (id)initPresentationNodeWithNodeRef:(__C3DNode *)a3;
- (id)objectInAudioPlayersAtIndex:(unint64_t)a3;
- (id)objectInChildNodesAtIndex:(unint64_t)a3;
- (id)objectInChildNodesWithAttribute:(id)a3 firstOnly:(BOOL)a4;
- (id)objectInParticleSystemsAtIndex:(unint64_t)a3;
- (id)parentFocusEnvironment;
- (id)preferredFocusEnvironments;
- (id)scene;
- (id)valueForKeyPath:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)authoringCameraType;
- (simd_float3)simdConvertPosition:(simd_float3)position fromNode:(SCNNode *)node;
- (simd_float3)simdConvertPosition:(simd_float3)position toNode:(SCNNode *)node;
- (simd_float3)simdConvertVector:(simd_float3)vector fromNode:(SCNNode *)node;
- (simd_float3)simdConvertVector:(simd_float3)vector toNode:(SCNNode *)node;
- (simd_float3)simdEulerAngles;
- (simd_float3)simdPosition;
- (simd_float3)simdScale;
- (simd_float3)simdWorldFront;
- (simd_float3)simdWorldRight;
- (simd_float3)simdWorldUp;
- (simd_float4)simdRotation;
- (simd_float4x4)simdConvertTransform:(simd_float4x4)transform fromNode:(SCNNode *)node;
- (simd_float4x4)simdConvertTransform:(simd_float4x4)transform toNode:(SCNNode *)node;
- (simd_float4x4)simdPivot;
- (simd_float4x4)simdTransform;
- (simd_float4x4)simdWorldTransform;
- (simd_quatf)simdOrientation;
- (simd_quatf)simdWorldOrientation;
- (unint64_t)countOfAudioPlayers;
- (unint64_t)countOfParticleSystems;
- (unint64_t)indexOfChildNode:(id)a3;
- (void)__insertObject:(id)a3 inChildNodesAtIndex:(unint64_t)a4;
- (void)__removeObjectFromChildNodesAtIndex:(unint64_t)a3;
- (void)_addSkinnerWithMDLMesh:(id)a3 sceneNodes:(id)a4;
- (void)_appendFocusableNodesInRect:(CGRect)a3 ofView:(id)a4 toFocusItems:(id)a5;
- (void)_assignComponent:(id)a3 toContainerWithType:(int64_t)a4;
- (void)_bakeNodes:(id)a3 folderPath:(id)a4 inVertex:(BOOL)a5 bakeAO:(BOOL)a6 quality:(float)a7 attenuation:(float)a8 geomSetter:(id)a9 terminateSetter:(id)a10;
- (void)_childNodesWithAttribute:(Class)a3 output:(id)a4 recursively:(BOOL)a5;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_customDecodingOfSCNNode:(id)a3;
- (void)_customEncodingOfSCNNode:(id)a3 usePresentationInstance:(BOOL)a4;
- (void)_dump:(id)a3;
- (void)_encodeNodePropertiesWithCoder:(id)a3;
- (void)_initChildNodesArray;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_quaternion;
- (void)_removeAction:(id)a3 forKey:(id)a4;
- (void)_removeComponentWithType:(int64_t)a3;
- (void)_removeDeadParticleSystem:(__C3DParticleSystem *)a3;
- (void)_setAttributes:(id)a3;
- (void)_setComponent:(id)a3 withType:(int64_t)a4;
- (void)_setHasFocusableChild;
- (void)_setPausedOrPausedByInheritance:(BOOL)a3;
- (void)_setPosition:(SCNNode *)self;
- (void)_setQuaternion:(float32x4_t *)a1;
- (void)_setScale:(SCNNode *)self;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)_syncObjCModelAfterC3DIOSceneLoadingWithNodeRef:(__C3DNode *)a3;
- (void)_updateAffine;
- (void)_updateFocusableCache;
- (void)_updateTransform;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)addAudioPlayer:(SCNAudioPlayer *)player;
- (void)addChildNode:(SCNNode *)child;
- (void)addParticleSystem:(SCNParticleSystem *)system;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)dealloc;
- (void)dump;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateChildNodesUsingBlock:(void *)block;
- (void)enumerateHierarchyUsingBlock:(void *)block;
- (void)insertObject:(id)a3 inAudioPlayersAtIndex:(unint64_t)a4;
- (void)insertObject:(id)a3 inParticleSystemsAtIndex:(unint64_t)a4;
- (void)lookAt:(SCNVector3)worldTarget up:(SCNVector3)worldUp localFront:(SCNVector3)localFront;
- (void)pauseAnimationForKey:(id)a3;
- (void)removeActionForKey:(id)a3;
- (void)removeAllActions;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)a3;
- (void)removeAllAudioPlayers;
- (void)removeAllBindings;
- (void)removeAllChilds;
- (void)removeAllParticleSystems;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4;
- (void)removeAudioPlayer:(SCNAudioPlayer *)player;
- (void)removeFromParentNode;
- (void)removeObjectFromAudioPlayersAtIndex:(unint64_t)a3;
- (void)removeObjectFromParticleSystemsAtIndex:(unint64_t)a3;
- (void)removeParticleSystem:(SCNParticleSystem *)system;
- (void)renderInContext:(void *)a3;
- (void)replaceChildNode:(SCNNode *)oldChild with:(SCNNode *)newChild;
- (void)replaceObjectInAudioPlayerAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectInChildNodesAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectInParticleSystemsAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)resumeAnimationForKey:(id)a3;
- (void)rotateBy:(SCNQuaternion)worldRotation aroundTarget:(SCNVector3)worldTarget;
- (void)runAction:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
- (void)setAttribute:(id)a3 forKey:(id)a4;
- (void)setAuthoringCameraType:(int64_t)a3;
- (void)setAuthoringEnvironmentNode:(BOOL)a3;
- (void)setBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4;
- (void)setCamera:(SCNCamera *)camera;
- (void)setCastsShadow:(BOOL)castsShadow;
- (void)setCategoryBitMask:(NSUInteger)categoryBitMask;
- (void)setConstraints:(NSArray *)constraints;
- (void)setEntity:(GKEntity *)entity;
- (void)setFilters:(NSArray *)filters;
- (void)setFocusBehavior:(SCNNodeFocusBehavior)focusBehavior;
- (void)setGeometry:(SCNGeometry *)geometry;
- (void)setHidden:(BOOL)hidden;
- (void)setIdentifier:(id)a3;
- (void)setIsJoint:(BOOL)a3;
- (void)setLight:(SCNLight *)light;
- (void)setMorpher:(SCNMorpher *)morpher;
- (void)setMovabilityHint:(SCNMovabilityHint)movabilityHint;
- (void)setName:(NSString *)name;
- (void)setNeedsFocusUpdate;
- (void)setOpacity:(CGFloat)opacity;
- (void)setPaused:(BOOL)paused;
- (void)setPhysicsBody:(SCNPhysicsBody *)physicsBody;
- (void)setPhysicsField:(SCNPhysicsField *)physicsField;
- (void)setPostMorphingDeformers:(id)a3;
- (void)setPostSkinningDeformers:(id)a3;
- (void)setRendererDelegate:(id)rendererDelegate;
- (void)setRenderingOrder:(NSInteger)renderingOrder;
- (void)setSimdEulerAngles:(simd_float3)simdEulerAngles;
- (void)setSimdOrientation:(simd_quatf)simdOrientation;
- (void)setSimdPivot:(simd_float4x4)simdPivot;
- (void)setSimdPosition:(simd_float3)simdPosition;
- (void)setSimdRotation:(simd_float4)simdRotation;
- (void)setSimdScale:(simd_float3)simdScale;
- (void)setSimdTransform:(simd_float4x4)simdTransform;
- (void)setSimdWorldOrientation:(simd_quatf)simdWorldOrientation;
- (void)setSimdWorldPosition:(simd_float3)simdWorldPosition;
- (void)setSimdWorldTransform:(simd_float4x4)simdWorldTransform;
- (void)setSkinner:(SCNSkinner *)skinner;
- (void)setSpeed:(double)a3 forAnimationKey:(id)a4;
- (void)setUsesDepthPrePass:(BOOL)a3;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)simdLocalRotateBy:(simd_quatf)rotation;
- (void)simdLocalTranslateBy:(simd_float3)translation;
- (void)simdLookAt:(simd_float3)worldTarget;
- (void)simdLookAt:(simd_float3)worldTarget up:(simd_float3)worldUp localFront:(simd_float3)localFront;
- (void)simdRotateBy:(simd_quatf)worldRotation aroundTarget:(simd_float3)worldTarget;
- (void)unbindAnimatablePath:(id)a3;
- (void)updateFocusIfNeeded;
@end

@implementation SCNNode

- (SCNNode)parentNode
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    Parent = C3DNodeGetParent(self->_node);
    if (Parent)
    {
      v3 = [SCNNode nodeWithNodeRef:Parent];
      if (!v5)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      if (!v5)
      {
        return v3;
      }
    }

    C3DSceneUnlock(v5);
    return v3;
  }

  return self->_parent;
}

- (__C3DScene)sceneRef
{
  v2 = [(SCNNode *)self __CFObject];

  return C3DGetScene(v2);
}

- (NSArray)childNodes
{
  if (*(self + 40))
  {
    v5 = [(SCNNode *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    ChildNodesCount = C3DNodeGetChildNodesCount(self->_node);
    v8 = ChildNodesCount;
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:ChildNodesCount];
    if (ChildNodesCount)
    {
      v9 = 0;
      do
      {
        [(NSArray *)v4 addObject:[SCNNode nodeWithNodeRef:C3DNodeGetChildNodeAtIndex(self->_node, v9++)]];
      }

      while (v8 != v9);
    }

    if (v6)
    {
      C3DSceneUnlock(v6);
    }
  }

  else
  {
    v3 = [(NSMutableArray *)self->_childNodes copy];
    if ([(NSArray *)v3 count])
    {
      return v3;
    }

    else
    {
      return MEMORY[0x277CBEBF8];
    }
  }

  return v4;
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v3 = [(SCNOrderedDictionary *)self->_animations allKeys];
  os_unfair_lock_unlock(&self->_animationsLock);
  if ([(NSArray *)v3 count])
  {
    return v3;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

+ (SCNNode)nodeWithMDLAsset:(id)a3 options:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(a1);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(a3);
        }

        [v6 addChildNode:{+[SCNNode nodeWithMDLObject:options:](SCNNode, "nodeWithMDLObject:options:", *(*(&v12 + 1) + 8 * v10++), a4)}];
      }

      while (v8 != v10);
      v8 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (SCNNode)nodeWithMDLObject:(id)a3 options:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = [a1 node];
  -[SCNNode setName:](v6, "setName:", [a3 name]);
  if ([a3 transform])
  {
    [objc_msgSend(a3 "transform")];
    v51[0] = v7;
    v51[1] = v8;
    v51[2] = v9;
    v51[3] = v10;
    [(SCNNode *)v6 setTransform:v51];
    [a3 transform];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = [a3 transform];
    if (isKindOfClass)
    {
LABEL_5:
      v13 = [v12 transformAnimation];
      if (v13)
      {
        v14 = v13;
        [v13 duration];
        if (v15 != 0.0)
        {
          [(SCNNode *)v6 addAnimation:v14 forKey:@"transform"];
        }
      }

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [a3 transform];
      goto LABEL_5;
    }
  }

LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v16 = [a3 submeshes];
  v17 = [v16 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = v17;
  v19 = 0;
  v20 = *v48;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v48 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v47 + 1) + 8 * i);
      if ([v22 faceIndexing] && objc_msgSend(v22, "geometryType") != 5)
      {
        return 0;
      }

      if ([v22 faceIndexing])
      {
        ++v19;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  if (v19 >= 2)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [a3 submeshes];
    v23 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v43 + 1) + 8 * j);
          v28 = [a1 node];
          [v28 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@_%d", objc_msgSend(a3, "name"), 0)}];
          [v28 setGeometry:{+[SCNGeometry geometryWithMDLMesh:submesh:options:](SCNGeometry, "geometryWithMDLMesh:submesh:options:", a3, v27, a4)}];
          [(SCNNode *)v6 addChildNode:v28];
        }

        v24 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v24);
    }
  }

  else
  {
LABEL_29:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SCNNode *)v6 setGeometry:[SCNGeometry geometryWithMDLMesh:a3 options:a4]];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = [SCNLight lightWithMDLLight:a3];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SCNNode *)v6 setCamera:[SCNCamera cameraWithMDLCamera:a3]];
          }

          goto LABEL_37;
        }

        v29 = [SCNLight lightWithMDLLightProbe:a3];
      }

      [(SCNNode *)v6 setLight:v29];
    }
  }

LABEL_37:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = [a3 children];
  v31 = [v30 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v40;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [SCNNode nodeWithMDLObject:*(*(&v39 + 1) + 8 * k) options:a4];
        if (v35)
        {
          [(SCNNode *)v6 addChildNode:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v32);
  }

  return v6;
}

+ (SCNNode)nodeWithMDLObject:(id)a3 masterObjects:(id)a4 sceneNodes:(id)a5 skinnedMeshes:(id)a6 skelNodesMap:(void *)a7 asset:(id)a8 options:(id)a9
{
  v59 = *MEMORY[0x277D85DE8];
  v13 = [a1 node];
  if ([a3 transform])
  {
    [objc_msgSend(a3 "transform")];
    v57[0] = v14;
    v57[1] = v15;
    v57[2] = v16;
    v57[3] = v17;
    [(SCNNode *)v13 setTransform:v57];
    [a3 transform];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = [a3 transform];
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      v19 = [a3 transform];
    }

    v20 = [v19 transformAnimation];
    if (v20)
    {
      v21 = v20;
      [v20 duration];
      if (v22 != 0.0)
      {
        v23 = [a9 valueForKey:@"kSceneSourceAnimationLoadingMode"];
        if (v23)
        {
          v25 = v23;
          v26 = a3;
          [v21 setUsesSceneTimeBase:{objc_msgSend(v23, "isEqualToString:", @"playUsingSceneTime"}];
          [v21 setRemovedOnCompletion:{objc_msgSend(v25, "isEqualToString:", @"playUsingSceneTime"}];
          v27 = [v25 isEqualToString:@"playRepeatedly"];
          LODWORD(v24) = 2139095040;
          if (!v27)
          {
            *&v24 = 0.0;
          }
        }

        else
        {
          v26 = a3;
          LODWORD(v24) = 2139095040;
        }

        [v21 setRepeatCount:v24];
        [a8 endTime];
        v29 = v28;
        [a8 startTime];
        v31 = v29 - v30;
        if (v29 - v30 > 0.0)
        {
          [v21 duration];
          v33 = v32;
          [v21 beginTime];
          if (v33 < v31 - v34)
          {
            [v21 beginTime];
            [v21 setDuration:v31 - v35];
          }
        }

        [(SCNNode *)v13 addAnimation:v21 forKey:@"transform"];
        a3 = v26;
      }
    }
  }

LABEL_16:
  -[SCNNode setName:](v13, "setName:", [a3 name]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = [a3 path];
    v37 = [a4 objectForKey:v36];
    if (v37)
    {
      [(SCNNode *)v13 setGeometry:v37];
    }

    else
    {
      [(SCNNode *)v13 setGeometry:[SCNGeometry geometryWithMDLMesh:a3 options:a9]];
      v39 = [a3 componentConformingToProtocol:&unk_282E568F0];
      if (v39)
      {
        v40 = v39;
        [(SCNNode *)v13 setMorpher:morpherFromMDLMorphDeformer(v39)];
        addMorphAnimation(v40, v13, a9);
      }

      if ([a3 componentConformingToProtocol:&unk_282E56A78])
      {
        [a6 addObject:a3];
      }

      if ([a3 subdivisionScheme])
      {
        [(SCNGeometry *)[(SCNNode *)v13 geometry] setSubdivisionLevel:1];
        [(SCNGeometry *)[(SCNNode *)v13 geometry] setWantsAdaptiveSubdivision:1];
        v41 = objc_opt_new();
        [(SCNGeometry *)[(SCNNode *)v13 geometry] setTessellator:v41];
      }

      [a4 setObject:-[SCNNode geometry](v13 forKey:{"geometry"), v36}];
    }

    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [SCNLight lightWithMDLLight:a3];
LABEL_23:
    [(SCNNode *)v13 setLight:v38];
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [SCNLight lightWithMDLLightProbe:a3];
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCNNode *)v13 setCamera:[SCNCamera cameraWithMDLCamera:a3]];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }
  }

LABEL_35:
  if ([a3 instance])
  {
    -[SCNNode addChildNode:](v13, "addChildNode:", +[SCNNode nodeWithMDLObject:masterObjects:sceneNodes:skinnedMeshes:skelNodesMap:asset:options:](SCNNode, "nodeWithMDLObject:masterObjects:sceneNodes:skinnedMeshes:skelNodesMap:asset:options:", [a3 instance], a4, a5, a6, a7, a8, a9));
  }

  v42 = v13;
  [a5 setObject:v13 forKey:{objc_msgSend(a3, "path")}];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v50 = a3;
  v43 = [a3 children];
  v44 = [v43 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v54;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v54 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [SCNNode nodeWithMDLObject:*(*(&v53 + 1) + 8 * i) masterObjects:a4 sceneNodes:a5 skinnedMeshes:a6 skelNodesMap:a7 asset:a8 options:a9];
        if (v48)
        {
          [(SCNNode *)v42 addChildNode:v48];
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v45);
  }

  -[SCNNode setHidden:](v42, "setHidden:", [v50 hidden]);
  return v42;
}

- (void)_addSkinnerWithMDLMesh:(id)a3 sceneNodes:(id)a4
{
  v7 = [a3 componentConformingToProtocol:&unk_282E56A78];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNNode *)self geometry];
    v10 = jointNodesFromMDLSkinDeformer(v8, a4);
    v11 = boneInverseTransformsFromMDLSkinDeformer(v8);

    [(SCNNode *)self setSkinner:v15];
  }
}

- (void)_bakeNodes:(id)a3 folderPath:(id)a4 inVertex:(BOOL)a5 bakeAO:(BOOL)a6 quality:(float)a7 attenuation:(float)a8 geomSetter:(id)a9 terminateSetter:(id)a10
{
  v30[1] = *MEMORY[0x277D85DE8];
  v30[0] = self;
  v18 = SCNNodesToMDLAsset([MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1]);
  v19 = SCNNodesToMDLAsset(a3);
  v20 = FlattenedMDLMeshesFromMDLAsset(v19);
  v21 = FlattenedMDLMeshesFromMDLAsset(v18);
  v22 = FlattenedMDLLightsFromMDLAsset(v18);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __108__SCNNode_SCNModelIO___bakeNodes_folderPath_inVertex_bakeAO_quality_attenuation_geomSetter_terminateSetter___block_invoke;
  v29[3] = &unk_2782FB260;
  v29[4] = a4;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__SCNNode_SCNModelIO___bakeNodes_folderPath_inVertex_bakeAO_quality_attenuation_geomSetter_terminateSetter___block_invoke_2;
  block[3] = &unk_2782FB2D8;
  v27 = a6;
  v28 = a5;
  v25 = a7;
  v26 = a8;
  block[4] = v20;
  block[5] = v21;
  block[6] = v22;
  block[7] = v19;
  block[8] = v29;
  block[9] = a9;
  block[10] = a10;
  dispatch_async(global_queue, block);
}

uint64_t __108__SCNNode_SCNModelIO___bakeNodes_folderPath_inVertex_bakeAO_quality_attenuation_geomSetter_terminateSetter___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v4 = [a2 name];
  v5 = [v3 stringWithFormat:@"AO_%@_%@.png", v4, objc_msgSend(objc_msgSend(MEMORY[0x277CCAD78], "UUID"), "UUIDString")];

  return [v2 stringByAppendingPathComponent:v5];
}

void __108__SCNNode_SCNModelIO___bakeNodes_folderPath_inVertex_bakeAO_quality_attenuation_geomSetter_terminateSetter___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3052000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v30[5] = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3052000000;
  v29[3] = __Block_byref_object_copy_;
  v29[4] = __Block_byref_object_dispose_;
  v29[5] = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3052000000;
  v28[3] = __Block_byref_object_copy_;
  v28[4] = __Block_byref_object_dispose_;
  v28[5] = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __108__SCNNode_SCNModelIO___bakeNodes_folderPath_inVertex_bakeAO_quality_attenuation_geomSetter_terminateSetter___block_invoke_228;
  v27[3] = &unk_2782FB288;
  v27[4] = v30;
  v27[5] = v29;
  v27[6] = v28;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v3)
  {
    v6 = *v24;
    v7 = *MEMORY[0x277CD7A98];
    v8 = *MEMORY[0x277CD7A80];
    v9 = *MEMORY[0x277CD7A68];
    v10 = 1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if (*(a1 + 96) == 1)
        {
          LODWORD(v4) = *(a1 + 88);
          LODWORD(v5) = *(a1 + 92);
          v13 = *(a1 + 40);
          if (*(a1 + 97))
          {
            v14 = [v12 generateAmbientOcclusionVertexColorsWithQuality:v13 attenuationFactor:v8 objectsToConsider:v4 vertexAttributeNamed:v5];
          }

          else
          {
            v14 = [v12 generateAmbientOcclusionTextureWithQuality:v13 attenuationFactor:v9 objectsToConsider:@"aoTexture" vertexAttributeNamed:v4 materialPropertyNamed:v5];
          }
        }

        else if (*(a1 + 97))
        {
          v14 = [v12 generateLightMapVertexColorsWithLightsToConsider:*(a1 + 48) objectsToConsider:*(a1 + 40) vertexAttributeNamed:v8];
        }

        else
        {
          LODWORD(v4) = *(a1 + 88);
          v14 = [v12 generateLightMapTextureWithQuality:*(a1 + 48) lightsToConsider:*(a1 + 40) objectsToConsider:v7 vertexAttributeNamed:@"lightmapTexture" materialPropertyNamed:v4];
        }

        v10 &= v14;
      }

      v3 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v3);
  }

  else
  {
    v10 = 1;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __108__SCNNode_SCNModelIO___bakeNodes_folderPath_inVertex_bakeAO_quality_attenuation_geomSetter_terminateSetter___block_invoke_2_236;
  v16[3] = &unk_2782FB2B0;
  v21 = v10;
  v15 = *(a1 + 56);
  v22 = *(a1 + 96);
  v16[4] = v15;
  v16[5] = v27;
  v17 = *(a1 + 64);
  v19 = v29;
  v20 = v30;
  v18 = *(a1 + 80);
  dispatch_async(MEMORY[0x277D85CD0], v16);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
}

void *__108__SCNNode_SCNModelIO___bakeNodes_folderPath_inVertex_bakeAO_quality_attenuation_geomSetter_terminateSetter___block_invoke_228(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    *(*(result[4] + 8) + 40) = a2;
    *(*(result[5] + 8) + 40) = a3;
    *(*(result[6] + 8) + 40) = a4;
  }

  return result;
}

uint64_t __108__SCNNode_SCNModelIO___bakeNodes_folderPath_inVertex_bakeAO_quality_attenuation_geomSetter_terminateSetter___block_invoke_2_236(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88) == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      v6 = *MEMORY[0x277CD7A98];
      v7 = *MEMORY[0x277CD7A68];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if (*(a1 + 89) == 1)
          {
            v9 = v7;
            v10 = @"aoTexture";
          }

          else
          {
            v9 = v6;
            v10 = @"lightmapTexture";
          }

          [*(*(&v12 + 1) + 8 * i) _updateAssociatedSCNNodeWithGeometrySetter:*(a1 + 40) texturePathProvider:*(a1 + 48) vertexAttributeNamed:v9 materialPropertyNamed:v10];
          (*(*(a1 + 56) + 16))();
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (SCNNode)init
{
  v5.receiver = self;
  v5.super_class = SCNNode;
  v2 = [(SCNNode *)&v5 init];
  if (v2)
  {
    v3 = C3DNodeCreate();
    v2->_node = v3;
    if (v3)
    {
      C3DEntitySetObjCWrapper(v3, v2);
    }

    *(v2 + 40) |= 0x3Eu;
    v2->_animationsLock._os_unfair_lock_opaque = 0;
    v2->_valueForKeyLock._os_unfair_lock_opaque = 0;
    [(SCNNode *)v2 _syncObjCModel];
  }

  return v2;
}

- (id)initPresentationNodeWithNodeRef:(__C3DNode *)a3
{
  v7.receiver = self;
  v7.super_class = SCNNode;
  v4 = [(SCNNode *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 40) |= 1u;
    v4->_node = CFRetain(a3);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valueForKeyLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (SCNNode)initWithNodeRef:(__C3DNode *)a3
{
  v9.receiver = self;
  v9.super_class = SCNNode;
  v4 = [(SCNNode *)&v9 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    *(v4 + 1) = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    *(v4 + 50) = 0;
    *(v4 + 62) = 0;
    [v4 _syncObjCModel];
    [v4 _syncObjCAnimations];
    if (C3DNodeGetChildNodesCount(*(v4 + 1)))
    {
      *(v4 + 3) = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = *(v4 + 1);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __27__SCNNode_initWithNodeRef___block_invoke;
      v8[3] = &unk_2782FEF18;
      v8[4] = v4;
      C3DNodeApplyChildren(v6, v8);
    }
  }

  return v4;
}

uint64_t __27__SCNNode_initWithNodeRef___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SCNNode nodeWithNodeRef:a2];
  [(SCNNode *)v3 _setParent:*(a1 + 32)];
  v4 = *(*(a1 + 32) + 24);

  return [v4 addObject:v3];
}

- (void)_initChildNodesArray
{
  v3 = [(SCNNode *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  node = self->_node;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SCNNode__initChildNodesArray__block_invoke;
  v6[3] = &unk_2782FEF18;
  v6[4] = self;
  C3DNodeApplyChildren(node, v6);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

void __31__SCNNode__initChildNodesArray__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 40))
  {
    v3 = [[SCNNode alloc] initPresentationNodeWithNodeRef:a2];
  }

  else
  {
    v3 = [SCNNode nodeWithNodeRef:a2];
  }

  v4 = v3;
  [(SCNNode *)v3 _setParent:*(a1 + 32)];
  [*(*(a1 + 32) + 24) addObject:v4];
}

+ (SCNNode)node
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (SCNNode)nodeWithGeometry:(SCNGeometry *)geometry
{
  v4 = [a1 node];
  [(SCNNode *)v4 setGeometry:geometry];
  return v4;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*(self + 40) & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    childNodes = self->_childNodes;
    v4 = [(NSMutableArray *)childNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(childNodes);
          }

          [*(*(&v14 + 1) + 8 * i) _setParent:0];
        }

        v5 = [(NSMutableArray *)childNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    if (self->_rendererDelegate)
    {
      v8 = [(SCNNode *)self sceneRef];
      if (v8)
      {
        v9 = v8;
        C3DSceneLock(v8);
        C3DNodeSetRendererDelegate(self->_node, 0);
        C3DSceneUnlock(v9);
      }

      else
      {
        C3DNodeSetRendererDelegate(self->_node, 0);
      }
    }
  }

  v10 = *(self + 22);
  if ((v10 & 0x200) != 0)
  {
    [(SCNPhysicsField *)[(SCNNode *)self physicsField] _removeOwner];
    v10 = *(self + 22);
  }

  if ((v10 & 0x100) != 0)
  {
    [(SCNPhysicsBody *)[(SCNNode *)self physicsBody] _ownerWillDie];
  }

  self->_components = 0;
  node = self->_node;
  if (node)
  {
    if ((*(self + 40) & 1) == 0)
    {
      C3DEntitySetObjCWrapper(node, 0);
      node = self->_node;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __18__SCNNode_dealloc__block_invoke;
    v13[3] = &__block_descriptor_40_e8_v16__0d8l;
    v13[4] = node;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v13];
  }

  free(self->_fixedBoundingBoxExtrema);
  v12.receiver = self;
  v12.super_class = SCNNode;
  [(SCNNode *)&v12 dealloc];
}

- (void)setName:(NSString *)name
{
  if (*(self + 40))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNNode setName:];
    }
  }

  else if (name | self->_name)
  {
    if (([(NSString *)name isEqual:?]& 1) == 0)
    {

      self->_name = [(NSString *)name copy];
      v5 = [(SCNNode *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __19__SCNNode_setName___block_invoke;
      v7[3] = &unk_2782FC950;
      v7[4] = self;
      v7[5] = name;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
    }
  }
}

CFStringRef __19__SCNNode_setName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  return C3DEntitySetName(v2, v3);
}

- (NSString)name
{
  if ((*(self + 40) & 1) == 0)
  {
    return self->_name;
  }

  v4 = [(SCNNode *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  Name = C3DEntityGetName([(SCNNode *)self __CFObject]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Name;
}

- (void)setIdentifier:(id)a3
{
  v4 = [(SCNNode *)self __CFObject];

  C3DEntitySetID(v4, a3);
}

- (id)identifier
{
  v2 = [(SCNNode *)self __CFObject];

  return C3DEntityGetID(v2);
}

- (void)_syncEntityObjCModel
{
  v3 = [(SCNNode *)self __CFObject];

  self->_name = C3DEntityGetName(v3);
}

- (void)setAttribute:(id)a3 forKey:(id)a4
{
  v7 = [(SCNNode *)self sceneRef];
  if (v7)
  {
    v8 = v7;
    C3DSceneLock(v7);
    C3DEntitySetAttribute([(SCNNode *)self __CFObject], a4, a3);

    C3DSceneUnlock(v8);
  }

  else
  {
    v9 = [(SCNNode *)self __CFObject];

    C3DEntitySetAttribute(v9, a4, a3);
  }
}

- (id)attributeForKey:(id)a3
{
  v5 = [(SCNNode *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = C3DEntityGetAttribute([(SCNNode *)self __CFObject], a3);
  if (v6)
  {
    C3DSceneUnlock(v6);
  }

  return v7;
}

- (void)_syncObjCModel
{
  v3 = [(SCNNode *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  C3DNodeGetMatrix(self->_node, v10);
  v5 = v10[1];
  *&self->_anon_30[2] = v10[0];
  *&self->_anon_30[18] = v5;
  v6 = v10[3];
  *&self->_anon_30[34] = v10[2];
  *&self->_anon_30[50] = v6;
  *(self + 41) = *(self + 41) & 0xFC | 2;
  self->_opacity = C3DNodeGetOpacity(self->_node);
  self->_renderingOrder = C3DNodeGetRenderingOrder(self->_node);
  if (C3DNodeIsHidden(self->_node))
  {
    v7 = 0x80;
  }

  else
  {
    v7 = 0;
  }

  *(self + 41) = v7 & 0x80 | *(self + 41) & 0x7F;
  *(self + 42) = *(self + 42) & 0xFE | C3DNodeGetCastsShadow(self->_node);
  self->_categoryBitMask = C3DNodeGetCategoryBitMask(self->_node);
  *(self + 41) = ((C3DNodeGetMovability(self->_node) & 1) << 6) | *(self + 41) & 0xBF;
  if (C3DNodeIsJoint(self->_node))
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *(self + 41) = *(self + 41) & 0xF7 | v8;
  if (C3DNodeGetHasPivot(self->_node))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  *(self + 41) = *(self + 41) & 0xFB | v9;
  [(SCNNode *)self _syncEntityObjCModel];
  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

- (SCNNode)presentationNode
{
  v2 = self;
  if ((*(self + 40) & 1) == 0)
  {
    self = self->_presentationInstance;
    if (!self)
    {
      self = [[SCNNode alloc] initPresentationNodeWithNodeRef:v2->_node];
      v2->_presentationInstance = self;
    }
  }

  return self;
}

- (id)scene
{
  result = [(SCNNode *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (void)_dump:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [a3 cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v6 = [(SCNNode *)self description];
  printf("%s%s {\n", v5, -[NSString cStringUsingEncoding:](v6, "cStringUsingEncoding:", [MEMORY[0x277CCACA8] defaultCStringEncoding]));
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@", a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(SCNNode *)self childNodes];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * i) _dump:v7];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  printf("%s}\n", [a3 cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}]);
}

- (void)dump
{
  NSLog(&cfstr_DumpNodeTree.isa, [(SCNNode *)self name]);
  [(SCNNode *)self _dump:&stru_282DCC058];
  NSLog(&stru_282DDADF8.isa);
}

+ (id)_dumpNodeTree:(id)a3 tab:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCACA8];
  if ([a3 name])
  {
    v8 = [a3 name];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%p>", a3];
  }

  v9 = [v7 stringWithFormat:@"%@%@\n", a4, v8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@", a4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [a3 childNodes];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v9 = [v9 stringByAppendingString:{objc_msgSend(a1, "_dumpNodeTree:tab:", *(*(&v17 + 1) + 8 * v15++), v10)}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  return v9;
}

- (id)_dumpTree
{
  v3 = objc_opt_class();

  return [v3 _dumpNodeTree:self tab:&stru_282DCC058];
}

- (void)_setAttributes:(id)a3
{
  os_unfair_lock_lock(&self->_valueForKeyLock);

  self->_valueForKey = a3;

  os_unfair_lock_unlock(&self->_valueForKeyLock);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(objc_opt_class());
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [v4 setName:{-[SCNNode name](self, "name")}];
  [v4 setIdentifier:{-[SCNNode identifier](self, "identifier")}];
  v5 = *(self + 41);
  [(SCNNode *)self simdTransform];
  [v4 setSimdTransform:?];
  if (v5)
  {
    [(SCNNode *)self simdScale];
    [v4 setSimdScale:?];
    v9 = (*(self + 41) >> 4) & 3;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        [(SCNNode *)self simdOrientation];
        [v4 setSimdOrientation:?];
      }
    }

    else if (v9)
    {
      [(SCNNode *)self simdRotation];
      [v4 setSimdRotation:?];
    }

    else
    {
      [(SCNNode *)self simdEulerAngles];
      [v4 setSimdEulerAngles:?];
    }
  }

  if ((*(self + 41) & 4) != 0)
  {
    [(SCNNode *)self simdPivot];
    [v4 setSimdPivot:?];
  }

  [v4 setHidden:{-[SCNNode isHidden](self, "isHidden")}];
  [(SCNNode *)self opacity];
  [v4 setOpacity:?];
  [v4 setRenderingOrder:{-[SCNNode renderingOrder](self, "renderingOrder")}];
  [v4 setCategoryBitMask:{-[SCNNode categoryBitMask](self, "categoryBitMask")}];
  [v4 setMovabilityHint:{-[SCNNode movabilityHint](self, "movabilityHint")}];
  v6 = [(NSString *)[(SCNLight *)[(SCNNode *)self light] type] isEqualToString:@"probe"];
  v7 = [(SCNNode *)self light];
  if (v6)
  {
    v8 = [(SCNLight *)v7 copy];
    [v4 setLight:v8];
  }

  else
  {
    [v4 setLight:v7];
  }

  [v4 setCamera:{-[SCNNode camera](self, "camera")}];
  [v4 setRendererDelegate:{-[SCNNode rendererDelegate](self, "rendererDelegate")}];
  [v4 setPhysicsField:{-[SCNPhysicsField copy](-[SCNNode physicsField](self, "physicsField"), "copy")}];
  [v4 setCastsShadow:{-[SCNNode castsShadow](self, "castsShadow")}];
  [v4 setUsesDepthPrePass:{-[SCNNode usesDepthPrePass](self, "usesDepthPrePass")}];
  [v4 setConstraints:{-[SCNNode constraints](self, "constraints")}];
  [v4 setPostMorphingDeformers:{-[SCNNode postMorphingDeformers](self, "postMorphingDeformers")}];
  [v4 setPostSkinningDeformers:{-[SCNNode postSkinningDeformers](self, "postSkinningDeformers")}];
  [v4 setAuthoringEnvironmentNode:{-[SCNNode authoringEnvironmentNode](self, "authoringEnvironmentNode")}];
  [v4 setFocusBehavior:{-[SCNNode focusBehavior](self, "focusBehavior")}];
  if ([(SCNNode *)self authoringEnvironmentNode]&& [(SCNNode *)self authoringEnvironmentCompanionNode])
  {
    [v4 setAuthoringEnvironmentCompanionNode:{-[SCNNode authoringEnvironmentCompanionNode](self, "authoringEnvironmentCompanionNode")}];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(SCNNode *)self particleSystems];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v4 addParticleSystem:*(*(&v27 + 1) + 8 * i)];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  [v4 setGizmo:{-[SCNNode isGizmo](self, "isGizmo")}];
  os_unfair_lock_lock(&self->_valueForKeyLock);
  valueForKey = self->_valueForKey;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __24__SCNNode_copyWithZone___block_invoke;
  v26[3] = &unk_2782FC900;
  v26[4] = v4;
  [(NSMutableDictionary *)valueForKey enumerateKeysAndObjectsUsingBlock:v26];
  os_unfair_lock_unlock(&self->_valueForKeyLock);
  if ((*(self + 42) & 4) == 0)
  {
    [v4 _copyAnimationsFrom:self];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = [(SCNNode *)self actionKeys];
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v4 runAction:-[SCNNode actionForKey:](self forKey:{"actionForKey:", *(*(&v22 + 1) + 8 * j)), *(*(&v22 + 1) + 8 * j)}];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v18);
    }
  }

  +[SCNTransaction commitImmediate];
  [v4 setGeometry:{-[SCNNode geometry](self, "geometry")}];
  [v4 setMorpher:{-[SCNMorpher copy](-[SCNNode morpher](self, "morpher"), "copy")}];
  [v4 setSkinner:{-[SCNSkinner copy](-[SCNNode skinner](self, "skinner"), "copy")}];
  [v4 setPhysicsBody:{-[SCNPhysicsBody copy](-[SCNNode physicsBody](self, "physicsBody"), "copy")}];
  return v4;
}

- (id)_copyRecursively
{
  v17 = *MEMORY[0x277D85DE8];
  *(self + 42) |= 4u;
  v3 = [(SCNNode *)self copy];
  *(self + 42) &= ~4u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SCNNode *)self childNodes];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isGizmo] & 1) == 0)
        {
          v10 = [v9 _copyRecursively];
          [v3 addChildNode:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SCNNode)clone
{
  v3 = [(SCNNode *)self _copyRecursively];
  _transposeSkinnerToClone(v3, self, v3);
  _copyAnimations(self, v3);

  return v3;
}

+ (SCNNode)nodeWithNodeRef:(__C3DNode *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithNodeRef:a3];

    return v6;
  }

  return result;
}

- (SCNNode)childNodeWithName:(NSString *)name recursively:(BOOL)recursively
{
  v4 = recursively;
  v28 = *MEMORY[0x277D85DE8];
  v6 = [(SCNNode *)self childNodes];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v22 + 1) + 8 * v10);
      if ([(NSString *)[(SCNNode *)v11 name] isEqualToString:name])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  if (!v11 && v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = [*(*(&v18 + 1) + 8 * i) childNodeWithName:name recursively:1];
          if (v16)
          {
            return v16;
          }
        }

        v13 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
        v11 = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

- (BOOL)_childNodesPassingTest:(id)a3 recursively:(BOOL)a4 output:(id)a5
{
  v6 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0;
  if ((*(a3 + 2))(a3, self, &v20))
  {
    [a5 addObject:self];
  }

  if (v6 && (v20 & 1) == 0 && (v18 = 0u, v19 = 0u, v16 = 0u, v17 = 0u, v9 = [(SCNNode *)self childNodes], (v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v21 count:16]) != 0))
  {
    v11 = v10;
    v12 = *v17;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = 1;
      v20 = [*(*(&v16 + 1) + 8 * v13) _childNodesPassingTest:a3 recursively:1 output:a5];
      if (v20)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v14 = v20;
  }

  return v14 & 1;
}

- (id)childNodesPassingTest:(id)a3 recursively:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SCNNode *)self childNodes];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v14 + 1) + 8 * v12) _childNodesPassingTest:a3 recursively:v4 output:v7])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        return v7;
      }
    }
  }

  return v7;
}

- (BOOL)_enumerateChildNodesUsingBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  (*(a3 + 2))(a3, self, &v16);
  if ((v16 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(SCNNode *)self childNodes];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v16 = [*(*(&v12 + 1) + 8 * i) _enumerateChildNodesUsingBlock:a3];
          if (v16)
          {
            v10 = 1;
            return v10 & 1;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v10 = v16;
  return v10 & 1;
}

- (void)enumerateChildNodesUsingBlock:(void *)block
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(SCNNode *)self childNodes];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(*(&v9 + 1) + 8 * v8) _enumerateChildNodesUsingBlock:block])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (void)enumerateHierarchyUsingBlock:(void *)block
{
  v5 = 0;
  (*(block + 2))(block, self, &v5);
  if ((v5 & 1) == 0)
  {
    [(SCNNode *)self enumerateChildNodesUsingBlock:block];
  }
}

- (void)_childNodesWithAttribute:(Class)a3 output:(id)a4 recursively:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SCNNode *)self childNodes];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_class() == a3 && [v13 camera] || objc_opt_class() == a3 && objc_msgSend(v13, "light") || objc_opt_class() == a3 && objc_msgSend(v13, "geometry") || objc_opt_class() == a3 && objc_msgSend(v13, "morpher") || objc_opt_class() == a3 && objc_msgSend(v13, "skinner"))
        {
          [a4 addObject:v13];
        }

        if (v5)
        {
          [v13 _childNodesWithAttribute:a3 output:a4 recursively:1];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (id)childNodesWithAttribute:(Class)a3 recursively:(BOOL)a4
{
  v4 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  [(SCNNode *)self _childNodesWithAttribute:a3 output:v7 recursively:v4];
  return v7;
}

- (id)objectInChildNodesWithAttribute:(id)a3 firstOnly:(BOOL)a4
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SCNNode_objectInChildNodesWithAttribute_firstOnly___block_invoke;
  v8[3] = &unk_2782FEF40;
  v8[4] = a3;
  v8[5] = v9;
  [(SCNNode *)self _childNodesPassingTest:v8 recursively:1 output:v6];
  _Block_object_dispose(v9, 8);
  return v6;
}

uint64_t __53__SCNNode_objectInChildNodesWithAttribute_firstOnly___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([*(a1 + 32) isEqualToString:@"kMeshKey"] && objc_msgSend(a2, "geometry") || objc_msgSend(*(a1 + 32), "isEqualToString:", @"kCameraKey") && objc_msgSend(a2, "camera") || (result = objc_msgSend(*(a1 + 32), "isEqualToString:", @"kLightKey"), result) && (result = objc_msgSend(a2, "light")) != 0)
  {
    result = 1;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

- (id)_findComponentWithType:(int64_t)a3
{
  if ((((*(self + 22) & 0x1FFFu) >> a3) & 1) == 0)
  {
    return 0;
  }

  components = self->_components;
  if (!components)
  {
    return 0;
  }

  while ([(SCNNodeComponent *)components type]!= a3)
  {
    components = [(SCNNodeComponent *)components next];
    if (!components)
    {
      return 0;
    }
  }

  return [(SCNNodeComponent *)components component];
}

- (void)_removeComponentWithType:(int64_t)a3
{
  components = self->_components;
  if (components)
  {
    if ([(SCNNodeComponent *)self->_components type]== a3)
    {
      v6 = 0;
LABEL_7:
      v9 = [(SCNNodeComponent *)components next];
      if (v6)
      {
        [(SCNNodeComponent *)v6 setNext:v9];
      }

      else
      {
        self->_components = v9;
      }

      *(self + 22) &= ~(1 << a3) | 0xE000;
    }

    else
    {
      v7 = components;
      while (1)
      {
        v8 = [(SCNNodeComponent *)v7 next];
        if (!v8)
        {
          break;
        }

        components = v8;
        v6 = v7;
        v7 = v8;
        if ([(SCNNodeComponent *)v8 type]== a3)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

- (void)_assignComponent:(id)a3 toContainerWithType:(int64_t)a4
{
  v7 = 1 << a4;
  if ((*(self + 22) & (1 << a4) & 0x1FFF) != 0 && (components = self->_components) != 0)
  {
    while ([(SCNNodeComponent *)components type]!= a4)
    {
      components = [(SCNNodeComponent *)components next];
      if (!components)
      {
        goto LABEL_5;
      }
    }

    [(SCNNodeComponent *)components setComponent:a3];
  }

  else
  {
LABEL_5:
    v9 = off_2782F9D88;
    if (a4 != 10)
    {
      v9 = off_2782F9D80;
    }

    v10 = [objc_alloc(*v9) initWithType:a4 component:a3];
    [(SCNNodeComponent *)v10 setNext:self->_components];

    self->_components = v10;
    *(self + 22) |= v7 & 0x1FFF;
  }
}

- (id)__light
{
  v3 = [(SCNNode *)self _findComponentWithType:0];
  v4 = v3;
  if ((*(self + 40) & 2) == 0 && !v3)
  {
    v5 = [(SCNNode *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    *(self + 40) |= 2u;
    Light = C3DNodeGetLight(self->_node);
    if (Light)
    {
      v4 = [SCNLight lightWithLightRef:Light];
      [(SCNNode *)self _setComponent:v4 withType:0];
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v4 = 0;
    if (v6)
    {
LABEL_7:
      C3DSceneUnlock(v6);
    }
  }

LABEL_8:
  if ((*(self + 40) & 1) == 0)
  {
    return v4;
  }

  return [(SCNLight *)v4 presentationLight];
}

- (id)__camera
{
  v3 = [(SCNNode *)self _findComponentWithType:1];
  v4 = v3;
  if ((*(self + 40) & 8) == 0 && !v3)
  {
    v5 = [(SCNNode *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    *(self + 40) |= 8u;
    Camera = C3DNodeGetCamera(self->_node);
    if (Camera)
    {
      v4 = [SCNCamera cameraWithCameraRef:Camera];
      [(SCNNode *)self _setComponent:v4 withType:1];
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v4 = 0;
    if (v6)
    {
LABEL_7:
      C3DSceneUnlock(v6);
    }
  }

LABEL_8:
  if ((*(self + 40) & 1) == 0)
  {
    return v4;
  }

  return [(SCNCamera *)v4 presentationCamera];
}

- (id)__geometry
{
  v3 = [(SCNNode *)self _findComponentWithType:2];
  v4 = v3;
  if ((*(self + 40) & 4) == 0 && !v3)
  {
    *(self + 40) |= 4u;
    v5 = [(SCNNode *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    Geometry = C3DNodeGetGeometry(self->_node);
    if (Geometry)
    {
      v4 = [SCNGeometry geometryWithGeometryRef:Geometry];
      [(SCNNode *)self _setComponent:v4 withType:2];
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v4 = 0;
    if (v6)
    {
LABEL_7:
      C3DSceneUnlock(v6);
    }
  }

LABEL_8:
  if ((*(self + 40) & 1) == 0)
  {
    return v4;
  }

  return [(SCNGeometry *)v4 presentationGeometry];
}

- (id)__skinner
{
  v3 = [(SCNNode *)self _findComponentWithType:3];
  v4 = v3;
  if ((*(self + 40) & 0x10) == 0 && !v3)
  {
    v5 = [(SCNNode *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    *(self + 40) |= 0x10u;
    Skinner = C3DNodeGetSkinner(self->_node);
    if (!Skinner)
    {
      v4 = 0;
      if (!v6)
      {
        return v4;
      }

      goto LABEL_9;
    }

    v4 = [SCNSkinner skinnerWithSkinnerRef:Skinner];
    if ([(SCNNode *)self geometry])
    {
      [(SCNSkinner *)v4 _setBaseGeometry:[(SCNNode *)self geometry]];
    }

    [(SCNNode *)self _setComponent:v4 withType:3];
    if (v6)
    {
LABEL_9:
      C3DSceneUnlock(v6);
    }
  }

  return v4;
}

- (id)__morpher
{
  v3 = [(SCNNode *)self _findComponentWithType:4];
  v4 = v3;
  if ((*(self + 40) & 0x20) == 0 && !v3)
  {
    v5 = [(SCNNode *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    *(self + 40) |= 0x20u;
    Morpher = C3DNodeGetMorpher(self->_node);
    if (Morpher)
    {
      v4 = [SCNMorpher morpherWithMorphRef:C3DGeometryGetOverrideMaterial(Morpher)];
      [(SCNNode *)self _setComponent:v4 withType:4];
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v4 = 0;
    if (v6)
    {
LABEL_7:
      C3DSceneUnlock(v6);
    }
  }

LABEL_8:
  if ((*(self + 40) & 1) == 0)
  {
    return v4;
  }

  return [(SCNMorpher *)v4 presentationInstance];
}

- (NSArray)hitTestWithSegmentFromPoint:(SCNVector3)pointA toPoint:(SCNVector3)pointB options:(NSDictionary *)options
{
  y = pointB.y;
  x = pointB.x;
  v18 = pointA.y;
  v19 = pointA.x;
  v7 = [(SCNNode *)self sceneRef];
  if (v7)
  {
    v8 = v7;
    C3DSceneLock(v7);
    memset(v24, 0, sizeof(v24));
    if (options)
    {
      v9 = [(NSDictionary *)options objectForKey:@"kHitTestRootNode"];
      v10 = self;
      if (v9)
      {
        v10 = [(NSDictionary *)options objectForKey:@"kHitTestRootNode"];
      }

      v11 = [(SCNNode *)v10 nodeRef];
      v12 = [(NSDictionary *)options mutableCopy];
    }

    else
    {
      v11 = [(SCNNode *)self nodeRef];
      v12 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v12 setObject:v11 forKey:@"kHitTestRootNode"];
    [(SCNNode *)self simdConvertPosition:0 toNode:COERCE_DOUBLE(__PAIR64__(LODWORD(v18), LODWORD(v19)))];
    v23 = v14;
    [(SCNNode *)self simdConvertPosition:0 toNode:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];
    v22 = v15;
    C3DRay3Make(v24, &v23, &v22);
    HitTestResultsWithSegment = C3DSceneCreateHitTestResultsWithSegment(v8, v24, v12);
    v13 = [SCNHitTestResult hitTestResultsFromHitTestResultRef:HitTestResultsWithSegment];
    if (HitTestResultsWithSegment)
    {
      CFRelease(HitTestResultsWithSegment);
    }

    C3DSceneUnlock(v8);
  }

  else
  {
    v13 = 0;
  }

  if ([(NSArray *)v13 count])
  {
    return v13;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)_updateTransform
{
  if ((*(self + 41) & 1) == 0)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(SCNNode *)v3 _updateTransform:v4];
    }
  }

  v11 = (*(self + 41) >> 4) & 3;
  if (v11 > 1)
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    HIDWORD(v26) = 0;
    if (v11 == 2)
    {
      v27 = *&self->_anon_80[2];
      v23 = *MEMORY[0x277D860B8];
      v24 = *(MEMORY[0x277D860B8] + 16);
      v28 = vmulq_f32(v27, v27);
      v29 = vaddq_f32(v28, v28);
      v30 = vmulq_laneq_f32(v27, v27, 3);
      v31 = vmuls_lane_f32(v27.f32[0], *v27.f32, 1);
      v32 = vmuls_lane_f32(v27.f32[0], v27, 2);
      v23.f32[0] = (1.0 - v29.f32[1]) - v29.f32[2];
      v23.f32[1] = (v31 + v30.f32[2]) + (v31 + v30.f32[2]);
      v23.f32[2] = (v32 - v30.f32[1]) + (v32 - v30.f32[1]);
      v24.f32[0] = (v31 - v30.f32[2]) + (v31 - v30.f32[2]);
      v29.f32[0] = 1.0 - v29.f32[0];
      v24.f32[1] = v29.f32[0] - v29.f32[2];
      v27.f32[0] = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*&self->_anon_80[2])), v27, 2);
      v24.f32[2] = (v27.f32[0] + v30.f32[0]) + (v27.f32[0] + v30.f32[0]);
      v25 = *(MEMORY[0x277D860B8] + 32);
      v26 = *(MEMORY[0x277D860B8] + 48);
      v25.f32[0] = (v32 + v30.f32[1]) + (v32 + v30.f32[1]);
      v25.f32[1] = (v27.f32[0] - v30.f32[0]) + (v27.f32[0] - v30.f32[0]);
      v25.f32[2] = v29.f32[0] - v29.f32[1];
    }
  }

  else if (v11)
  {
    v33 = *&self->_anon_80[2];
    v23 = *MEMORY[0x277D860B8];
    v24 = *(MEMORY[0x277D860B8] + 16);
    v25 = *(MEMORY[0x277D860B8] + 32);
    v26 = *(MEMORY[0x277D860B8] + 48);
    v34 = vmulq_f32(v33, v33);
    v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    if (v35 != 0.0)
    {
      v36 = LODWORD(v35);
      v37 = vrsqrte_f32(LODWORD(v35));
      v61 = *(MEMORY[0x277D860B8] + 48);
      v63 = HIDWORD(*(MEMORY[0x277D860B8] + 32));
      v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
      v55 = vmulq_n_f32(v33, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
      v57 = HIDWORD(*MEMORY[0x277D860B8]);
      v59 = HIDWORD(*(MEMORY[0x277D860B8] + 16));
      v40 = __sincosf_stret(-v33.f32[3]);
      *v39.i32 = v40.__cosval;
      v41 = vmulq_n_f32(v55, 1.0 - v40.__cosval);
      v42 = vmulq_f32(vzip1q_s32(v55, v55), vzip2q_s32(vextq_s8(v41, v41, 0xCuLL), v41));
      HIDWORD(v26) = HIDWORD(v61);
      v43 = vmlaq_f32(vdupq_lane_s32(v39, 0), v41, v55);
      v44 = vrev64q_s32(vmulq_n_f32(v55, v40.__sinval));
      v45 = vextq_s8(v44, v44, 0xCuLL);
      v46 = vsubq_f32(v42, v45);
      v47 = vaddq_f32(v45, v42);
      v42.i64[0] = __PAIR64__(v43.u32[1], v47.u32[0]);
      v25.i64[0] = __PAIR64__(v47.u32[2], v46.u32[1]);
      v25.i64[1] = __PAIR64__(v63, v43.u32[2]);
      v43.i32[1] = v46.i32[0];
      v43.i64[1] = __PAIR64__(v57, v47.u32[1]);
      v42.i64[1] = __PAIR64__(v59, v46.u32[2]);
      v23 = v43;
      v24 = v42;
    }
  }

  else
  {
    v60 = *&self->_anon_80[2];
    v12 = __sincosf_stret(*&v60);
    v62 = *(MEMORY[0x277D860B8] + 32);
    v52 = *(MEMORY[0x277D860B8] + 16);
    v53 = *(MEMORY[0x277D860B8] + 48);
    v13 = v52;
    v13.i32[1] = LODWORD(v12.__cosval);
    v13.i32[2] = LODWORD(v12.__sinval);
    v56 = v13;
    v58 = *MEMORY[0x277D860B8];
    v14 = v62;
    v14.f32[1] = -v12.__sinval;
    v14.i32[2] = LODWORD(v12.__cosval);
    v54 = v14;
    v15 = __sincosf_stret(*(&v60 + 1));
    v16 = v58;
    v16.i32[0] = LODWORD(v15.__cosval);
    v16.f32[2] = -v15.__sinval;
    v17 = v62;
    v17.i32[0] = LODWORD(v15.__sinval);
    v17.i32[2] = LODWORD(v15.__cosval);
    v50 = v17;
    v51 = v16;
    v18 = __sincosf_stret(*(&v60 + 2));
    v21.i64[1] = v58.i64[1];
    v19 = 0;
    v20.i64[1] = v52.i64[1];
    v64 = v58;
    v21.i32[0] = LODWORD(v18.__cosval);
    v65 = v56;
    v66 = v54;
    v67 = v53;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    do
    {
      *(&v68 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v64 + v19))), v52, *&v64.f32[v19 / 4], 1), v50, *(&v64 + v19), 2), v53, *(&v64 + v19), 3);
      v19 += 16;
    }

    while (v19 != 64);
    v22 = 0;
    v21.i32[1] = LODWORD(v18.__sinval);
    v20.i32[1] = LODWORD(v18.__cosval);
    v64 = v68;
    v65 = v69;
    v66 = v70;
    v67 = v71;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    do
    {
      v20.f32[0] = -v18.__sinval;
      *(&v68 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v64 + v22))), v20, *&v64.f32[v22 / 4], 1), v62, *(&v64 + v22), 2), v53, *(&v64 + v22), 3);
      v22 += 16;
    }

    while (v22 != 64);
    v23 = v68;
    v24 = v69;
    v25 = v70;
    HIDWORD(v26) = v71.i32[3];
  }

  v48 = *&self->_scale[2];
  v49 = *&self->_position[2];
  HIDWORD(v49) = HIDWORD(v26);
  *&self->_anon_30[2] = vmulq_n_f32(v23, v48.f32[0]);
  *&self->_anon_30[18] = vmulq_lane_f32(v24, *v48.f32, 1);
  *&self->_anon_30[34] = vmulq_laneq_f32(v25, v48, 2);
  *&self->_anon_30[50] = v49;
  *(self + 41) |= 2u;
}

- (void)_updateAffine
{
  if ((*(self + 41) & 2) == 0)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(SCNNode *)v3 _updateAffine:v4];
    }
  }

  v12 = *&self->_anon_30[2];
  v11 = *&self->_anon_30[18];
  v14 = *&self->_anon_30[34];
  v13 = *&self->_anon_30[50];
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v11)), v14, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v16 = vmulq_f32(v12, vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL));
  v17 = (v16.f32[2] + vaddv_f32(*v16.f32)) < 0.0;
  v18 = 1.0;
  if (v17)
  {
    v18 = -1.0;
  }

  v19 = vmulq_f32(v12, v12);
  v20 = vmulq_f32(v11, v11);
  v21 = vadd_f32(vzip1_s32(*v19.i8, *v20.i8), vzip2_s32(*v19.i8, *v20.i8));
  v22 = vextq_s8(v19, v19, 8uLL);
  *v22.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v22.f32, *&vextq_s8(v20, v20, 8uLL)), v21));
  v23 = vmulq_f32(v14, v14);
  v22.i32[2] = sqrtf(v23.f32[2] + vaddv_f32(*v23.f32));
  v24 = vmulq_n_f32(v22, v18);
  v25 = vcltzq_f32(v24);
  v26 = vmvnq_s8(vorrq_s8(v25, vcgezq_f32(v24)));
  v26.i32[3] = v26.i32[2];
  v26.i32[0] = vmaxvq_u32(v26);
  v25.i32[0] = -1;
  v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v26, v25), 0), v24, 0);
  *&self->_scale[2] = v27;
  v28 = vceqzq_f32(v27);
  v28.i32[3] = v28.i32[2];
  if ((vmaxvq_u32(v28) & 0x80000000) != 0)
  {
    *&self->_anon_80[2] = *(MEMORY[0x277D860B8] + 48);
    *&self->_scale[2] = 0uLL;
    goto LABEL_21;
  }

  v29 = vdivq_f32(v12, vdupq_lane_s32(*v27.f32, 0));
  v30 = vdivq_f32(v11, vdupq_lane_s32(*v27.f32, 1));
  v31 = vdivq_f32(v14, vdupq_laneq_s32(v27, 2));
  v32 = v31.f32[2] + (*v29.i32 + v30.f32[1]);
  if (v32 > 0.0)
  {
    *v31.f32 = vsub_f32(*&vzip2q_s32(v30, vuzp1q_s32(v30, v31)), *&vtrn2q_s32(v31, vzip2q_s32(v31, v29)));
    v31.f32[2] = *&v29.i32[1] - v30.f32[0];
    v33 = v32 + 1.0;
    v31.f32[3] = v32 + 1.0;
    goto LABEL_19;
  }

  if (*v29.i32 <= v30.f32[1] || *v29.i32 <= v31.f32[2])
  {
    if (v30.f32[1] > v31.f32[2])
    {
      v35 = v30;
      v35.f32[1] = (v30.f32[1] + 1.0) - *v29.i32;
      v35.i32[3] = v31.i32[0];
      v36 = vzip2q_s32(vzip1q_s32(v29, v31), vtrn1q_s32(v31, v29));
      v37 = vsubq_f32(v35, v36);
      v31 = vtrn2q_s32(vrev64q_s32(vaddq_f32(v30, v36)), v37);
      v33 = *&v37.i32[1];
      goto LABEL_19;
    }

    *v31.f32 = vadd_f32(*v31.f32, *&vzip2q_s32(v29, v30));
    v33 = ((v31.f32[2] + 1.0) - *v29.i32) - v30.f32[1];
    v31.f32[2] = v33;
    v40 = *&v29.i32[1] - v30.f32[0];
  }

  else
  {
    v33 = ((*v29.i32 + 1.0) - v30.f32[1]) - v31.f32[2];
    *&v38 = v30.f32[0] + *&v29.i32[1];
    v39 = v31.f32[0] + *&v29.i32[2];
    v40 = v30.f32[2] - v31.f32[1];
    v31.i64[0] = __PAIR64__(v38, LODWORD(v33));
    v31.f32[2] = v39;
  }

  v31.f32[3] = v40;
LABEL_19:
  v41 = vmulq_n_f32(v31, 0.5 / sqrtf(v33));
  *&self->_anon_80[2] = v41;
  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v41, v41))) & 0x80000000) != 0)
  {
    *&self->_anon_80[2] = *(MEMORY[0x277D860B8] + 48);
  }

LABEL_21:
  *&self->_position[2] = v13;
  *(self + 41) = *(self + 41) & 0xCE | 0x21;
}

- (void)_quaternion
{
  v2 = a1[2].u8[9];
  if ((v2 & 1) == 0)
  {
    [(float32x4_t *)a1 _updateAffine];
    v2 = a1[2].u8[9];
  }

  v3 = (v2 >> 4) & 3;
  if (v3 <= 1)
  {
    if (v3)
    {
      [(float32x4_t *)a1 simdRotation];
      v5 = v4;
      v6 = vmulq_f32(v4, v4);
      if ((v6.f32[2] + vaddv_f32(*v6.f32)) > 0.000000001)
      {
        __sincosf_stret(vmuls_lane_f32(0.5, v5, 3));
      }
    }

    else
    {
      v7 = a1[8];
      __sincosf_stret(0.5 * v7.f32[0]);
      __sincosf_stret(vmuls_lane_f32(0.5, *v7.f32, 1));
      __sincosf_stret(vmuls_lane_f32(0.5, v7, 2));
    }
  }
}

- (SCNQuaternion)worldOrientation
{
  [(SCNNode *)self simdWorldOrientation];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result.w = v8;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNQuaternion)orientation
{
  [(SCNNode *)self simdOrientation];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result.w = v8;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (void)_setQuaternion:(float32x4_t *)a1
{
  if (a1[2].i8[8])
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNNode _setQuaternion:];
    }
  }

  else
  {
    if ((a1[2].i8[9] & 1) == 0)
    {
      [(float32x4_t *)a1 _updateAffine];
    }

    [(float32x4_t *)a1 _quaternion];
    if ((vminvq_u32(vceqq_f32(v8, v3)) & 0x80000000) == 0)
    {
      [(float32x4_t *)a1 willChangeValueForKey:@"orientation"];
      v4 = a1[2].i8[9];
      a1[8] = v8;
      a1[2].i8[9] = v4 & 0xCD | 0x20;
      v5 = [(float32x4_t *)a1 sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __26__SCNNode__setQuaternion___block_invoke;
      v9[3] = &unk_2782FEBE8;
      v11 = a1;
      v10 = v8;
      [SCNTransaction postCommandWithContext:v5 object:a1 key:@"orientation" applyBlock:v9];
      [(float32x4_t *)a1 didChangeValueForKey:@"orientation"];
    }
  }
}

- (double)_euler
{
  v2 = *(a1 + 41);
  if ((v2 & 1) == 0)
  {
    [a1 _updateAffine];
    v2 = *(a1 + 41);
  }

  if ((v2 & 0x30) != 0)
  {
    [a1 _quaternion];
    v4 = v3;
    v5 = vmulq_f32(v3, v3);
    v6 = vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)));
    *&v7 = 0;
    if (v6 != 0.0)
    {
      v8 = v4.f32[2];
      v9 = v4.f32[1];
      v10 = v4.f32[3];
      v11 = (vmuls_lane_f32(-v4.f32[1], v4, 3) + (v4.f32[0] * v4.f32[2])) / v6;
      if (v11 <= 0.499)
      {
        if (v11 >= -0.499)
        {
          v14 = *&v5.i32[1];
          v15 = v5.i64[1];
          v17 = v4.f32[0];
          v18 = *v5.i32;
          atan2f(((v4.f32[2] * v4.f32[3]) + (v4.f32[0] * v4.f32[1])) + ((v4.f32[2] * v4.f32[3]) + (v4.f32[0] * v4.f32[1])), *&v5.i32[3] + ((*v5.i32 - *&v5.i32[1]) - *&v5.i32[2]));
          v19 = atan2f(((v17 * v10) + (v9 * v8)) + ((v17 * v10) + (v9 * v8)), *(&v15 + 1) + (*&v15 + (-v18 - v14)));
          *&v7 = __PAIR64__(COERCE_UNSIGNED_INT(asinf(v11 * -2.0)), LODWORD(v19));
          return *&v7;
        }

        *&v7 = atan2f(v4.f32[0], v4.f32[3]) * -2.0;
        v13 = &dword_21C27FCE0;
      }

      else
      {
        v12 = atan2f(v4.f32[0], v4.f32[3]);
        *&v7 = v12 + v12;
        v13 = &dword_21C27FCE4;
      }

      DWORD1(v7) = *v13;
    }
  }

  else
  {
    v7 = *(a1 + 128);
  }

  return *&v7;
}

- (SCNVector3)eulerAngles
{
  [(SCNNode *)self simdEulerAngles];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (void)_setPosition:(SCNNode *)self
{
  if (*(self + 40))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNNode _setPosition:];
    }
  }

  else
  {
    v7 = v2;
    if ((*(self + 41) & 1) == 0)
    {
      [(SCNNode *)self _updateAffine];
      v2 = v7;
    }

    v4 = vceqq_f32(*&self->_position[2], v2);
    v4.i32[3] = v4.i32[2];
    if ((vminvq_u32(v4) & 0x80000000) == 0)
    {
      [(SCNNode *)self willChangeValueForKey:@"position"];
      *(self + 41) &= ~2u;
      *&self->_position[2] = v7;
      v5 = [(SCNNode *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __24__SCNNode__setPosition___block_invoke;
      v8[3] = &unk_2782FEBE8;
      v10 = self;
      v9 = v7;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"translation" applyBlock:v8];
      [(SCNNode *)self didChangeValueForKey:@"position"];
    }
  }
}

- (SCNVector3)position
{
  [(SCNNode *)self simdPosition];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (void)_setScale:(SCNNode *)self
{
  if (*(self + 40))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNNode _setScale:];
    }
  }

  else
  {
    v7 = v2;
    if ((*(self + 41) & 1) == 0)
    {
      [(SCNNode *)self _updateAffine];
      v2 = v7;
    }

    v4 = vceqq_f32(*&self->_scale[2], v2);
    v4.i32[3] = v4.i32[2];
    if ((vminvq_u32(v4) & 0x80000000) == 0)
    {
      [(SCNNode *)self willChangeValueForKey:@"scale"];
      *(self + 41) &= ~2u;
      *&self->_scale[2] = v7;
      v5 = [(SCNNode *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __21__SCNNode__setScale___block_invoke;
      v8[3] = &unk_2782FEBE8;
      v10 = self;
      v9 = v7;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"scale" applyBlock:v8];
      [(SCNNode *)self didChangeValueForKey:@"scale"];
    }
  }
}

- (SCNVector3)scale
{
  [(SCNNode *)self simdScale];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector4)rotation
{
  [(SCNNode *)self simdRotation];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result.w = v8;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNMatrix4)transform
{
  result = [(SCNNode *)self simdTransform];
  *&retstr->m11 = v5;
  *&retstr->m21 = v6;
  *&retstr->m31 = v7;
  *&retstr->m41 = v8;
  return result;
}

- (SCNVector3)worldPosition
{
  [(SCNNode *)self simdWorldPosition];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNMatrix4)worldTransform
{
  result = [(SCNNode *)self simdWorldTransform];
  *&retstr->m11 = v5;
  *&retstr->m21 = v6;
  *&retstr->m31 = v7;
  *&retstr->m41 = v8;
  return result;
}

- (SCNMatrix4)pivot
{
  result = [(SCNNode *)self simdPivot];
  *&retstr->m11 = v5;
  *&retstr->m21 = v6;
  *&retstr->m31 = v7;
  *&retstr->m41 = v8;
  return result;
}

- (SCNMovabilityHint)movabilityHint
{
  if ((*(self + 40) & 1) == 0)
  {
    return (*(self + 41) >> 6) & 1;
  }

  v4 = [(SCNNode *)self sceneRef];
  if (!v4)
  {
    return C3DNodeGetMovability(self->_node);
  }

  v5 = v4;
  C3DSceneLock(v4);
  Movability = C3DNodeGetMovability(self->_node);
  C3DSceneUnlock(v5);
  return Movability;
}

- (void)setMovabilityHint:(SCNMovabilityHint)movabilityHint
{
  if (*(self + 40))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNNode setMovabilityHint:];
    }
  }

  else
  {
    v5 = *(self + 41);
    if (((v5 >> 6) & 1) != movabilityHint)
    {
      *(self + 41) = v5 & 0xBF | ((movabilityHint & 1) << 6);
      v6 = [(SCNNode *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __29__SCNNode_setMovabilityHint___block_invoke;
      v8[3] = &unk_2782FB7D0;
      v8[4] = self;
      v8[5] = movabilityHint;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

- (BOOL)castsShadow
{
  if ((*(self + 40) & 1) == 0)
  {
    return *(self + 42) & 1;
  }

  v4 = [(SCNNode *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    CastsShadow = C3DNodeGetCastsShadow(self->_node);
    C3DSceneUnlock(v5);
    return CastsShadow;
  }

  else
  {
    node = self->_node;

    return C3DNodeGetCastsShadow(node);
  }
}

- (void)setCastsShadow:(BOOL)castsShadow
{
  if (*(self + 40))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNNode setCastsShadow:];
    }
  }

  else
  {
    v5 = *(self + 42);
    if ((v5 & 1) != castsShadow)
    {
      *(self + 42) = v5 & 0xFE | castsShadow;
      v6 = [(SCNNode *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __26__SCNNode_setCastsShadow___block_invoke;
      v8[3] = &unk_2782FB7F8;
      v8[4] = self;
      v9 = castsShadow;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

- (BOOL)usesDepthPrePass
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      UsesDepthPrePass = C3DNodeGetUsesDepthPrePass(self->_node);
      C3DSceneUnlock(v5);
      LOBYTE(v3) = UsesDepthPrePass;
    }

    else
    {
      node = self->_node;

      LOBYTE(v3) = C3DNodeGetUsesDepthPrePass(node);
    }
  }

  else
  {
    return (*(self + 42) >> 1) & 1;
  }

  return v3;
}

- (void)setUsesDepthPrePass:(BOOL)a3
{
  if (*(self + 40))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNNode setUsesDepthPrePass:];
    }
  }

  else
  {
    v5 = *(self + 42);
    if (((((v5 & 2) == 0) ^ a3) & 1) == 0)
    {
      if (a3)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      *(self + 42) = v5 & 0xFD | v6;
      v7 = [(SCNNode *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __31__SCNNode_setUsesDepthPrePass___block_invoke;
      v9[3] = &unk_2782FB7F8;
      v9[4] = self;
      v10 = a3;
      [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
    }
  }
}

- (NSUInteger)categoryBitMask
{
  if ((*(self + 40) & 1) == 0)
  {
    return self->_categoryBitMask;
  }

  v4 = [(SCNNode *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    CategoryBitMask = C3DNodeGetCategoryBitMask(self->_node);
    C3DSceneUnlock(v5);
    return CategoryBitMask;
  }

  else
  {
    node = self->_node;

    return C3DNodeGetCategoryBitMask(node);
  }
}

- (void)setCategoryBitMask:(NSUInteger)categoryBitMask
{
  if (*(self + 40))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNNode setCategoryBitMask:];
    }
  }

  else if (self->_categoryBitMask != categoryBitMask)
  {
    self->_categoryBitMask = categoryBitMask;
    v5 = [(SCNNode *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__SCNNode_setCategoryBitMask___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = categoryBitMask;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (BOOL)isHidden
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      IsHidden = C3DNodeIsHidden(self->_node);
      C3DSceneUnlock(v5);
      LOBYTE(v3) = IsHidden;
    }

    else
    {
      node = self->_node;

      LOBYTE(v3) = C3DNodeIsHidden(node);
    }
  }

  else
  {
    return *(self + 41) >> 7;
  }

  return v3;
}

- (void)setHidden:(BOOL)hidden
{
  if (*(self + 40))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNNode setHidden:];
    }
  }

  else
  {
    v5 = *(self + 41);
    if ((((v5 >= 0) ^ hidden) & 1) == 0)
    {
      if (hidden)
      {
        v6 = 0x80;
      }

      else
      {
        v6 = 0;
      }

      *(self + 41) = v6 & 0x80 | v5 & 0x7F;
      v7 = [(SCNNode *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __21__SCNNode_setHidden___block_invoke;
      v9[3] = &unk_2782FB7F8;
      v9[4] = self;
      v10 = hidden;
      [SCNTransaction postCommandWithContext:v7 object:self key:@"hidden" applyBlock:v9];
    }
  }
}

- (CGFloat)opacity
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      Opacity = C3DNodeGetOpacity(self->_node);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DNodeGetOpacity(self->_node);
    }
  }

  else
  {
    return self->_opacity;
  }

  return Opacity;
}

- (void)setOpacity:(CGFloat)opacity
{
  if (*(self + 40))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNNode setOpacity:];
    }
  }

  else
  {
    if (opacity > 1.0)
    {
      opacity = 1.0;
    }

    v4 = fmax(opacity, 0.0);
    if (v4 != self->_opacity)
    {
      v5 = v4;
      self->_opacity = v5;
      v6 = [(SCNNode *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __22__SCNNode_setOpacity___block_invoke;
      v8[3] = &unk_2782FB7D0;
      v8[4] = self;
      *&v8[5] = v4;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"opacity" applyBlock:v8];
    }
  }
}

float __22__SCNNode_setOpacity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DNodeSetOpacity(*(*(a1 + 32) + 8), v1);
  return result;
}

- (NSInteger)renderingOrder
{
  if ((*(self + 40) & 1) == 0)
  {
    return self->_renderingOrder;
  }

  v4 = [(SCNNode *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    RenderingOrder = C3DNodeGetRenderingOrder(self->_node);
    C3DSceneUnlock(v5);
    return RenderingOrder;
  }

  else
  {
    node = self->_node;

    return C3DNodeGetRenderingOrder(node);
  }
}

- (void)setRenderingOrder:(NSInteger)renderingOrder
{
  if (*(self + 40))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNNode setRenderingOrder:];
    }
  }

  else if (self->_renderingOrder != renderingOrder)
  {
    self->_renderingOrder = renderingOrder;
    v5 = [(SCNNode *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNNode_setRenderingOrder___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = renderingOrder;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (void)_setComponent:(id)a3 withType:(int64_t)a4
{
  if (a3)
  {
    [(SCNNode *)self _assignComponent:a3 toContainerWithType:a4];
  }

  else
  {
    [(SCNNode *)self _removeComponentWithType:a4];
  }
}

- (void)setLight:(SCNLight *)light
{
  if ([(SCNNode *)self light]!= light)
  {
    [(SCNNode *)self _setComponent:light withType:0];
    v5 = [(SCNNode *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __20__SCNNode_setLight___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = light;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

void __20__SCNNode_setLight___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) lightRef];

  C3DNodeSetLight(v1, v2);
}

- (void)setIsJoint:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 41) = *(self + 41) & 0xF7 | v3;
}

- (void)setSkinner:(SCNSkinner *)skinner
{
  if ([(SCNNode *)self skinner]!= skinner)
  {
    if ([(SCNNode *)self geometry])
    {
      [(SCNSkinner *)skinner _setBaseGeometry:[(SCNNode *)self geometry]];
    }

    [(SCNNode *)self _setComponent:skinner withType:3];
    v5 = [(SCNNode *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __22__SCNNode_setSkinner___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = skinner;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

void __22__SCNNode_setSkinner___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) skinnerRef];

  C3DNodeSetSkinner(v1, v2);
}

- (void)setMorpher:(SCNMorpher *)morpher
{
  if ([(SCNNode *)self morpher]!= morpher)
  {
    [(SCNNode *)self _setComponent:morpher withType:4];
    v5 = [(SCNNode *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __22__SCNNode_setMorpher___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = morpher;
    v6[5] = self;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

void __22__SCNNode_setMorpher___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) morphRef];
  if (v2)
  {
    v3 = C3DMorpherCreateWith(v2);
  }

  else
  {
    v3 = 0;
  }

  C3DNodeSetMorpher(*(*(a1 + 40) + 8), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)setPostMorphingDeformers:(id)a3
{
  if ([(SCNNode *)self postMorphingDeformers]!= a3)
  {
    v5 = [a3 copy];
    [(SCNNode *)self _setComponent:v5 withType:11];
    v6 = [(SCNNode *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNNode_setPostMorphingDeformers___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = self;
    v7[5] = v5;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

- (void)setPostSkinningDeformers:(id)a3
{
  if ([(SCNNode *)self postSkinningDeformers]!= a3)
  {
    v5 = [a3 copy];
    [(SCNNode *)self _setComponent:v5 withType:12];
    v6 = [(SCNNode *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNNode_setPostSkinningDeformers___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = self;
    v7[5] = v5;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

- (void)setCamera:(SCNCamera *)camera
{
  if ([(SCNNode *)self camera]!= camera)
  {
    [(SCNNode *)self _setComponent:camera withType:1];
    v5 = [(SCNNode *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __21__SCNNode_setCamera___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = camera;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

void __21__SCNNode_setCamera___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) cameraRef];

  C3DNodeSetCamera(v1, v2);
}

- (void)setGeometry:(SCNGeometry *)geometry
{
  if ([(SCNNode *)self geometry]!= geometry)
  {
    [(SCNNode *)self _setComponent:geometry withType:2];
    v5 = [(SCNNode *)self skinner];
    if (v5)
    {
      [(SCNSkinner *)v5 _setBaseGeometry:geometry];
    }

    v6 = [(SCNNode *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __23__SCNNode_setGeometry___block_invoke;
    v9[3] = &unk_2782FC950;
    v9[4] = self;
    v9[5] = geometry;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v9];
    v7 = [(SCNNode *)self physicsBody];
    if (v7)
    {
      v8 = v7;
      if (![(SCNPhysicsBody *)v7 physicsShape])
      {
        [(SCNPhysicsBody *)v8 setPhysicsShape:[SCNPhysicsShape shapeWithGeometry:geometry options:0]];
      }
    }
  }
}

void __23__SCNNode_setGeometry___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) geometryRef];

  C3DNodeSetGeometry(v1, v2);
}

- (void)setFilters:(NSArray *)filters
{
  if ([(SCNNode *)self filters]!= filters)
  {
    [(SCNNode *)self _setComponent:[(NSArray *)filters copy] withType:5];
    v5 = [(SCNNode *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __22__SCNNode_setFilters___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = filters;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

- (NSArray)filters
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      Filters = C3DNodeGetFilters(self->_node);
      C3DSceneUnlock(v5);
      return Filters;
    }

    else
    {
      node = self->_node;

      return C3DNodeGetFilters(node);
    }
  }

  else
  {

    return [(SCNNode *)self _findComponentWithType:5];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p", NSStringFromClass(v4), self];
  if ([(NSString *)[(SCNNode *)self name] length])
  {
    [v5 appendFormat:@" '%@'", -[SCNNode name](self, "name")];
  }

  [(SCNNode *)self position];
  if (v6 != 0.0 || v7 != 0.0 || v8 != 0.0)
  {
    [v5 appendFormat:@" pos(%f %f %f)", v6, v7, v8];
  }

  [(SCNNode *)self rotation];
  v14 = v11 == 0.0 && v10 == 0.0 && v9 == 0.0;
  if (!v14 && v12 != 0.0)
  {
    [v5 appendFormat:@" rot(%f %f %f %f)", v9, v10, v11, v12];
  }

  [(SCNNode *)self scale];
  if (v15 != 1.0 || v16 != 1.0 || v17 != 1.0)
  {
    [v5 appendFormat:@" scale(%f %f %f)", v15, v16, v17];
  }

  if ([(SCNNode *)self light]|| [(SCNNode *)self camera]|| [(SCNNode *)self geometry])
  {
    [v5 appendString:@" |"];
  }

  if ([(SCNNode *)self light])
  {
    [v5 appendFormat:@" light=%@", -[SCNNode light](self, "light")];
  }

  if ([(SCNNode *)self camera])
  {
    [v5 appendFormat:@" camera=%@", -[SCNNode camera](self, "camera")];
  }

  if ([(SCNNode *)self geometry])
  {
    [v5 appendFormat:@" geometry=%@", -[SCNNode geometry](self, "geometry")];
  }

  v18 = [(NSArray *)[(SCNNode *)self childNodes] count];
  if (v18 == 1)
  {
    v19 = @" | 1 child";
  }

  else
  {
    if (v18)
    {
      [v5 appendFormat:@" | %d children", v18];
      goto LABEL_36;
    }

    v19 = @" | no child";
  }

  [v5 appendString:v19];
LABEL_36:
  [v5 appendString:@">"];
  return v5;
}

- (void)setRendererDelegate:(id)rendererDelegate
{
  if (self->_rendererDelegate != rendererDelegate)
  {
    v9[10] = v3;
    v9[11] = v4;
    if (objc_opt_respondsToSelector())
    {
      self->_rendererDelegate = rendererDelegate;
      v7 = C3DRendererDelegateCreate(_rendererCallback, 0, self);
    }

    else
    {
      v7 = 0;
      self->_rendererDelegate = 0;
    }

    v8 = [(SCNNode *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__SCNNode_setRendererDelegate___block_invoke;
    v9[3] = &unk_2782FC950;
    v9[4] = self;
    v9[5] = v7;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v9];
  }
}

- (void)renderInContext:(void *)a3
{
  v5 = [SCNRenderer rendererWithContext:a3 options:0];
  v6 = [MEMORY[0x277CD9388] currentContext];
  [MEMORY[0x277CD9388] setCurrentContext:a3];
  C3DEngineContextRenderNodeTree([(SCNRenderer *)v5 _engineContext], 0, [(SCNNode *)self nodeRef]);
  v7 = MEMORY[0x277CD9388];

  [v7 setCurrentContext:v6];
}

- (BOOL)parseSpecialKey:(id)a3 withPath:(id)a4 intoDestination:(id *)a5
{
  if (![a3 hasPrefix:{@"/", a4}])
  {
    v9 = [a3 rangeOfString:@"["];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v10 = v9;
    v11 = v9 + 1;
    if (v9 + 1 >= [a3 length])
    {
      goto LABEL_12;
    }

    v12 = [a3 substringToIndex:v10];
    v13 = [a3 substringFromIndex:v11];
    v14 = [v13 rangeOfString:@"]"];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v15 = [objc_msgSend(v13 substringToIndex:{v14), "intValue"}];
    if (([(__CFString *)v12 isEqualToString:&stru_282DCC058]& 1) != 0 || [(__CFString *)v12 isEqualToString:@"nodes"])
    {
      v12 = @"childNodes";
    }

    v16 = [(SCNNode *)self valueForKey:v12];
    if ([v16 count] <= v15)
    {
LABEL_12:
      LOBYTE(v8) = 0;
      return v8;
    }

    v8 = [v16 objectAtIndex:v15];
    goto LABEL_3;
  }

  v8 = -[SCNNode childNodeWithName:recursively:](self, "childNodeWithName:recursively:", [a3 substringWithRange:{1, objc_msgSend(a3, "length") - 1}], 1);
  if (v8)
  {
LABEL_3:
    *a5 = v8;
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4
{
  if (![a3 length])
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  SCNKitSplitKVCPath(a3, &v13, &v12);
  if ([(SCNNode *)self parseSpecialKey:v13 withPath:a3 intoDestination:&v14]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v14 copyAnimationChannelForKeyPath:v12 animation:a4];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count") + 1}];
      [v9 addObject:v13];
      [v9 addObjectsFromArray:v8];

      return v9;
    }

    return 0;
  }

  v14 = [(SCNNode *)self valueForKey:v13];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return SCNCreateAnimationChannelWithObjectAndPath(self, a3);
  }

  v10 = [v14 copyAnimationChannelForKeyPath:v12 animation:a4];
  if (!v10)
  {
    return SCNCreateAnimationChannelWithObjectAndPath(self, a3);
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count") + 1}];
  [v9 addObject:v13];
  [v9 addObjectsFromArray:v10];

  return v9;
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  if ([a4 hasPrefix:@"filters."])
  {
    v12 = 0;
    v13 = 0;
    SCNKitSplitKVCPath(a4, &v13, &v12);
    if (v12)
    {
      v7 = C3DCFTypeCopyModelInfoAtPath(self->_node, a4, 0);
      if (v7)
      {
        v8 = v7;
        if (C3DModelTargetGetTargetAddress(v7))
        {
          v9 = [(SCNNode *)self sceneRef];
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __31__SCNNode_setValue_forKeyPath___block_invoke;
          v11[3] = &unk_2782FEF68;
          v11[4] = a4;
          v11[5] = a3;
          v11[6] = v12;
          v11[7] = self;
          [SCNTransaction postCommandWithContext:v9 object:self keyPath:a4 applyBlock:v11];
        }

        CFRelease(v8);
      }
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SCNNode;
    [(SCNNode *)&v10 setValue:a3 forKeyPath:a4];
  }
}

uint64_t __31__SCNNode_setValue_forKeyPath___block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (*(result + 40))
    {
      v12 = 0;
      v13 = 0;
      SCNKitSplitKVCPath(*(result + 48), &v13, &v12);
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v2 = [*(v1 + 56) filters];
      result = [v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v9;
        while (2)
        {
          v5 = 0;
          do
          {
            if (*v9 != v4)
            {
              objc_enumerationMutation(v2);
            }

            v6 = *(*(&v8 + 1) + 8 * v5);
            v7 = [v6 name];
            if ([v7 isEqualToString:v13])
            {
              return [v6 setValue:*(v1 + 40) forKey:v12];
            }

            ++v5;
          }

          while (v3 != v5);
          result = [v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
          v3 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

- (id)valueForKeyPath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  if ([a3 hasPrefix:@"filters."])
  {
    v17 = 0;
    v18 = 0;
    SCNKitSplitKVCPath([a3 substringFromIndex:{objc_msgSend(@"filters.", "length")}], &v18, &v17);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(SCNNode *)self filters];
    result = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = [v10 name];
          if ([v11 isEqualToString:v18])
          {
            return [v10 valueForKey:v17];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        result = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
        v7 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SCNNode;
    return [(SCNNode *)&v12 valueForKeyPath:a3];
  }

  return result;
}

- (id)valueForUndefinedKey:(id)a3
{
  if ((*(self + 40) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [(SCNNode *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  ValueForKey = C3DEntityGetValueForKey(self->_node, a3);
  v8 = ValueForKey;
  if (ValueForKey)
  {
    Bytes = C3DValueGetBytes(ValueForKey);
    Type = C3DValueGetType(v8);
    v8 = SCNNSValueFromTypedBytes(Bytes, Type, v11, v12, v13, v14);
  }

  if (v6)
  {
    C3DSceneUnlock(v6);
  }

  if (!v8)
  {
LABEL_9:
    v17 = 0;
    if ([(SCNNode *)self parseSpecialKey:a3 withPath:a3 intoDestination:&v17])
    {
      return v17;
    }

    else
    {
      os_unfair_lock_lock(&self->_valueForKeyLock);
      v15 = [(NSMutableDictionary *)self->_valueForKey objectForKey:a3];
      os_unfair_lock_unlock(&self->_valueForKeyLock);
      if (v15)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return v8;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if ((*(self + 40) & 1) == 0)
  {
    v7 = SCNCopyValueFromObjCProperty(self, a4);
    os_unfair_lock_lock(&self->_valueForKeyLock);
    valueForKey = self->_valueForKey;
    if (a3)
    {
      if (!valueForKey)
      {
        valueForKey = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_valueForKey = valueForKey;
      }

      [(NSMutableDictionary *)valueForKey setObject:a3 forKey:a4];
    }

    else
    {
      [(NSMutableDictionary *)valueForKey removeObjectForKey:a4];
    }

    os_unfair_lock_unlock(&self->_valueForKeyLock);
    v10 = SCNCopyValueFromObjCProperty(self, a4);
    v11 = v10;
    if (v7 && v10)
    {
      node = self->_node;
      C3DEntitySetValueForKey(node, a4, v7);
      v13 = [objc_msgSend(@"customProperty" stringByAppendingString:{@".", "stringByAppendingString:", a4}];
      v14 = [(SCNNode *)self sceneRef];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __36__SCNNode_setValue_forUndefinedKey___block_invoke;
      v15[3] = &unk_2782FB630;
      v15[5] = v11;
      v15[6] = node;
      v15[4] = a4;
      [SCNTransaction postCommandWithContext:v14 object:self keyPath:v13 applyBlock:v15];
    }

    else if (!v7)
    {
LABEL_14:

      return;
    }

    CFRelease(v7);
    goto LABEL_14;
  }

  v9 = scn_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SCNNode setValue:forUndefinedKey:];
  }
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNNode *)self sceneRef];
  if (result)
  {

    return C3DSceneGetAnimationManager(result);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v7 = [-[SCNOrderedDictionary objectForKey:](self->_animations objectForKey:{a4), "animation"}] == a3;
  if (v7)
  {
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a4];
    v8 = [(SCNNode *)self __CFObject];
    if ((CFTypeIsC3DEntity(v8) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v9 __removeAnimation:v10 forKey:v11, v12, v13, v14, v15, v16];
      }
    }

    C3DEntityRemoveAnimationForKey(v8, a4, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v7;
}

- (void)addAnimationPlayer:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    if (!a4)
    {
      v5 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (!animations)
    {
      animations = objc_alloc_init(SCNOrderedDictionary);
      self->_animations = animations;
    }

    [(SCNOrderedDictionary *)animations setObject:a3 forKey:v5];
    os_unfair_lock_unlock(&self->_animationsLock);
    v8 = [(SCNNode *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SCNNode_addAnimationPlayer_forKey___block_invoke;
    v10[3] = &unk_2782FC928;
    v10[4] = a3;
    v10[5] = self;
    v10[6] = v5;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v10];
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial addAnimationPlayer:forKey:];
    }
  }
}

void __37__SCNNode_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareWithTarget:*(a1 + 40) implicitDuration:?];
  if ((SCNAddAnimation(*(a1 + 32), *(a1 + 40), *(a1 + 48)) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 200));
    [*(*(a1 + 40) + 208) removeObjectForKey:*(a1 + 48)];
    v2 = (*(a1 + 40) + 200);

    os_unfair_lock_unlock(v2);
  }
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    if (!a4)
    {
      v5 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [SCNAnimation animationWithCAAnimation:v6];
    }

    v7 = [SCNAnimationPlayer animationPlayerWithSCNAnimation:v6];
    [(SCNNode *)self addAnimationPlayer:v7 forKey:v5];
    [(SCNAnimationPlayer *)v7 play];
    if ([(SCNNode *)self isPausedOrPausedByInheritance])
    {

      [(SCNNode *)self _pauseAnimation:1 forKey:v5 pausedByNode:1];
    }
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial addAnimation:forKey:];
    }
  }
}

- (void)removeAllAnimations
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v3 = [(SCNNode *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SCNNode_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)a3
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNNode *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SCNNode_removeAllAnimationsWithBlendOutDuration___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)removeAnimationForKey:(id)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a3];
    os_unfair_lock_unlock(&self->_animationsLock);
    v5 = [(SCNNode *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__SCNNode_removeAnimationForKey___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a3];
    os_unfair_lock_unlock(&self->_animationsLock);
    v7 = [(SCNNode *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__SCNNode_removeAnimationForKey_blendOutDuration___block_invoke;
    v8[3] = &unk_2782FB630;
    v8[4] = self;
    v8[5] = a3;
    *&v8[6] = a4;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (void)_syncObjCAnimations
{
  v3 = [(SCNNode *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNNode *)self __CFObject];
  if (v5)
  {
    v6 = v5;
    if ((CFTypeIsC3DEntity(v5) & 1) == 0)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v7 _syncObjCAnimations:v8];
      }
    }

    Animations = C3DEntityGetAnimations(v6);
    if (Animations)
    {
      v16 = Animations;
      os_unfair_lock_lock(&self->_animationsLock);
      C3DOrderedDictionaryApplyFunction(v16, SCNConvertC3DAnimationDictionaryFunc, self->_animations);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

- (id)animationForKey:(id)a3
{
  v3 = [(SCNNode *)self _scnAnimationForKey:a3];
  v4 = MEMORY[0x277CD9DF8];

  return [v4 animationWithSCNAnimation:v3];
}

- (id)_scnAnimationForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = [-[SCNOrderedDictionary objectForKey:](animations objectForKey:{v3), "animation"}];
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_copyAnimationsFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 animationKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [objc_msgSend(a3 animationPlayerForKey:{v10), "copy"}];
        [(SCNNode *)self addAnimationPlayer:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)animationPlayerForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = [(SCNOrderedDictionary *)animations objectForKey:v3];
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = [(SCNNode *)self __CFObject];
  if (v9)
  {
    v10 = v9;
    v11 = [(SCNNode *)self animationManager];
    if (v11)
    {
      v12 = v11;
      v13 = CACurrentMediaTime();

      C3DAnimationManagerPauseAnimationForKey(v12, v10, a4, v7, v5, v13);
    }
  }
}

- (void)pauseAnimationForKey:(id)a3
{
  v5 = [(SCNNode *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SCNNode_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)a3
{
  v5 = [(SCNNode *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SCNNode_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setSpeed:(double)a3 forAnimationKey:(id)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", a4];
  v8 = [(SCNNode *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__SCNNode_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = a4;
  *&v9[6] = a3;
  [SCNTransaction postCommandWithContext:v8 object:self keyPath:v7 applyBlock:v9];
}

void __36__SCNNode_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) animationManager];
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);

      C3DAnimationManagerChangeSpeedOfAnimationForKey(v4, v3, v5, v6);
    }
  }
}

- (BOOL)isAnimationForKeyPaused:(id)a3
{
  v5 = [(SCNNode *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = [(SCNNode *)self __CFObject];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNNode *)self animationManager];
    if (v9)
    {
      IsPaused = C3DAnimationManagerGetAnimationForKeyIsPaused(v9, v8, a3);
      if (!v6)
      {
        return IsPaused;
      }

      goto LABEL_8;
    }
  }

  IsPaused = 0;
  if (v6)
  {
LABEL_8:
    C3DSceneUnlock(v6);
  }

  return IsPaused;
}

- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6
{
  if (self != a4)
  {
    v16[15] = v6;
    v16[16] = v7;
    v13 = objc_alloc_init(C3DBinding);
    [(C3DBinding *)v13 setSourceObject:a4];
    [(C3DBinding *)v13 setKeyPathDst:a3];
    [(C3DBinding *)v13 setKeyPathSrc:a5];
    [(C3DBinding *)v13 setOptions:a6];
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_bindings = bindings;
    }

    [(NSMutableDictionary *)bindings setValue:v13 forKey:a3];

    v15 = [(SCNNode *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__SCNNode_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    v16[7] = a5;
    v16[8] = a6;
    [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
  }
}

void __59__SCNNode_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = objc_alloc_init(C3DBinding);
  -[C3DBinding setSourceObject:](v3, "setSourceObject:", [*(a1 + 40) __CFObject]);
  [(C3DBinding *)v3 setKeyPathDst:*(a1 + 48)];
  [(C3DBinding *)v3 setKeyPathSrc:*(a1 + 56)];
  [(C3DBinding *)v3 setOptions:*(a1 + 64)];
  C3DEntityAddBinding(v2, v3);
}

- (void)unbindAnimatablePath:(id)a3
{
  [(NSMutableDictionary *)self->_bindings removeObjectForKey:?];
  if (![(NSMutableDictionary *)self->_bindings count])
  {

    self->_bindings = 0;
  }

  v5 = [(SCNNode *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SCNNode_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __32__SCNNode_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v3 = [(SCNNode *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__SCNNode_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __28__SCNNode_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (id)objectInChildNodesAtIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  v5 = [(NSMutableArray *)self->_childNodes objectAtIndex:a3];
  objc_sync_exit(self);
  return v5;
}

- (void)_syncObjCModelAfterC3DIOSceneLoadingWithNodeRef:(__C3DNode *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  [(SCNNode *)self _syncObjCModel];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [(NSMutableArray *)self->_childNodes count];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__SCNNode__syncObjCModelAfterC3DIOSceneLoadingWithNodeRef___block_invoke;
  v17[3] = &unk_2782FEF90;
  v17[4] = self;
  v17[5] = &v22;
  v17[6] = &v18;
  v17[7] = v5;
  C3DNodeApplyChildrenInterruptible(a3, v17);
  if (v5 != v19[3])
  {
    *(v23 + 24) = 1;
    goto LABEL_5;
  }

  if (v23[3])
  {
LABEL_5:
    v6 = [(NSMutableArray *)self->_childNodes copy];
    [(NSMutableArray *)self->_childNodes removeAllObjects];
    node = self->_node;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__SCNNode__syncObjCModelAfterC3DIOSceneLoadingWithNodeRef___block_invoke_2;
    v16[3] = &unk_2782FEF18;
    v16[4] = self;
    C3DNodeApplyChildren(node, v16);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childNodes = self->_childNodes;
  v9 = [(NSMutableArray *)childNodes countByEnumeratingWithState:&v12 objects:v26 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(childNodes);
        }

        [*(*(&v12 + 1) + 8 * v11) _syncObjCModelAfterC3DIOSceneLoadingWithNodeRef:*(*(*(&v12 + 1) + 8 * v11) + 8)];
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)childNodes countByEnumeratingWithState:&v12 objects:v26 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void *__59__SCNNode__syncObjCModelAfterC3DIOSceneLoadingWithNodeRef___block_invoke(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = result;
  if (result[7] > a3 && (result = [*(result[4] + 24) objectAtIndexedSubscript:?], result[1] == a2))
  {
    *(*(v5[6] + 8) + 24) = a3 + 1;
  }

  else
  {
    *(*(v5[5] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __59__SCNNode__syncObjCModelAfterC3DIOSceneLoadingWithNodeRef___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [SCNNode nodeWithNodeRef:a2];
  [(SCNNode *)v3 _setParent:*(a1 + 32)];
  v4 = *(*(a1 + 32) + 24);

  return [v4 addObject:v3];
}

- (BOOL)canAddChildNode:(id)a3
{
  for (i = self == 0; self; i = self == 0)
  {
    if (self == a3)
    {
      break;
    }

    self = [(SCNNode *)self parentNode];
  }

  return i;
}

- (void)addChildNode:(SCNNode *)child
{
  objc_sync_enter(self);
  [(SCNNode *)self insertObject:child inChildNodesAtIndex:[(SCNNode *)self countOfChildNodes]];

  objc_sync_exit(self);
}

- (void)__insertObject:(id)a3 inChildNodesAtIndex:(unint64_t)a4
{
  if (a3)
  {
    objc_sync_enter(self);
    if (!self->_childNodes)
    {
      self->_childNodes = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    if ([(SCNNode *)self canAddChildNode:a3])
    {
      if ([a3 parentNode] != self)
      {
        v7 = a3;
        [a3 removeFromParentNode];
        [a3 _setParent:self];
        [(NSMutableArray *)self->_childNodes insertObject:a3 atIndex:a4];
        if ((*(a3 + 42) & 0x20) != 0)
        {
          [(SCNNode *)self _setHasFocusableChild];
        }

        if (a4)
        {
          v8 = [(NSMutableArray *)self->_childNodes objectAtIndex:a4 - 1];
        }

        else
        {
          v8 = 0;
        }

        v10 = [(SCNNode *)self sceneRef];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __46__SCNNode___insertObject_inChildNodesAtIndex___block_invoke;
        v11[3] = &unk_2782FE350;
        v11[4] = v8;
        v11[5] = self;
        v11[6] = a3;
        v11[7] = a4;
        [SCNTransaction postCommandWithContext:v10 object:self applyBlock:v11];
        if (*(self + 40) < 0)
        {
          [a3 _setPausedOrPausedByInheritance:1];
        }
      }
    }

    else
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SCNNode __insertObject:inChildNodesAtIndex:];
      }
    }

    objc_sync_exit(self);
  }
}

uint64_t __46__SCNNode___insertObject_inChildNodesAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = *(a1 + 56);
  if (!v3)
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 8);
    v9 = [v7 nodeRef];
    v10 = v8;
    v11 = 0;
    goto LABEL_10;
  }

  ChildNodeAtIndex = v2;
  if (v2)
  {
    Parent = C3DNodeGetParent(v2);
    v6 = *(*(a1 + 40) + 8);
    if (Parent == v6)
    {
      v9 = [*(a1 + 48) nodeRef];
      v10 = v6;
      goto LABEL_9;
    }

    v3 = *(a1 + 56);
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
  }

  ChildNodeAtIndex = C3DNodeGetChildNodeAtIndex(v6, v3 - 1);
  v12 = *(a1 + 48);
  v13 = *(*(a1 + 40) + 8);
  v9 = [v12 nodeRef];
  v10 = v13;
LABEL_9:
  v11 = ChildNodeAtIndex;
LABEL_10:

  return C3DNodeInsertChildNodeAfterChild(v10, v9, v11);
}

- (void)__removeObjectFromChildNodesAtIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  v5 = self;
  if ([(NSMutableArray *)self->_childNodes count]<= a3)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNNode __removeObjectFromChildNodesAtIndex:];
    }
  }

  else
  {
    v6 = [(NSMutableArray *)self->_childNodes objectAtIndex:a3];
    v7 = [(SCNNode *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__SCNNode___removeObjectFromChildNodesAtIndex___block_invoke;
    v9[3] = &unk_2782FB820;
    v9[4] = v6;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
    [v6 _setParent:0];
    [(NSMutableArray *)self->_childNodes removeObjectAtIndex:a3];
  }

  objc_sync_exit(self);
}

void __47__SCNNode___removeObjectFromChildNodesAtIndex___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) nodeRef];
  if (v1)
  {

    C3DNodeRemoveFromParentNode(v1);
  }

  else
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47__SCNNode___removeObjectFromChildNodesAtIndex___block_invoke_cold_1();
    }
  }
}

- (void)replaceObjectInChildNodesAtIndex:(unint64_t)a3 withObject:(id)a4
{
  objc_sync_enter(self);
  if (a4)
  {
    if ([(SCNNode *)self canAddChildNode:a4])
    {
      v7 = [(NSMutableArray *)self->_childNodes objectAtIndex:a3];
      if (v7)
      {
        v8 = a4;
        [a4 removeFromParentNode];
        [v7 _setParent:0];
        [a4 _setParent:self];
        v9 = [(SCNNode *)self sceneRef];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __55__SCNNode_replaceObjectInChildNodesAtIndex_withObject___block_invoke;
        v12[3] = &unk_2782FC928;
        v12[4] = v7;
        v12[5] = a4;
        v12[6] = self;
        [SCNTransaction postCommandWithContext:v9 object:self applyBlock:v12];
        [(NSMutableArray *)self->_childNodes replaceObjectAtIndex:a3 withObject:a4];
      }

      else
      {
        v11 = scn_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [SCNNode replaceObjectInChildNodesAtIndex:withObject:];
        }
      }
    }

    else
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SCNNode replaceObjectInChildNodesAtIndex:withObject:];
      }
    }
  }

  else
  {
    [(SCNNode *)self removeObjectFromChildNodesAtIndex:a3];
  }

  objc_sync_exit(self);
}

void __55__SCNNode_replaceObjectInChildNodesAtIndex_withObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = [*(a1 + 40) nodeRef];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__SCNNode_replaceObjectInChildNodesAtIndex_withObject___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = v3;
    IndexOfChildNode = C3DNodeGetIndexOfChildNode(*(*(a1 + 48) + 8), v2);
    CFRetain(v6);
    C3DNodeRemoveFromParentNode(v2);
    C3DNodeRemoveFromParentNode(v6);
    C3DNodeInsertChildNodeAtIndex(*(*(a1 + 48) + 8), v6, IndexOfChildNode);

    CFRelease(v6);
  }
}

- (void)removeFromParentNode
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (unint64_t)indexOfChildNode:(id)a3
{
  childNodes = self->_childNodes;
  v5 = [(NSMutableArray *)childNodes count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while ([(NSMutableArray *)childNodes objectAtIndex:v7]!= a3)
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (void)removeAllChilds
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SCNNode *)self childNodes];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeFromParentNode];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)replaceChildNode:(SCNNode *)oldChild with:(SCNNode *)newChild
{
  v6 = [(SCNNode *)self indexOfChildNode:oldChild];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(SCNNode *)self replaceObjectInChildNodesAtIndex:v6 withObject:newChild];
  }
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4
{
  v52 = *MEMORY[0x277D85DE8];
  if (!self->_node || *(self + 41) < 0)
  {
    return 0;
  }

  v50.i32[2] = 0;
  v50.i64[0] = 0;
  v49.i32[2] = 0;
  v49.i64[0] = 0;
  if (*(self + 40))
  {
    v11 = [(SCNNode *)self sceneRef];
    if (v11)
    {
      v12 = v11;
      C3DSceneLock(v11);
      v13 = C3DGetBoundingBox(self->_node, 1, &v50, &v49);
      C3DSceneUnlock(v12);
      if (v13)
      {
LABEL_11:
        if (a3)
        {
          v14 = v50.f32[2];
          *&a3->x = v50.i64[0];
          a3->z = v14;
        }

        if (a4)
        {
          v15 = v49.f32[2];
          *&a4->x = v49.i64[0];
          a4->z = v15;
        }

        return 1;
      }
    }

    else if (C3DGetBoundingBox(self->_node, 1, &v50, &v49))
    {
      goto LABEL_11;
    }

    return 0;
  }

  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  fixedBoundingBoxExtrema = self->_fixedBoundingBoxExtrema;
  if (fixedBoundingBoxExtrema)
  {
    if (a3)
    {
      v8 = *&fixedBoundingBoxExtrema->x;
      a3->z = fixedBoundingBoxExtrema->z;
      *&a3->x = v8;
    }

    if (a4)
    {
      v9 = self->_fixedBoundingBoxExtrema;
      v10 = *&v9[1].x;
      a4->z = v9[1].z;
      *&a4->x = v10;
    }

    return 1;
  }

  v17 = [(SCNNode *)self geometry];
  if (v17 && [(SCNGeometry *)v17 getBoundingBoxMin:a3 max:a4])
  {
    if (a3)
    {
      v18.i64[0] = *&a3->x;
      v18.i32[2] = LODWORD(a3->z);
      v50 = v18;
    }

    if (a4)
    {
      v18.i64[0] = *&a4->x;
      v18.i32[2] = LODWORD(a4->z);
      v49 = v18;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v20 = [(SCNNode *)self childNodes];
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v42;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v41 + 1) + 8 * i);
        if ([v25 getBoundingBoxMin:&v47 max:{&v45, *&v35.m11, *&v35.m21, *&v35.m31, *&v35.m41}])
        {
          v26.i64[0] = v47;
          v26.i32[2] = v48;
          v27.i64[0] = v45;
          v27.i32[2] = v46;
          v39 = v27;
          v40 = v26;
          memset(&v38, 0, sizeof(v38));
          if (v25)
          {
            [v25 transform];
            [v25 pivot];
          }

          else
          {
            memset(&a, 0, sizeof(a));
            memset(&v35, 0, sizeof(v35));
          }

          SCNMatrix4Invert(&b, &v35);
          SCNMatrix4Mult(&v38, &a, &b);
          memset(&a, 0, sizeof(a));
          C3DMatrix4x4FromSCNMatrix4(&a, &v38);
          C3DTransformBoundingBox(&v40, &v39, &v40, &v39, &a);
          v28 = v40;
          if (v16)
          {
            v30 = v49;
            v29 = v50;
            v28.i32[3] = 0;
            v29.i32[3] = 0;
            v28 = vminnmq_f32(v28, v29);
            v31 = v39;
            v31.i32[3] = 0;
            v30.i32[3] = 0;
            v32 = vmaxnmq_f32(v31, v30);
          }

          else
          {
            v32 = v39;
          }

          v49 = v32;
          v50 = v28;
          v16 = 1;
        }
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v22);
  }

  if (v16)
  {
    if (a3)
    {
      v33 = v50.f32[2];
      *&a3->x = v50.i64[0];
      a3->z = v33;
    }

    if (a4)
    {
      v34 = v49.f32[2];
      *&a4->x = v49.i64[0];
      a4->z = v34;
    }
  }

  return v16;
}

- (void)setBoundingBoxMin:(SCNVector3 *)a3 max:(SCNVector3 *)a4
{
  fixedBoundingBoxExtrema = self->_fixedBoundingBoxExtrema;
  if (a3 && a4)
  {
    if (fixedBoundingBoxExtrema)
    {
      v8 = SCNVector3EqualToVector3(*a3, *fixedBoundingBoxExtrema);
      v10 = self->_fixedBoundingBoxExtrema;
      if (v8)
      {
        if (SCNVector3EqualToVector3(*a4, v10[1]))
        {
          return;
        }

        v10 = self->_fixedBoundingBoxExtrema;
      }
    }

    else
    {
      v10 = malloc_type_malloc(0x18uLL, 0x10000403E1C8BA9uLL);
      self->_fixedBoundingBoxExtrema = v10;
    }

    v13 = *&a3->x;
    v10->z = a3->z;
    *&v10->x = v13;
    v14 = self->_fixedBoundingBoxExtrema;
    v15 = *&a4->x;
    v14[1].z = a4->z;
    *&v14[1].x = v15;
    *&v9 = *&a3->x;
    DWORD2(v9) = LODWORD(a3->z);
    v17 = v9;
    DWORD2(v9) = LODWORD(a4->z);
    v11 = [(SCNNode *)self sceneRef:*&a4->x];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __33__SCNNode_setBoundingBoxMin_max___block_invoke_2;
    v19[3] = &unk_2782FEFB8;
    v20 = v18;
    v21 = v16;
    v22 = self;
    v12 = v19;
  }

  else
  {
    if (!fixedBoundingBoxExtrema)
    {
      return;
    }

    free(fixedBoundingBoxExtrema);
    self->_fixedBoundingBoxExtrema = 0;
    v11 = [(SCNNode *)self sceneRef];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __33__SCNNode_setBoundingBoxMin_max___block_invoke;
    v23[3] = &unk_2782FB820;
    v23[4] = self;
    v12 = v23;
  }

  [SCNTransaction postCommandWithContext:v11 object:self applyBlock:v12];
}

__n128 __33__SCNNode_setBoundingBoxMin_max___block_invoke_2(float32x4_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmulq_f32(vaddq_f32(v1, v2), v3);
  v5 = vmulq_f32(vsubq_f32(v2, v1), v3);
  v4.i32[3] = 1.0;
  v5.i32[3] = 0;
  v7[0] = v4;
  v7[1] = v5;
  C3DNodeSetBoundingBox(*(a1[4].i64[0] + 8), v7, 1);
  return result;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)a3 radius:(double *)a4
{
  v11 = 0.0;
  v10 = 0;
  v9 = 0.0;
  v6 = [(SCNNode *)self simdGetBoundingSphereCenter:&v10 radius:&v9];
  if (v6)
  {
    if (a3)
    {
      v7 = v11;
      *&a3->x = v10;
      a3->z = v7;
    }

    if (a4)
    {
      *a4 = v9;
    }
  }

  return v6;
}

- (BOOL)getFrustum:(id *)a3 withViewport:
{
  v47 = v3;
  v49 = v3;
  if ([(SCNNode *)self isPresentationInstance])
  {
    v6 = [(SCNNode *)self nodeRef];

    LOBYTE(v7) = C3DComputeFrustumPlanesFromNode(v6, a3, v47);
  }

  else
  {
    v7 = [(SCNNode *)self camera];
    if (v7)
    {
      ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr([(SCNCamera *)v7 cameraRef]);
      v9 = ProjectionInfosPtr[1];
      v48[0] = *ProjectionInfosPtr;
      v48[1] = v9;
      v10 = ProjectionInfosPtr[5];
      v12 = ProjectionInfosPtr[2];
      v11 = ProjectionInfosPtr[3];
      v48[4] = ProjectionInfosPtr[4];
      v48[5] = v10;
      v48[2] = v12;
      v48[3] = v11;
      v13 = ProjectionInfosPtr[9];
      v15 = ProjectionInfosPtr[6];
      v14 = ProjectionInfosPtr[7];
      v48[8] = ProjectionInfosPtr[8];
      v48[9] = v13;
      v48[6] = v15;
      v48[7] = v14;
      v16 = ProjectionInfosPtr[13];
      v18 = ProjectionInfosPtr[10];
      v17 = ProjectionInfosPtr[11];
      v48[12] = ProjectionInfosPtr[12];
      v48[13] = v16;
      v48[10] = v18;
      v48[11] = v17;
      Matrix = C3DProjectionInfosGetMatrix(v48, &v49, 0);
      [(SCNNode *)self simdWorldTransform];
      v56 = __invert_f4(v55);
      v20 = 0;
      v21 = *Matrix;
      v22 = *(Matrix + 1);
      v23 = *(Matrix + 2);
      v24 = *(Matrix + 3);
      v50 = v56;
      v51 = 0u;
      v52 = 0u;
      memset(v53, 0, sizeof(v53));
      do
      {
        *(&v51 + v20 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*&v50.columns[v20])), v22, *v50.columns[v20].f32, 1), v23, v50.columns[v20], 2), v24, v50.columns[v20], 3);
        ++v20;
      }

      while (v20 != 4);
      v25 = v53;
      v57 = vld4_f32(v25);
      v27 = v51;
      v26 = v52;
      v28 = *(&v51 + 3);
      v29.f32[0] = *(&v51 + 3) - *&v51;
      v30 = *(&v52 + 3);
      v29.f32[1] = *(&v52 + 3) - *&v52;
      *&v29.u32[2] = vsub_f32(v57.val[3], v57.val[0]);
      v31 = vmulq_f32(v29, v29);
      *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
      v33 = vrsqrte_f32(v32);
      v34 = vmul_f32(v33, vrsqrts_f32(v32, vmul_f32(v33, v33)));
      v34.i32[0] = vmul_f32(v34, vrsqrts_f32(v32, vmul_f32(v34, v34))).u32[0];
      v35.f32[0] = *(&v51 + 3) + *&v51;
      v35.f32[1] = *(&v52 + 3) + *&v52;
      *&v35.u32[2] = vadd_f32(v57.val[3], v57.val[0]);
      v36 = vmulq_n_f32(v29, v34.f32[0]);
      v37 = vmulq_f32(v35, v35);
      *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
      *v37.f32 = vrsqrte_f32(v38);
      *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
      a3->var0[0] = v36;
      a3->var0[1] = vmulq_n_f32(v35, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
      v37.f32[0] = v28 + *(&v27 + 1);
      v37.f32[1] = v30 + *(&v26 + 1);
      *&v37.u32[2] = vadd_f32(v57.val[3], v57.val[1]);
      v39 = vmulq_f32(v37, v37);
      *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
      *v39.f32 = vrsqrte_f32(v40);
      *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
      v36.f32[0] = v28 - *(&v27 + 1);
      v36.f32[1] = v30 - *(&v26 + 1);
      *&v36.u32[2] = vsub_f32(v57.val[3], v57.val[1]);
      v41 = vmulq_n_f32(v37, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
      v42 = vmulq_f32(v36, v36);
      v39.f32[0] = v42.f32[2] + vaddv_f32(*v42.f32);
      *v42.f32 = vrsqrte_f32(v39.u32[0]);
      *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v39.u32[0], vmul_f32(*v42.f32, *v42.f32)));
      a3->var0[2] = v41;
      a3->var0[3] = vmulq_n_f32(v36, vmul_f32(*v42.f32, vrsqrts_f32(v39.u32[0], vmul_f32(*v42.f32, *v42.f32))).f32[0]);
      v36.f32[0] = v28 - *(&v27 + 2);
      v36.f32[1] = v30 - *(&v26 + 2);
      *&v36.u32[2] = vsub_f32(v57.val[3], v57.val[2]);
      v43 = vmulq_f32(v36, v36);
      v42.f32[0] = v43.f32[2] + vaddv_f32(*v43.f32);
      *v43.f32 = vrsqrte_f32(v42.u32[0]);
      *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v42.u32[0], vmul_f32(*v43.f32, *v43.f32)));
      v44.f32[0] = v28 + *(&v27 + 2);
      v44.f32[1] = v30 + *(&v26 + 2);
      *&v44.u32[2] = vadd_f32(v57.val[3], v57.val[2]);
      *v57.val[0].f32 = vmulq_f32(v44, v44);
      v31.f32[0] = v45 + vaddv_f32(v57.val[0]);
      v57.val[1] = vrsqrte_f32(v31.u32[0]);
      v57.val[1] = vmul_f32(v57.val[1], vrsqrts_f32(v31.u32[0], vmul_f32(v57.val[1], v57.val[1])));
      a3->var0[4] = vmulq_n_f32(v36, vmul_f32(*v43.f32, vrsqrts_f32(v42.u32[0], vmul_f32(*v43.f32, *v43.f32))).f32[0]);
      a3->var0[5] = vmulq_n_f32(v44, vmul_f32(v57.val[1], vrsqrts_f32(v31.u32[0], vmul_f32(v57.val[1], v57.val[1]))).f32[0]);
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (id)getBoundingSphere
{
  v10 = 0;
  v8 = 0.0;
  v9 = 0;
  v2 = [(SCNNode *)self getBoundingSphereCenter:&v9 radius:&v8];
  result = 0;
  if (v2)
  {
    v4 = objc_alloc_init(SCNBoundingSphere);
    LODWORD(v6) = HIDWORD(v9);
    LODWORD(v5) = v9;
    LODWORD(v7) = v10;
    [(SCNBoundingSphere *)v4 setCenter:v5, v6, v7];
    [(SCNBoundingSphere *)v4 setRadius:v8];
    return v4;
  }

  return result;
}

- (id)getBoundingBox
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v2 = [(SCNNode *)self getBoundingBoxMin:&v13 max:&v11];
  result = 0;
  if (v2)
  {
    v4 = objc_alloc_init(SCNBoundingBox);
    LODWORD(v6) = HIDWORD(v13);
    LODWORD(v5) = v13;
    LODWORD(v7) = v14;
    [(SCNBoundingBox *)v4 setMin:v5, v6, v7];
    LODWORD(v9) = HIDWORD(v11);
    LODWORD(v8) = v11;
    LODWORD(v10) = v12;
    [(SCNBoundingBox *)v4 setMax:v8, v9, v10];
    return v4;
  }

  return result;
}

- (SCNNode)flattenedClone
{
  v3 = [(SCNNode *)self copy];
  [v3 setGeometry:objc_alloc_init(SCNGeometry)];
  node = self->_node;
  v5 = [(SCNNode *)self sceneRef];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__SCNNode_flattenedClone__block_invoke;
  v7[3] = &unk_2782FC950;
  v7[4] = node;
  v7[5] = v3;
  [SCNTransaction postCommandWithContext:v5 object:v3 applyBlock:v7];
  return v3;
}

void __25__SCNNode_flattenedClone__block_invoke(uint64_t a1)
{
  v2 = _C3DCreateFlattenedGeometryFromNodeHierarchy(*(a1 + 32), 0, 0, 0);
  if (v2)
  {
    v3 = v2;
    C3DNodeSetGeometry([*(a1 + 40) nodeRef], v2);
    [objc_msgSend(*(a1 + 40) "geometry")];

    CFRelease(v3);
  }
}

- (id)flattenedCopy
{
  v2 = [(SCNNode *)self flattenedClone];

  return v2;
}

- (id)_subdividedCopyWithSubdivisionLevel:(int64_t)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(SCNNode *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  SubdividedCopy = C3DNodeCreateSubdividedCopy(self->_node, v3);
  v8 = [SCNNode nodeWithNodeRef:SubdividedCopy];
  if (SubdividedCopy)
  {
    CFRelease(SubdividedCopy);
  }

  if ([(SCNNode *)v8 skinner])
  {
    [(SCNSkinner *)[(SCNNode *)v8 skinner] setSkeleton:[(SCNSkinner *)[(SCNNode *)self skinner] skeleton]];
  }

  [(SCNNode *)v8 _copyAnimationsFrom:self];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(SCNNode *)self actionKeys];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SCNNode *)v8 runAction:[(SCNNode *)self actionForKey:*(*(&v15 + 1) + 8 * v13)] forKey:*(*(&v15 + 1) + 8 * v13)];
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if (v6)
  {
    C3DSceneUnlock(v6);
  }

  return v8;
}

- (void)_setPausedOrPausedByInheritance:(BOOL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(self + 40);
  if ((((v3 >= 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    v6 = a3 ? 0x80 : 0;
    *(self + 40) = v6 & 0x80 | v3 & 0x7F;
    v7 = [(SCNNode *)self sceneRef];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__SCNNode__setPausedOrPausedByInheritance___block_invoke;
    v18[3] = &unk_2782FB7F8;
    v18[4] = self;
    v19 = v4;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v18];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(SCNNode *)self childNodes];
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (([v13 isPaused] & 1) == 0)
          {
            [v13 _setPausedOrPausedByInheritance:v4];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

uint64_t __43__SCNNode__setPausedOrPausedByInheritance___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [*(a1 + 32) animationKeys];
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _pauseAnimation:*(a1 + 40) forKey:*(*(&v28 + 1) + 8 * i) pausedByNode:1];
      }

      v4 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v4);
  }

  C3DTransactionGetAtomicTime();
  v8 = v7;
  v9 = [*(*(a1 + 32) + 192) allValues];
  v10 = v9;
  if (*(a1 + 40) == 1)
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    result = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (result)
    {
      v12 = result;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          if (([v15 finished] & 1) == 0)
          {
            SCNActionWasPausedAtTime(v15, *(a1 + 32), v8);
          }

          ++v14;
        }

        while (v12 != v14);
        result = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
        v12 = result;
      }

      while (result);
    }
  }

  else
  {
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    result = [v9 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (result)
    {
      v16 = result;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v20 + 1) + 8 * v18);
          if (([v19 finished] & 1) == 0)
          {
            SCNActionWillResumeAtTime(v19, *(a1 + 32), v8);
          }

          ++v18;
        }

        while (v16 != v18);
        result = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
        v16 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)setPaused:(BOOL)paused
{
  v7 = *(self + 40);
  if (((((v7 & 0x40) == 0) ^ paused) & 1) == 0)
  {
    v11 = v3;
    if (paused)
    {
      v9 = 64;
    }

    else
    {
      v9 = 0;
    }

    *(self + 40) = v7 & 0xBF | v9;
    v10 = [[(SCNNode *)self parentNode:v4] isPausedOrPausedByInheritance]| paused;

    [(SCNNode *)self _setPausedOrPausedByInheritance:v10];
  }
}

- (CGRect)_focusFrameInView:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  memset(v33, 0, 12);
  LODWORD(v32[1]) = 0;
  v32[0] = 0;
  if ([(SCNNode *)self getBoundingBoxMin:v33 max:v32])
  {
    v5.i32[0] = v33[0];
    v6.i64[0] = *(v33 + 4);
    v7 = vextq_s8(vextq_s8(v5, v5, 4uLL), v6, 0xCuLL);
    v35 = *(v33 + 4);
    v36 = v33[0];
    v39 = v33[0];
    v8 = v7;
    v8.i32[3] = v32[0];
    v43 = v32[1];
    v34 = v8;
    v37 = HIDWORD(v32[0]);
    v9 = vdup_lane_s32(*(v33 + 4), 1);
    *v8.i8 = v9;
    v8.i64[1] = v32[0];
    v10 = vextq_s8(v8, v8, 4uLL);
    v10.i32[0] = v9.i32[0];
    v38 = v10;
    v7.i64[1] = *(v32 + 4);
    v40 = v32[1];
    v41 = v32[0];
    v42 = vuzp2q_s32(v7, vrev64q_s32(v7));
    v44 = v32[0];
    v45 = v32[1];
    [(SCNNode *)self simdWorldTransform];
    v30 = v13;
    v31 = v12;
    v28 = v14;
    v29 = v11;
    for (i = 0; i != 24; i += 3)
    {
      v16 = &v34.i32[i];
      v17 = vaddq_f32(v28, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v31, *&v34.i32[i]), v30, *&v34.i32[i + 1]), v29, *&v34.i32[i + 2]));
      v11.i32[0] = v17.i32[2];
      [a3 projectPoint:{*v17.i64, COERCE_DOUBLE(__PAIR64__(v28.u32[1], v17.u32[1])), *v11.i64, *&v28, *&v29, *&v30, *&v31}];
      *v16 = v18;
      v16[1] = v19;
      v16[2] = v11.i32[0];
    }

    v20 = vcvtq_f64_f32(*v34.i8);
    v21 = 12;
    v22 = v20.f64[0];
    v23 = v20;
    do
    {
      v24 = vcvtq_f64_f32(*&v34.i8[v21]);
      v23 = vbslq_s8(vcgtq_f64(v24, v23), v23, v24);
      if (v22 < v24.f64[0])
      {
        v22 = v24.f64[0];
      }

      v21 += 12;
    }

    while (v21 != 96);
    v25 = v22 - v23.f64[0];
    v26 = v23.f64[1];
    v27 = vsubq_f64(v20, v23).f64[1];
  }

  else
  {
    v23.f64[0] = 0.0;
    v26 = 0.0;
    v25 = 0.0;
    v27 = 0.0;
  }

  result.origin.x = v23.f64[0];
  result.size.height = v27;
  result.size.width = v25;
  result.origin.y = v26;
  return result;
}

- (void)_appendFocusableNodesInRect:(CGRect)a3 ofView:(id)a4 toFocusItems:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(self + 42) & 0x20) != 0)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    if ([(SCNNode *)self isFocusInteractionEnabled])
    {
      if (![(SCNNode *)self _isEffectivelyHidden])
      {
        [(SCNNode *)self _focusFrameInView:a4];
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        if (CGRectIntersectsRect(v23, v24))
        {
          [a5 addObject:self];
        }
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    childNodes = self->_childNodes;
    v13 = [(NSMutableArray *)childNodes countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(childNodes);
          }

          [*(*(&v17 + 1) + 8 * v16++) _appendFocusableNodesInRect:a4 ofView:a5 toFocusItems:{x, y, width, height}];
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)childNodes countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (void)_setHasFocusableChild
{
  if ((*(self + 42) & 0x20) == 0)
  {
    *(self + 42) |= 0x20u;
    [(SCNNode *)self->_parent _setHasFocusableChild];
  }
}

- (void)_updateFocusableCache
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(self + 42) & 0x20) == 0)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(SCNNode *)v3 _updateFocusableCache:v4];
    }
  }

  if ((*(self + 42) & 0x18) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [(SCNNode *)self childNodes];
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ((*(*(*(&v16 + 1) + 8 * v15) + 42) & 0x20) != 0)
          {
            [(SCNNode *)self _setHasFocusableChild];
            return;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    *(self + 42) &= ~0x20u;
    [(SCNNode *)self->_parent _updateFocusableCache];
  }
}

- (void)setFocusBehavior:(SCNNodeFocusBehavior)focusBehavior
{
  v3 = *(self + 42);
  if (((v3 >> 3) & 3) != focusBehavior)
  {
    v4 = v3 & 0xE7 | (8 * (focusBehavior & 3));
    *(self + 42) = v4;
    if ((focusBehavior & 3) != 0)
    {
      *(self + 42) = v4 | 0x20;
      [(SCNNode *)self->_parent _setHasFocusableChild];
    }

    else
    {
      [(SCNNode *)self _updateFocusableCache];
    }
  }
}

- (BOOL)_isEffectivelyHidden
{
  if ([[(SCNNode *)self parentNode] _isEffectivelyHidden]|| [(SCNNode *)self isHidden])
  {
    return 1;
  }

  [(SCNNode *)self opacity];
  return v4 <= 0.00000011920929;
}

- (id)preferredFocusEnvironments
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = self;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (id)parentFocusEnvironment
{
  if ([(SCNNode *)self parentNode])
  {

    return [(SCNNode *)self parentNode];
  }

  else
  {

    return +[SCNView _currentSCNViewFocusEnvironment];
  }
}

- (void)setNeedsFocusUpdate
{
  v3 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];

  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];

  [v2 updateFocusIfNeeded];
}

- (BOOL)_isEligibleForFocusInteraction
{
  if ((*(self + 42) & 0x20) != 0)
  {
    return ![(SCNNode *)self _isEffectivelyHidden:v2];
  }

  else
  {
    return 0;
  }
}

- (CGRect)frame
{
  v3 = +[SCNView _currentSCNViewFocusEnvironment];
  v4 = [-[SCNNode focusItemContainer](self "focusItemContainer")];
  if (v4 != [v3 coordinateSpace])
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNNode *)v5 frame:v6];
    }
  }

  [(SCNNode *)self _focusFrameInView:v3];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (UICoordinateSpace)coordinateSpace
{
  v2 = [+[SCNView _currentSCNViewFocusEnvironment](SCNView "_currentSCNViewFocusEnvironment")];

  return [v2 coordinateSpace];
}

- (void)runAction:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  if (a4)
  {
    v8 = a4;
    [(SCNNode *)self removeActionForKey:a4];
    if (!a3)
    {
LABEL_10:
      if (a5)
      {
        v12 = *(a5 + 2);

        v12(a5);
      }

      return;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    v8 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  }

  v9 = [a3 copy];
  [v9 setCompletionBlock:a5];
  [v9 setKey:v8];
  objc_sync_enter(self);
  actions = self->_actions;
  if (!actions)
  {
    actions = objc_alloc_init(SCNOrderedDictionary);
    self->_actions = actions;
  }

  [(SCNOrderedDictionary *)actions setValue:v9 forKey:v8];
  objc_sync_exit(self);
  v11 = [(SCNNode *)self sceneRef];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__SCNNode_runAction_forKey_completionHandler___block_invoke;
  v13[3] = &unk_2782FC928;
  v13[4] = self;
  v13[5] = v9;
  v13[6] = v8;
  [SCNTransaction postCommandWithContext:v11 object:self applyBlock:v13];
}

uint64_t __46__SCNNode_runAction_forKey_completionHandler___block_invoke(uint64_t a1)
{
  C3DEntityAddAction([*(a1 + 32) nodeRef], *(a1 + 40), *(a1 + 48));
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  C3DTransactionGetAtomicTime();

  return SCNActionWasAddedToTargetAtTime(v3, v2);
}

- (id)actionForKey:(id)a3
{
  objc_sync_enter(self);
  v5 = [(SCNOrderedDictionary *)self->_actions objectForKey:a3];
  objc_sync_exit(self);
  return v5;
}

- (void)_removeAction:(id)a3 forKey:(id)a4
{
  objc_sync_enter(self);
  if ([(SCNOrderedDictionary *)self->_actions objectForKey:a4]== a3)
  {
    [(SCNOrderedDictionary *)self->_actions removeObjectForKey:a4];
    objc_sync_exit(self);
    if (a3)
    {
      v7 = [(SCNNode *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __32__SCNNode__removeAction_forKey___block_invoke;
      v8[3] = &unk_2782FC928;
      v8[4] = self;
      v8[5] = a3;
      v8[6] = a4;
      [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
    }
  }

  else
  {

    objc_sync_exit(self);
  }
}

void __32__SCNNode__removeAction_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  _C3DEntityCleanupActionForKey(v2, v3, v4);
}

- (void)removeActionForKey:(id)a3
{
  objc_sync_enter(self);
  v5 = [(SCNOrderedDictionary *)self->_actions objectForKey:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [(SCNOrderedDictionary *)self->_actions removeObjectForKey:a3];
    objc_sync_exit(self);
    v8 = [(SCNNode *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__SCNNode_removeActionForKey___block_invoke;
    v9[3] = &unk_2782FC928;
    v9[4] = self;
    v9[5] = a3;
    v9[6] = v6;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v9];
  }

  else
  {

    objc_sync_exit(self);
  }
}

void __30__SCNNode_removeActionForKey___block_invoke(uint64_t a1)
{
  C3DEntityRemoveActionForKey([*(a1 + 32) nodeRef], *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  C3DTransactionGetAtomicTime();
  SCNActionWasRemovedFromTargetAtTime(v2, v3, v4);
  v5 = *(a1 + 48);
}

- (void)removeAllActions
{
  objc_sync_enter(self);
  v3 = [-[SCNOrderedDictionary dictionary](self->_actions "dictionary")];
  [(SCNOrderedDictionary *)self->_actions removeAllObjects];
  objc_sync_exit(self);
  v4 = [(SCNNode *)self sceneRef];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__SCNNode_removeAllActions__block_invoke;
  v5[3] = &unk_2782FC950;
  v5[4] = self;
  v5[5] = v3;
  [SCNTransaction postCommandWithContext:v4 object:self applyBlock:v5];
}

void __27__SCNNode_removeAllActions__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  C3DEntityRemoveAllActions([*(a1 + 32) nodeRef]);
  C3DTransactionGetAtomicTime();
  v3 = v2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 40) allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        SCNActionWasRemovedFromTargetAtTime(*(*(&v9 + 1) + 8 * v8++), *(a1 + 32), v3);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (NSArray)constraints
{
  v2 = [-[SCNNode _findComponentWithType:](self _findComponentWithType:{7), "copy"}];

  return v2;
}

- (void)setConstraints:(NSArray *)constraints
{
  v5 = [(SCNNode *)self _findComponentWithType:7];
  if (v5 != constraints)
  {
    if (v5)
    {
      [(SCNNode *)self _removeComponentWithType:7];
    }

    if (constraints)
    {
      [(SCNNode *)self _assignComponent:[(NSArray *)constraints mutableCopy] toContainerWithType:7];
    }

    v6 = [(SCNNode *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNNode_setConstraints___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = constraints;
    v7[5] = self;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

void __26__SCNNode_setConstraints___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "constraintRef")}];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    C3DNodeSetConstraints(*(*(a1 + 40) + 8), v3);
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);

    C3DNodeSetConstraints(v9, 0);
  }
}

- (void)setPhysicsBody:(SCNPhysicsBody *)physicsBody
{
  v5 = [(SCNNode *)self physicsBody];
  if (v5 != physicsBody)
  {
    v6 = v5;
    if (v5)
    {
      if ([(SCNPhysicsBody *)v5 _owner]!= self)
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [SCNNode setPhysicsBody:v6];
        }
      }

      [(SCNPhysicsBody *)v6 _removeOwner];
      [(SCNNode *)self _removeComponentWithType:8];
    }

    if (physicsBody)
    {
      if ([(SCNPhysicsBody *)physicsBody _owner])
      {
        v8 = scn_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [SCNNode setPhysicsBody:?];
        }
      }

      [(SCNNode *)self _assignComponent:physicsBody toContainerWithType:8];
      [(SCNPhysicsBody *)physicsBody _setOwner:self];
      [(SCNPhysicsBody *)physicsBody resetTransform];
    }
  }
}

- (void)setPhysicsField:(SCNPhysicsField *)physicsField
{
  v5 = [(SCNNode *)self physicsField];
  if (v5 != physicsField)
  {
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      [(SCNNode *)self _removeComponentWithType:9];
    }

    if (physicsField)
    {
      [(SCNNode *)self _assignComponent:physicsField toContainerWithType:9];
    }

    v8 = [(SCNNode *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__SCNNode_setPhysicsField___block_invoke;
    v9[3] = &unk_2782FC928;
    v9[4] = v6;
    v9[5] = physicsField;
    v9[6] = self;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v9];
  }
}

uint64_t __27__SCNNode_setPhysicsField___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeOwner];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _setOwner:v3];
}

- (void)setEntity:(GKEntity *)entity
{
  if ([(SCNNode *)self entity]!= entity)
  {
    [(SCNNode *)self _removeComponentWithType:10];
    if (entity)
    {

      [(SCNNode *)self _assignComponent:entity toContainerWithType:10];
    }
  }
}

- (void)_removeDeadParticleSystem:(__C3DParticleSystem *)a3
{
  [-[SCNNode _particleSystems](self "_particleSystems")];
  v5 = [(SCNNode *)self nodeRef];

  C3DNodeRemoveParticleSystem(v5, a3, 0);
}

- (NSArray)particleSystems
{
  v2 = [-[SCNNode _particleSystems](self "_particleSystems")];

  return v2;
}

- (void)addParticleSystem:(SCNParticleSystem *)system
{
  if (system)
  {
    v5 = [(SCNNode *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    v7 = [(SCNNode *)self _particleSystems];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(SCNNode *)self _assignComponent:v7 toContainerWithType:6];
    }

    [v7 addObject:system];
    if (v6)
    {
      C3DSceneUnlock(v6);
    }

    v8 = [(SCNNode *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __29__SCNNode_addParticleSystem___block_invoke;
    v10[3] = &unk_2782FC950;
    v10[4] = self;
    v10[5] = system;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v10];
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNNode addParticleSystem:];
    }
  }
}

void __29__SCNNode_addParticleSystem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = [*(a1 + 40) __CFObject];

  C3DNodeAddParticleSystem(v2, v3);
}

- (void)removeAllParticleSystems
{
  v3 = [(SCNNode *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
    [(SCNNode *)self _removeComponentWithType:6];
    C3DSceneUnlock(v4);
  }

  else
  {
    [(SCNNode *)self _removeComponentWithType:6];
  }

  v5 = [(SCNNode *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SCNNode_removeAllParticleSystems__block_invoke;
  v6[3] = &unk_2782FB820;
  v6[4] = self;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __35__SCNNode_removeAllParticleSystems__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) nodeRef];

  C3DNodeRemoveAllParticleSystems(v1);
}

- (void)removeParticleSystem:(SCNParticleSystem *)system
{
  v5 = [(SCNNode *)self sceneRef];
  if (v5)
  {
    v6 = v5;
    C3DSceneLock(v5);
    [-[SCNNode _particleSystems](self "_particleSystems")];
    C3DSceneUnlock(v6);
  }

  else
  {
    [-[SCNNode _particleSystems](self "_particleSystems")];
  }

  v7 = [(SCNNode *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__SCNNode_removeParticleSystem___block_invoke;
  v8[3] = &unk_2782FC950;
  v8[4] = self;
  v8[5] = system;
  [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
}

void __32__SCNNode_removeParticleSystem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = [*(a1 + 40) __CFObject];

  C3DNodeRemoveParticleSystem(v2, v3, 1);
}

- (unint64_t)countOfParticleSystems
{
  v2 = [(SCNNode *)self _particleSystems];

  return [v2 count];
}

- (id)objectInParticleSystemsAtIndex:(unint64_t)a3
{
  v4 = [(SCNNode *)self _particleSystems];

  return [v4 objectAtIndex:a3];
}

- (void)insertObject:(id)a3 inParticleSystemsAtIndex:(unint64_t)a4
{
  v7 = [(SCNNode *)self sceneRef];
  v8 = v7;
  if (v7)
  {
    C3DSceneLock(v7);
  }

  v9 = [(SCNNode *)self _particleSystems];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(SCNNode *)self _assignComponent:v9 toContainerWithType:6];
  }

  [v9 insertObject:a3 atIndex:a4];
  if (v8)
  {
    C3DSceneUnlock(v8);
  }

  v10 = [(SCNNode *)self sceneRef];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SCNNode_insertObject_inParticleSystemsAtIndex___block_invoke;
  v11[3] = &unk_2782FB630;
  v11[4] = self;
  v11[5] = a3;
  v11[6] = a4;
  [SCNTransaction postCommandWithContext:v10 object:self applyBlock:v11];
}

void __49__SCNNode_insertObject_inParticleSystemsAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = [*(a1 + 40) __CFObject];
  v4 = *(a1 + 48);

  C3DNodeInsertParticleSystemAtIndex(v2, v3, v4);
}

- (void)removeObjectFromParticleSystemsAtIndex:(unint64_t)a3
{
  if ([-[SCNNode _particleSystems](self "_particleSystems")] <= a3)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNNode *)v5 removeObjectFromParticleSystemsAtIndex:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [(SCNNode *)self sceneRef];
  if (v13)
  {
    v14 = v13;
    C3DSceneLock(v13);
    [-[SCNNode _particleSystems](self "_particleSystems")];
    C3DSceneUnlock(v14);
  }

  else
  {
    [-[SCNNode _particleSystems](self "_particleSystems")];
  }

  v15 = [(SCNNode *)self sceneRef];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__SCNNode_removeObjectFromParticleSystemsAtIndex___block_invoke;
  v16[3] = &unk_2782FB7D0;
  v16[4] = self;
  v16[5] = a3;
  [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
}

void __50__SCNNode_removeObjectFromParticleSystemsAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = *(a1 + 40);

  C3DNodeRemoveParticleSystemAtIndex(v2, v3, 1);
}

- (void)replaceObjectInParticleSystemsAtIndex:(unint64_t)a3 withObject:(id)a4
{
  if (!a4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNNode *)v7 replaceObjectInParticleSystemsAtIndex:v8 withObject:v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [(SCNNode *)self sceneRef];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__SCNNode_replaceObjectInParticleSystemsAtIndex_withObject___block_invoke;
  v18[3] = &unk_2782FB630;
  v18[4] = self;
  v18[5] = a4;
  v18[6] = a3;
  [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v18];
  v16 = [(SCNNode *)self sceneRef];
  if (v16)
  {
    v17 = v16;
    C3DSceneLock(v16);
    [-[SCNNode _particleSystems](self "_particleSystems")];
    C3DSceneUnlock(v17);
  }

  else
  {
    [-[SCNNode _particleSystems](self "_particleSystems")];
  }
}

void __60__SCNNode_replaceObjectInParticleSystemsAtIndex_withObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = [*(a1 + 40) __CFObject];
  v4 = *(a1 + 48);

  C3DNodeReplaceParticleSystemAtIndex(v2, v3, v4);
}

- (id)_audioPlayers
{
  v3 = [(SCNNode *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNNode *)self nodeRef];
  if (!v5)
  {
    v6 = 0;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = [(__CFDictionary *)C3DNodeGetAudioPlayers(v5) copy];
  if (v4)
  {
LABEL_5:
    C3DSceneUnlock(v4);
  }

  return v6;
}

- (void)addAudioPlayer:(SCNAudioPlayer *)player
{
  if (player)
  {
    v5 = [(SCNNode *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNNode_addAudioPlayer___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = player;
    v7[5] = self;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNNode addAudioPlayer:];
    }
  }
}

uint64_t __26__SCNNode_addAudioPlayer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  if (v2)
  {
    C3DNodeRemoveAudioPlayer(v2, *(a1 + 32), 1);
  }

  v3 = [*(a1 + 40) nodeRef];
  [*(a1 + 32) setNodeRef:v3];
  v4 = *(a1 + 32);

  return C3DNodeAddAudioPlayer(v3, v4);
}

- (void)removeAllAudioPlayers
{
  v3 = [(SCNNode *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SCNNode_removeAllAudioPlayers__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __32__SCNNode_removeAllAudioPlayers__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) nodeRef];

  C3DNodeRemoveAllAudioPlayers(v1);
}

- (void)removeAudioPlayer:(SCNAudioPlayer *)player
{
  v5 = [(SCNNode *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__SCNNode_removeAudioPlayer___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = player;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

uint64_t __29__SCNNode_removeAudioPlayer___block_invoke(uint64_t a1)
{
  C3DNodeRemoveAudioPlayer([*(a1 + 32) nodeRef], *(a1 + 40), 1);
  v2 = *(a1 + 40);

  return [v2 recycle];
}

- (unint64_t)countOfAudioPlayers
{
  v2 = [(SCNNode *)self audioPlayers];

  return [(NSArray *)v2 count];
}

- (id)objectInAudioPlayersAtIndex:(unint64_t)a3
{
  v4 = [(SCNNode *)self audioPlayers];

  return [(NSArray *)v4 objectAtIndex:a3];
}

- (void)insertObject:(id)a3 inAudioPlayersAtIndex:(unint64_t)a4
{
  v7 = [(SCNNode *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SCNNode_insertObject_inAudioPlayersAtIndex___block_invoke;
  v8[3] = &unk_2782FB630;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
}

uint64_t __46__SCNNode_insertObject_inAudioPlayersAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return C3DNodeInsertAudioPlayerAtIndex(v2, v3, v4);
}

- (void)removeObjectFromAudioPlayersAtIndex:(unint64_t)a3
{
  v5 = [(SCNNode *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SCNNode_removeObjectFromAudioPlayersAtIndex___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __47__SCNNode_removeObjectFromAudioPlayersAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = *(a1 + 40);

  C3DNodeRemoveAudioPlayerAtIndex(v2, v3, 1);
}

- (void)replaceObjectInAudioPlayerAtIndex:(unint64_t)a3 withObject:(id)a4
{
  if (!a4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNNode *)v7 replaceObjectInParticleSystemsAtIndex:v8 withObject:v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [(SCNNode *)self sceneRef];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__SCNNode_replaceObjectInAudioPlayerAtIndex_withObject___block_invoke;
  v16[3] = &unk_2782FB630;
  v16[4] = self;
  v16[5] = a4;
  v16[6] = a3;
  [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
}

void __56__SCNNode_replaceObjectInAudioPlayerAtIndex_withObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  C3DNodeReplaceAudioPlayerAtIndex(v2, v3, v4);
}

- (SCNVector3)convertPosition:(SCNVector3)position toNode:(SCNNode *)node
{
  y = position.y;
  [(SCNNode *)self simdConvertPosition:node toNode:*&position.x];
  v7 = v6;
  v9 = v8;
  result.z = v9;
  result.y = v7;
  result.x = v5;
  return result;
}

- (SCNVector3)convertPosition:(SCNVector3)position fromNode:(SCNNode *)node
{
  y = position.y;
  [(SCNNode *)self simdConvertPosition:node fromNode:*&position.x];
  v7 = v6;
  v9 = v8;
  result.z = v9;
  result.y = v7;
  result.x = v5;
  return result;
}

- (SCNVector3)convertVector:(SCNVector3)vector toNode:(SCNNode *)node
{
  y = vector.y;
  [(SCNNode *)self simdConvertVector:node toNode:*&vector.x];
  v7 = v6;
  v9 = v8;
  result.z = v9;
  result.y = v7;
  result.x = v5;
  return result;
}

- (SCNVector3)convertVector:(SCNVector3)vector fromNode:(SCNNode *)node
{
  y = vector.y;
  [(SCNNode *)self simdConvertVector:node fromNode:*&vector.x];
  v7 = v6;
  v9 = v8;
  result.z = v9;
  result.y = v7;
  result.x = v5;
  return result;
}

- (SCNMatrix4)convertTransform:(SEL)a3 toNode:(SCNMatrix4 *)transform
{
  result = [(SCNNode *)self simdConvertTransform:node toNode:*&transform->m11, *&transform->m21, *&transform->m31, *&transform->m41];
  *&retstr->m11 = v7;
  *&retstr->m21 = v8;
  *&retstr->m31 = v9;
  *&retstr->m41 = v10;
  return result;
}

- (SCNMatrix4)convertTransform:(SEL)a3 fromNode:(SCNMatrix4 *)transform
{
  result = [(SCNNode *)self simdConvertTransform:node fromNode:*&transform->m11, *&transform->m21, *&transform->m31, *&transform->m41];
  *&retstr->m11 = v7;
  *&retstr->m21 = v8;
  *&retstr->m31 = v9;
  *&retstr->m41 = v10;
  return result;
}

- (void)_customEncodingOfSCNNode:(id)a3 usePresentationInstance:(BOOL)a4
{
  v4 = a4;
  if ((*(self + 41) & 1) == 0)
  {
    [(SCNNode *)self _updateAffine];
  }

  if ([(SCNNode *)self light])
  {
    v7 = [(SCNNode *)self light];
    v8 = v7;
    if (v4)
    {
      v8 = [(SCNLight *)v7 presentationLight];
    }

    [a3 encodeObject:v8 forKey:@"light"];
  }

  if ([(SCNNode *)self geometry])
  {
    v9 = [(SCNNode *)self geometry];
    v10 = v9;
    if (v4)
    {
      v10 = [(SCNGeometry *)v9 presentationGeometry];
    }

    [a3 encodeObject:v10 forKey:@"geometry"];
  }

  if ([(SCNNode *)self camera])
  {
    v11 = [(SCNNode *)self camera];
    v12 = v11;
    if (v4)
    {
      v12 = [(SCNCamera *)v11 presentationCamera];
    }

    [a3 encodeObject:v12 forKey:@"camera"];
  }

  if ([(SCNNode *)self skinner])
  {
    [a3 encodeObject:-[SCNNode skinner](self forKey:{"skinner"), @"skinner"}];
  }

  if ([(SCNNode *)self morpher])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (a3 && (isKindOfClass & 1) != 0 && [objc_msgSend(objc_msgSend(a3 "options")] && SCNEncodeMorpherUsingAnimCodec(a3, self))
    {
      [a3 setSkipMorphTargets:1];
      [a3 encodeObject:-[SCNNode morpher](self forKey:{"morpher"), @"morpher"}];
      [a3 setSkipMorphTargets:0];
    }

    else
    {
      [a3 encodeObject:-[SCNNode morpher](self forKey:{"morpher"), @"morpher"}];
    }
  }

  v14 = [(SCNNode *)self postMorphingDeformers];
  if (v14)
  {
    [a3 encodeObject:v14 forKey:@"postMorphingDeformers"];
  }

  v15 = [(SCNNode *)self postSkinningDeformers];
  if (v15)
  {
    [a3 encodeObject:v15 forKey:@"postSkinningDeformers"];
  }

  if ([(SCNNode *)self filters])
  {
    [a3 encodeObject:-[SCNNode filters](self forKey:{"filters"), @"filters"}];
  }

  if ([(SCNNode *)self constraints])
  {
    [a3 encodeObject:-[SCNNode constraints](self forKey:{"constraints"), @"constraints"}];
  }

  if ([(SCNNode *)self physicsBody])
  {
    [a3 encodeObject:-[SCNNode physicsBody](self forKey:{"physicsBody"), @"physicsBody"}];
  }

  if ([(SCNNode *)self physicsField])
  {
    [a3 encodeObject:-[SCNNode physicsField](self forKey:{"physicsField"), @"physicsField"}];
  }

  if ([(SCNNode *)self particleSystems])
  {
    [a3 encodeObject:-[SCNNode particleSystems](self forKey:{"particleSystems"), @"particleSystem"}];
  }

  fixedBoundingBoxExtrema = self->_fixedBoundingBoxExtrema;
  if (fixedBoundingBoxExtrema)
  {
    *&v16 = fixedBoundingBoxExtrema->x;
    *&v17 = fixedBoundingBoxExtrema->y;
    *&v18 = fixedBoundingBoxExtrema->z;
    [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNVector3:", v16, v17, v18), @"fixedBoundingBoxExtrema[0]"}];
    v20 = self->_fixedBoundingBoxExtrema;
    *&v21 = v20[1].x;
    *&v22 = v20[1].y;
    *&v23 = v20[1].z;
    [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNVector3:", v21, v22, v23), @"fixedBoundingBoxExtrema[1]"}];
  }

  [a3 encodeBool:(*(self + 40) >> 6) & 1 forKey:@"paused"];
  v24 = (*(self + 42) >> 3) & 3;
  if (v24)
  {
    [a3 encodeInt:v24 forKey:@"focusBehavior"];
  }

  if ((*(self + 41) & 4) != 0)
  {
    v25 = self;
    if (v4)
    {
      v25 = [(SCNNode *)self presentationNode];
    }

    v26 = [(SCNNode *)v25 valueForKey:@"kPivotKey"];
    if (v26)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      [v26 SCNMatrix4Value];
      v31[0] = v32;
      v31[1] = v33;
      v31[2] = v34;
      v31[3] = v35;
      SCNEncodeSCNMatrix4(a3, @"pivot", v31);
    }
  }

  actions = self->_actions;
  if (actions && !v4)
  {
    [a3 encodeObject:-[SCNOrderedDictionary allKeys](actions forKey:{"allKeys"), @"action-keys"}];
    [a3 encodeObject:-[SCNOrderedDictionary dictionary](self->_actions forKey:{"dictionary"), @"actions"}];
  }

  ID = C3DNodeGetID(self->_node);
  if (ID)
  {
    [a3 encodeObject:ID forKey:@"nodeID"];
  }

  os_unfair_lock_lock(&self->_valueForKeyLock);
  if ([(NSMutableDictionary *)self->_valueForKey count])
  {
    v29 = [(NSMutableDictionary *)self->_valueForKey mutableCopy];
    [v29 removeObjectForKey:@"kPivotKey"];
    if ([v29 count])
    {
      [a3 encodeObject:v29 forKey:@"clientAttributes"];
    }
  }

  os_unfair_lock_unlock(&self->_valueForKeyLock);
  if ([(SCNNode *)self _isAReference]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v30 = [objc_msgSend(objc_msgSend(a3 "options")];
  }

  else
  {
    v30 = 0;
  }

  if ([(SCNNode *)self childNodes])
  {
    if (v30 & 1 | ![(SCNNode *)self _isAReference])
    {
      [a3 encodeObject:-[SCNNode childNodes](self forKey:{"childNodes"), @"childNodes"}];
    }
  }
}

- (void)_customDecodingOfSCNNode:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"nodeID"];
  if (v5)
  {
    C3DNodeSetID(self->_node, v5);
  }

  if ([a3 containsValueForKey:@"paused"])
  {
    if ([a3 decodeBoolForKey:@"paused"])
    {
      v6 = 64;
    }

    else
    {
      v6 = 0;
    }

    *(self + 40) = *(self + 40) & 0xBF | v6;
  }

  -[SCNNode setFocusBehavior:](self, "setFocusBehavior:", [a3 decodeIntForKey:@"focusBehavior"]);
  v7 = *(MEMORY[0x277D860B8] + 16);
  v8 = *(MEMORY[0x277D860B8] + 32);
  v9 = *(MEMORY[0x277D860B8] + 48);
  *&self->_anon_30[2] = *MEMORY[0x277D860B8];
  *&self->_anon_30[18] = v7;
  *&self->_anon_30[34] = v8;
  *&self->_anon_30[50] = v9;
  *(self + 41) |= 2u;
  *(self + 40) |= 0x3Eu;
  if ([a3 containsValueForKey:@"fixedBoundingBoxExtrema[0]"])
  {
    [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"fixedBoundingBoxExtrema[0]", "SCNVector3Value"}];
    *&v49 = __PAIR64__(v11, v10);
    DWORD2(v49) = v12;
    [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"fixedBoundingBoxExtrema[1]", "SCNVector3Value"}];
    HIDWORD(v49) = v13;
    *&v50 = __PAIR64__(v15, v14);
    [(SCNNode *)self setBoundingBoxMin:&v49 max:&v49 + 12];
  }

  v16 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"particleSystem"];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(SCNNode *)self addParticleSystem:*(*(&v44 + 1) + 8 * i)];
      }

      v18 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v18);
  }

  v21 = objc_opt_class();
  v22 = [a3 scn_decodeDictionaryWithKeysOfClass:v21 objectsOfClass:objc_opt_class() forKey:@"actions"];
  if (v22)
  {
    v23 = v22;
    v24 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"action-keys"];
    if (!v24)
    {
      v24 = [v23 allKeys];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          -[SCNNode runAction:forKey:](self, "runAction:forKey:", [v23 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * j)], *(*(&v40 + 1) + 8 * j));
        }

        v26 = [v24 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v26);
    }
  }

  v29 = [a3 decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"clientAttributes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SCNNode _setAttributes:](self, "_setAttributes:", [v29 mutableCopy]);
  }

  if ([a3 containsValueForKey:@"pivot"])
  {
    SCNDecodeSCNMatrix4(a3, @"pivot", v39);
    v49 = v39[0];
    v50 = v39[1];
    v51 = v39[2];
    v52 = v39[3];
    [(SCNNode *)self setPivot:&v49];
  }

  -[SCNNode setLight:](self, "setLight:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"light"]);
  -[SCNNode setGeometry:](self, "setGeometry:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"geometry"]);
  -[SCNNode setCamera:](self, "setCamera:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"camera"]);
  -[SCNNode setSkinner:](self, "setSkinner:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"skinner"]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 setAllTargetsFromAnimCodec:{SCNDecodeMorpherUsingAnimCodec(a3, self)}];
    -[SCNNode setMorpher:](self, "setMorpher:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"morpher"]);
    [a3 setAllTargetsFromAnimCodec:0];
  }

  else
  {
    -[SCNNode setMorpher:](self, "setMorpher:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"morpher"]);
  }

  -[SCNNode setPostMorphingDeformers:](self, "setPostMorphingDeformers:", [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"postMorphingDeformers"]);
  -[SCNNode setPostSkinningDeformers:](self, "setPostSkinningDeformers:", [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"postSkinningDeformers"]);
  -[SCNNode setFilters:](self, "setFilters:", [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"filters"]);
  -[SCNNode setConstraints:](self, "setConstraints:", [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"constraints"]);
  -[SCNNode setPhysicsField:](self, "setPhysicsField:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"physicsField"]);
  v30 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"childNodes"];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(SCNNode *)self addChildNode:*(*(&v35 + 1) + 8 * k)];
      }

      v32 = [v30 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v32);
  }

  -[SCNNode setPhysicsBody:](self, "setPhysicsBody:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"physicsBody"]);
}

- (void)_encodeNodePropertiesWithCoder:(id)a3
{
  SCNEncodeVector3(a3, @"position", COERCE_FLOAT(*&self->_position[2]), COERCE_FLOAT(HIDWORD(*&self->_position[2])), COERCE_FLOAT(*&self->_position[10]));
  v5 = (*(self + 41) >> 4) & 3;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v6 = *&self->_anon_80[2];
    LODWORD(v7) = HIDWORD(*&self->_anon_80[2]);
    LODWORD(v8) = *&self->_anon_80[10];
    v9 = *(&v6 + 3);
    v10 = @"orientation";
  }

  else
  {
    if (!v5)
    {
      SCNEncodeVector3(a3, @"eulerAngles", COERCE_FLOAT(*&self->_anon_80[2]), COERCE_FLOAT(HIDWORD(*&self->_anon_80[2])), COERCE_FLOAT(*&self->_anon_80[10]));
      goto LABEL_8;
    }

    v6 = *&self->_anon_80[2];
    LODWORD(v7) = HIDWORD(*&self->_anon_80[2]);
    LODWORD(v8) = *&self->_anon_80[10];
    v9 = *(&v6 + 3);
    v10 = @"rotation";
  }

  SCNEncodeVector4(a3, v10, *&v6, v7, v8, v9);
LABEL_8:
  if ((*(self + 41) & 0x30) != 0x10)
  {
    [(SCNNode *)self rotation];
    SCNEncodeVector4(a3, @"rotation", v11, v12, v13, v14);
  }

  SCNEncodeVector3(a3, @"scale", COERCE_FLOAT(*&self->_scale[2]), COERCE_FLOAT(HIDWORD(*&self->_scale[2])), COERCE_FLOAT(*&self->_scale[10]));
  *&v15 = self->_opacity;
  [a3 encodeFloat:@"opacity" forKey:v15];
  [a3 encodeInteger:self->_categoryBitMask forKey:@"categoryBitMask"];
  [a3 encodeInteger:(*(self + 41) >> 6) & 1 forKey:@"movabilityHint"];
  [a3 encodeInteger:self->_renderingOrder forKey:@"renderingOrder"];
  name = self->_name;
  if (name)
  {
    [a3 encodeObject:name forKey:@"name"];
  }

  [a3 encodeBool:*(self + 41) >> 7 forKey:@"hidden"];
  [a3 encodeBool:*(self + 42) & 1 forKey:@"castsShadow"];
  v17 = (*(self + 42) >> 1) & 1;

  [a3 encodeBool:v17 forKey:@"depthPrePass"];
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_msgSend(a3 "options")])
  {
    v5 = [(SCNNode *)self presentationNode];
    [(SCNNode *)v5 _syncObjCModel];
    [(SCNNode *)v5 _updateAffine];
    [(SCNNode *)self _customEncodingOfSCNNode:a3 usePresentationInstance:1];
    [(SCNNode *)v5 _encodeNodePropertiesWithCoder:a3];

    SCNEncodeEntity(a3, self);
  }

  else
  {
    [(SCNNode *)self _customEncodingOfSCNNode:a3 usePresentationInstance:0];
    [(SCNNode *)self _encodeNodePropertiesWithCoder:a3];
    SCNEncodeEntity(a3, self);

    SCNEncodeAnimations(a3, self);
  }
}

- (SCNNode)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = SCNNode;
  v4 = [(SCNNode *)&v14 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = C3DNodeCreate();
    v4->_node = v6;
    if (v6)
    {
      C3DEntitySetObjCWrapper(v6, v4);
    }

    v4->_valueForKeyLock._os_unfair_lock_opaque = 0;
    [(SCNNode *)v4 _syncObjCModel];
    -[SCNNode setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    [(SCNNode *)v4 _customDecodingOfSCNNode:a3];
    *&v7 = SCNDecodeVector3(a3, @"position");
    [(SCNNode *)v4 setPosition:v7];
    if ([a3 containsValueForKey:@"orientation"])
    {
      *&v8 = SCNDecodeVector4(a3, @"orientation");
      [(SCNNode *)v4 setOrientation:v8];
    }

    else if ([a3 containsValueForKey:@"eulerAngles"])
    {
      *&v9 = SCNDecodeVector3(a3, @"eulerAngles");
      [(SCNNode *)v4 setEulerAngles:v9];
    }

    else
    {
      *&v10 = SCNDecodeVector4(a3, @"rotation");
      [(SCNNode *)v4 setRotation:v10];
    }

    *&v11 = SCNDecodeVector3(a3, @"scale");
    [(SCNNode *)v4 setScale:v11];
    [a3 decodeFloatForKey:@"opacity"];
    [(SCNNode *)v4 setOpacity:v12];
    -[SCNNode setCategoryBitMask:](v4, "setCategoryBitMask:", [a3 decodeIntegerForKey:@"categoryBitMask"]);
    -[SCNNode setMovabilityHint:](v4, "setMovabilityHint:", [a3 decodeIntegerForKey:@"movabilityHint"]);
    -[SCNNode setRenderingOrder:](v4, "setRenderingOrder:", [a3 decodeIntegerForKey:@"renderingOrder"]);
    -[SCNNode setHidden:](v4, "setHidden:", [a3 decodeBoolForKey:@"hidden"]);
    -[SCNNode setCastsShadow:](v4, "setCastsShadow:", [a3 decodeBoolForKey:@"castsShadow"]);
    if ([a3 containsValueForKey:@"depthPrePass"])
    {
      -[SCNNode setUsesDepthPrePass:](v4, "setUsesDepthPrePass:", [a3 decodeBoolForKey:@"depthPrePass"]);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeEntity(a3, v4);
    SCNDecodeAnimations(a3, v4);
    [(SCNNode *)v4 _didDecodeSCNNode:a3];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setAuthoringEnvironmentNode:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 42) = *(self + 42) & 0xBF | v3;
  if (a3)
  {
    [(SCNNode *)self setCastsShadow:0];
  }
}

+ (SCNVector3)localUp
{
  [objc_opt_class() simdLocalUp];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

+ (SCNVector3)localRight
{
  [objc_opt_class() simdLocalRight];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

+ (SCNVector3)localFront
{
  [objc_opt_class() simdLocalFront];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector3)worldUp
{
  [(SCNNode *)self simdWorldUp];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector3)worldRight
{
  [(SCNNode *)self simdWorldRight];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector3)worldFront
{
  [(SCNNode *)self simdWorldFront];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (void)lookAt:(SCNVector3)worldTarget up:(SCNVector3)worldUp localFront:(SCNVector3)localFront
{
  y = worldTarget.y;
  v6 = worldUp.y;
  [(SCNNode *)self simdLookAt:*&worldTarget.x up:*&worldUp.x localFront:*&localFront.x];
}

- (void)rotateBy:(SCNQuaternion)worldRotation aroundTarget:(SCNVector3)worldTarget
{
  y = worldRotation.y;
  v5 = worldTarget.y;
  [(SCNNode *)self simdRotateBy:*&worldRotation.x aroundTarget:*&worldTarget.x];
}

- (BOOL)simdGetBoundingSphereCenter:(SCNNode *)self radius:(SEL)a2
{
  v68 = *MEMORY[0x277D85DE8];
  if (self->_node)
  {
    v4 = v3;
    v5 = v2;
    v61 = 0uLL;
    if (*(self + 40))
    {
      v12 = [(SCNNode *)self sceneRef];
      v13 = v12;
      if (v12)
      {
        C3DSceneLock(v12);
      }

      v9 = C3DGetBoundingSphere(self->_node, 1, &v61);
      if (v5)
      {
        *v5 = v61;
      }

      if (v4)
      {
        *v4 = v61.i32[3];
      }

      if (v13)
      {
        C3DSceneUnlock(v13);
      }
    }

    else
    {
      v44 = v3;
      v60 = 0uLL;
      v7 = [(SCNNode *)self geometry];
      v59.i32[2] = 0;
      v59.i64[0] = 0;
      v58 = 0;
      if (v7)
      {
        v63.i32[2] = 0;
        v63.i64[0] = 0;
        v62.columns[0].i64[0] = 0;
        v8 = [(SCNGeometry *)v7 getBoundingSphereCenter:&v63 radius:&v62];
        v9 = v8;
        if (v8)
        {
          v10.i64[0] = v63.i64[0];
          v10.i32[2] = v63.i32[2];
          v11 = *v62.columns[0].i64;
          v10.f32[3] = v11;
          v61 = v10;
        }
      }

      else
      {
        v9 = 0;
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v14 = [(SCNNode *)self childNodes];
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v54 objects:v67 count:16];
      if (v15)
      {
        v17 = v15;
        v18 = *v55;
        v16.i32[0] = -1;
        v45 = v16;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v55 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v54 + 1) + 8 * i);
            v21 = [v20 simdGetBoundingSphereCenter:&v59 radius:&v58];
            v22 = v59;
            v22.i32[3] = v58;
            v60 = v22;
            if (v21)
            {
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              [v20 simdTransform];
              v48 = v24;
              v49 = v23;
              v46 = v26;
              v47 = v25;
              [v20 simdPivot];
              v70 = __invert_f4(v69);
              v27 = 0;
              v62 = v70;
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              do
              {
                *(&v63 + v27 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*&v62.columns[v27])), v48, *v62.columns[v27].f32, 1), v47, v62.columns[v27], 2), v46, v62.columns[v27], 3);
                ++v27;
              }

              while (v27 != 4);
              v50 = v63;
              v51 = v64;
              v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), vnegq_f32(v64)), v65, vextq_s8(vuzp1q_s32(v51, v51), v64, 0xCuLL));
              v29 = vmulq_f32(v63, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
              v30 = vaddv_f32(*v29.f32);
              v31 = vmulq_f32(v50, v50);
              v32 = vmulq_f32(v51, v51);
              v33 = vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8));
              if ((v29.f32[2] + v30) >= 0.0)
              {
                v34 = 1.0;
              }

              else
              {
                v34 = -1.0;
              }

              v35 = vextq_s8(v31, v31, 8uLL);
              *v35.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v35.f32, *&vextq_s8(v32, v32, 8uLL)), v33));
              v36 = vmulq_f32(v65, v65);
              v35.i32[2] = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
              v37 = vmulq_n_f32(v35, v34);
              v38 = vmvnq_s8(vorrq_s8(vcltzq_f32(v37), vcgezq_f32(v37)));
              v38.i32[3] = v38.i32[2];
              v52 = v65;
              v53 = v66;
              v38.i32[0] = vmaxvq_u32(v38);
              *&v39 = C3DTransformBoundingSphere(&v60, &v50, &v60, vandq_s8(v37, vdupq_lane_s32(*&vcgtq_s32(v38, v45), 0))).n128_u64[0];
              if (v9)
              {
                C3DSphereMakeByMergingSpheres(&v61, &v60, &v61, v39, v40, v41, v42);
              }

              else
              {
                v61 = v60;
              }

              v9 = 1;
            }
          }

          v17 = [(NSArray *)v14 countByEnumeratingWithState:&v54 objects:v67 count:16];
        }

        while (v17);
      }

      if (v9)
      {
        if (v5)
        {
          *v5 = v61;
        }

        if (v44)
        {
          *v44 = v61.i32[3];
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (simd_float4x4)simdPivot
{
  if (*(self + 40))
  {
    v8 = [(SCNNode *)self sceneRef];
    v9 = v8;
    if (v8)
    {
      C3DSceneLock(v8);
    }

    PivotMatrix = C3DNodeGetPivotMatrix(self->_node);
    v11 = MEMORY[0x277D860B8];
    if (PivotMatrix)
    {
      v11 = PivotMatrix;
    }

    v6 = v11[2];
    v7 = v11[3];
    v4 = *v11;
    v5 = v11[1];
    if (v9)
    {
      v15 = *v11;
      v13 = v11[2];
      v14 = v11[1];
      v12 = v11[3];
      C3DSceneUnlock(v9);
      v7 = v12;
      v6 = v13;
      v5 = v14;
      v4 = v15;
    }
  }

  else if ((*(self + 41) & 4) != 0 && (v3 = [(SCNNode *)self valueForKey:@"kPivotKey"]) != 0)
  {
    [v3 SCN_simdMatrix4Value];
  }

  else
  {
    v4 = *MEMORY[0x277D860B8];
    v5 = *(MEMORY[0x277D860B8] + 16);
    v6 = *(MEMORY[0x277D860B8] + 32);
    v7 = *(MEMORY[0x277D860B8] + 48);
  }

  result.columns[3] = v7;
  result.columns[2] = v6;
  result.columns[1] = v5;
  result.columns[0] = v4;
  return result;
}

- (void)setSimdPivot:(simd_float4x4)simdPivot
{
  if (*(self + 40))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNNode(SIMD) setSimdPivot:];
    }
  }

  else
  {
    v4 = [(SCNNode *)self valueForKey:@"kPivotKey"];
    v5 = MEMORY[0x277D860B8];
    if (v4)
    {
      [v4 SCN_simdMatrix4Value];
    }

    else
    {
      v6 = *MEMORY[0x277D860B8];
      v7 = *(MEMORY[0x277D860B8] + 16);
      v8 = *(MEMORY[0x277D860B8] + 32);
      v9 = *(MEMORY[0x277D860B8] + 48);
    }

    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v6, simdPivot.columns[0]), vceqq_f32(v7, simdPivot.columns[1])), vandq_s8(vceqq_f32(v8, simdPivot.columns[2]), vceqq_f32(v9, simdPivot.columns[3])))) & 0x80000000) == 0)
    {
      [(SCNNode *)self willChangeValueForKey:@"pivot"];
      v11 = vdupq_n_s32(0x3727C5ACu);
      v12 = vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v11, vabdq_f32(simdPivot.columns[1], v5[1])), vcgeq_f32(v11, vabdq_f32(simdPivot.columns[0], *v5))), vandq_s8(vcgeq_f32(v11, vabdq_f32(simdPivot.columns[2], v5[2])), vcgeq_f32(v11, vabdq_f32(simdPivot.columns[3], v5[3])))));
      *(self + 41) = *(self + 41) & 0xFB | (4 * (v12 >= 0));
      if (v12 < 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = [MEMORY[0x277CCAE60] SCN_valueWithSimdMatrix4:?];
      }

      [(SCNNode *)self setValue:v13 forKey:@"kPivotKey"];
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x6010000000;
      v17[3] = &unk_21C362C36;
      v18 = simdPivot;
      v14 = [(SCNNode *)self sceneRef];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __30__SCNNode_SIMD__setSimdPivot___block_invoke;
      v16[3] = &unk_2782FE1E8;
      v16[4] = self;
      v16[5] = v17;
      [SCNTransaction postCommandWithContext:v14 object:self key:@"pivot" applyBlock:v16];
      if ((*(self + 22) & 0x100) != 0)
      {
        [-[SCNNode _findComponentWithType:](self _findComponentWithType:{8), "resetTransform"}];
      }

      [(SCNNode *)self didChangeValueForKey:@"pivot"];
      _Block_object_dispose(v17, 8);
    }
  }
}

- (simd_float4x4)simdTransform
{
  if (*(self + 40))
  {
    v7 = [(SCNNode *)self sceneRef];
    if (v7)
    {
      v8 = v7;
      C3DSceneLock(v7);
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      C3DNodeGetMatrix(self->_node, &v9);
      C3DSceneUnlock(v8);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      C3DNodeGetMatrix(self->_node, &v9);
    }

    v3 = v9;
    v4 = v10;
    v5 = v11;
    v6 = v12;
  }

  else
  {
    if ((*(self + 41) & 2) == 0)
    {
      [(SCNNode *)self _updateTransform];
    }

    v3 = *&self->_anon_30[2];
    v4 = *&self->_anon_30[18];
    v5 = *&self->_anon_30[34];
    v6 = *&self->_anon_30[50];
  }

  result.columns[3] = v6;
  result.columns[2] = v5;
  result.columns[1] = v4;
  result.columns[0] = v3;
  return result;
}

- (void)setSimdTransform:(simd_float4x4)simdTransform
{
  if ((*(self + 40) & 1) == 0)
  {
    if ((*(self + 41) & 2) != 0 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(simdTransform.columns[1], *&self->_anon_30[18]), vceqq_f32(simdTransform.columns[0], *&self->_anon_30[2])), vandq_s8(vceqq_f32(simdTransform.columns[2], *&self->_anon_30[34]), vceqq_f32(simdTransform.columns[3], *&self->_anon_30[50])))) & 0x80000000) != 0)
    {
      return;
    }

    [(SCNNode *)self willChangeValueForKey:@"transform"];
    v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(simdTransform.columns[2], simdTransform.columns[2]), simdTransform.columns[2], 0xCuLL), vnegq_f32(simdTransform.columns[1])), simdTransform.columns[2], vextq_s8(vuzp1q_s32(simdTransform.columns[1], simdTransform.columns[1]), simdTransform.columns[1], 0xCuLL));
    v5 = vmulq_f32(simdTransform.columns[0], vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
    v6 = (v5.f32[2] + vaddv_f32(*v5.f32)) < 0.0;
    v7 = 1.0;
    if (v6)
    {
      v7 = -1.0;
    }

    v8 = vmulq_f32(simdTransform.columns[0], simdTransform.columns[0]);
    v9 = vmulq_f32(simdTransform.columns[1], simdTransform.columns[1]);
    v10 = vadd_f32(vzip1_s32(*v8.i8, *v9.i8), vzip2_s32(*v8.i8, *v9.i8));
    v11 = vextq_s8(v8, v8, 8uLL);
    *v11.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v11.f32, *&vextq_s8(v9, v9, 8uLL)), v10));
    v12 = vmulq_f32(simdTransform.columns[2], simdTransform.columns[2]);
    v11.i32[2] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
    v13 = vmulq_n_f32(v11, v7);
    v14 = vcltzq_f32(v13);
    v15 = vmvnq_s8(vorrq_s8(v14, vcgezq_f32(v13)));
    v15.i32[3] = v15.i32[2];
    v15.i32[0] = vmaxvq_u32(v15);
    v14.i32[0] = -1;
    v16 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v15, v14), 0), v13, 0);
    v17 = vceqzq_f32(v16);
    v17.i32[3] = v17.i32[2];
    if ((vmaxvq_u32(v17) & 0x80000000) != 0)
    {
      v16 = 0uLL;
      v25 = *(MEMORY[0x277D860B8] + 48);
      v22 = simdTransform.columns[3];
LABEL_22:
      *&self->_position[2] = v22;
      *&self->_anon_80[2] = v25;
      *&self->_scale[2] = v16;
      v36 = *(self + 41) & 0xCF;
      *&self->_anon_30[2] = simdTransform.columns[0];
      *&self->_anon_30[18] = simdTransform.columns[1];
      *&self->_anon_30[34] = simdTransform.columns[2];
      *&self->_anon_30[50] = v22;
      *(self + 41) = v36 | 0x23;
      [SCNTransaction postCommandWithContext:[(SCNNode *)self sceneRef:*&v16] object:self key:@"transform" applyBlock:?];
      if ((*(self + 22) & 0x100) != 0)
      {
        [-[SCNNode _findComponentWithType:](self _findComponentWithType:{8), "resetTransform"}];
      }

      [(SCNNode *)self didChangeValueForKey:@"transform"];
      return;
    }

    v18 = vdivq_f32(simdTransform.columns[0], vdupq_lane_s32(*v16.f32, 0));
    v19 = vdivq_f32(simdTransform.columns[1], vdupq_lane_s32(*v16.f32, 1));
    v20 = vdivq_f32(simdTransform.columns[2], vdupq_laneq_s32(v16, 2));
    v21 = v20.f32[2] + (*v18.i32 + v19.f32[1]);
    v22 = simdTransform.columns[3];
    if (v21 > 0.0)
    {
      *v20.f32 = vsub_f32(*&vzip2q_s32(v19, vuzp1q_s32(v19, v20)), *&vtrn2q_s32(v20, vzip2q_s32(v20, v18)));
      v20.f32[2] = *&v18.i32[1] - v19.f32[0];
      v23 = v21 + 1.0;
      v20.f32[3] = v21 + 1.0;
LABEL_21:
      v19.i32[0] = 0;
      v34 = vmulq_n_f32(v20, 0.5 / sqrtf(v23));
      v35 = vmvnq_s8(vceqq_f32(v34, v34));
      v35.i32[0] = vmaxvq_u32(v35);
      v25 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v19, v35), 0), *(MEMORY[0x277D860B8] + 48), v34);
      goto LABEL_22;
    }

    if (*v18.i32 <= v19.f32[1] || *v18.i32 <= v20.f32[2])
    {
      if (v19.f32[1] > v20.f32[2])
      {
        v27 = v19;
        v27.f32[1] = (v19.f32[1] + 1.0) - *v18.i32;
        v27.i32[3] = v20.i32[0];
        v28 = vzip2q_s32(vzip1q_s32(v18, v20), vtrn1q_s32(v20, v18));
        v29 = vaddq_f32(v19, v28);
        v30 = vsubq_f32(v27, v28);
        v19 = vrev64q_s32(v29);
        v20 = vtrn2q_s32(v19, v30);
        v23 = *&v30.i32[1];
        goto LABEL_21;
      }

      *v20.f32 = vadd_f32(*v20.f32, *&vzip2q_s32(v18, v19));
      v23 = ((v20.f32[2] + 1.0) - *v18.i32) - v19.f32[1];
      v20.f32[2] = v23;
      v33 = *&v18.i32[1] - v19.f32[0];
    }

    else
    {
      v23 = ((*v18.i32 + 1.0) - v19.f32[1]) - v20.f32[2];
      *&v31 = v19.f32[0] + *&v18.i32[1];
      v32 = v20.f32[0] + *&v18.i32[2];
      v33 = v19.f32[2] - v20.f32[1];
      v20.i64[0] = __PAIR64__(v31, LODWORD(v23));
      v20.f32[2] = v32;
    }

    v20.f32[3] = v33;
    goto LABEL_21;
  }

  v24 = scn_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [SCNNode(SIMD) setSimdTransform:];
  }
}

void __34__SCNNode_SIMD__setSimdTransform___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = *(a1 + 32);
  v3[1] = v1;
  v2 = *(a1 + 80);
  v3[2] = *(a1 + 64);
  v3[3] = v2;
  C3DNodeSetMatrix(*(*(a1 + 96) + 8), v3);
}

void __34__SCNNode_SIMD__setSimdTransform___block_invoke_2(__n128 *a1)
{
  C3DNodeSetPosition(*(a1[5].n128_u64[0] + 8), a1[2]);
  C3DNodeSetQuaternion(*(a1[5].n128_u64[0] + 8), a1[3]);
  v2 = *(a1[5].n128_u64[0] + 8);
  v3 = a1[4];

  C3DNodeSetScale(v2, v3);
}

- (simd_float3)simdPosition
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      *v6.i64 = C3DNodeGetPosition(self->_node);
      v8 = v6;
      C3DSceneUnlock(v5);
      return v8;
    }

    else
    {
      node = self->_node;

      *result.i64 = C3DNodeGetPosition(node);
    }
  }

  else
  {
    if ((*(self + 41) & 1) == 0)
    {
      [(SCNNode *)self _updateAffine];
    }

    return *&self->_position[2];
  }

  return result;
}

- (void)setSimdPosition:(simd_float3)simdPosition
{
  [(SCNNode *)self _setPosition:*simdPosition.i64];
  if ((*(self + 22) & 0x100) != 0)
  {
    v4 = [(SCNNode *)self _findComponentWithType:8];

    [v4 resetTransform];
  }
}

- (simd_float4)simdRotation
{
  if (*(self + 40))
  {
    v6 = [(SCNNode *)self sceneRef];
    if (v6)
    {
      v7 = v6;
      C3DSceneLock(v6);
      C3DNodeGetAxisAngle(self->_node);
      v19 = v8;
      C3DSceneUnlock(v7);
      return v19;
    }

    else
    {
      node = self->_node;

      C3DNodeGetAxisAngle(node);
    }
  }

  else
  {
    v3 = *(self + 41);
    if ((v3 & 1) == 0)
    {
      [(SCNNode *)self _updateAffine];
      v3 = *(self + 41);
    }

    v4 = (v3 >> 4) & 3;
    if (v4 > 1)
    {
      _Q3 = 0uLL;
      if (v4 == 2)
      {
        v20 = *&self->_anon_80[2];
        _S8 = v20.i32[3];
        v11 = acosf(v20.f32[3]);
        _Q3 = v20;
        v12 = v11 + v11;
        __asm { FMLS            S1, S8, V3.S[3] }

        *_D1.i32 = sqrtf(*_D1.i32);
        if (*_D1.i32 > 0.000001)
        {
          _Q3 = vdivq_f32(v20, vdupq_lane_s32(_D1, 0));
        }

        _Q3.f32[3] = v12;
      }
    }

    else if (v4)
    {
      return *&self->_anon_80[2];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      C3DQuaternionMakeEuler(&v22, COERCE_FLOAT(*&self->_anon_80[2]), COERCE_FLOAT(HIDWORD(*&self->_anon_80[2])), COERCE_FLOAT(*&self->_anon_80[10]));
      C3DQuaternionGetAxisAngle(&v22, &v21);
      return v21;
    }

    return _Q3;
  }

  return result;
}

- (void)setSimdRotation:(simd_float4)simdRotation
{
  if (*(self + 40))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNNode(SIMD) setSimdRotation:];
    }
  }

  else
  {
    v4 = *(self + 41);
    v12 = simdRotation;
    if ((v4 & 1) == 0)
    {
      [(SCNNode *)self _updateAffine];
      simdRotation = v12;
      v4 = *(self + 41);
    }

    if ((v4 & 0x30) != 0x10 || (vminvq_u32(vceqq_f32(*&self->_anon_80[2], simdRotation)) & 0x80000000) == 0)
    {
      [(SCNNode *)self willChangeValueForKey:@"rotation", *&v12];
      v5 = *(self + 41);
      *&self->_anon_80[2] = v13;
      *(self + 41) = v5 & 0xCD | 0x10;
      v6 = vceqzq_f32(v13);
      v6.i32[3] = v6.i32[2];
      if ((vminvq_u32(v6) & 0x80000000) != 0)
      {
        v9 = v13;
      }

      else
      {
        v7 = vmulq_f32(v13, v13);
        *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
        *v7.f32 = vrsqrte_f32(v8);
        *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
        v9 = vmulq_n_f32(v13, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]);
      }

      v9.i32[3] = v13.i32[3];
      v11 = [(SCNNode *)self sceneRef];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __33__SCNNode_SIMD__setSimdRotation___block_invoke;
      v15[3] = &unk_2782FEBE8;
      v17 = self;
      v16 = v14;
      [SCNTransaction postCommandWithContext:v11 object:self key:@"rotation" applyBlock:v15];
      if ((*(self + 22) & 0x100) != 0)
      {
        [-[SCNNode _findComponentWithType:](self _findComponentWithType:{8), "resetTransform"}];
      }

      [(SCNNode *)self didChangeValueForKey:@"rotation"];
    }
  }
}

- (simd_quatf)simdOrientation
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      C3DNodeGetQuaternion(self->_node);
      v7 = v6;
      C3DSceneUnlock(v5);
      return v7;
    }

    else
    {
      C3DNodeGetQuaternion(self->_node);
    }
  }

  else
  {
    [(SCNNode *)self _quaternion];
  }

  return v3;
}

- (void)setSimdOrientation:(simd_quatf)simdOrientation
{
  [(SCNNode *)self _setQuaternion:*simdOrientation.vector.i64];
  if ((*(self + 22) & 0x100) != 0)
  {
    v4 = [(SCNNode *)self _findComponentWithType:8];

    [v4 resetTransform];
  }
}

- (simd_float3)simdEulerAngles
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      *v6.i64 = C3DNodeGetEuler(self->_node);
      v8 = v6;
      C3DSceneUnlock(v5);
      return v8;
    }

    else
    {
      node = self->_node;

      *result.i64 = C3DNodeGetEuler(node);
    }
  }

  else
  {

    [(SCNNode *)self _euler];
  }

  return result;
}

- (void)setSimdEulerAngles:(simd_float3)simdEulerAngles
{
  if ((*(self + 41) & 1) == 0)
  {
    [(SCNNode *)self _updateAffine];
  }

  [(SCNNode *)self _euler];
  v5 = vceqq_f32(v4, v9);
  v5.i32[3] = v5.i32[2];
  if ((vminvq_u32(v5) & 0x80000000) == 0)
  {
    [(SCNNode *)self willChangeValueForKey:@"eulerAngles"];
    v6 = *(self + 41);
    *&self->_anon_80[2] = v9;
    *(self + 41) = v6 & 0xCD;
    v7 = [(SCNNode *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__SCNNode_SIMD__setSimdEulerAngles___block_invoke;
    v10[3] = &unk_2782FEBE8;
    v12 = self;
    v11 = v9;
    [SCNTransaction postCommandWithContext:v7 object:self key:@"eulerAngles" applyBlock:v10];
    if ((*(self + 22) & 0x100) != 0)
    {
      [-[SCNNode _findComponentWithType:](self _findComponentWithType:{8), "resetTransform"}];
    }

    [(SCNNode *)self didChangeValueForKey:@"eulerAngles"];
  }
}

- (simd_float3)simdScale
{
  if (*(self + 40))
  {
    v4 = [(SCNNode *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      *v6.i64 = C3DNodeGetScale(self->_node);
      v8 = v6;
      C3DSceneUnlock(v5);
      return v8;
    }

    else
    {
      node = self->_node;

      *result.i64 = C3DNodeGetScale(node);
    }
  }

  else
  {
    if ((*(self + 41) & 1) == 0)
    {
      [(SCNNode *)self _updateAffine];
    }

    return *&self->_scale[2];
  }

  return result;
}

- (void)setSimdScale:(simd_float3)simdScale
{
  [(SCNNode *)self _setScale:*simdScale.i64];
  if ((*(self + 22) & 0x100) != 0)
  {
    v4 = [(SCNNode *)self _findComponentWithType:8];

    [v4 resetTransform];
  }
}

- (void)setSimdWorldPosition:(simd_float3)simdWorldPosition
{
  if ([(SCNNode *)self parentNode])
  {
    [[(SCNNode *)self parentNode] simdWorldTransform];
    v8 = __invert_f4(v7);
    v4 = vaddq_f32(v8.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8.columns[1], *simdWorldPosition.f32, 1), v8.columns[0], simdWorldPosition.f32[0]), v8.columns[2], simdWorldPosition, 2)).u64[0];
  }

  else
  {
    v4 = simdWorldPosition.i64[0];
  }

  [(SCNNode *)self setSimdPosition:*&v4];
}

- (simd_quatf)simdWorldOrientation
{
  [(SCNNode *)self simdWorldTransform];
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(v3)), v4, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
  v6 = vmulq_f32(v2, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v7 = (v6.f32[2] + vaddv_f32(*v6.f32)) < 0.0;
  v8 = 1.0;
  if (v7)
  {
    v8 = -1.0;
  }

  v9 = vmulq_f32(v2, v2);
  v10 = vmulq_f32(v3, v3);
  v11 = vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8));
  v12 = vextq_s8(v9, v9, 8uLL);
  *v12.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v12.f32, *&vextq_s8(v10, v10, 8uLL)), v11));
  v13 = vmulq_f32(v4, v4);
  v12.i32[2] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  v14 = vmulq_n_f32(v12, v8);
  v15 = vceqzq_f32(v14);
  v15.i32[3] = v15.i32[2];
  if ((vmaxvq_u32(v15) & 0x80000000) == 0)
  {
    v16 = vmvnq_s8(vorrq_s8(vcltzq_f32(v14), vcgezq_f32(v14)));
    v16.i32[3] = v16.i32[2];
    if ((vmaxvq_u32(v16) & 0x80000000) == 0)
    {
      v17 = vdivq_f32(v2, vdupq_lane_s32(*v14.f32, 0));
      v18 = vdivq_f32(v3, vdupq_lane_s32(*v14.f32, 1));
      v19 = vdivq_f32(v4, vdupq_laneq_s32(v14, 2));
      v20 = v19.f32[2] + (*v17.i32 + v18.f32[1]);
      if (v20 > 0.0)
      {
        *v19.f32 = vsub_f32(*&vzip2q_s32(v18, vuzp1q_s32(v18, v19)), *&vtrn2q_s32(v19, vzip2q_s32(v19, v17)));
        v19.f32[2] = *&v17.i32[1] - v18.f32[0];
        v21 = v20 + 1.0;
        v19.f32[3] = v20 + 1.0;
LABEL_17:
        v18.i32[0] = 0;
        v30 = vmulq_n_f32(v19, 0.5 / sqrtf(v21));
        v31 = vmvnq_s8(vceqq_f32(v30, v30));
        v31.i32[0] = vmaxvq_u32(v31);
        return *&vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v18, v31), 0), *(MEMORY[0x277D860B8] + 48), v30);
      }

      if (*v17.i32 <= v18.f32[1] || *v17.i32 <= v19.f32[2])
      {
        if (v18.f32[1] > v19.f32[2])
        {
          v24 = v18;
          v24.f32[1] = (v18.f32[1] + 1.0) - *v17.i32;
          v24.i32[3] = v19.i32[0];
          v25 = vzip2q_s32(vzip1q_s32(v17, v19), vtrn1q_s32(v19, v17));
          v26 = vsubq_f32(v24, v25);
          v18 = vrev64q_s32(vaddq_f32(v18, v25));
          v19 = vtrn2q_s32(v18, v26);
          v21 = *&v26.i32[1];
          goto LABEL_17;
        }

        *v19.f32 = vadd_f32(*v19.f32, *&vzip2q_s32(v17, v18));
        v21 = ((v19.f32[2] + 1.0) - *v17.i32) - v18.f32[1];
        v19.f32[2] = v21;
        v29 = *&v17.i32[1] - v18.f32[0];
      }

      else
      {
        v21 = ((*v17.i32 + 1.0) - v18.f32[1]) - v19.f32[2];
        *&v27 = v18.f32[0] + *&v17.i32[1];
        v28 = v19.f32[0] + *&v17.i32[2];
        v29 = v18.f32[2] - v19.f32[1];
        v19.i64[0] = __PAIR64__(v27, LODWORD(v21));
        v19.f32[2] = v28;
      }

      v19.f32[3] = v29;
      goto LABEL_17;
    }
  }

  return *(MEMORY[0x277D860B8] + 48);
}

- (void)setSimdWorldOrientation:(simd_quatf)simdWorldOrientation
{
  if (![(SCNNode *)self parentNode])
  {
    v6.columns[0].i64[0] = simdWorldOrientation.vector.i64[0];
    goto LABEL_21;
  }

  [[(SCNNode *)self parentNode] simdWorldTransform];
  v6 = __invert_f4(v23);
  v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6.columns[2], v6.columns[2]), v6.columns[2], 0xCuLL), vnegq_f32(v6.columns[1])), v6.columns[2], vextq_s8(vuzp1q_s32(v6.columns[1], v6.columns[1]), v6.columns[1], 0xCuLL));
  v6.columns[3] = vmulq_f32(v6.columns[0], vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
  v5 = (v6.columns[3].f32[2] + vaddv_f32(*v6.columns[3].f32)) < 0.0;
  v6.columns[3].i32[0] = 1.0;
  if (v5)
  {
    v6.columns[3].f32[0] = -1.0;
  }

  v7 = vmulq_f32(v6.columns[0], v6.columns[0]);
  v8 = vmulq_f32(v6.columns[1], v6.columns[1]);
  v9 = vadd_f32(vzip1_s32(*v7.i8, *v8.i8), vzip2_s32(*v7.i8, *v8.i8));
  v10 = vextq_s8(v7, v7, 8uLL);
  *v10.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v10.f32, *&vextq_s8(v8, v8, 8uLL)), v9));
  v11 = vmulq_f32(v6.columns[2], v6.columns[2]);
  v10.i32[2] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  v12 = vmulq_n_f32(v10, v6.columns[3].f32[0]);
  v13 = vceqzq_f32(v12);
  v13.i32[3] = v13.i32[2];
  if ((vmaxvq_u32(v13) & 0x80000000) == 0)
  {
    v14 = vmvnq_s8(vorrq_s8(vcltzq_f32(v12), vcgezq_f32(v12)));
    v14.i32[3] = v14.i32[2];
    if ((vmaxvq_u32(v14) & 0x80000000) == 0)
    {
      v6.columns[3] = vdivq_f32(v6.columns[0], vdupq_lane_s32(*v12.f32, 0));
      v6.columns[0] = vdivq_f32(v6.columns[1], vdupq_lane_s32(*v12.f32, 1));
      v6.columns[1] = vdivq_f32(v6.columns[2], vdupq_laneq_s32(v12, 2));
      v15 = v6.columns[1].f32[2] + (v6.columns[3].f32[0] + v6.columns[0].f32[1]);
      if (v15 > 0.0)
      {
        *v6.columns[1].f32 = vsub_f32(*&vzip2q_s32(v6.columns[0], vuzp1q_s32(v6.columns[0], v6.columns[1])), *&vtrn2q_s32(v6.columns[1], vzip2q_s32(v6.columns[1], v6.columns[3])));
        v6.columns[1].f32[2] = v6.columns[3].f32[1] - v6.columns[0].f32[0];
        v6.columns[2].f32[0] = v15 + 1.0;
        v6.columns[1].f32[3] = v15 + 1.0;
LABEL_19:
        v16 = simdWorldOrientation;
        v6.columns[0].i32[0] = 0;
        v6.columns[1] = vmulq_n_f32(v6.columns[1], 0.5 / sqrtf(v6.columns[2].f32[0]));
        v6.columns[2] = vmvnq_s8(vceqq_f32(v6.columns[1], v6.columns[1]));
        v6.columns[2].i32[0] = vmaxvq_u32(v6.columns[2]);
        v6.columns[1] = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v6.columns[0], v6.columns[2]), 0), *(MEMORY[0x277D860B8] + 48), v6.columns[1]);
        goto LABEL_20;
      }

      if (v6.columns[3].f32[0] <= v6.columns[0].f32[1] || v6.columns[3].f32[0] <= v6.columns[1].f32[2])
      {
        if (v6.columns[0].f32[1] > v6.columns[1].f32[2])
        {
          v18 = v6.columns[0];
          v18.f32[1] = (v6.columns[0].f32[1] + 1.0) - v6.columns[3].f32[0];
          v18.i32[3] = v6.columns[1].i32[0];
          v6.columns[1] = vzip2q_s32(vzip1q_s32(v6.columns[3], v6.columns[1]), vtrn1q_s32(v6.columns[1], v6.columns[3]));
          v6.columns[2] = vsubq_f32(v18, v6.columns[1]);
          v6.columns[0] = vrev64q_s32(vaddq_f32(v6.columns[0], v6.columns[1]));
          v6.columns[1] = vtrn2q_s32(v6.columns[0], v6.columns[2]);
          v6.columns[2].i32[0] = v6.columns[2].i32[1];
          goto LABEL_19;
        }

        *v6.columns[1].f32 = vadd_f32(*v6.columns[1].f32, *&vzip2q_s32(v6.columns[3], v6.columns[0]));
        v6.columns[2].f32[0] = ((v6.columns[1].f32[2] + 1.0) - v6.columns[3].f32[0]) - v6.columns[0].f32[1];
        v6.columns[1].f32[2] = v6.columns[2].f32[0];
        v6.columns[0].f32[0] = v6.columns[3].f32[1] - v6.columns[0].f32[0];
      }

      else
      {
        v6.columns[2].f32[0] = ((v6.columns[3].f32[0] + 1.0) - v6.columns[0].f32[1]) - v6.columns[1].f32[2];
        *&v19 = v6.columns[0].f32[0] + v6.columns[3].f32[1];
        v6.columns[3].f32[0] = v6.columns[1].f32[0] + v6.columns[3].f32[2];
        v6.columns[0].f32[0] = v6.columns[0].f32[2] - v6.columns[1].f32[1];
        v6.columns[1].i64[0] = __PAIR64__(v19, v6.columns[2].u32[0]);
        v6.columns[1].i32[2] = v6.columns[3].i32[0];
      }

      v6.columns[1].i32[3] = v6.columns[0].i32[0];
      goto LABEL_19;
    }
  }

  v6.columns[1] = *(MEMORY[0x277D860B8] + 48);
  v16 = simdWorldOrientation;
LABEL_20:
  v6.columns[0] = v6.columns[1];
  v6.columns[0].i32[3] = v6.columns[1].i32[0];
  v20 = vzip1q_s32(v16, v16);
  v20.i32[0] = v16.vector.i32[2];
  v6.columns[2] = vuzp1q_s32(v16, v16);
  v6.columns[2].i32[0] = v16.vector.i32[1];
  v6.columns[0].i64[0] = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v16, 3), v16, 4uLL), v6.columns[0]), xmmword_21C27FD00), v16, v6.columns[1], 3), xmmword_21C27FD00, vmulq_f32(v20, vextq_s8(vextq_s8(v6.columns[1], v6.columns[1], 0xCuLL), v6.columns[1], 8uLL))), v6.columns[2], vextq_s8(vuzp1q_s32(v6.columns[1], v6.columns[1]), v6.columns[1], 0xCuLL)).u64[0];
LABEL_21:

  [(SCNNode *)self setSimdOrientation:*v6.columns[0].i64];
}

- (simd_float4x4)simdWorldTransform
{
  if (*(self + 40))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [(SCNNode *)self sceneRef];
    if (v14)
    {
      v15 = v14;
      C3DSceneLock(v14);
      C3DNodeComputeWorldMatrix(self->_node, &v32);
      C3DSceneUnlock(v15);
    }

    else
    {
      C3DNodeComputeWorldMatrix(self->_node, &v32);
    }

    goto LABEL_14;
  }

  [(SCNNode *)self simdTransform];
  v24 = v4;
  v26 = v3;
  v20 = v6;
  v22 = v5;
  if ((*(self + 41) & 4) != 0)
  {
    [(SCNNode *)self simdPivot];
    v37 = __invert_f4(v36);
    v7 = 0;
    v28 = v26;
    v29 = v24;
    v30 = v22;
    v31 = v20;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    do
    {
      *(&v32 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], COERCE_FLOAT(*(&v28 + v7))), v37.columns[1], *&v28.f32[v7 / 4], 1), v37.columns[2], *(&v28 + v7), 2), v37.columns[3], *(&v28 + v7), 3);
      v7 += 16;
    }

    while (v7 != 64);
    v24 = v33;
    v26 = v32;
    v20 = v35;
    v22 = v34;
  }

  v8 = [(SCNNode *)self parentNode:*&v20];
  if (v8)
  {
    [(SCNNode *)v8 simdWorldTransform];
    v13 = 0;
    v28 = v27;
    v29 = v25;
    v30 = v23;
    v31 = v21;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    do
    {
      *(&v32 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*(&v28 + v13))), v10, *&v28.f32[v13 / 4], 1), v11, *(&v28 + v13), 2), v12, *(&v28 + v13), 3);
      v13 += 16;
    }

    while (v13 != 64);
LABEL_14:
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    goto LABEL_15;
  }

  v17 = v25;
  v16 = v27;
  v19 = v21;
  v18 = v23;
LABEL_15:
  result.columns[3] = v19;
  result.columns[2] = v18;
  result.columns[1] = v17;
  result.columns[0] = v16;
  return result;
}

- (void)setSimdWorldTransform:(simd_float4x4)simdWorldTransform
{
  v11 = *simdWorldTransform.columns[3].i64;
  v9 = *simdWorldTransform.columns[1].i64;
  v10 = *simdWorldTransform.columns[2].i64;
  v8 = *simdWorldTransform.columns[0].i64;
  if ([(SCNNode *)self parentNode])
  {
    [[(SCNNode *)self parentNode] simdConvertTransform:0 fromNode:v8, v9, v10, v11];
  }

  else
  {
    v7 = v11;
    v5 = v9;
    v6 = v10;
    v4 = v8;
  }

  [(SCNNode *)self setSimdTransform:v4, v5, v6, v7];
}

- (simd_float3)simdConvertPosition:(simd_float3)position toNode:(SCNNode *)node
{
  v6 = node;
  v11 = position;
  if (!node)
  {
    v6 = [-[SCNNode scene](self "scene")];
    position = v11;
  }

  if (v6 != self)
  {
    [(SCNNode *)self simdWorldTransform];
    position = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v7, *v11.f32, 1), v8, v11.f32[0]), v9, v11, 2));
    if (node)
    {
      v12 = position;
      [(SCNNode *)node simdWorldTransform];
      v14 = __invert_f4(v13);
      return vaddq_f32(v14.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14.columns[1], *v12.f32, 1), v14.columns[0], v12.f32[0]), v14.columns[2], v12, 2));
    }
  }

  return position;
}

- (simd_float3)simdConvertPosition:(simd_float3)position fromNode:(SCNNode *)node
{
  v6 = node;
  v13 = position;
  if (!node)
  {
    v6 = [-[SCNNode scene](self "scene")];
    position = v13;
  }

  if (v6 != self)
  {
    [(SCNNode *)self simdWorldTransform];
    v15 = __invert_f4(v14);
    v7 = v15.columns[1];
    v8 = v15.columns[3];
    if (node)
    {
      v11 = v15.columns[2];
      v12 = v15.columns[0];
      v9 = v15.columns[1];
      v10 = v15.columns[3];
      [(SCNNode *)node simdWorldTransform];
      v15.columns[1] = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15.columns[1], *v13.f32, 1), v15.columns[0], v13.f32[0]), v15.columns[2], v13, 2);
      v7 = v9;
      v8 = v10;
      v15.columns[2] = v11;
      v15.columns[0] = v12;
      v15.columns[1] = vaddq_f32(v15.columns[3], v15.columns[1]);
    }

    else
    {
      v15.columns[1] = v13;
    }

    return vaddq_f32(v8, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v7, *v15.columns[1].f32, 1), v15.columns[0], v15.columns[1].f32[0]), v15.columns[2], v15.columns[1], 2));
  }

  return position;
}

- (simd_float3)simdConvertVector:(simd_float3)vector toNode:(SCNNode *)node
{
  v5 = vector;
  v7 = node;
  if (!node)
  {
    v7 = [-[SCNNode scene](self "scene")];
    v5 = vector;
  }

  if (v7 != self)
  {
    [(SCNNode *)self simdWorldTransform];
    v5 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8, *vector.f32, 1), v9, vector.f32[0]), v10, vector, 2);
    if (node)
    {
      v13 = v5;
      [(SCNNode *)node simdWorldTransform];
      v15 = __invert_f4(v14);
      return vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15.columns[1], *v13.f32, 1), v15.columns[0], v13.f32[0]), v15.columns[2], v13, 2);
    }
  }

  return v5;
}

- (simd_float3)simdConvertVector:(simd_float3)vector fromNode:(SCNNode *)node
{
  v6 = node;
  if (!node)
  {
    v6 = [-[SCNNode scene](self "scene")];
  }

  if (v6 == self)
  {
    return vector;
  }

  else
  {
    [(SCNNode *)self simdWorldTransform];
    v7 = __invert_f4(v14);
    v7.columns[3] = v7.columns[0];
    if (node)
    {
      v11 = v7.columns[2];
      v12 = v7.columns[0];
      v10 = v7.columns[1];
      [(SCNNode *)node simdWorldTransform];
      v8 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v7.columns[1], *vector.f32, 1), v7.columns[0], vector.f32[0]), v7.columns[2], vector, 2);
      v7.columns[1] = v10;
      v7.columns[2] = v11;
      v7.columns[3] = v12;
    }

    else
    {
      v8 = vector;
    }

    return vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v7.columns[1], *v8.f32, 1), v7.columns[3], v8.f32[0]), v7.columns[2], v8, 2);
  }
}

- (simd_float4x4)simdConvertTransform:(simd_float4x4)transform toNode:(SCNNode *)node
{
  if (node)
  {
    if (node == self)
    {
      return transform;
    }

    v20 = transform;
    [(SCNNode *)self simdWorldTransform];
    v18 = v7;
    v19 = v6;
    v16 = v9;
    v17 = v8;
    [(SCNNode *)node simdWorldTransform];
    v24 = __invert_f4(v23);
    v10 = 0;
    v21.columns[0] = v19;
    v21.columns[1] = v18;
    v21.columns[2] = v17;
    v21.columns[3] = v16;
    memset(&v22, 0, sizeof(v22));
    do
    {
      v22.columns[v10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24.columns[0], COERCE_FLOAT(*&v21.columns[v10])), v24.columns[1], *v21.columns[v10].f32, 1), v24.columns[2], v21.columns[v10], 2), v24.columns[3], v21.columns[v10], 3);
      ++v10;
    }

    while (v10 != 4);
    v11 = v22.columns[0];
    v12 = v22.columns[1];
    v13 = v22.columns[2];
    v14 = v22.columns[3];
  }

  else
  {
    v20 = transform;
    if ([-[SCNNode scene](self "scene")] == self)
    {
      return v20;
    }

    [(SCNNode *)self simdWorldTransform];
  }

  v15 = 0;
  v21 = v20;
  memset(&v22, 0, sizeof(v22));
  do
  {
    v22.columns[v15] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(*&v21.columns[v15])), v12, *v21.columns[v15].f32, 1), v13, v21.columns[v15], 2), v14, v21.columns[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  return v22;
}

- (simd_float4x4)simdConvertTransform:(simd_float4x4)transform fromNode:(SCNNode *)node
{
  v6 = node;
  v18 = transform;
  if (!node)
  {
    v6 = [-[SCNNode scene](self "scene")];
    transform = v18;
  }

  if (v6 != self)
  {
    [(SCNNode *)self simdWorldTransform];
    v22 = __invert_f4(v21);
    v7 = v22.columns[2];
    if (node)
    {
      v16 = v22.columns[1];
      v17 = v22.columns[0];
      v14 = v22.columns[3];
      v15 = v22.columns[2];
      [(SCNNode *)node simdWorldTransform];
      v8 = 0;
      v19.columns[0] = v9;
      v19.columns[1] = v10;
      v19.columns[2] = v11;
      v19.columns[3] = v12;
      memset(&v20, 0, sizeof(v20));
      do
      {
        v20.columns[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*&v19.columns[v8])), v16, *v19.columns[v8].f32, 1), v15, v19.columns[v8], 2), v14, v19.columns[v8], 3);
        ++v8;
      }

      while (v8 != 4);
      v22.columns[0] = v20.columns[0];
      v22.columns[1] = v20.columns[1];
      v7 = v20.columns[2];
      v22.columns[3] = v20.columns[3];
    }

    v13 = 0;
    v19 = v18;
    memset(&v20, 0, sizeof(v20));
    do
    {
      v20.columns[v13] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22.columns[0], COERCE_FLOAT(*&v19.columns[v13])), v22.columns[1], *v19.columns[v13].f32, 1), v7, v19.columns[v13], 2), v22.columns[3], v19.columns[v13], 3);
      ++v13;
    }

    while (v13 != 4);
    return v20;
  }

  return transform;
}

- (simd_float3)simdWorldUp
{
  [(SCNNode *)self simdWorldOrientation];
  v11 = v2;
  [objc_opt_class() simdLocalUp];
  v3 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v5 = vnegq_f32(v11);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v5), v4, v3);
  v7 = vaddq_f32(v6, v6);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v5), v8, v3);
  return vaddq_f32(vmlaq_laneq_f32(v4, v8, v11, 3), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
}

- (simd_float3)simdWorldRight
{
  [(SCNNode *)self simdWorldOrientation];
  v11 = v2;
  [objc_opt_class() simdLocalRight];
  v3 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v5 = vnegq_f32(v11);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v5), v4, v3);
  v7 = vaddq_f32(v6, v6);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v5), v8, v3);
  return vaddq_f32(vmlaq_laneq_f32(v4, v8, v11, 3), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
}

- (simd_float3)simdWorldFront
{
  [(SCNNode *)self simdWorldOrientation];
  v11 = v2;
  [objc_opt_class() simdLocalFront];
  v3 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v5 = vnegq_f32(v11);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v5), v4, v3);
  v7 = vaddq_f32(v6, v6);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v5), v8, v3);
  return vaddq_f32(vmlaq_laneq_f32(v4, v8, v11, 3), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
}

- (void)simdLookAt:(simd_float3)worldTarget
{
  v7 = *worldTarget.i64;
  [(SCNNode *)self simdWorldUp];
  v6 = v4;
  +[SCNNode simdLocalFront];

  [(SCNNode *)self simdLookAt:v7 up:v6 localFront:v5];
}

- (void)simdLookAt:(simd_float3)worldTarget up:(simd_float3)worldUp localFront:(simd_float3)localFront
{
  [(SCNNode *)self simdWorldPosition];
  v7 = vcgtq_f32(vdupq_n_s32(0x3727C5ACu), vabdq_f32(worldTarget, v6));
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0)
  {
    v8 = vsubq_f32(worldTarget, v6);
    v9 = vmulq_f32(v8, v8);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    v12 = localFront;
    v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(localFront)), v11, vextq_s8(vuzp1q_s32(v12, v12), localFront, 0xCuLL));
    v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    v15 = vmulq_f32(v11, localFront);
    v16 = vmulq_f32(v12, v12);
    v17 = vmulq_f32(v11, v11);
    v18 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8)));
    v14.f32[3] = (v15.f32[2] + vaddv_f32(*v15.f32)) + sqrtf(vmuls_lane_f32(v18.f32[0], v18, 1));
    v19 = vmulq_f32(v14, v14);
    *v19.i8 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v20 = vdupq_lane_s32(vadd_f32(*v19.i8, vdup_lane_s32(*v19.i8, 1)), 0);
    v21 = vrsqrteq_f32(v20);
    v22 = vmulq_f32(v21, vrsqrtsq_f32(v20, vmulq_f32(v21, v21)));
    v23 = vbslq_s8(vceqzq_f32(v20), v14, vmulq_f32(vmulq_f32(v22, vrsqrtsq_f32(v20, vmulq_f32(v22, v22))), v14));
    v24 = vuzp1q_s32(v23, v23);
    if (v18.f32[1] <= 0.000000001)
    {
      v59 = *(MEMORY[0x277D860B8] + 48);
    }

    else
    {
      v25 = vextq_s8(v24, v23, 0xCuLL);
      v26 = v23;
      v26.i32[3] = v23.i32[0];
      v27 = vnegq_f32(v26);
      v28 = vuzp1q_s32(v27, v27);
      v28.i32[0] = v27.i32[1];
      v29 = vzip1q_s32(v27, v27);
      v29.i32[0] = v27.i32[2];
      v67 = v24;
      v27.i32[3] = v23.i32[3];
      v63 = v18.u32[1];
      v30 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v27, 3), v27, 4uLL), xmmword_21C27F8C0), xmmword_21C27FD00), 0, v27), xmmword_21C27FD00, vmulq_f32(v29, xmmword_21C27F7E0)), xmmword_21C2A22A0, v28);
      v31 = vuzp1q_s32(v30, v30);
      v31.i32[0] = v30.i32[1];
      v32 = vzip1q_s32(v30, v30);
      v32.i32[0] = v30.i32[2];
      v33 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v26, vextq_s8(vdupq_laneq_s32(v30, 3), v30, 4uLL)), xmmword_21C27FD00), v30, v23, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL), v32)), v31, v25);
      v34 = vmulq_f32(v11, v33);
      v34.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
      v35 = vmlsq_lane_f32(v33, v11, *v34.f32, 0);
      v36 = vmulq_f32(v35, v35);
      v36.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
      v37 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v36.f32[0] != 0.0)), 0x1FuLL));
      v37.i32[3] = 0;
      v38 = vdupq_lane_s32(*v36.f32, 0);
      v39 = vrsqrteq_f32(v38);
      v40 = vmulq_f32(v39, vrsqrtsq_f32(v38, vmulq_f32(v39, v39)));
      v41 = vbslq_s8(vcltzq_s32(v37), vmulq_f32(v35, vmulq_f32(v40, vrsqrtsq_f32(v38, vmulq_f32(v40, v40)))), v35);
      v42 = vmulq_f32(v11, worldUp);
      v42.f32[0] = v42.f32[2] + vaddv_f32(*v42.f32);
      v43 = vmlsq_lane_f32(worldUp, v11, *v42.f32, 0);
      v44 = vmulq_f32(v43, v43);
      v44.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
      v45 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v44.f32[0] != 0.0)), 0x1FuLL));
      v45.i32[3] = 0;
      v46 = vdupq_lane_s32(*v44.f32, 0);
      v47 = vrsqrteq_f32(v46);
      v48 = vmulq_f32(v47, vrsqrtsq_f32(v46, vmulq_f32(v47, v47)));
      v49 = vbslq_s8(vcltzq_s32(v45), vmulq_f32(v43, vmulq_f32(v48, vrsqrtsq_f32(v46, vmulq_f32(v48, v48)))), v43);
      v50 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), vnegq_f32(v41)), v49, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
      v51 = vmulq_f32(v11, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
      v52 = v51.f32[2] + vaddv_f32(*v51.f32);
      v53 = vmulq_f32(v41, v49);
      v54 = v53.f32[2] + vaddv_f32(*v53.f32);
      if (v54 >= 1.0)
      {
        v54 = 1.0;
      }

      if (v54 <= -1.0)
      {
        v54 = -1.0;
      }

      v65 = v11;
      v69 = v23;
      v55 = acosf(v54);
      if (v52 <= 0.0)
      {
        v55 = -v55;
      }

      v56 = __sincosf_stret(v55 * 0.5);
      v24 = v67;
      v23 = v69;
      v57 = vrsqrte_f32(v63);
      v58 = vmul_f32(v57, vrsqrts_f32(v63, vmul_f32(v57, v57)));
      v59 = vmulq_n_f32(vmulq_n_f32(v65, vmul_f32(v58, vrsqrts_f32(v63, vmul_f32(v58, v58))).f32[0]), v56.__sinval);
      v59.i32[3] = LODWORD(v56.__cosval);
    }

    v60 = v59;
    v60.i32[3] = v59.i32[0];
    v61 = vzip1q_s32(v23, v23);
    v61.i32[0] = v23.i32[2];
    v24.i32[0] = v23.i32[1];
    *&v62 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v23, 3), v23, 4uLL), v60), xmmword_21C27FD00), v23, v59, 3), xmmword_21C27FD00, vmulq_f32(v61, vextq_s8(vextq_s8(v59, v59, 0xCuLL), v59, 8uLL))), v24, vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL)).u64[0];

    [(SCNNode *)self setSimdWorldOrientation:v62];
  }
}

- (void)simdLocalTranslateBy:(simd_float3)translation
{
  [(SCNNode *)self simdOrientation];
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vnegq_f32(v4);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(translation, translation), translation, 0xCuLL), v6), translation, v5);
  v8 = vaddq_f32(v7, v7);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmlaq_laneq_f32(translation, v9, v4, 3);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v6), v9, v5);
  v15 = vaddq_f32(v10, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  [(SCNNode *)self simdPosition];
  *&v13 = vaddq_f32(v12, v15).u64[0];

  [(SCNNode *)self setSimdPosition:v13];
}

- (void)simdLocalRotateBy:(simd_quatf)rotation
{
  [(SCNNode *)self simdOrientation];
  v5 = v4;
  v5.i32[3] = v4.i32[0];
  v6 = rotation;
  v7 = vzip1q_s32(v6, v6);
  v7.i32[0] = rotation.vector.i32[2];
  v8 = vuzp1q_s32(v6, v6);
  v8.i32[0] = rotation.vector.i32[1];
  *&v9 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(rotation, 3), rotation, 4uLL), v5), xmmword_21C27FD00), rotation, v4, 3), xmmword_21C27FD00, vmulq_f32(v7, vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL))), v8, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL)).u64[0];

  [(SCNNode *)self setSimdOrientation:v9];
}

- (void)simdRotateBy:(simd_quatf)worldRotation aroundTarget:(simd_float3)worldTarget
{
  v5 = 0;
  v6 = *MEMORY[0x277D860B8];
  v7 = *(MEMORY[0x277D860B8] + 16);
  v8 = *(MEMORY[0x277D860B8] + 32);
  v9 = *(MEMORY[0x277D860B8] + 48);
  v13 = vmulq_f32(worldRotation, worldRotation);
  v10 = vaddq_f32(v13, v13);
  v11 = vmulq_laneq_f32(worldRotation, worldRotation, 3);
  v13.i32[3] = HIDWORD(*MEMORY[0x277D860B8]);
  v13.f32[0] = (1.0 - v10.f32[1]) - v10.f32[2];
  v12 = vmuls_lane_f32(worldRotation.vector.f32[0], *worldRotation.vector.f32, 1);
  v13.f32[1] = (v12 + v11.f32[2]) + (v12 + v11.f32[2]);
  v14 = vmuls_lane_f32(worldRotation.vector.f32[0], worldRotation, 2);
  v16.i32[3] = v7.i32[3];
  v16.f32[0] = (v12 - v11.f32[2]) + (v12 - v11.f32[2]);
  v15 = vmuls_lane_f32(worldRotation.vector.f32[1], worldRotation, 2);
  v10.f32[0] = 1.0 - v10.f32[0];
  v16.f32[1] = v10.f32[0] - v10.f32[2];
  v17.i32[3] = v8.i32[3];
  v17.f32[0] = (v14 + v11.f32[1]) + (v14 + v11.f32[1]);
  v17.f32[1] = (v15 - v11.f32[0]) + (v15 - v11.f32[0]);
  v17.f32[2] = v10.f32[0] - v10.f32[1];
  v18 = vnegq_f32(worldTarget);
  v18.i32[3] = v9.i32[3];
  v33 = *MEMORY[0x277D860B8];
  v34 = v7;
  v35 = v8;
  v36 = v18;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  do
  {
    v13.f32[2] = (v14 - v11.f32[1]) + (v14 - v11.f32[1]);
    v16.f32[2] = (v15 + v11.f32[0]) + (v15 + v11.f32[0]);
    *(&v37 + v5) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v33 + v5))), v16, *&v33.f32[v5 / 4], 1), v17, *(&v33 + v5), 2), v9, *(&v33 + v5), 3);
    v5 += 16;
  }

  while (v5 != 64);
  v19 = 0;
  worldTarget.i32[3] = v9.i32[3];
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  do
  {
    *(&v37 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*(&v33 + v19))), v7, *&v33.f32[v19 / 4], 1), v8, *(&v33 + v19), 2), worldTarget, *(&v33 + v19), 3);
    v19 += 16;
  }

  while (v19 != 64);
  v31 = v38;
  v32 = v37;
  v29 = v40;
  v30 = v39;
  [(SCNNode *)self simdWorldTransform];
  v20 = 0;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  do
  {
    *(&v37 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*(&v33 + v20))), v31, *&v33.f32[v20 / 4], 1), v30, *(&v33 + v20), 2), v29, *(&v33 + v20), 3);
    v20 += 16;
  }

  while (v20 != 64);
  v25 = *v39.i64;
  v26 = *v40.i64;
  v27 = *v37.i64;
  v28 = *v38.i64;

  [(SCNNode *)self setSimdWorldTransform:v27, v28, v25, v26];
}

- (int64_t)authoringCameraType
{
  AssociatedObject = objc_getAssociatedObject(self, sel_authoringCameraType);

  return [AssociatedObject integerValue];
}

- (void)setAuthoringCameraType:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];

  objc_setAssociatedObject(self, sel_authoringCameraType, v4, 0x301);
}

- (id)debugQuickLookObject
{
  v2 = [(SCNNode *)self clone];
  [(SCNNode *)v2 setHidden:0];
  v3 = +[SCNScene scene];
  [(SCNNode *)[(SCNScene *)v3 rootNode] addChildNode:v2];

  return [(SCNScene *)v3 debugQuickLookObject];
}

- (id)debugQuickLookData
{
  v2 = [(SCNNode *)self debugQuickLookObject];

  return UIImagePNGRepresentation(v2);
}

- (void)setName:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_setQuaternion:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_setPosition:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_setScale:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setMovabilityHint:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setCastsShadow:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setUsesDepthPrePass:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setCategoryBitMask:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setHidden:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setOpacity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setRenderingOrder:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setValue:forUndefinedKey:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)__insertObject:inChildNodesAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)__removeObjectFromChildNodesAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__SCNNode___removeObjectFromChildNodesAtIndex___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)replaceObjectInChildNodesAtIndex:withObject:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_7();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_21BEF7000, v1, OS_LOG_TYPE_ERROR, "Unreachable code: circular reference found when trying to add %@ as a child node of %@", v2, 0x16u);
}

- (void)replaceObjectInChildNodesAtIndex:withObject:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__SCNNode_replaceObjectInChildNodesAtIndex_withObject___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setPhysicsBody:(void *)a1 .cold.1(void *a1)
{
  [a1 _owner];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_7_0(&dword_21BEF7000, v1, v2, "Error: Physics body %@ 's owner (%@) should be %@", v3, v4, v5, v6, v7);
}

- (void)setPhysicsBody:(void *)a1 .cold.2(void *a1)
{
  [a1 _owner];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_7_0(&dword_21BEF7000, v1, v2, "Error: Physics body %@ already has a owner: %@ that is not %@", v3, v4, v5, v6, v7);
}

- (void)addParticleSystem:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addAudioPlayer:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end