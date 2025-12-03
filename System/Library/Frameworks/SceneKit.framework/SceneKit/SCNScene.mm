@interface SCNScene
+ (BOOL)canImportFileExtension:(id)extension;
+ (BOOL)canImportFileUTI:(id)i;
+ (SCNScene)scene;
+ (SCNScene)sceneNamed:(NSString *)name inDirectory:(NSString *)directory options:(NSDictionary *)options;
+ (SCNScene)sceneWithData:(id)data atIndex:(int64_t)index options:(id)options;
+ (SCNScene)sceneWithData:(id)data options:(id)options;
+ (SCNScene)sceneWithMDLAsset:(id)asset options:(id)options;
+ (SCNScene)sceneWithSceneRef:(__C3DScene *)ref;
+ (SCNScene)sceneWithURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error;
+ (SCNScene)sceneWithURL:(id)l atIndex:(int64_t)index options:(id)options;
+ (id)_indexPathForNode:(id)node;
+ (id)supportedFileUTIsForExport;
+ (id)supportedFileUTIsForImport;
- (BOOL)writeToURL:(NSURL *)url options:(NSDictionary *)options delegate:(id)delegate progressHandler:(SCNSceneExportProgressHandler)progressHandler;
- (BOOL)writeToURLWithUSDKit:(id)kit;
- (NSArray)particleSystems;
- (SCNMaterialProperty)background;
- (SCNMaterialProperty)lightingEnvironment;
- (SCNNode)rootNode;
- (SCNScene)init;
- (SCNScene)initWithCoder:(id)coder;
- (SCNScene)initWithSceneRef:(__C3DScene *)ref;
- (SCNVector3)upAxis;
- (double)endTime;
- (double)frameRate;
- (double)startTime;
- (float)playbackSpeed;
- (id)_exportAsMovieOperationWithDestinationURL:(id)l size:(CGSize)size attributes:(id)attributes delegate:(id)delegate didEndSelector:(SEL)selector userInfo:(void *)info;
- (id)_nodeWithIndexPath:(id)path;
- (id)_physicsWorldCreateIfNeeded:(BOOL)needed;
- (id)_subnodeFromIndexPath:(id)path;
- (id)attributeForKey:(NSString *)key;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property;
- (id)debugQuickLookObjectWithPointOfView:(id)view;
- (id)initForJavascript:(id)javascript;
- (id)root;
- (id)valueForUndefinedKey:(id)key;
- (void)_clearSceneRef;
- (void)_customDecodingOfSCNScene:(id)scene;
- (void)_customEncodingOfSCNScene:(id)scene;
- (void)_didDecodeSCNScene:(id)scene;
- (void)_dumpToDisk;
- (void)_prettifyForPreview;
- (void)_resetSceneTimeRange;
- (void)_scaleSceneBy:(double)by;
- (void)_setRootNode:(id)node;
- (void)_setSourceURL:(id)l;
- (void)_syncObjCModel;
- (void)addParticleSystem:(SCNParticleSystem *)system withTransform:(SCNMatrix4 *)transform;
- (void)addSceneAnimation:(id)animation forKey:(id)key target:(id)target;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)lock;
- (void)removeAllParticleSystems;
- (void)removeParticleSystem:(SCNParticleSystem *)system;
- (void)setAttribute:(id)attribute forKey:(NSString *)key;
- (void)setEndTime:(double)time;
- (void)setFogColor:(id)fogColor;
- (void)setFogDensityExponent:(CGFloat)fogDensityExponent;
- (void)setFogEndDistance:(CGFloat)fogEndDistance;
- (void)setFogStartDistance:(CGFloat)fogStartDistance;
- (void)setFrameRate:(double)rate;
- (void)setPaused:(BOOL)paused;
- (void)setPausedForEditing:(BOOL)editing;
- (void)setPlaybackSpeed:(float)speed;
- (void)setRootNode:(id)node forLayer:(int)layer;
- (void)setSceneSource:(id)source;
- (void)setScreenSpaceReflectionMaximumDistance:(CGFloat)screenSpaceReflectionMaximumDistance;
- (void)setScreenSpaceReflectionSampleCount:(NSInteger)screenSpaceReflectionSampleCount;
- (void)setScreenSpaceReflectionStride:(CGFloat)screenSpaceReflectionStride;
- (void)setStartTime:(double)time;
- (void)setUpAxis:(SCNVector3)axis;
- (void)setWantsScreenSpaceReflection:(BOOL)wantsScreenSpaceReflection;
- (void)set_allowsDefaultLightingEnvironmentFallback:(BOOL)fallback;
- (void)unlock;
@end

@implementation SCNScene

