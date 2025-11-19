@interface SCNScene
+ (BOOL)canImportFileExtension:(id)a3;
+ (BOOL)canImportFileUTI:(id)a3;
+ (SCNScene)scene;
+ (SCNScene)sceneNamed:(NSString *)name inDirectory:(NSString *)directory options:(NSDictionary *)options;
+ (SCNScene)sceneWithData:(id)a3 atIndex:(int64_t)a4 options:(id)a5;
+ (SCNScene)sceneWithData:(id)a3 options:(id)a4;
+ (SCNScene)sceneWithMDLAsset:(id)a3 options:(id)a4;
+ (SCNScene)sceneWithSceneRef:(__C3DScene *)a3;
+ (SCNScene)sceneWithURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error;
+ (SCNScene)sceneWithURL:(id)a3 atIndex:(int64_t)a4 options:(id)a5;
+ (id)_indexPathForNode:(id)a3;
+ (id)supportedFileUTIsForExport;
+ (id)supportedFileUTIsForImport;
- (BOOL)writeToURL:(NSURL *)url options:(NSDictionary *)options delegate:(id)delegate progressHandler:(SCNSceneExportProgressHandler)progressHandler;
- (BOOL)writeToURLWithUSDKit:(id)a3;
- (NSArray)particleSystems;
- (SCNMaterialProperty)background;
- (SCNMaterialProperty)lightingEnvironment;
- (SCNNode)rootNode;
- (SCNScene)init;
- (SCNScene)initWithCoder:(id)a3;
- (SCNScene)initWithSceneRef:(__C3DScene *)a3;
- (SCNVector3)upAxis;
- (double)endTime;
- (double)frameRate;
- (double)startTime;
- (float)playbackSpeed;
- (id)_exportAsMovieOperationWithDestinationURL:(id)a3 size:(CGSize)a4 attributes:(id)a5 delegate:(id)a6 didEndSelector:(SEL)a7 userInfo:(void *)a8;
- (id)_nodeWithIndexPath:(id)a3;
- (id)_physicsWorldCreateIfNeeded:(BOOL)a3;
- (id)_subnodeFromIndexPath:(id)a3;
- (id)attributeForKey:(NSString *)key;
- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4;
- (id)copyAnimationChannelForKeyPath:(id)a3 property:(id)a4;
- (id)debugQuickLookObjectWithPointOfView:(id)a3;
- (id)initForJavascript:(id)a3;
- (id)root;
- (id)valueForUndefinedKey:(id)a3;
- (void)_clearSceneRef;
- (void)_customDecodingOfSCNScene:(id)a3;
- (void)_customEncodingOfSCNScene:(id)a3;
- (void)_didDecodeSCNScene:(id)a3;
- (void)_dumpToDisk;
- (void)_prettifyForPreview;
- (void)_resetSceneTimeRange;
- (void)_scaleSceneBy:(double)a3;
- (void)_setRootNode:(id)a3;
- (void)_setSourceURL:(id)a3;
- (void)_syncObjCModel;
- (void)addParticleSystem:(SCNParticleSystem *)system withTransform:(SCNMatrix4 *)transform;
- (void)addSceneAnimation:(id)a3 forKey:(id)a4 target:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)lock;
- (void)removeAllParticleSystems;
- (void)removeParticleSystem:(SCNParticleSystem *)system;
- (void)setAttribute:(id)attribute forKey:(NSString *)key;
- (void)setEndTime:(double)a3;
- (void)setFogColor:(id)fogColor;
- (void)setFogDensityExponent:(CGFloat)fogDensityExponent;
- (void)setFogEndDistance:(CGFloat)fogEndDistance;
- (void)setFogStartDistance:(CGFloat)fogStartDistance;
- (void)setFrameRate:(double)a3;
- (void)setPaused:(BOOL)paused;
- (void)setPausedForEditing:(BOOL)a3;
- (void)setPlaybackSpeed:(float)a3;
- (void)setRootNode:(id)a3 forLayer:(int)a4;
- (void)setSceneSource:(id)a3;
- (void)setScreenSpaceReflectionMaximumDistance:(CGFloat)screenSpaceReflectionMaximumDistance;
- (void)setScreenSpaceReflectionSampleCount:(NSInteger)screenSpaceReflectionSampleCount;
- (void)setScreenSpaceReflectionStride:(CGFloat)screenSpaceReflectionStride;
- (void)setStartTime:(double)a3;
- (void)setUpAxis:(SCNVector3)a3;
- (void)setWantsScreenSpaceReflection:(BOOL)wantsScreenSpaceReflection;
- (void)set_allowsDefaultLightingEnvironmentFallback:(BOOL)a3;
- (void)unlock;
@end