- (SCNNode)rootNode
{
  if (!self->_rootNode)
  {
    sceneRef = [(SCNScene *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    if (!self->_rootNode)
    {
      scene = self->_scene;
      if (scene)
      {
        C3DSceneLock(scene);
        if (C3DSceneGetRootNode(self->_scene))
        {
          self->_rootNode = [SCNNode nodeWithNodeRef:?];
        }

        else
        {
          [(SCNScene *)self _setRootNode:+[SCNNode node]];
        }

        C3DSceneUnlock(self->_scene);
      }
    }

    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  v6 = self->_rootNode;

  return v6;
}

+ (SCNScene)sceneWithMDLAsset:(id)asset options:(id)options
{
  v153 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_opt_new();
  obj = objc_opt_new();
  v8 = objc_alloc_init(self);
  if (objc_opt_respondsToSelector())
  {
    [asset upAxis];
    LODWORD(v10) = HIDWORD(v9);
    LODWORD(v12) = v11;
    [v8 setAttribute:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNVector3:", v9, v10, v12), @"kSceneUpAxisAttributeKey"}];
  }

  v116 = v7;
  v141[0] = 0;
  v141[1] = 0;
  v140 = v141;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v13 = [asset countByEnumeratingWithState:&v136 objects:v151 count:16];
  if (v13)
  {
    v14 = *v137;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v137 != v14)
        {
          objc_enumerationMutation(asset);
        }

        [objc_msgSend(v8 "rootNode")];
      }

      v13 = [asset countByEnumeratingWithState:&v136 objects:v151 count:16];
    }

    while (v13);
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v16 = v7;
  v17 = [obj countByEnumeratingWithState:&v132 objects:v150 count:16];
  if (v17)
  {
    v18 = *v133;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v133 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v132 + 1) + 8 * j);
        v21 = [v116 objectForKeyedSubscript:{objc_msgSend(v20, "path")}];
        if (v21)
        {
          [v21 _addSkinnerWithMDLMesh:v20 sceneNodes:v116];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v132 objects:v150 count:16];
    }

    while (v17);
  }

  if ([objc_msgSend(asset "animations")])
  {
    v22 = objc_opt_new();
    v23 = 0;
    assetCopy = asset;
    v111 = v22;
    v122 = *MEMORY[0x277CDA230];
    v112 = v8;
    while (v23 < [objc_msgSend(asset "animations")])
    {
      v24 = [objc_msgSend(asset "animations")];
      if (v24)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
          v121 = [objc_msgSend(v24 "jointPaths")];
          if (v121)
          {
            v26 = [options valueForKey:@"kSceneSourceAnimationLoadingMode"];
            v27 = v26;
            if (v26)
            {
              v28 = 0.0;
              if ([v26 isEqualToString:@"playOnce"])
              {
                v124 = 0;
                v114 = 1;
              }

              else if ([v27 isEqualToString:@"playUsingSceneTime"])
              {
                v114 = 0;
                v124 = 1;
              }

              else
              {
                HIDWORD(v114) = [v27 isEqualToString:@"keepSeparate"];
                v124 = 0;
                LODWORD(v114) = 0;
                if (HIDWORD(v114))
                {
                  v28 = 0.0;
                }

                else
                {
                  v28 = INFINITY;
                }
              }
            }

            else
            {
              v124 = 0;
              v114 = 0;
              v28 = INFINITY;
            }

            v147 = 0;
            memptr = 0;
            v146 = 0;
            v125 = [objc_msgSend(v25 "translations")];
            v127 = [objc_msgSend(v25 "rotations")];
            v126 = [objc_msgSend(v25 "scales")];
            v29 = v127 != 0;
            if (v125)
            {
              ++v29;
            }

            if (v126)
            {
              v30 = v29 + 1;
            }

            else
            {
              v30 = v29;
            }

            v31 = [v125 count];
            v32 = [v127 count];
            v33 = [v126 count];
            v34 = v31 * v121;
            if (v125)
            {
              malloc_type_posix_memalign(&memptr, 0x10uLL, 16 * v34, 0x1000040451B5BE8uLL);
            }

            v35 = v32 * v121;
            if (v127)
            {
              malloc_type_posix_memalign(&v147, 0x10uLL, 16 * v35, 0x1000040451B5BE8uLL);
            }

            v36 = v33 * v121;
            if (v126)
            {
              malloc_type_posix_memalign(&v146, 0x10uLL, 16 * v36, 0x1000040451B5BE8uLL);
            }

            if (memptr)
            {
              translations = [v25 translations];
              [translations getFloat3Array:memptr maxCount:v34];
            }

            if (v147)
            {
              rotations = [v25 rotations];
              [rotations getFloatQuaternionArray:v147 maxCount:v35];
            }

            if (v146)
            {
              scales = [v25 scales];
              [scales getFloat3Array:v146 maxCount:v36];
            }

            [objc_msgSend(v25 "translations")];
            v41 = v40;
            [objc_msgSend(v25 "translations")];
            v43 = v42;
            [objc_msgSend(v25 "rotations")];
            v45 = v44;
            [objc_msgSend(v25 "rotations")];
            v47 = v46;
            [objc_msgSend(v25 "scales")];
            v49 = v48;
            [objc_msgSend(v25 "scales")];
            v51 = v50;
            v123 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v25, "jointPaths"), "count") * v30}];
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            jointPaths = [v25 jointPaths];
            v53 = [jointPaths countByEnumeratingWithState:&v142 objects:v152 count:16];
            v54 = v41 - v43;
            v55 = v45 - v47;
            if (v53)
            {
              v56 = 0;
              v118 = jointPaths;
              v119 = *v143;
              do
              {
                v57 = 0;
                v58 = 16 * v56;
                v120 = v53;
                do
                {
                  if (*v143 != v119)
                  {
                    objc_enumerationMutation(v118);
                  }

                  v59 = *(*(&v142 + 1) + 8 * v57);
                  if (v125)
                  {
                    v60 = MEMORY[0x277CCACA8];
                    v61 = [*(*(&v142 + 1) + 8 * v57) rangeOfString:@"/" options:4];
                    v62 = v59;
                    if (v61 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v62 = [v59 substringFromIndex:v61 + 1];
                    }

                    v63 = [v60 stringWithFormat:@"/%@.position", v62];
                    v64 = [MEMORY[0x277CD9EC8] animationWithKeyPath:v63];
                    [v64 setDuration:v54];
                    [objc_msgSend(v25 "translations")];
                    v66 = v65;
                    v67 = 0.0;
                    if ((v124 & 1) == 0)
                    {
                      [objc_msgSend(v25 translations];
                    }

                    [v64 setBeginTime:v66 - v67];
                    [objc_msgSend(v25 "translations")];
                    [v64 setFillMode:v122];
                    [v64 setRemovedOnCompletion:0];
                    [v123 addObject:v64];
                  }

                  if (v127)
                  {
                    v69 = MEMORY[0x277CD9EC8];
                    v70 = MEMORY[0x277CCACA8];
                    v71 = [v59 rangeOfString:@"/" options:4];
                    v72 = v59;
                    if (v71 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v72 = [v59 substringFromIndex:v71 + 1];
                    }

                    v73 = [v69 animationWithKeyPath:{objc_msgSend(v70, "stringWithFormat:", @"/%@.orientation", v72)}];
                    [v73 setDuration:v55];
                    [objc_msgSend(v25 "rotations")];
                    v75 = v74;
                    v76 = 0.0;
                    if ((v124 & 1) == 0)
                    {
                      [objc_msgSend(v25 rotations];
                    }

                    [v73 setBeginTime:v75 - v76];
                    [objc_msgSend(v25 "rotations")];
                    v78 = v147;
                    v79 = [v127 count];
                    v80 = [MEMORY[0x277CBEB18] arrayWithCapacity:v79];
                    if (v79 >= 1)
                    {
                      v84 = &v78[v58];
                      do
                      {
                        LODWORD(v81) = HIDWORD(*v84);
                        LODWORD(v82) = *(v84 + 1);
                        LODWORD(v83) = HIDWORD(*v84);
                        [v80 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNVector4:", *v84, v81, v82, v83)}];
                        v84 += 16 * v121;
                        --v79;
                      }

                      while (v79);
                    }

                    [v73 setValues:v80];
                    [v73 setFillMode:v122];
                    [v73 setRemovedOnCompletion:0];
                    [v123 addObject:v73];
                  }

                  if (v126)
                  {
                    v85 = MEMORY[0x277CD9EC8];
                    v86 = MEMORY[0x277CCACA8];
                    v87 = [v59 rangeOfString:@"/" options:4];
                    if (v87 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v59 = [v59 substringFromIndex:v87 + 1];
                    }

                    v88 = [v85 animationWithKeyPath:{objc_msgSend(v86, "stringWithFormat:", @"/%@.scale", v59)}];
                    [v88 setDuration:v49 - v51];
                    [objc_msgSend(v25 "scales")];
                    v90 = v89;
                    v91 = 0.0;
                    if ((v124 & 1) == 0)
                    {
                      [objc_msgSend(v25 scales];
                    }

                    [v88 setBeginTime:v90 - v91];
                    [objc_msgSend(v25 "scales")];
                    [v88 setFillMode:v122];
                    [v88 setRemovedOnCompletion:0];
                    [v123 addObject:v88];
                  }

                  ++v56;
                  ++v57;
                  v58 += 16;
                }

                while (v57 != v120);
                v53 = [v118 countByEnumeratingWithState:&v142 objects:v152 count:16];
              }

              while (v53);
            }

            free(memptr);
            free(v147);
            free(v146);
            v8 = v112;
            asset = assetCopy;
            v16 = v116;
            v22 = v111;
            animation = [MEMORY[0x277CD9E00] animation];
            [animation setAnimations:v123];
            [animation setFillMode:v122];
            *&v94 = v28;
            [animation setRepeatCount:v94];
            [animation setRemovedOnCompletion:v114];
            [animation setUsesSceneTimeBase:v124 | HIDWORD(v114)];
            if (v124)
            {
              [objc_msgSend(v25 "translations")];
              v96 = v95;
              [objc_msgSend(v25 "rotations")];
              v98 = v97;
              [objc_msgSend(v25 "scales")];
              if (v96 >= v98)
              {
                v100 = v96;
              }

              else
              {
                v100 = v98;
              }

              if (v100 >= v99)
              {
                v99 = v100;
              }
            }

            else
            {
              if (v54 >= v55)
              {
                v99 = v54;
              }

              else
              {
                v99 = v55;
              }

              if (v99 < v49 - v51)
              {
                v99 = v49 - v51;
              }
            }

            [animation setDuration:v99];
            if (animation)
            {
              [v111 setObject:+[SCNAnimation animationWithCAAnimation:](SCNAnimation forKeyedSubscript:{"animationWithCAAnimation:", animation), objc_msgSend(v25, "name")}];
            }
          }
        }
      }

      ++v23;
    }
  }

  else
  {
    v22 = 0;
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v101 = [asset countByEnumeratingWithState:&v128 objects:v149 count:16];
  if (v101)
  {
    v102 = *v129;
    do
    {
      for (k = 0; k != v101; ++k)
      {
        if (*v129 != v102)
        {
          objc_enumerationMutation(asset);
        }
      }

      v101 = [asset countByEnumeratingWithState:&v128 objects:v149 count:16];
    }

    while (v101);
  }

  v104 = v140;
  if (v140 != v141)
  {
    do
    {
      v105 = v104[5];
      if (v105)
      {
      }

      v106 = v104[1];
      if (v106)
      {
        do
        {
          v107 = v106;
          v106 = *v106;
        }

        while (v106);
      }

      else
      {
        do
        {
          v107 = v104[2];
          v108 = *v107 == v104;
          v104 = v107;
        }

        while (!v108);
      }

      v104 = v107;
    }

    while (v107 != v141);
  }

  if (v22)
  {
  }

  [v8 _resetSceneTimeRange];
  [asset startTime];
  [v8 setStartTime:?];
  [asset endTime];
  [v8 setEndTime:?];
  v109 = v8;
  return v109;
}

- (SCNScene)init
{
  v8.receiver = self;
  v8.super_class = SCNScene;
  v2 = [(SCNScene *)&v8 init];
  if (v2)
  {
    v3 = C3DSceneCreate();
    *(v2 + 1) = v3;
    if (v3)
    {
      C3DEntitySetObjCWrapper(v3, v2);
    }

    [v2 _syncObjCModel];
    if (!*(v2 + 4))
    {
      sceneRef = [v2 sceneRef];
      v5 = sceneRef;
      if (sceneRef)
      {
        C3DSceneLock(sceneRef);
      }

      if (!*(v2 + 4))
      {
        v6 = *(v2 + 1);
        if (v6)
        {
          C3DSceneLock(v6);
          if (C3DSceneGetRootNode(*(v2 + 1)))
          {
            *(v2 + 4) = [SCNNode nodeWithNodeRef:?];
          }

          else
          {
            [v2 _setRootNode:{+[SCNNode node](SCNNode, "node")}];
          }

          C3DSceneUnlock(*(v2 + 1));
        }
      }

      if (v5)
      {
        C3DSceneUnlock(v5);
      }
    }
  }

  return v2;
}

- (SCNScene)initWithSceneRef:(__C3DScene *)ref
{
  v8.receiver = self;
  v8.super_class = SCNScene;
  v4 = [(SCNScene *)&v8 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    *(v4 + 1) = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    [v4 _syncObjCModel];
    if (!*(v4 + 4))
    {
      v6 = *(v4 + 1);
      if (v6)
      {
        C3DSceneLock(v6);
        if (C3DSceneGetRootNode(*(v4 + 1)))
        {
          *(v4 + 4) = [SCNNode nodeWithNodeRef:?];
        }

        else
        {
          [v4 _setRootNode:{+[SCNNode node](SCNNode, "node")}];
        }

        C3DSceneUnlock(*(v4 + 1));
      }
    }
  }

  return v4;
}

- (void)_syncObjCModel
{
  self->_fogStartDistance = C3DSceneGetFogStartDistance(self->_scene);
  self->_fogEndDistance = C3DSceneGetFogEndDistance(self->_scene);
  self->_fogDensityExponent = C3DSceneGetFogDensityExponent(self->_scene);
  self->_wantsScreenSpaceReflection = C3DSceneGetWantsSSR(self->_scene);
  self->_screenSpaceReflectionSampleCount = C3DSceneGetSSRSampleCount(self->_scene);
  self->_screenSpaceReflectionMaxRayDistance = C3DSceneGetSSRMaxRayDistance(self->_scene);
  self->_screenSpaceReflectionStride = C3DSceneGetSSRStride(self->_scene);
  FogColor = C3DSceneGetFogColor(self->_scene);

  self->_fogColor = [MEMORY[0x277D75348] scn_colorWithC3DColor:FogColor];
}

+ (SCNScene)scene
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (SCNScene)sceneNamed:(NSString *)name inDirectory:(NSString *)directory options:(NSDictionary *)options
{
  pathExtension = [(NSString *)name pathExtension];
  if (![(__CFString *)pathExtension length])
  {
    pathExtension = @"dae";
  }

  result = [SCNGetResourceBundle() URLForResource:-[NSString stringByDeletingPathExtension](name withExtension:"stringByDeletingPathExtension") subdirectory:{pathExtension, directory}];
  if (result)
  {

    return [self sceneWithURL:result options:options error:0];
  }

  return result;
}

+ (SCNScene)sceneWithURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error
{
  if (!url)
  {
    return 0;
  }

  v8 = [SCNSceneSource sceneSourceWithURL:[(NSURL *)url URLByResolvingSymlinksInPath] options:options];
  if (!v8)
  {
    return 0;
  }

  return [(SCNSceneSource *)v8 sceneWithClass:self options:options error:error];
}

+ (SCNScene)sceneWithURL:(id)l atIndex:(int64_t)index options:(id)options
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", index), @"kSceneSourceSceneIndexKey"}];

  return [self sceneWithURL:l options:v8 error:0];
}

+ (SCNScene)sceneWithData:(id)data atIndex:(int64_t)index options:(id)options
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", index), @"kSceneSourceSceneIndexKey"}];

  return [self sceneWithData:data options:v8];
}

+ (SCNScene)sceneWithData:(id)data options:(id)options
{
  result = [SCNSceneSource sceneSourceWithData:data options:?];
  if (result)
  {

    return [(SCNScene *)result sceneWithClass:self options:options error:0];
  }

  return result;
}

+ (SCNScene)sceneWithSceneRef:(__C3DScene *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithSceneRef:ref];

    return v6;
  }

  return result;
}

- (void)_clearSceneRef
{
  scene = self->_scene;
  if (scene)
  {
    C3DEntitySetObjCWrapper(scene, 0);
    v4 = self->_scene;
    if (v4)
    {
      CFRelease(v4);
    }

    self->_scene = 0;
  }
}

- (SCNVector3)upAxis
{
  scene = self->_scene;
  if (scene)
  {
    v6.n128_u32[2] = 0;
    v6.n128_u64[0] = 0;
    C3DSceneGetUpAxis(scene, &v6);
    v3 = v6.n128_f32[0];
    v5 = v6.n128_f32[2];
    v4 = v6.n128_f32[1];
  }

  else
  {
    v4 = 1.0;
    v5 = 0.0;
    v3 = 0.0;
  }

  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setUpAxis:(SCNVector3)axis
{
  scene = self->_scene;
  if (scene)
  {
    y = axis.y;
    v5.n128_u32[2] = LODWORD(axis.z);
    v5.n128_u64[0] = *&axis.x;
    C3DSceneSetUpAxis(scene, &v5);
  }
}

- (void)dealloc
{
  [(SCNPhysicsWorld *)self->_physicsWorld sceneWillDie];
  scene = self->_scene;
  if (scene)
  {
    C3DEntitySetObjCWrapper(scene, 0);
    v4 = self->_scene;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __19__SCNScene_dealloc__block_invoke;
    v7[3] = &__block_descriptor_40_e8_v16__0d8l;
    v7[4] = v4;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v7];
  }

  [(SCNMaterialProperty *)self->_background parentWillDie:self];
  [(SCNMaterialProperty *)self->_environment parentWillDie:self];

  for (i = 40; i != 72; i += 8)
  {
  }

  v6.receiver = self;
  v6.super_class = SCNScene;
  [(SCNScene *)&v6 dealloc];
}

- (void)_setSourceURL:(id)l
{
  sourceURL = self->_sourceURL;
  if (sourceURL != l)
  {

    self->_sourceURL = l;
  }
}

- (void)setSceneSource:(id)source
{
  sceneSource = self->_sceneSource;
  if (sceneSource != source)
  {

    self->_sceneSource = source;
  }
}

- (id)root
{
  if ((root_done & 1) == 0)
  {
    root_done = 1;
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SCNScene root];
    }
  }

  return [(SCNScene *)self rootNode];
}

- (void)_setRootNode:(id)node
{
  rootNode = self->_rootNode;
  if (rootNode != node)
  {

    self->_rootNode = node;
    self->_layerRootNode[0] = node;
    sceneRef = [(SCNScene *)self sceneRef];
    if (sceneRef)
    {
      v7 = sceneRef;
      C3DSceneLock(sceneRef);
      C3DSceneSetRootNode(self->_scene, [node nodeRef]);

      C3DSceneUnlock(v7);
    }

    else
    {
      scene = self->_scene;
      nodeRef = [node nodeRef];

      C3DSceneSetRootNode(scene, nodeRef);
    }
  }
}

- (void)setRootNode:(id)node forLayer:(int)layer
{
  layerRootNode = self->_layerRootNode;
  v5 = self->_layerRootNode[layer];
  if (v5 != node)
  {
    if (layer)
    {

      layerRootNode[layer] = node;
      sceneRef = [(SCNScene *)self sceneRef];
      if (sceneRef)
      {
        v10 = sceneRef;
        C3DSceneLock(sceneRef);
        C3DSceneSetLayerRootNode(self->_scene, layer, [node nodeRef]);

        C3DSceneUnlock(v10);
      }

      else
      {
        scene = self->_scene;
        nodeRef = [node nodeRef];

        C3DSceneSetLayerRootNode(scene, layer, nodeRef);
      }
    }

    else
    {

      [(SCNScene *)self _setRootNode:?];
    }
  }
}

- (void)_scaleSceneBy:(double)by
{
  sceneRef = [(SCNScene *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__SCNScene__scaleSceneBy___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = by;
  [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v6];
}

void __26__SCNScene__scaleSceneBy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneRef];
  v3 = *(a1 + 40);

  C3DApplyScaleFactorOnScene(v2, v3);
}

+ (BOOL)canImportFileUTI:(id)i
{
  if ([i isEqualToString:@"org.khronos.collada.digital-asset-exchange"])
  {
    return 1;
  }

  return [i hasPrefix:@"com.apple.scenekit"];
}

+ (BOOL)canImportFileExtension:(id)extension
{
  lowercaseString = [extension lowercaseString];
  if ([lowercaseString isEqualToString:@"dae"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"c3d") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"scn") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"scnz"))
  {
    return 1;
  }

  v5 = MEMORY[0x277CD7AD0];

  return [v5 canImportFileExtension:lowercaseString];
}

+ (id)supportedFileUTIsForImport
{
  array = [MEMORY[0x277CBEB18] array];
  [array addObjectsFromArray:&unk_282E0FBA0];
  return array;
}

+ (id)supportedFileUTIsForExport
{
  array = [MEMORY[0x277CBEB18] array];
  [array addObjectsFromArray:&unk_282E0FBB8];
  return array;
}

- (id)_physicsWorldCreateIfNeeded:(BOOL)needed
{
  result = self->_physicsWorld;
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    result = [[SCNPhysicsWorld alloc] initWithScene:self];
    self->_physicsWorld = result;
  }

  return result;
}