@implementation SCNScene

- (SCNNode)rootNode
{
  if (!self->_rootNode)
  {
    v3 = [(SCNScene *)self sceneRef];
    v4 = v3;
    if (v3)
    {
      C3DSceneLock(v3);
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

+ (SCNScene)sceneWithMDLAsset:(id)a3 options:(id)a4
{
  v153 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_opt_new();
  obj = objc_opt_new();
  v8 = objc_alloc_init(a1);
  if (objc_opt_respondsToSelector())
  {
    [a3 upAxis];
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
  v13 = [a3 countByEnumeratingWithState:&v136 objects:v151 count:16];
  if (v13)
  {
    v14 = *v137;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v137 != v14)
        {
          objc_enumerationMutation(a3);
        }

        [objc_msgSend(v8 "rootNode")];
      }

      v13 = [a3 countByEnumeratingWithState:&v136 objects:v151 count:16];
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

  if ([objc_msgSend(a3 "animations")])
  {
    v22 = objc_opt_new();
    v23 = 0;
    v113 = a3;
    v111 = v22;
    v122 = *MEMORY[0x277CDA230];
    v112 = v8;
    while (v23 < [objc_msgSend(a3 "animations")])
    {
      v24 = [objc_msgSend(a3 "animations")];
      if (v24)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
          v121 = [objc_msgSend(v24 "jointPaths")];
          if (v121)
          {
            v26 = [a4 valueForKey:@"kSceneSourceAnimationLoadingMode"];
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
              v37 = [v25 translations];
              [v37 getFloat3Array:memptr maxCount:v34];
            }

            if (v147)
            {
              v38 = [v25 rotations];
              [v38 getFloatQuaternionArray:v147 maxCount:v35];
            }

            if (v146)
            {
              v39 = [v25 scales];
              [v39 getFloat3Array:v146 maxCount:v36];
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
            v52 = [v25 jointPaths];
            v53 = [v52 countByEnumeratingWithState:&v142 objects:v152 count:16];
            v54 = v41 - v43;
            v55 = v45 - v47;
            if (v53)
            {
              v56 = 0;
              v118 = v52;
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
            a3 = v113;
            v16 = v116;
            v22 = v111;
            v93 = [MEMORY[0x277CD9E00] animation];
            [v93 setAnimations:v123];
            [v93 setFillMode:v122];
            *&v94 = v28;
            [v93 setRepeatCount:v94];
            [v93 setRemovedOnCompletion:v114];
            [v93 setUsesSceneTimeBase:v124 | HIDWORD(v114)];
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

            [v93 setDuration:v99];
            if (v93)
            {
              [v111 setObject:+[SCNAnimation animationWithCAAnimation:](SCNAnimation forKeyedSubscript:{"animationWithCAAnimation:", v93), objc_msgSend(v25, "name")}];
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
  v101 = [a3 countByEnumeratingWithState:&v128 objects:v149 count:16];
  if (v101)
  {
    v102 = *v129;
    do
    {
      for (k = 0; k != v101; ++k)
      {
        if (*v129 != v102)
        {
          objc_enumerationMutation(a3);
        }
      }

      v101 = [a3 countByEnumeratingWithState:&v128 objects:v149 count:16];
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
  [a3 startTime];
  [v8 setStartTime:?];
  [a3 endTime];
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
      v4 = [v2 sceneRef];
      v5 = v4;
      if (v4)
      {
        C3DSceneLock(v4);
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

- (SCNScene)initWithSceneRef:(__C3DScene *)a3
{
  v8.receiver = self;
  v8.super_class = SCNScene;
  v4 = [(SCNScene *)&v8 init];
  if (v4)
  {
    v5 = CFRetain(a3);
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
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (SCNScene)sceneNamed:(NSString *)name inDirectory:(NSString *)directory options:(NSDictionary *)options
{
  v9 = [(NSString *)name pathExtension];
  if (![(__CFString *)v9 length])
  {
    v9 = @"dae";
  }

  result = [SCNGetResourceBundle() URLForResource:-[NSString stringByDeletingPathExtension](name withExtension:"stringByDeletingPathExtension") subdirectory:{v9, directory}];
  if (result)
  {

    return [a1 sceneWithURL:result options:options error:0];
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

  return [(SCNSceneSource *)v8 sceneWithClass:a1 options:options error:error];
}

+ (SCNScene)sceneWithURL:(id)a3 atIndex:(int64_t)a4 options:(id)a5
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a5];
  [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", a4), @"kSceneSourceSceneIndexKey"}];

  return [a1 sceneWithURL:a3 options:v8 error:0];
}

+ (SCNScene)sceneWithData:(id)a3 atIndex:(int64_t)a4 options:(id)a5
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a5];
  [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", a4), @"kSceneSourceSceneIndexKey"}];

  return [a1 sceneWithData:a3 options:v8];
}

+ (SCNScene)sceneWithData:(id)a3 options:(id)a4
{
  result = [SCNSceneSource sceneSourceWithData:a3 options:?];
  if (result)
  {

    return [(SCNScene *)result sceneWithClass:a1 options:a4 error:0];
  }

  return result;
}

+ (SCNScene)sceneWithSceneRef:(__C3DScene *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithSceneRef:a3];

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

- (void)setUpAxis:(SCNVector3)a3
{
  scene = self->_scene;
  if (scene)
  {
    y = a3.y;
    v5.n128_u32[2] = LODWORD(a3.z);
    v5.n128_u64[0] = *&a3.x;
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

- (void)_setSourceURL:(id)a3
{
  sourceURL = self->_sourceURL;
  if (sourceURL != a3)
  {

    self->_sourceURL = a3;
  }
}

- (void)setSceneSource:(id)a3
{
  sceneSource = self->_sceneSource;
  if (sceneSource != a3)
  {

    self->_sceneSource = a3;
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

- (void)_setRootNode:(id)a3
{
  rootNode = self->_rootNode;
  if (rootNode != a3)
  {

    self->_rootNode = a3;
    self->_layerRootNode[0] = a3;
    v6 = [(SCNScene *)self sceneRef];
    if (v6)
    {
      v7 = v6;
      C3DSceneLock(v6);
      C3DSceneSetRootNode(self->_scene, [a3 nodeRef]);

      C3DSceneUnlock(v7);
    }

    else
    {
      scene = self->_scene;
      v9 = [a3 nodeRef];

      C3DSceneSetRootNode(scene, v9);
    }
  }
}

- (void)setRootNode:(id)a3 forLayer:(int)a4
{
  layerRootNode = self->_layerRootNode;
  v5 = self->_layerRootNode[a4];
  if (v5 != a3)
  {
    if (a4)
    {

      layerRootNode[a4] = a3;
      v9 = [(SCNScene *)self sceneRef];
      if (v9)
      {
        v10 = v9;
        C3DSceneLock(v9);
        C3DSceneSetLayerRootNode(self->_scene, a4, [a3 nodeRef]);

        C3DSceneUnlock(v10);
      }

      else
      {
        scene = self->_scene;
        v12 = [a3 nodeRef];

        C3DSceneSetLayerRootNode(scene, a4, v12);
      }
    }

    else
    {

      [(SCNScene *)self _setRootNode:?];
    }
  }
}

- (void)_scaleSceneBy:(double)a3
{
  v5 = [(SCNScene *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__SCNScene__scaleSceneBy___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:0 applyBlock:v6];
}

void __26__SCNScene__scaleSceneBy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneRef];
  v3 = *(a1 + 40);

  C3DApplyScaleFactorOnScene(v2, v3);
}

+ (BOOL)canImportFileUTI:(id)a3
{
  if ([a3 isEqualToString:@"org.khronos.collada.digital-asset-exchange"])
  {
    return 1;
  }

  return [a3 hasPrefix:@"com.apple.scenekit"];
}

+ (BOOL)canImportFileExtension:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 isEqualToString:@"dae"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"c3d") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"scn") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"scnz"))
  {
    return 1;
  }

  v5 = MEMORY[0x277CD7AD0];

  return [v5 canImportFileExtension:v3];
}

+ (id)supportedFileUTIsForImport
{
  v2 = [MEMORY[0x277CBEB18] array];
  [v2 addObjectsFromArray:&unk_282E0FBA0];
  return v2;
}

+ (id)supportedFileUTIsForExport
{
  v2 = [MEMORY[0x277CBEB18] array];
  [v2 addObjectsFromArray:&unk_282E0FBB8];
  return v2;
}

- (id)_physicsWorldCreateIfNeeded:(BOOL)a3
{
  result = self->_physicsWorld;
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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
  v3 = [(SCNScene *)self rootNode];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SCNScene__resetSceneTimeRange__block_invoke;
  v4[3] = &unk_2782FF050;
  v4[4] = &v9;
  v4[5] = &v5;
  [(SCNNode *)v3 enumerateHierarchyUsingBlock:v4];
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
  v3 = [(SCNScene *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
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

- (void)setStartTime:(double)a3
{
  v5 = [(SCNScene *)self sceneRef];
  if (v5)
  {
    v6 = v5;
    C3DSceneLock(v5);
    C3DSceneSetStartTime(self->_scene, a3);

    C3DSceneUnlock(v6);
  }

  else
  {
    scene = self->_scene;

    C3DSceneSetStartTime(scene, a3);
  }
}

- (double)endTime
{
  v3 = [(SCNScene *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
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

- (void)setEndTime:(double)a3
{
  v5 = [(SCNScene *)self sceneRef];
  if (v5)
  {
    v6 = v5;
    C3DSceneLock(v5);
    C3DSceneSetEndTime(self->_scene, a3);

    C3DSceneUnlock(v6);
  }

  else
  {
    scene = self->_scene;

    C3DSceneSetEndTime(scene, a3);
  }
}

- (double)frameRate
{
  v3 = [(SCNScene *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
    FrameRate = C3DSceneGetFrameRate(self->_scene);
    C3DSceneUnlock(v4);
  }

  else
  {
    return C3DSceneGetFrameRate(self->_scene);
  }

  return FrameRate;
}

- (void)setFrameRate:(double)a3
{
  v5 = [(SCNScene *)self sceneRef];
  if (v5)
  {
    v6 = v5;
    C3DSceneLock(v5);
    v7 = a3;
    C3DSceneSetFrameRate(self->_scene, v7);

    C3DSceneUnlock(v6);
  }

  else
  {
    scene = self->_scene;

    v9 = a3;
    C3DSceneSetFrameRate(scene, v9);
  }
}

- (float)playbackSpeed
{
  v3 = [(SCNScene *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
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

- (void)setPlaybackSpeed:(float)a3
{
  v5 = [(SCNScene *)self sceneRef];
  if (v5)
  {
    v6 = v5;
    C3DSceneLock(v5);
    C3DSceneSetPlaybackSpeed(self->_scene, a3);

    C3DSceneUnlock(v6);
  }

  else
  {
    scene = self->_scene;

    C3DSceneSetPlaybackSpeed(scene, a3);
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

- (void)set_allowsDefaultLightingEnvironmentFallback:(BOOL)a3
{
  if (self->_allowsDefaultLightingEnvironmentFallback != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_allowsDefaultLightingEnvironmentFallback = a3;
    v7 = [(SCNScene *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SCNScene_set_allowsDefaultLightingEnvironmentFallback___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = a3;
    [SCNTransaction postCommandWithContext:v7 object:0 applyBlock:v8];
  }
}

- (void)setFogColor:(id)fogColor
{
  if (self->_fogColor != fogColor && ([fogColor isEqual:?] & 1) == 0)
  {

    self->_fogColor = fogColor;
    v5 = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __24__SCNScene_setFogColor___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = fogColor;
    v6[5] = self;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"fogColor" applyBlock:v6];
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
    v5 = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__SCNScene_setFogEndDistance___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = v3;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"fogEndDistance" applyBlock:v6];
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
    v5 = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__SCNScene_setFogDensityExponent___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = fogDensityExponent;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"fogDensityExponent" applyBlock:v6];
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
    v5 = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__SCNScene_setFogStartDistance___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = fogStartDistance;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"fogStartDistance" applyBlock:v6];
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
    v7 = [(SCNScene *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SCNScene_setWantsScreenSpaceReflection___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = wantsScreenSpaceReflection;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (void)setScreenSpaceReflectionSampleCount:(NSInteger)screenSpaceReflectionSampleCount
{
  if (self->_screenSpaceReflectionSampleCount != screenSpaceReflectionSampleCount)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_screenSpaceReflectionSampleCount = screenSpaceReflectionSampleCount;
    v7 = [(SCNScene *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__SCNScene_setScreenSpaceReflectionSampleCount___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = screenSpaceReflectionSampleCount;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (void)setScreenSpaceReflectionMaximumDistance:(CGFloat)screenSpaceReflectionMaximumDistance
{
  if (self->_screenSpaceReflectionMaxRayDistance != screenSpaceReflectionMaximumDistance)
  {
    self->_screenSpaceReflectionMaxRayDistance = screenSpaceReflectionMaximumDistance;
    v5 = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__SCNScene_setScreenSpaceReflectionMaximumDistance___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = screenSpaceReflectionMaximumDistance;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
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
    v5 = [(SCNScene *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SCNScene_setScreenSpaceReflectionStride___block_invoke;
    v6[3] = &unk_2782FB7D0;
    v6[4] = self;
    *&v6[5] = screenSpaceReflectionStride;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
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
    v10 = [(NSDictionary *)options mutableCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = v10;
  v12 = [v10 valueForKey:@"kSceneSourceFormat"];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    goto LABEL_16;
  }

  v15 = [(NSString *)[(NSURL *)url pathExtension] lowercaseString];
  if ([(NSString *)v15 isEqualToString:@"dae"])
  {
    v14 = 0;
    v16 = SCNSceneSourceFormatCOLLADA;
  }

  else if ([(NSString *)v15 isEqualToString:@"scn"])
  {
    v14 = 0;
    v16 = SCNSceneSourceFormatSCN;
  }

  else if ([(NSString *)v15 isEqualToString:@"c3d"])
  {
    v14 = 0;
    v16 = SCNSceneSourceFormatC3D;
  }

  else
  {
    if (![(NSString *)v15 isEqualToString:@"scnz"])
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
      v18 = [(SCNScene *)self sceneRef];
      v19 = v18;
      if (v18)
      {
        C3DSceneLock(v18);
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
      v30 = [(NSString *)[(NSURL *)url pathExtension] lowercaseString];
      if (![(NSString *)v30 isEqualToString:@"usd"]&& ![(NSString *)v30 isEqualToString:@"usda"]&& ![(NSString *)v30 isEqualToString:@"usdc"]&& ![(NSString *)v30 isEqualToString:@"usdz"])
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

  v21 = [(SCNScene *)self sceneRef];
  v22 = v21;
  if (v21)
  {
    C3DSceneLock(v21);
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
  v2 = [(SCNScene *)self sceneRef];
  if (v2)
  {

    C3DSceneLock(v2);
  }
}

- (void)unlock
{
  v2 = [(SCNScene *)self sceneRef];
  if (v2)
  {

    C3DSceneUnlock(v2);
  }
}

- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4
{
  v17 = 0;
  v18 = 0;
  SCNKitSplitKVCPath(a3, &v18, &v17);
  if ([v18 isEqual:@"root"])
  {
    if (!self->_rootNode)
    {
      v7 = [(SCNScene *)self sceneRef];
      v8 = v7;
      if (v7)
      {
        C3DSceneLock(v7);
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

  if ([a3 hasPrefix:@"/"])
  {
    if (!self->_rootNode)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  v10 = [a3 hasPrefix:@"children["];
  rootNode = self->_rootNode;
  if (v10)
  {
    if (!rootNode)
    {
LABEL_14:
      v12 = [(SCNScene *)self sceneRef];
      v13 = v12;
      if (v12)
      {
        C3DSceneLock(v12);
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
    v16 = a3;
    return [result copyAnimationChannelForKeyPath:v16 animation:a4];
  }

  result = [(SCNNode *)rootNode childNodeWithName:v18 recursively:1];
  if (result)
  {
LABEL_27:
    v16 = v17;
    return [result copyAnimationChannelForKeyPath:v16 animation:a4];
  }

  return result;
}

- (id)copyAnimationChannelForKeyPath:(id)a3 property:(id)a4
{
  if (self->_background == a4)
  {
    v6 = kC3DModelPathBackgroundMap;
  }

  else
  {
    if (self->_environment != a4)
    {
      return 0;
    }

    v6 = kC3DModelPathLightingEnvironmentMap;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *v6, a3];

  return SCNCreateAnimationChannelWithObjectAndPath(self, v7);
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 hasPrefix:@"/"])
  {
    if (!self->_rootNode)
    {
      v5 = [(SCNScene *)self sceneRef];
      v6 = v5;
      if (v5)
      {
        C3DSceneLock(v5);
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

    return [(SCNNode *)rootNode valueForKey:a3];
  }

  else
  {
    result = [(SCNScene *)self attributeForKey:a3];
    if (!result)
    {
      v9 = self->_rootNode;

      return [(SCNNode *)v9 childNodeWithName:a3 recursively:1];
    }
  }

  return result;
}

- (void)addSceneAnimation:(id)a3 forKey:(id)a4 target:(id)a5
{
  v7 = [a3 copy];
  [v7 setUsesSceneTimeBase:1];

  [a5 addAnimation:v7 forKey:a4];
}

- (void)addParticleSystem:(SCNParticleSystem *)system withTransform:(SCNMatrix4 *)transform
{
  if (system)
  {
    v7 = [(SCNScene *)self sceneRef];
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
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v11];
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
    v5 = [(SCNScene *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SCNScene_removeParticleSystem___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = self;
    v7[5] = system;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
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
  v3 = [(SCNScene *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__SCNScene_removeAllParticleSystems__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
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
  v3 = [(SCNScene *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNScene *)self __CFObject];
  if (v5 && (ParticleManager = C3DSceneGetParticleManager(v5, 0)) != 0)
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
    v9 = [(SCNScene *)self sceneRef];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __22__SCNScene_setPaused___block_invoke;
    v13[3] = &unk_2782FB7F8;
    v13[4] = self;
    v14 = v7;
    [SCNTransaction postCommandWithContext:v9 object:0 applyBlock:v13];
    [(SCNNode *)[(SCNScene *)self rootNode] setPaused:v7];
    v10 = [(SCNScene *)self __CFObject];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __22__SCNScene_setPaused___block_invoke_2;
    v11[3] = &__block_descriptor_41_e8_v16__0d8l;
    v11[4] = v10;
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

- (void)setPausedForEditing:(BOOL)a3
{
  if (self->_pausedForEditing != a3)
  {
    self->_pausedForEditing = a3;
    C3DSceneSetPausedForEditing(self->_scene);
  }
}

- (id)_nodeWithIndexPath:(id)a3
{
  v4 = [(SCNScene *)self rootNode];
  v5 = [a3 length];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [a3 indexAtPosition:v7];
      if ([(NSArray *)[(SCNNode *)v4 childNodes] count]<= v8)
      {
        break;
      }

      ++v7;
      v4 = [(NSArray *)[(SCNNode *)v4 childNodes] objectAtIndexedSubscript:v8];
      if (v6 == v7)
      {
        return v4;
      }
    }

    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNScene _nodeWithIndexPath:];
    }

    return 0;
  }

  return v4;
}

+ (id)_indexPathForNode:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = -1;
  v5 = -8;
  v6 = a3;
  do
  {
    v6 = [v6 parentNode];
    ++v4;
    v5 += 8;
  }

  while (v6);
  if (v4)
  {
    v7 = malloc_type_malloc(v5, 0x100004000313F17uLL);
    v8 = [v3 parentNode];
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = v4 + 1;
    do
    {
      v10 = v8;
      v7[v9 - 2] = [v8 indexOfChildNode:v3];
      v8 = [v10 parentNode];
      --v9;
      v3 = v10;
    }

    while (v8);
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

- (id)_subnodeFromIndexPath:(id)a3
{
  if (a3)
  {
    return [self _nodeWithIndexPath:?];
  }

  return self;
}

- (id)initForJavascript:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SCNScene;
  v4 = [(SCNScene *)&v11 init];
  if (!v4)
  {
    return v4;
  }

  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CBEBC0] URLWithString:a3];
      if (![v5 scheme])
      {
        v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
      }
    }

    else
    {
      v5 = a3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[SCNSceneSource alloc] initWithURL:v5 options:0];
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
        v13 = v5;
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

- (void)_customEncodingOfSCNScene:(id)a3
{
  [(SCNScene *)self endTime];
  [a3 encodeDouble:@"endTime" forKey:?];
  [(SCNScene *)self startTime];
  [a3 encodeDouble:@"startTime" forKey:?];
  [(SCNScene *)self frameRate];
  [a3 encodeDouble:@"frameRate" forKey:?];
  [(SCNScene *)self upAxis];

  SCNEncodeVector3(a3, @"upAxis", v5, v6, v7);
}

- (void)_customDecodingOfSCNScene:(id)a3
{
  [a3 decodeDoubleForKey:@"endTime"];
  [(SCNScene *)self setEndTime:?];
  [a3 decodeDoubleForKey:@"startTime"];
  [(SCNScene *)self setStartTime:?];
  [a3 decodeDoubleForKey:@"frameRate"];
  [(SCNScene *)self setFrameRate:?];
  v5.n128_f32[0] = SCNDecodeVector3(a3, @"upAxis");
  v5.n128_u32[1] = v6;
  v5.n128_u32[2] = v7;
  v8 = v5;
  C3DSceneSetUpAxis(self->_scene, &v8);
}

- (void)_didDecodeSCNScene:(id)a3
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
  v3 = [MEMORY[0x277CBEB18] array];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v4 = [(SCNScene *)self rootNode];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __31__SCNScene__prettifyForPreview__block_invoke;
  v19[3] = &unk_2782FF110;
  v19[4] = v3;
  v19[5] = &v20;
  v19[6] = v28;
  v19[7] = v26;
  v19[8] = v24;
  [(SCNNode *)v4 enumerateHierarchyUsingBlock:v19];
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
    v5 = [v3 countByEnumeratingWithState:&v15 objects:v30 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(v8 "light")])
          {
            [objc_msgSend(v8 "light")];
            v10 = v9;
            v11 = [v8 light];
            v12 = v10 * 0.05;
          }

          else
          {
            [objc_msgSend(v8 "light")];
            v14 = v13;
            v11 = [v8 light];
            v12 = v14 * 0.5;
          }

          [v11 setIntensity:v12];
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v30 count:16];
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

- (void)encodeWithCoder:(id)a3
{
  [(SCNScene *)self _customEncodingOfSCNScene:?];
  physicsWorld = self->_physicsWorld;
  if (physicsWorld && ![(SCNPhysicsWorld *)physicsWorld _isDefault])
  {
    [a3 encodeObject:self->_physicsWorld forKey:@"physicsWorld"];
  }

  rootNode = self->_rootNode;
  if (rootNode)
  {
    [a3 encodeObject:rootNode forKey:@"rootNode"];
  }

  background = self->_background;
  if (background)
  {
    [a3 encodeObject:background forKey:@"background"];
  }

  environment = self->_environment;
  if (environment)
  {
    [a3 encodeObject:environment forKey:@"environment"];
  }

  userAttributes = self->_userAttributes;
  if (userAttributes)
  {
    [a3 encodeObject:userAttributes forKey:@"userAttributes"];
  }

  [a3 encodeDouble:@"fogStartDistance" forKey:self->_fogStartDistance];
  [a3 encodeDouble:@"fogEndDistance" forKey:self->_fogEndDistance];
  [a3 encodeDouble:@"fogDensityExponent" forKey:self->_fogDensityExponent];
  fogColor = self->_fogColor;
  if (fogColor)
  {
    SCNEncodeUnsafeObjectForKey(a3, fogColor, @"fogColor");
  }

  [a3 encodeBool:self->_wantsScreenSpaceReflection forKey:@"wantsScreenSpaceReflection"];
  [a3 encodeInt:LODWORD(self->_screenSpaceReflectionSampleCount) forKey:@"screenSpaceReflectionSampleCount"];
  screenSpaceReflectionMaxRayDistance = self->_screenSpaceReflectionMaxRayDistance;
  *&screenSpaceReflectionMaxRayDistance = screenSpaceReflectionMaxRayDistance;
  [a3 encodeFloat:@"screenSpaceReflectionMaximumDistance" forKey:screenSpaceReflectionMaxRayDistance];
  screenSpaceReflectionStride = self->_screenSpaceReflectionStride;
  *&screenSpaceReflectionStride = screenSpaceReflectionStride;
  [a3 encodeFloat:@"screenSpaceReflectionStride" forKey:screenSpaceReflectionStride];
  [a3 encodeBool:self->_paused forKey:@"paused"];
  [a3 encodeInteger:1 forKey:@"version"];
  sourceURL = self->_sourceURL;
  if (sourceURL)
  {
    [a3 encodeObject:sourceURL forKey:@"sourceURL"];
  }

  [(SCNScene *)self _didEncodeSCNScene:a3];
}

- (SCNScene)initWithCoder:(id)a3
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
        [a3 _allowDecodingCyclesInSecureMode];
      }
    }

    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceURL"];
    if (v6)
    {
      v7 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![a3 documentURL])
        {
          [a3 setDocumentURL:v7];
        }
      }

      else
      {
        objc_setAssociatedObject(a3, @"SCNSourceURLForCurrentlyUnarchivedScene", v7, 0x301);
      }
    }

    v8 = C3DSceneCreate();
    *(v4 + 1) = v8;
    if (v8)
    {
      C3DEntitySetObjCWrapper(v8, v4);
    }

    [v4 _syncObjCModel];
    [v4 _customDecodingOfSCNScene:a3];
    v9 = [a3 decodeIntegerForKey:@"version"];
    *(v4 + 3) = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"physicsWorld"];
    v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"rootNode"];
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

    v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"background"];
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

    *(v4 + 10) = [a3 decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"environment"];
    *(v4 + 11) = [a3 decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"userAttributes"];
    [a3 decodeDoubleForKey:@"fogStartDistance"];
    [v4 setFogStartDistance:?];
    [a3 decodeDoubleForKey:@"fogEndDistance"];
    [v4 setFogEndDistance:?];
    [a3 decodeDoubleForKey:@"fogDensityExponent"];
    [v4 setFogDensityExponent:?];
    if ([a3 containsValueForKey:@"wantsScreenSpaceReflection"])
    {
      [v4 setWantsScreenSpaceReflection:{objc_msgSend(a3, "decodeBoolForKey:", @"wantsScreenSpaceReflection"}];
    }

    if ([a3 containsValueForKey:@"screenSpaceReflectionSampleCount"])
    {
      [v4 setScreenSpaceReflectionSampleCount:{objc_msgSend(a3, "decodeIntForKey:", @"screenSpaceReflectionSampleCount"}];
    }

    if ([a3 containsValueForKey:@"screenSpaceReflectionMaximumDistance"])
    {
      [a3 decodeFloatForKey:@"screenSpaceReflectionMaximumDistance"];
      [v4 setScreenSpaceReflectionMaximumDistance:v14];
    }

    if ([a3 containsValueForKey:@"screenSpaceReflectionStride"])
    {
      [a3 decodeFloatForKey:@"screenSpaceReflectionStride"];
      [v4 setScreenSpaceReflectionStride:v15];
    }

    v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v4 setFogColor:{SCNDecodeUnsafeObjectForKey(a3, @"fogColor", v16)}];
    [v4 setPaused:{objc_msgSend(a3, "decodeBoolForKey:", @"paused"}];
    [v4 _didDecodeSCNScene:a3];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (BOOL)writeToURLWithUSDKit:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(a3 "pathExtension")];
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
    v7 = [v6 URLByAppendingPathComponent:{objc_msgSend(a3, "lastPathComponent")}];
    if ([v5 isEqualToString:@"usdz"])
    {
      v7 = [[(NSURL *)v7 URLByDeletingPathExtension] URLByAppendingPathExtension:@"usdc"];
    }

    +[SCNTransaction flush];
    v8 = [objc_msgSend(a3 "URLByDeletingPathExtension")];
    if (!v8 || (v9 = v8, [(__CFString *)v8 isEqualToString:&stru_282DCC058]))
    {
      v9 = @"root_node";
    }

    USDKitConverter::USDKitConverter(v27, self, &v9->isa, v7, [v6 path]);
    USKScene = USDKitConverter::makeUSKScene(v27, v7);
    v10 = [a3 URLByDeletingLastPathComponent];
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:0];
    if (v12)
    {
      if ([v5 isEqualToString:@"usdz"])
      {
        [USKScene saveAndCreateUSDZPackageWithURL:a3];
      }

      else
      {
        [USKScene save];
        if ([v11 fileExistsAtPath:{objc_msgSend(a3, "path")}])
        {
          [v11 removeItemAtURL:a3 error:0];
        }

        v13 = [objc_msgSend(a3 "URLByDeletingLastPathComponent")];
        v14 = [v11 enumeratorAtPath:{objc_msgSend(v6, "path")}];
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
              if ([v11 fileExistsAtPath:v20])
              {
                [v11 removeItemAtPath:v20 error:0];
              }

              [v11 moveItemAtPath:v19 toPath:v20 error:0];
            }

            v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v15);
        }
      }
    }

    [v11 removeItemAtURL:v6 error:0];
    USDKitConverter::~USDKitConverter(v27);
  }

  else
  {
LABEL_16:
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)_exportAsMovieOperationWithDestinationURL:(id)a3 size:(CGSize)a4 attributes:(id)a5 delegate:(id)a6 didEndSelector:(SEL)a7 userInfo:(void *)a8
{
  height = a4.height;
  width = a4.width;
  v16 = [SCNRenderer rendererWithDevice:0 options:0];
  [(SCNRenderer *)v16 setScene:self];
  v17 = [[SCNMovieExportOperation alloc] initWithRenderer:v16 size:a5 attributes:a3 outputURL:width, height];
  [(_SCNExportOperation *)v17 setDelegate:a6];
  [(_SCNExportOperation *)v17 setUserInfo:a8];
  [(_SCNExportOperation *)v17 setDidEndSelector:a7];
  return v17;
}

- (id)debugQuickLookObjectWithPointOfView:(id)a3
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
  if (a3)
  {
    [(SCNRenderer *)v6 setPointOfView:a3];
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