- (void)_resetSceneTimeRange
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  rootNode = [(SCNScene *)self rootNode];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SCNScene__resetSceneTimeRange__block_invoke;
  v4[3] = &unk_2782FF050;
  v4[4] = &v9;
  v4[5] = &v5;
  [(SCNNode *)rootNode enumerateHierarchyUsingBlock:v4];
  [(SCNScene *)self setStartTime:v10[3]];
  [(SCNScene *)self setEndTime:v6[3]];
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
}

uint64_t __32__SCNScene__resetSceneTimeRange__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [a2 animationKeys];
  result = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [a2 animationPlayerForKey:*(*(&v17 + 1) + 8 * v8)];
        if ([objc_msgSend(v9 "animation")])
        {
          [objc_msgSend(v9 "animation")];
          v11 = v10;
          [objc_msgSend(v9 "animation")];
          v13 = v11 + v12;
          v14 = *(*(a1 + 32) + 8);
          v15 = *(v14 + 24);
          if (v11 < v15)
          {
            v15 = v11;
          }

          *(v14 + 24) = v15;
          v16 = *(*(a1 + 40) + 8);
          if (v13 < *(v16 + 24))
          {
            v13 = *(v16 + 24);
          }

          *(v16 + 24) = v13;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (double)startTime
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {
    v4 = sceneRef;
    C3DSceneLock(sceneRef);
    StartTime = C3DSceneGetStartTime(self->_scene);
    C3DSceneUnlock(v4);
    return StartTime;
  }

  else
  {
    scene = self->_scene;

    return C3DSceneGetStartTime(scene);
  }
}

- (void)setStartTime:(double)time
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {
    v6 = sceneRef;
    C3DSceneLock(sceneRef);
    C3DSceneSetStartTime(self->_scene, time);

    C3DSceneUnlock(v6);
  }

  else
  {
    scene = self->_scene;

    C3DSceneSetStartTime(scene, time);
  }
}

- (double)endTime
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {
    v4 = sceneRef;
    C3DSceneLock(sceneRef);
    EndTime = C3DSceneGetEndTime(self->_scene);
    C3DSceneUnlock(v4);
    return EndTime;
  }

  else
  {
    scene = self->_scene;

    return C3DSceneGetEndTime(scene);
  }
}

- (void)setEndTime:(double)time
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {
    v6 = sceneRef;
    C3DSceneLock(sceneRef);
    C3DSceneSetEndTime(self->_scene, time);

    C3DSceneUnlock(v6);
  }

  else
  {
    scene = self->_scene;

    C3DSceneSetEndTime(scene, time);
  }
}

- (double)frameRate
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {
    v4 = sceneRef;
    C3DSceneLock(sceneRef);
    FrameRate = C3DSceneGetFrameRate(self->_scene);
    C3DSceneUnlock(v4);
  }

  else
  {
    return C3DSceneGetFrameRate(self->_scene);
  }

  return FrameRate;
}

- (void)setFrameRate:(double)rate
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {
    v6 = sceneRef;
    C3DSceneLock(sceneRef);
    rateCopy = rate;
    C3DSceneSetFrameRate(self->_scene, rateCopy);

    C3DSceneUnlock(v6);
  }

  else
  {
    scene = self->_scene;

    rateCopy2 = rate;
    C3DSceneSetFrameRate(scene, rateCopy2);
  }
}

- (float)playbackSpeed
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {
    v4 = sceneRef;
    C3DSceneLock(sceneRef);
    PlaybackSpeed = C3DSceneGetPlaybackSpeed(self->_scene);
    C3DSceneUnlock(v4);
    return PlaybackSpeed;
  }

  else
  {
    scene = self->_scene;

    return C3DSceneGetPlaybackSpeed(scene);
  }
}

- (void)setPlaybackSpeed:(float)speed
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {
    v6 = sceneRef;
    C3DSceneLock(sceneRef);
    C3DSceneSetPlaybackSpeed(self->_scene, speed);

    C3DSceneUnlock(v6);
  }

  else
  {
    scene = self->_scene;

    C3DSceneSetPlaybackSpeed(scene, speed);
  }
}

- (void)setAttribute:(id)attribute forKey:(NSString *)key
{
  if ([(NSString *)key isEqualToString:@"kSceneStartTimeAttributeKey"])
  {
    [attribute doubleValue];

    [(SCNScene *)self setStartTime:?];
  }

  else if ([(NSString *)key isEqualToString:@"kSceneEndTimeAttributeKey"])
  {
    [attribute doubleValue];

    [(SCNScene *)self setEndTime:?];
  }

  else if ([(NSString *)key isEqualToString:@"kSceneFrameRateAttributeKey"])
  {
    [(SCNScene *)self frameRate];
    v8 = v7;
    [attribute doubleValue];
    [(SCNScene *)self setFrameRate:?];
    if (v8 != 0.0)
    {
      [(SCNScene *)self playbackSpeed];
      v10 = v9;
      [attribute doubleValue];
      v12 = v11 * v10 / v8;
      *&v12 = v12;

      [(SCNScene *)self setPlaybackSpeed:v12];
    }
  }

  else if ([(NSString *)key isEqualToString:@"kSceneUpAxisAttributeKey"])
  {
    [attribute SCNVector3Value];

    [(SCNScene *)self setUpAxis:?];
  }

  else
  {
    userAttributes = self->_userAttributes;
    if (attribute && !userAttributes)
    {
      userAttributes = [MEMORY[0x277CBEB38] dictionary];
      self->_userAttributes = userAttributes;
    }

    [(NSMutableDictionary *)userAttributes setValue:attribute forKey:key];
    if (![(NSMutableDictionary *)self->_userAttributes count])
    {

      self->_userAttributes = 0;
    }
  }
}

- (id)attributeForKey:(NSString *)key
{
  if ([(NSString *)key isEqualToString:@"kSceneStartTimeAttributeKey"])
  {
    v5 = MEMORY[0x277CCABB0];
    [(SCNScene *)self startTime];
LABEL_7:

    return [v5 numberWithDouble:?];
  }

  if ([(NSString *)key isEqualToString:@"kSceneEndTimeAttributeKey"])
  {
    v5 = MEMORY[0x277CCABB0];
    [(SCNScene *)self endTime];
    goto LABEL_7;
  }

  if ([(NSString *)key isEqualToString:@"kSceneFrameRateAttributeKey"])
  {
    v5 = MEMORY[0x277CCABB0];
    [(SCNScene *)self frameRate];
    goto LABEL_7;
  }

  if ([(NSString *)key isEqualToString:@"kSceneUpAxisAttributeKey"])
  {
    v7 = MEMORY[0x277CCAE60];
    [(SCNScene *)self upAxis];

    return [v7 valueWithSCNVector3:?];
  }

  else
  {
    userAttributes = self->_userAttributes;

    return [(NSMutableDictionary *)userAttributes objectForKey:key];
  }
}

- (SCNMaterialProperty)background
{
  result = self->_background;
  if (!result)
  {
    result = [[SCNMaterialProperty alloc] initWithParent:self propertyType:24];
    self->_background = result;
  }

  return result;
}

- (SCNMaterialProperty)lightingEnvironment
{
  result = self->_environment;
  if (!result)
  {
    result = [[SCNMaterialProperty alloc] initWithParent:self propertyType:25];
    self->_environment = result;
  }

  return result;
}

- (void)set_allowsDefaultLightingEnvironmentFallback:(BOOL)fallback
{
  if (self->_allowsDefaultLightingEnvironmentFallback != fallback)
  {
    v10 = v3;
    v11 = v4;
    self->_allowsDefaultLightingEnvironmentFallback = fallback;
    sceneRef = [(SCNScene *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SCNScene_set_allowsDefaultLightingEnvironmentFallback___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    fallbackCopy = fallback;
    [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v8];
  }
}

- (void)setFogColor:(id)fogColor
{
  if (self->_fogColor != fogColor && ([fogColor isEqual:?] & 1) == 0)
  {

    self->_fogColor = fogColor;
    sceneRef = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __24__SCNScene_setFogColor___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = fogColor;
    v6[5] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fogColor" applyBlock:v6];
  }
}

double __24__SCNScene_setFogColor___block_invoke(uint64_t a1)
{
  v4.n128_u64[0] = C3DColor4FromRGBCFColor(*(a1 + 32), 0);
  v4.n128_u64[1] = v2;
  *&result = C3DSceneSetFogColor(*(*(a1 + 40) + 8), &v4).n128_u64[0];
  return result;
}

- (void)setFogEndDistance:(CGFloat)fogEndDistance
{
  if (fogEndDistance >= 1.0e-35)
  {
    v3 = fogEndDistance;
  }

  else
  {
    v3 = 0.0;
  }

  if (v3 != self->_fogEndDistance)
  {
    self->_fogEndDistance = v3;
    sceneRef = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__SCNScene_setFogEndDistance___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = v3;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fogEndDistance" applyBlock:v6];
  }
}

float __30__SCNScene_setFogEndDistance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DSceneSetFogEndDistance(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setFogDensityExponent:(CGFloat)fogDensityExponent
{
  if (self->_fogDensityExponent != fogDensityExponent)
  {
    self->_fogDensityExponent = fogDensityExponent;
    sceneRef = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__SCNScene_setFogDensityExponent___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = fogDensityExponent;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fogDensityExponent" applyBlock:v6];
  }
}

float __34__SCNScene_setFogDensityExponent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DSceneSetFogDensityExponent(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setFogStartDistance:(CGFloat)fogStartDistance
{
  if (self->_fogStartDistance != fogStartDistance)
  {
    self->_fogStartDistance = fogStartDistance;
    sceneRef = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__SCNScene_setFogStartDistance___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = fogStartDistance;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fogStartDistance" applyBlock:v6];
  }
}

float __32__SCNScene_setFogStartDistance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DSceneSetFogStartDistance(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setWantsScreenSpaceReflection:(BOOL)wantsScreenSpaceReflection
{
  if (self->_wantsScreenSpaceReflection != wantsScreenSpaceReflection)
  {
    v10 = v3;
    v11 = v4;
    self->_wantsScreenSpaceReflection = wantsScreenSpaceReflection;
    sceneRef = [(SCNScene *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SCNScene_setWantsScreenSpaceReflection___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = wantsScreenSpaceReflection;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

- (void)setScreenSpaceReflectionSampleCount:(NSInteger)screenSpaceReflectionSampleCount
{
  if (self->_screenSpaceReflectionSampleCount != screenSpaceReflectionSampleCount)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_screenSpaceReflectionSampleCount = screenSpaceReflectionSampleCount;
    sceneRef = [(SCNScene *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__SCNScene_setScreenSpaceReflectionSampleCount___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = screenSpaceReflectionSampleCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

- (void)setScreenSpaceReflectionMaximumDistance:(CGFloat)screenSpaceReflectionMaximumDistance
{
  if (self->_screenSpaceReflectionMaxRayDistance != screenSpaceReflectionMaximumDistance)
  {
    self->_screenSpaceReflectionMaxRayDistance = screenSpaceReflectionMaximumDistance;
    sceneRef = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__SCNScene_setScreenSpaceReflectionMaximumDistance___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = screenSpaceReflectionMaximumDistance;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
  }
}

float __52__SCNScene_setScreenSpaceReflectionMaximumDistance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DSceneSetSSRMaxRayDistance(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setScreenSpaceReflectionStride:(CGFloat)screenSpaceReflectionStride
{
  if (self->_screenSpaceReflectionStride != screenSpaceReflectionStride)
  {
    self->_screenSpaceReflectionStride = screenSpaceReflectionStride;
    sceneRef = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SCNScene_setScreenSpaceReflectionStride___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = screenSpaceReflectionStride;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
  }
}

float __43__SCNScene_setScreenSpaceReflectionStride___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DSceneSetSSRStride(*(*(a1 + 32) + 8), v1);
  return result;
}

- (BOOL)writeToURL:(NSURL *)url options:(NSDictionary *)options delegate:(id)delegate progressHandler:(SCNSceneExportProgressHandler)progressHandler
{
  if (options)
  {
    dictionary = [(NSDictionary *)options mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = dictionary;
  v12 = [dictionary valueForKey:@"kSceneSourceFormat"];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    goto LABEL_16;
  }

  lowercaseString = [(NSString *)[(NSURL *)url pathExtension] lowercaseString];
  if ([(NSString *)lowercaseString isEqualToString:@"dae"])
  {
    v14 = 0;
    v16 = SCNSceneSourceFormatCOLLADA;
  }

  else if ([(NSString *)lowercaseString isEqualToString:@"scn"])
  {
    v14 = 0;
    v16 = SCNSceneSourceFormatSCN;
  }

  else if ([(NSString *)lowercaseString isEqualToString:@"c3d"])
  {
    v14 = 0;
    v16 = SCNSceneSourceFormatC3D;
  }

  else
  {
    if (![(NSString *)lowercaseString isEqualToString:@"scnz"])
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_16;
    }

    v16 = SCNSceneSourceFormatSCN;
    v14 = 1;
  }

  v13 = *v16;
  if (*v16)
  {
    [v11 setValue:*v16 forKey:@"kSceneSourceFormat"];
  }

LABEL_16:
  v39 = 0;
  if ([v13 isEqualToString:@"scn"])
  {
    v17 = [objc_msgSend(v11 objectForKeyedSubscript:{@"SCNSceneExportPresentationTree", "BOOLValue"}];
    if (v17)
    {
      +[SCNTransaction lock];
      sceneRef = [(SCNScene *)self sceneRef];
      v19 = sceneRef;
      if (sceneRef)
      {
        C3DSceneLock(sceneRef);
      }
    }

    else
    {
      v19 = 0;
    }

    v25 = [SCNKeyedArchiver archivedDataWithRootObject:self options:v11];
    v26 = v17 ^ 1;
    if (!v19)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      C3DSceneUnlock(v19);
      +[SCNTransaction unlock];
    }

    if (v14)
    {
      v25 = [v25 scn_compressedDataUsingCompressionAlgorithm:517];
    }

    v38 = 0;
    v27 = [v25 writeToURL:url options:1 error:&v38];
    goto LABEL_38;
  }

  if (([v13 isEqualToString:@"c3d"] & 1) == 0 && !objc_msgSend(v13, "isEqualToString:", @"dae"))
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v34 = __56__SCNScene_writeToURL_options_delegate_progressHandler___block_invoke;
    v35 = &unk_2782FF078;
    v36 = v13;
    v37 = url;
    if (v13)
    {
      if (([v13 isEqualToString:@"usd"] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"usda") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"usdc") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"usdz") & 1) == 0)
      {
LABEL_53:
        if (C3DWasLinkedBeforeMajorOSYear2015() && !NSClassFromString(&cfstr_Mdlasset.isa))
        {
          return 0;
        }

        v38 = 0;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __56__SCNScene_writeToURL_options_delegate_progressHandler___block_invoke_3;
        v31[3] = &unk_2782FF0A0;
        v31[4] = self;
        v27 = v34(v33, &v38, v31);
        goto LABEL_38;
      }
    }

    else
    {
      lowercaseString2 = [(NSString *)[(NSURL *)url pathExtension] lowercaseString];
      if (![(NSString *)lowercaseString2 isEqualToString:@"usd"]&& ![(NSString *)lowercaseString2 isEqualToString:@"usda"]&& ![(NSString *)lowercaseString2 isEqualToString:@"usdc"]&& ![(NSString *)lowercaseString2 isEqualToString:@"usdz"])
      {
        goto LABEL_53;
      }
    }

    v38 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56__SCNScene_writeToURL_options_delegate_progressHandler___block_invoke_2;
    v32[3] = &unk_2782FF0A0;
    v32[4] = self;
    v27 = v34(v33, &v38, v32);
LABEL_38:
    v23 = v27;
    if (progressHandler)
    {
      v28.n128_u32[0] = 1.0;
      (*(progressHandler + 2))(progressHandler, v38, &v39, v28);
    }

    return v23;
  }

  +[SCNTransaction flush];
  v20 = [v11 valueForKey:@"SCNSceneSourceInputSource"];
  if (v20)
  {
    [v11 setValue:objc_msgSend(v20 forKey:{"library"), @"kSceneSourceInputLibrary"}];
    [v11 removeObjectForKey:@"SCNSceneSourceInputSource"];
  }

  sceneRef2 = [(SCNScene *)self sceneRef];
  v22 = sceneRef2;
  if (sceneRef2)
  {
    C3DSceneLock(sceneRef2);
  }

  v23 = C3DIOWriteSceneToURL(url, [(SCNScene *)self sceneRef], v11, delegate, progressHandler);
  if (v22)
  {
    C3DSceneUnlock(v22);
  }

  if (progressHandler)
  {
    v24.n128_u32[0] = 1.0;
    (*(progressHandler + 2))(progressHandler, 0, &v39, v24);
  }

  return v23;
}

uint64_t __56__SCNScene_writeToURL_options_delegate_progressHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) && ![*(a1 + 32) isEqualToString:{objc_msgSend(objc_msgSend(*(a1 + 40), "pathExtension"), "lowercaseString")}])
  {
    v9 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v9 && (v10 = [v9 URLByAppendingPathComponent:{objc_msgSend(objc_msgSend(*(a1 + 40), "lastPathComponent"), "stringByAppendingPathExtension:", *(a1 + 32))}], (*(a3 + 16))(a3, v10, a2)))
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = *(a1 + 40);

      return [v11 moveItemAtURL:v10 toURL:v12 error:a2];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a3 + 16);

    return v7(a3, v6, a2);
  }
}

uint64_t __56__SCNScene_writeToURL_options_delegate_progressHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CD7AD0] assetWithSCNScene:{objc_msgSend(*(a1 + 32), "scene")}];

  return [v5 exportAssetToURL:a2 error:a3];
}

- (void)_dumpToDisk
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v4 = 0;
  do
  {
    v5 = [v3 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"sceneDump%d.scn", v4)}];
    v4 = (v4 + 1);
  }

  while (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0);
  NSLog(&cfstr_DumpingSceneTo.isa, v5);
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  [(SCNScene *)self writeToURL:v6 options:0 delegate:0 progressHandler:0];
}

- (void)lock
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {

    C3DSceneLock(sceneRef);
  }
}

- (void)unlock
{
  sceneRef = [(SCNScene *)self sceneRef];
  if (sceneRef)
  {

    C3DSceneUnlock(sceneRef);
  }
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  v17 = 0;
  v18 = 0;
  SCNKitSplitKVCPath(path, &v18, &v17);
  if ([v18 isEqual:@"root"])
  {
    if (!self->_rootNode)
    {
      sceneRef = [(SCNScene *)self sceneRef];
      v8 = sceneRef;
      if (sceneRef)
      {
        C3DSceneLock(sceneRef);
      }

      if (!self->_rootNode)
      {
        scene = self->_scene;
        if (scene)
        {
          C3DSceneLock(scene);
          if (C3DSceneGetRootNode(self->_scene))
          {
            self->_rootNode = [SCNNode nodeWithNodeRef:?];
          }

          else
          {
            [(SCNScene *)self _setRootNode:+[SCNNode node]];
          }

          C3DSceneUnlock(self->_scene);
        }
      }

      if (v8)
      {
        C3DSceneUnlock(v8);
      }
    }

    result = self->_rootNode;
    goto LABEL_27;
  }

  if ([path hasPrefix:@"/"])
  {
    if (!self->_rootNode)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  v10 = [path hasPrefix:@"children["];
  rootNode = self->_rootNode;
  if (v10)
  {
    if (!rootNode)
    {
LABEL_14:
      sceneRef2 = [(SCNScene *)self sceneRef];
      v13 = sceneRef2;
      if (sceneRef2)
      {
        C3DSceneLock(sceneRef2);
      }

      if (!self->_rootNode)
      {
        v14 = self->_scene;
        if (v14)
        {
          C3DSceneLock(v14);
          if (C3DSceneGetRootNode(self->_scene))
          {
            self->_rootNode = [SCNNode nodeWithNodeRef:?];
          }

          else
          {
            [(SCNScene *)self _setRootNode:+[SCNNode node]];
          }

          C3DSceneUnlock(self->_scene);
        }
      }

      if (v13)
      {
        C3DSceneUnlock(v13);
      }
    }

LABEL_32:
    result = self->_rootNode;
    pathCopy = path;
    return [result copyAnimationChannelForKeyPath:pathCopy animation:animation];
  }

  result = [(SCNNode *)rootNode childNodeWithName:v18 recursively:1];
  if (result)
  {
LABEL_27:
    pathCopy = v17;
    return [result copyAnimationChannelForKeyPath:pathCopy animation:animation];
  }

  return result;
}

- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property
{
  if (self->_background == property)
  {
    v6 = kC3DModelPathBackgroundMap;
  }

  else
  {
    if (self->_environment != property)
    {
      return 0;
    }

    v6 = kC3DModelPathLightingEnvironmentMap;
  }

  path = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *v6, path];

  return SCNCreateAnimationChannelWithObjectAndPath(self, path);
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key hasPrefix:@"/"])
  {
    if (!self->_rootNode)
    {
      sceneRef = [(SCNScene *)self sceneRef];
      v6 = sceneRef;
      if (sceneRef)
      {
        C3DSceneLock(sceneRef);
      }

      if (!self->_rootNode)
      {
        scene = self->_scene;
        if (scene)
        {
          C3DSceneLock(scene);
          if (C3DSceneGetRootNode(self->_scene))
          {
            self->_rootNode = [SCNNode nodeWithNodeRef:?];
          }

          else
          {
            [(SCNScene *)self _setRootNode:+[SCNNode node]];
          }

          C3DSceneUnlock(self->_scene);
        }
      }

      if (v6)
      {
        C3DSceneUnlock(v6);
      }
    }

    rootNode = self->_rootNode;

    return [(SCNNode *)rootNode valueForKey:key];
  }

  else
  {
    result = [(SCNScene *)self attributeForKey:key];
    if (!result)
    {
      v9 = self->_rootNode;

      return [(SCNNode *)v9 childNodeWithName:key recursively:1];
    }
  }

  return result;
}

- (void)addSceneAnimation:(id)animation forKey:(id)key target:(id)target
{
  v7 = [animation copy];
  [v7 setUsesSceneTimeBase:1];

  [target addAnimation:v7 forKey:key];
}

- (void)addParticleSystem:(SCNParticleSystem *)system withTransform:(SCNMatrix4 *)transform
{
  if (system)
  {
    sceneRef = [(SCNScene *)self sceneRef];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__SCNScene_addParticleSystem_withTransform___block_invoke;
    v11[3] = &unk_2782FF0C8;
    v8 = *&transform->m21;
    v12 = *&transform->m11;
    v13 = v8;
    v9 = *&transform->m41;
    v14 = *&transform->m31;
    v15 = v9;
    v11[4] = self;
    v11[5] = system;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v11];
  }

  else
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNScene addParticleSystem:withTransform:];
    }
  }
}

double __44__SCNScene_addParticleSystem_withTransform___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  if (v2)
  {
    ParticleManager = C3DSceneGetParticleManager(v2, 1);
    memset(v6, 0, sizeof(v6));
    v5 = [*(a1 + 40) __CFObject];
    return C3DParticleManagerAddSystem(ParticleManager, 0, v5, v6);
  }

  return result;
}

- (void)removeParticleSystem:(SCNParticleSystem *)system
{
  if (system)
  {
    sceneRef = [(SCNScene *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SCNScene_removeParticleSystem___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = self;
    v7[5] = system;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNScene addParticleSystem:withTransform:];
    }
  }
}

void __33__SCNScene_removeParticleSystem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  if (v2)
  {
    ParticleManager = C3DSceneGetParticleManager(v2, 0);
    if (ParticleManager)
    {
      v4 = ParticleManager;
      v5 = [*(a1 + 40) __CFObject];

      C3DParticleManagerRemoveAllInstanceOfSystem(v4, v5);
    }
  }
}

- (void)removeAllParticleSystems
{
  sceneRef = [(SCNScene *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__SCNScene_removeAllParticleSystems__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

void __36__SCNScene_removeAllParticleSystems__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];
  if (v1)
  {
    ParticleManager = C3DSceneGetParticleManager(v1, 0);
    if (ParticleManager)
    {

      C3DParticleManagerRemoveAllSystems(ParticleManager);
    }
  }
}

- (NSArray)particleSystems
{
  v19 = *MEMORY[0x277D85DE8];
  sceneRef = [(SCNScene *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  __CFObject = [(SCNScene *)self __CFObject];
  if (__CFObject && (ParticleManager = C3DSceneGetParticleManager(__CFObject, 0)) != 0)
  {
    ParticleSystemsForNode = C3DParticleManagerGetParticleSystemsForNode(ParticleManager, 0);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[__CFArray count](ParticleSystemsForNode, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(__CFArray *)ParticleSystemsForNode countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(ParticleSystemsForNode);
          }

          [(NSArray *)v8 addObject:[SCNParticleSystem particleSystemWithParticleSystemRef:*(*(&v14 + 1) + 8 * i)]];
        }

        v10 = [(__CFArray *)ParticleSystemsForNode countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return v8;
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    v15 = v6;
    v16 = v5;
    v17 = v3;
    v18 = v4;
    v7 = paused;
    self->_paused = paused;
    sceneRef = [(SCNScene *)self sceneRef];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __22__SCNScene_setPaused___block_invoke;
    v13[3] = &unk_2782FB7F8;
    v13[4] = self;
    v14 = v7;
    [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v13];
    [(SCNNode *)[(SCNScene *)self rootNode] setPaused:v7];
    __CFObject = [(SCNScene *)self __CFObject];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __22__SCNScene_setPaused___block_invoke_2;
    v11[3] = &__block_descriptor_41_e8_v16__0d8l;
    v11[4] = __CFObject;
    v12 = v7;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v11];
    +[SCNTransaction flush];
  }
}

uint64_t __22__SCNScene_setPaused___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneRef];
  v3 = *(a1 + 40);

  return C3DSceneSetPaused(v2, v3);
}

- (void)setPausedForEditing:(BOOL)editing
{
  if (self->_pausedForEditing != editing)
  {
    self->_pausedForEditing = editing;
    C3DSceneSetPausedForEditing(self->_scene);
  }
}

- (id)_nodeWithIndexPath:(id)path
{
  rootNode = [(SCNScene *)self rootNode];
  v5 = [path length];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [path indexAtPosition:v7];
      if ([(NSArray *)[(SCNNode *)rootNode childNodes] count]<= v8)
      {
        break;
      }

      ++v7;
      rootNode = [(NSArray *)[(SCNNode *)rootNode childNodes] objectAtIndexedSubscript:v8];
      if (v6 == v7)
      {
        return rootNode;
      }
    }

    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNScene _nodeWithIndexPath:];
    }

    return 0;
  }

  return rootNode;
}

+ (id)_indexPathForNode:(id)node
{
  if (!node)
  {
    return 0;
  }

  nodeCopy = node;
  v4 = -1;
  v5 = -8;
  nodeCopy2 = node;
  do
  {
    nodeCopy2 = [nodeCopy2 parentNode];
    ++v4;
    v5 += 8;
  }

  while (nodeCopy2);
  if (v4)
  {
    v7 = malloc_type_malloc(v5, 0x100004000313F17uLL);
    parentNode = [nodeCopy parentNode];
    if (!parentNode)
    {
      goto LABEL_9;
    }

    v9 = v4 + 1;
    do
    {
      v10 = parentNode;
      v7[v9 - 2] = [parentNode indexOfChildNode:nodeCopy];
      parentNode = [v10 parentNode];
      --v9;
      nodeCopy = v10;
    }

    while (parentNode);
    if (v9 != 1)
    {
LABEL_9:
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [SCNScene _indexPathForNode:v11];
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CCAA70]) initWithIndexes:v7 length:v4];
    free(v7);
    return v12;
  }

  else
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SCNScene _indexPathForNode:];
    }

    return 0;
  }
}

- (id)_subnodeFromIndexPath:(id)path
{
  if (path)
  {
    return [self _nodeWithIndexPath:?];
  }

  return self;
}

- (id)initForJavascript:(id)javascript
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SCNScene;
  v4 = [(SCNScene *)&v11 init];
  if (!v4)
  {
    return v4;
  }

  if (javascript)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      javascriptCopy = [MEMORY[0x277CBEBC0] URLWithString:javascript];
      if (![javascriptCopy scheme])
      {
        javascriptCopy = [MEMORY[0x277CBEBC0] fileURLWithPath:javascript];
      }
    }

    else
    {
      javascriptCopy = javascript;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[SCNSceneSource alloc] initWithURL:javascriptCopy options:0];
      v7 = [(SCNSceneSource *)v6 _createSceneRefWithOptions:0 statusHandler:0];

      if (v7)
      {
        v4->_scene = v7;
        p_scene = &v4->_scene;
LABEL_13:
        C3DEntitySetObjCWrapper(v7, v4);
        goto LABEL_14;
      }

      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = javascriptCopy;
        _os_log_impl(&dword_21BEF7000, v9, OS_LOG_TYPE_DEFAULT, "Warning: failed to load scene at %@", buf, 0xCu);
      }
    }
  }

  v7 = C3DSceneCreate();
  v4->_scene = v7;
  p_scene = &v4->_scene;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (!v4->_rootNode && *p_scene)
  {
    C3DSceneLock(*p_scene);
    if (C3DSceneGetRootNode(*p_scene))
    {
      v4->_rootNode = [SCNNode nodeWithNodeRef:?];
    }

    else
    {
      [(SCNScene *)v4 _setRootNode:+[SCNNode node]];
    }

    C3DSceneUnlock(*p_scene);
  }

  return v4;
}

- (void)_customEncodingOfSCNScene:(id)scene
{
  [(SCNScene *)self endTime];
  [scene encodeDouble:@"endTime" forKey:?];
  [(SCNScene *)self startTime];
  [scene encodeDouble:@"startTime" forKey:?];
  [(SCNScene *)self frameRate];
  [scene encodeDouble:@"frameRate" forKey:?];
  [(SCNScene *)self upAxis];

  SCNEncodeVector3(scene, @"upAxis", v5, v6, v7);
}

- (void)_customDecodingOfSCNScene:(id)scene
{
  [scene decodeDoubleForKey:@"endTime"];
  [(SCNScene *)self setEndTime:?];
  [scene decodeDoubleForKey:@"startTime"];
  [(SCNScene *)self setStartTime:?];
  [scene decodeDoubleForKey:@"frameRate"];
  [(SCNScene *)self setFrameRate:?];
  v5.n128_f32[0] = SCNDecodeVector3(scene, @"upAxis");
  v5.n128_u32[1] = v6;
  v5.n128_u32[2] = v7;
  v8 = v5;
  C3DSceneSetUpAxis(self->_scene, &v8);
}

- (void)_didDecodeSCNScene:(id)scene
{
  if ((C3DMetalIsSupported() & 1) == 0)
  {
    RootNode = C3DSceneGetRootNode([(SCNScene *)self sceneRef]);

    C3DSplitMeshesIfNeededInNodeTree(RootNode, 0xFFFFLL);
  }
}

- (void)_prettifyForPreview
{
  v31 = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  rootNode = [(SCNScene *)self rootNode];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __31__SCNScene__prettifyForPreview__block_invoke;
  v19[3] = &unk_2782FF110;
  v19[4] = array;
  v19[5] = &v20;
  v19[6] = v28;
  v19[7] = v26;
  v19[8] = v24;
  [(SCNNode *)rootNode enumerateHierarchyUsingBlock:v19];
  if ((v21[3] & 1) == 0)
  {
    [(SCNNode *)[(SCNScene *)self rootNode] enumerateHierarchyUsingBlock:&__block_literal_global_72];
  }

  if (![(SCNMaterialProperty *)[(SCNScene *)self lightingEnvironment] contents])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [array countByEnumeratingWithState:&v15 objects:v30 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(array);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(v8 "light")])
          {
            [objc_msgSend(v8 "light")];
            v10 = v9;
            light = [v8 light];
            v12 = v10 * 0.05;
          }

          else
          {
            [objc_msgSend(v8 "light")];
            v14 = v13;
            light = [v8 light];
            v12 = v14 * 0.5;
          }

          [light setIntensity:v12];
        }

        v5 = [array countByEnumeratingWithState:&v15 objects:v30 count:16];
      }

      while (v5);
    }

    [(SCNScene *)self set_allowsDefaultLightingEnvironmentFallback:1];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
}

uint64_t __31__SCNScene__prettifyForPreview__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [objc_msgSend(a2 geometry];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([objc_msgSend(*(*(&v10 + 1) + 8 * v8) "lightingModelName")])
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && [a2 camera])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  result = [a2 light];
  if (result)
  {
    [*(a1 + 32) addObject:a2];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    result = [objc_msgSend(objc_msgSend(a2 "light")];
    if (result)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t __31__SCNScene__prettifyForPreview__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [objc_msgSend(a2 geometry];
  result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if ([objc_msgSend(v7 "reflective")])
        {
          [objc_msgSend(v7 "reflective")];
          objc_opt_class();
          v8 = objc_opt_isKindOfClass() ^ 1;
        }

        else
        {
          v8 = 0;
        }

        if (([objc_msgSend(v7 "lightingModelName")] & 1) == 0 && (v8 & 1) == 0)
        {
          [v7 setLightingModelName:@"SCNLightingModelPhysicallyBased"];
          [objc_msgSend(v7 "metalness")];
          [objc_msgSend(v7 "specular")];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = COERCE_FLOAT([objc_msgSend(objc_msgSend(v7 "specular")]);
            [objc_msgSend(v7 "roughness")];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  [(SCNScene *)self _customEncodingOfSCNScene:?];
  physicsWorld = self->_physicsWorld;
  if (physicsWorld && ![(SCNPhysicsWorld *)physicsWorld _isDefault])
  {
    [coder encodeObject:self->_physicsWorld forKey:@"physicsWorld"];
  }

  rootNode = self->_rootNode;
  if (rootNode)
  {
    [coder encodeObject:rootNode forKey:@"rootNode"];
  }

  background = self->_background;
  if (background)
  {
    [coder encodeObject:background forKey:@"background"];
  }

  environment = self->_environment;
  if (environment)
  {
    [coder encodeObject:environment forKey:@"environment"];
  }

  userAttributes = self->_userAttributes;
  if (userAttributes)
  {
    [coder encodeObject:userAttributes forKey:@"userAttributes"];
  }

  [coder encodeDouble:@"fogStartDistance" forKey:self->_fogStartDistance];
  [coder encodeDouble:@"fogEndDistance" forKey:self->_fogEndDistance];
  [coder encodeDouble:@"fogDensityExponent" forKey:self->_fogDensityExponent];
  fogColor = self->_fogColor;
  if (fogColor)
  {
    SCNEncodeUnsafeObjectForKey(coder, fogColor, @"fogColor");
  }

  [coder encodeBool:self->_wantsScreenSpaceReflection forKey:@"wantsScreenSpaceReflection"];
  [coder encodeInt:LODWORD(self->_screenSpaceReflectionSampleCount) forKey:@"screenSpaceReflectionSampleCount"];
  screenSpaceReflectionMaxRayDistance = self->_screenSpaceReflectionMaxRayDistance;
  *&screenSpaceReflectionMaxRayDistance = screenSpaceReflectionMaxRayDistance;
  [coder encodeFloat:@"screenSpaceReflectionMaximumDistance" forKey:screenSpaceReflectionMaxRayDistance];
  screenSpaceReflectionStride = self->_screenSpaceReflectionStride;
  *&screenSpaceReflectionStride = screenSpaceReflectionStride;
  [coder encodeFloat:@"screenSpaceReflectionStride" forKey:screenSpaceReflectionStride];
  [coder encodeBool:self->_paused forKey:@"paused"];
  [coder encodeInteger:1 forKey:@"version"];
  sourceURL = self->_sourceURL;
  if (sourceURL)
  {
    [coder encodeObject:sourceURL forKey:@"sourceURL"];
  }

  [(SCNScene *)self _didEncodeSCNScene:coder];
}

- (SCNScene)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = SCNScene;
  v4 = [(SCNScene *)&v18 init];
  if (v4)
  {
    if (C3DSceneSourceGetSceneCount())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [coder _allowDecodingCyclesInSecureMode];
      }
    }

    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sourceURL"];
    if (v6)
    {
      v7 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![coder documentURL])
        {
          [coder setDocumentURL:v7];
        }
      }

      else
      {
        objc_setAssociatedObject(coder, @"SCNSourceURLForCurrentlyUnarchivedScene", v7, 0x301);
      }
    }

    v8 = C3DSceneCreate();
    *(v4 + 1) = v8;
    if (v8)
    {
      C3DEntitySetObjCWrapper(v8, v4);
    }

    [v4 _syncObjCModel];
    [v4 _customDecodingOfSCNScene:coder];
    v9 = [coder decodeIntegerForKey:@"version"];
    *(v4 + 3) = [coder decodeObjectOfClass:objc_opt_class() forKey:@"physicsWorld"];
    v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"rootNode"];
    if (v10)
    {
      [v4 setRootNode:v10];
    }

    else
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SCNScene initWithCoder:];
      }

      if (!*(v4 + 4))
      {
        v12 = *(v4 + 1);
        if (v12)
        {
          C3DSceneLock(v12);
          if (C3DSceneGetRootNode(*(v4 + 1)))
          {
            *(v4 + 4) = [SCNNode nodeWithNodeRef:?];
          }

          else
          {
            [v4 _setRootNode:{+[SCNNode node](SCNNode, "node")}];
          }

          C3DSceneUnlock(*(v4 + 1));
        }
      }
    }

    v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"background"];
    *(v4 + 9) = v13;
    if (!v9)
    {
      [v13 contents];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(v4 + 9) setContents:0];
      }
    }

    *(v4 + 10) = [coder decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"environment"];
    *(v4 + 11) = [coder decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"userAttributes"];
    [coder decodeDoubleForKey:@"fogStartDistance"];
    [v4 setFogStartDistance:?];
    [coder decodeDoubleForKey:@"fogEndDistance"];
    [v4 setFogEndDistance:?];
    [coder decodeDoubleForKey:@"fogDensityExponent"];
    [v4 setFogDensityExponent:?];
    if ([coder containsValueForKey:@"wantsScreenSpaceReflection"])
    {
      [v4 setWantsScreenSpaceReflection:{objc_msgSend(coder, "decodeBoolForKey:", @"wantsScreenSpaceReflection"}];
    }

    if ([coder containsValueForKey:@"screenSpaceReflectionSampleCount"])
    {
      [v4 setScreenSpaceReflectionSampleCount:{objc_msgSend(coder, "decodeIntForKey:", @"screenSpaceReflectionSampleCount"}];
    }

    if ([coder containsValueForKey:@"screenSpaceReflectionMaximumDistance"])
    {
      [coder decodeFloatForKey:@"screenSpaceReflectionMaximumDistance"];
      [v4 setScreenSpaceReflectionMaximumDistance:v14];
    }

    if ([coder containsValueForKey:@"screenSpaceReflectionStride"])
    {
      [coder decodeFloatForKey:@"screenSpaceReflectionStride"];
      [v4 setScreenSpaceReflectionStride:v15];
    }

    v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v4 setFogColor:{SCNDecodeUnsafeObjectForKey(coder, @"fogColor", v16)}];
    [v4 setPaused:{objc_msgSend(coder, "decodeBoolForKey:", @"paused"}];
    [v4 _didDecodeSCNScene:coder];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (BOOL)writeToURLWithUSDKit:(id)kit
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(kit "pathExtension")];
  if (([v5 isEqualToString:@"usd"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"usda") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"usdc") & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"usdz"))
  {
    goto LABEL_16;
  }

  if (SCNLoadUsdKitIfNeeded(void)::onceToken != -1)
  {
    [SCNScene(Internal) writeToURLWithUSDKit:];
  }

  if (SCNLoadUsdKitIfNeeded(void)::loaded == 1)
  {
    v6 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v7 = [v6 URLByAppendingPathComponent:{objc_msgSend(kit, "lastPathComponent")}];
    if ([v5 isEqualToString:@"usdz"])
    {
      v7 = [[(NSURL *)v7 URLByDeletingPathExtension] URLByAppendingPathExtension:@"usdc"];
    }

    +[SCNTransaction flush];
    v8 = [objc_msgSend(kit "URLByDeletingPathExtension")];
    if (!v8 || (v9 = v8, [(__CFString *)v8 isEqualToString:&stru_282DCC058]))
    {
      v9 = @"root_node";
    }

    USDKitConverter::USDKitConverter(v27, self, &v9->isa, v7, [v6 path]);
    USKScene = USDKitConverter::makeUSKScene(v27, v7);
    uRLByDeletingLastPathComponent = [kit URLByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
    if (v12)
    {
      if ([v5 isEqualToString:@"usdz"])
      {
        [USKScene saveAndCreateUSDZPackageWithURL:kit];
      }

      else
      {
        [USKScene save];
        if ([defaultManager fileExistsAtPath:{objc_msgSend(kit, "path")}])
        {
          [defaultManager removeItemAtURL:kit error:0];
        }

        v13 = [objc_msgSend(kit "URLByDeletingLastPathComponent")];
        v14 = [defaultManager enumeratorAtPath:{objc_msgSend(v6, "path")}];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v15)
        {
          v16 = *v24;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v23 + 1) + 8 * i);
              v19 = [objc_msgSend(v6 "path")];
              v20 = [v13 stringByAppendingPathComponent:v18];
              if ([defaultManager fileExistsAtPath:v20])
              {
                [defaultManager removeItemAtPath:v20 error:0];
              }

              [defaultManager moveItemAtPath:v19 toPath:v20 error:0];
            }

            v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v15);
        }
      }
    }

    [defaultManager removeItemAtURL:v6 error:0];
    USDKitConverter::~USDKitConverter(v27);
  }

  else
  {
LABEL_16:
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)_exportAsMovieOperationWithDestinationURL:(id)l size:(CGSize)size attributes:(id)attributes delegate:(id)delegate didEndSelector:(SEL)selector userInfo:(void *)info
{
  height = size.height;
  width = size.width;
  v16 = [SCNRenderer rendererWithDevice:0 options:0];
  [(SCNRenderer *)v16 setScene:self];
  height = [[SCNMovieExportOperation alloc] initWithRenderer:v16 size:attributes attributes:l outputURL:width, height];
  [(_SCNExportOperation *)height setDelegate:delegate];
  [(_SCNExportOperation *)height setUserInfo:info];
  [(_SCNExportOperation *)height setDidEndSelector:selector];
  return height;
}

- (id)debugQuickLookObjectWithPointOfView:(id)view
{
  if (C3DMetalIsSupported())
  {
    v5 = [SCNOffscreenRenderer offscreenRendererWithDevice:0 size:512.0, 512.0];
  }

  else
  {
    v5 = [SCNOffscreenRenderer offscreenRendererWithContext:0 size:512.0, 512.0];
  }

  v6 = v5;
  [(SCNRenderer *)v5 setScene:self];
  [(SCNRenderer *)v6 setJitteringEnabled:0];
  [(SCNRenderer *)v6 setAutoenablesDefaultLighting:1];
  [(SCNRenderer *)v6 setAutoAdjustCamera:1];
  if (view)
  {
    [(SCNRenderer *)v6 setPointOfView:view];
  }

  +[SCNTransaction flush];

  return [(SCNOffscreenRenderer *)v6 snapshot];
}

+ (void)_indexPathForNode:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "wr == 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. _subnodeIndexPath - unexpected count (hierachy was mutated?)", &v1, 0xCu);
}

@end