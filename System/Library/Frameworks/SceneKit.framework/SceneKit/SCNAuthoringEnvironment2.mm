@interface SCNAuthoringEnvironment2
+ (id)authoringEnvironmentForScene:(id)scene createIfNeeded:(BOOL)needed;
- (SCNAuthoringEnvironment2)initWithScene:(id)scene;
- (id)authoringCamera:(int64_t)camera;
- (id)cameraFrustumGeometry;
- (id)cameraGeometry;
- (id)cameraNearPlaneGeometry;
- (id)cameraOrthographicFrustumGeometry;
- (id)fieldGeometry;
- (id)geometryForLightType:(id)type;
- (id)particlesGeometry;
- (void)_resetLightAuthoringWithContainerNode:(id)node source:(id)source light:(id)light;
- (void)_updateRootsVisibility;
- (void)addCameraNode:(id)node;
- (void)addLightNode:(id)node;
- (void)addNodeToSelection:(id)selection;
- (void)addParticlesNode:(id)node;
- (void)addPhysicsFieldNode:(id)node;
- (void)addedNode:(id)node;
- (void)cancelSelection;
- (void)dealloc;
- (void)prepareScene:(id)scene;
- (void)removeCameraNode:(id)node;
- (void)removeLightNode:(id)node;
- (void)removeParticlesNode:(id)node;
- (void)removePhysicsFieldNode:(id)node;
- (void)removedNode:(id)node;
- (void)selectNode:(id)node;
- (void)selectNodes:(id)nodes;
- (void)setAuthoringCamera:(int64_t)camera forView:(id)view;
- (void)setupParticleMeshEmitter:(id)emitter authoringNode:(id)node;
- (void)updateCameraNode:(id)node withSourceNode:(id)sourceNode;
- (void)updateFieldNode:(id)node withSourceNode:(id)sourceNode;
- (void)updateLightNode:(id)node withSourceNode:(id)sourceNode;
- (void)updateLightTypeForNode:(id)node source:(id)source light:(id)light screenspaceScalingFactor:(float)factor;
- (void)updateParticlesNode:(id)node withSourceNode:(id)sourceNode;
- (void)updateWithRenderer:(id)renderer;
@end

@implementation SCNAuthoringEnvironment2

+ (id)authoringEnvironmentForScene:(id)scene createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  +[SCNTransaction lock];
  sceneRef = [scene sceneRef];
  if (sceneRef)
  {
    v7 = sceneRef;
    C3DSceneLock(sceneRef);
    AuthoringEnvironment2 = C3DSceneGetAuthoringEnvironment2(v7, neededCopy);
    C3DSceneUnlock(v7);
  }

  else
  {
    AuthoringEnvironment2 = 0;
  }

  +[SCNTransaction unlock];
  return AuthoringEnvironment2;
}

- (SCNAuthoringEnvironment2)initWithScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = SCNAuthoringEnvironment2;
  v4 = [(SCNAuthoringEnvironment2 *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SCNAuthoringEnvironment2 *)v4 prepareScene:scene];
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_lightsDictionary);
  CFRelease(self->_camerasDictionary);
  CFRelease(self->_particlesDictionary);
  CFRelease(self->_physicsFieldsDictionary);

  v3.receiver = self;
  v3.super_class = SCNAuthoringEnvironment2;
  [(SCNAuthoringEnvironment2 *)&v3 dealloc];
}

- (void)prepareScene:(id)scene
{
  v62[1] = *MEMORY[0x277D85DE8];
  self->_scene = [scene sceneRef];
  self->_manipulator = objc_alloc_init(SCNManipulator);
  self->_selection = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = MEMORY[0x277CBF138];
  v5 = MEMORY[0x277CBF150];
  self->_lightsDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  self->_camerasDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_particlesDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_physicsFieldsDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_layerRoot = +[SCNNode node];
  self->_overlayLayerRoot = +[SCNNode node];
  self->_lightRoot = +[SCNNode node];
  self->_cameraRoot = +[SCNNode node];
  self->_particlesRoot = +[SCNNode node];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  Mesh::AppendWireframeSphere(&v57, 1.0, 3u, C3DAuthoringEnvironmentColorWhite);
  v6 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(&v57)];
  self->_cameraTarget = v6;
  [(SCNNode *)v6 setHidden:1];
  if (v60)
  {
    *(&v60 + 1) = v60;
    operator delete(v60);
  }

  if (*(&v58 + 1))
  {
    *&v59 = *(&v58 + 1);
    operator delete(*(&v58 + 1));
  }

  if (v57)
  {
    *(&v57 + 1) = v57;
    operator delete(v57);
  }

  self->_physicsFieldsRoot = +[SCNNode node];
  self->_pointsOfViewRoot = +[SCNNode node];
  [(SCNNode *)self->_layerRoot setName:@"_layerRoot"];
  [(SCNNode *)self->_overlayLayerRoot setName:@"_overlayLayerRoot"];
  [(SCNNode *)self->_lightRoot setName:@"_lightRoot"];
  [(SCNNode *)self->_cameraRoot setName:@"_cameraRoot"];
  [(SCNNode *)self->_particlesRoot setName:@"_particlesRoot"];
  [(SCNNode *)self->_physicsFieldsRoot setName:@"_physicsFieldRoot"];
  [(SCNNode *)self->_pointsOfViewRoot setName:@"_pointsOfViewRoot"];
  self->_paleGreen = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorPaleGreen];
  self->_paleBlue = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorPaleBlue];
  self->_red = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorRed];
  self->_green = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorGreen];
  self->_blue = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorBlue];
  self->_cyan = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorCyan];
  self->_yellow = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorYellow];
  self->_orange = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorOrange];
  self->_pink = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorPink];
  self->_grayLight = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGrayLight];
  self->_grayMedium = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGrayMedium];
  self->_grayDark = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGrayDark];
  self->_white = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorWhite];
  [(SCNNode *)self->_layerRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_overlayLayerRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_lightRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_cameraRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_particlesRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_physicsFieldsRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_cameraTarget setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_pointsOfViewRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_lightRoot setHidden:1];
  [(SCNNode *)self->_cameraRoot setHidden:1];
  [(SCNNode *)self->_particlesRoot setHidden:1];
  [scene setRootNode:self->_layerRoot forLayer:1];
  [scene setRootNode:self->_overlayLayerRoot forLayer:2];
  [(SCNNode *)self->_layerRoot addChildNode:self->_lightRoot];
  [(SCNNode *)self->_layerRoot addChildNode:self->_cameraRoot];
  [(SCNNode *)self->_layerRoot addChildNode:self->_particlesRoot];
  [(SCNNode *)self->_layerRoot addChildNode:self->_physicsFieldsRoot];
  [(SCNNode *)self->_layerRoot addChildNode:self->_cameraTarget];
  [(SCNNode *)self->_layerRoot addChildNode:self->_pointsOfViewRoot];
  rootNode = [scene rootNode];
  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __41__SCNAuthoringEnvironment2_prepareScene___block_invoke;
  v56[3] = &unk_2782FBA38;
  v56[4] = self;
  [rootNode enumerateChildNodesUsingBlock:v56];
  +[SCNTransaction commit];
  v62[0] = [scene rootNode];
  BoundingSphere = SCNNodeGetBoundingSphere([MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1], 0x10000);
  v9 = v8;
  +[SCNNode simdLocalUp];
  v45 = v10;
  +[SCNNode simdLocalRight];
  v44 = v11;
  +[SCNNode simdLocalFront];
  v43 = v12;
  v13 = 0;
  v12.i64[0] = BoundingSphere;
  v12.i64[1] = v9;
  v47 = v12;
  v14 = *(&v9 + 1) * 1.33;
  if (*(&v9 + 1) <= 0.0)
  {
    v14 = 1.0;
  }

  v15 = v14;
  v16 = *(&v9 + 1);
  do
  {
    v17 = +[SCNCamera camera];
    v18 = [SCNAuthoringEnvironment2 prepareScene:]::camNames[v13];
    -[SCNCamera setName:](v17, "setName:", [MEMORY[0x277CCACA8] stringWithFormat:@"_authoringCamera%s", v18]);
    [(SCNCamera *)v17 setUsesOrthographicProjection:v13 != 0];
    [(SCNCamera *)v17 setAutomaticallyAdjustsZRange:1];
    [(SCNCamera *)v17 setOrthographicScale:v15];
    v19 = +[SCNNode node];
    [(SCNNode *)v19 setCamera:v17];
    -[SCNNode setName:](v19, "setName:", [MEMORY[0x277CCACA8] stringWithUTF8String:v18]);
    [(SCNNode *)v19 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v19 setAuthoringCameraType:v13];
    if (v13 <= 2)
    {
      if (v13)
      {
        if (v13 == 1)
        {
          LODWORD(v20) = -1077342245;
          [(SCNNode *)v19 setEulerAngles:v20, 0.0, 0.0];
          [(SCNCamera *)v17 zNear];
          v25 = v24 + v16;
          [(SCNNode *)v19 setSimdWorldPosition:*vmlaq_n_f32(v47, v45, v25).i64];
        }

        else
        {
          LODWORD(v20) = 1070141403;
          [(SCNNode *)v19 setEulerAngles:v20, 0.0, 0.0];
          [(SCNCamera *)v17 zNear];
          v31.f32[0] = v30 + v16;
          [(SCNNode *)v19 setSimdWorldPosition:*vmlsq_lane_f32(v47, v45, v31, 0).i64];
        }
      }

      else
      {
        [(SCNCamera *)[(SCNNode *)v19 camera] setZNear:0.1];
        if (self->_scene && (+[SCNTransaction lock](SCNTransaction, "lock"), C3DSceneLock(self->_scene), v28 = C3DCreateDefaultCameraNode(self->_scene, 1), C3DSceneUnlock(self->_scene), +[SCNTransaction unlock], v28))
        {
          v29 = [SCNNode nodeWithNodeRef:v28];
          if (v29)
          {
            [(SCNNode *)v29 transform];
          }

          else
          {
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
          }

          v57 = v52;
          v58 = v53;
          v59 = v54;
          v60 = v55;
          [(SCNNode *)v19 setTransform:&v57];
          CFRelease(v28);
        }

        else
        {
          v36 = [objc_msgSend(rootNode childNodesWithAttribute:objc_opt_class() recursively:{1), "firstObject"}];
          if (v36)
          {
            [v36 transform];
            v57 = v48;
            v58 = v49;
            v59 = v50;
            v60 = v51;
            [(SCNNode *)v19 setTransform:&v57];
          }

          else
          {
            LODWORD(v38) = 1061628640;
            LODWORD(v37) = -1094336732;
            [(SCNNode *)v19 setEulerAngles:v37, v38, 0.0];
            LODWORD(v39) = 1075302105;
            LODWORD(v40) = 1069321028;
            LODWORD(v41) = 1075415351;
            [(SCNNode *)v19 setPosition:v39, v40, v41];
          }
        }
      }
    }

    else if (v13 > 4)
    {
      if (v13 == 5)
      {
        [(SCNNode *)v19 setEulerAngles:0.0, 0.0, 0.0];
        [(SCNCamera *)v17 zNear];
        v27.f32[0] = v26 + v16;
        [(SCNNode *)v19 setSimdWorldPosition:*vmlsq_lane_f32(v47, v43, v27, 0).i64];
      }

      else
      {
        LODWORD(v21) = -1068953637;
        [(SCNNode *)v19 setEulerAngles:0.0, v21, 0.0];
        [(SCNCamera *)v17 zNear];
        v35 = v34 + v16;
        [(SCNNode *)v19 setSimdWorldPosition:*vmlaq_n_f32(v47, v43, v35).i64];
      }
    }

    else if (v13 == 3)
    {
      LODWORD(v21) = -1077342245;
      [(SCNNode *)v19 setEulerAngles:0.0, v21, 0.0];
      [(SCNCamera *)v17 zNear];
      v23.f32[0] = v22 + v16;
      [(SCNNode *)v19 setSimdWorldPosition:*vmlsq_lane_f32(v47, v44, v23, 0).i64];
    }

    else
    {
      LODWORD(v21) = 1070141403;
      [(SCNNode *)v19 setEulerAngles:0.0, v21, 0.0];
      [(SCNCamera *)v17 zNear];
      v33 = v32 + v16;
      [(SCNNode *)v19 setSimdWorldPosition:*vmlaq_n_f32(v47, v44, v33).i64];
    }

    [(SCNNode *)self->_pointsOfViewRoot addChildNode:v19];
    ++v13;
  }

  while (v13 != 7);
  [(SCNAuthoringEnvironment2 *)self setDisplayMask:0];
}

- (id)geometryForLightType:(id)type
{
  if ([type isEqualToString:@"probe"])
  {
    return 0;
  }

  lightGeometry = self->_lightGeometry;
  if (!lightGeometry)
  {
    *__p = 0u;
    v11 = 0u;
    *v8 = 0u;
    v9 = 0u;
    *v7 = 0u;
    Mesh::AppendWireframeSphere(v7, 0.5, 3u, C3DAuthoringEnvironmentColorWhite);
    self->_lightGeometry = Mesh::CreateLineGeometry(v7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v8[1])
    {
      *&v9 = v8[1];
      operator delete(v8[1]);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }

    lightGeometry = self->_lightGeometry;
  }

  v6 = [(SCNGeometry *)lightGeometry copy];
  [v6 setFirstMaterial:{-[SCNMaterial copy](-[SCNGeometry firstMaterial](self->_lightGeometry, "firstMaterial"), "copy")}];
  return v6;
}

- (void)addLightNode:(id)node
{
  if (CFDictionaryContainsKey(self->_lightsDictionary, node))
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNAuthoringEnvironment2 addLightNode:];
    }
  }

  else
  {
    v6 = +[SCNNode nodeWithGeometry:](SCNNode, "nodeWithGeometry:", -[SCNAuthoringEnvironment2 geometryForLightType:](self, "geometryForLightType:", [objc_msgSend(node "light")]));
    [(SCNNode *)v6 setName:@"lightAuth"];
    [(SCNNode *)v6 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v6 setAuthoringEnvironmentCompanionNode:node];
    [node setAuthoringEnvironmentPresentationNode:v6];
    [(SCNNode *)self->_lightRoot addChildNode:v6];
    lightsDictionary = self->_lightsDictionary;

    CFDictionaryAddValue(lightsDictionary, node, v6);
  }
}

- (id)particlesGeometry
{
  particlesGeometry = self->_particlesGeometry;
  if (!particlesGeometry)
  {
    *__p = 0u;
    v12 = 0u;
    *v9 = 0u;
    v10 = 0u;
    *v8 = 0u;
    v6 = 0x3EB33333BCF5C28FLL;
    v7 = 1027101164;
    Mesh::AppendWireframeSphere(v8, &v6, 0.2, 3u, C3DAuthoringEnvironmentColorWhite);
    v6 = 0xBE6B851FBE4CCCCDLL;
    v7 = 1052602532;
    Mesh::AppendWireframeSphere(v8, &v6, 0.2, 3u, C3DAuthoringEnvironmentColorWhite);
    v6 = 0xBE6B851F3E99999ALL;
    v7 = -1094881116;
    Mesh::AppendWireframeSphere(v8, &v6, 0.2, 3u, C3DAuthoringEnvironmentColorWhite);
    self->_particlesGeometry = Mesh::CreateLineGeometry(v8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v9[1])
    {
      *&v10 = v9[1];
      operator delete(v9[1]);
    }

    if (v8[0])
    {
      v8[1] = v8[0];
      operator delete(v8[0]);
    }

    particlesGeometry = self->_particlesGeometry;
  }

  v4 = [(SCNGeometry *)particlesGeometry copy];
  [v4 setFirstMaterial:{-[SCNMaterial copy](-[SCNGeometry firstMaterial](self->_particlesGeometry, "firstMaterial"), "copy")}];
  return v4;
}

- (void)setupParticleMeshEmitter:(id)emitter authoringNode:(id)node
{
  v16[1] = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(node "childNodes")] == 2)
  {
    [objc_msgSend(objc_msgSend(node "childNodes")];
  }

  nodeRef = [emitter nodeRef];
  if (nodeRef)
  {
    ParticleSystems = C3DNodeGetParticleSystems(nodeRef);
    if (ParticleSystems)
    {
      v9 = ParticleSystems;
      if (CFArrayGetCount(ParticleSystems))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
        EmitterShape = C3DParticleSystemGetEmitterShape(ValueAtIndex);
        if (EmitterShape)
        {
          Copy = C3DGeometryCreateCopy(EmitterShape);
          v13 = [SCNGeometry geometryWithGeometryRef:Copy];
          CFRelease(Copy);
          v14 = +[SCNMaterial material];
          [(SCNMaterial *)v14 setLightingModelName:@"SCNLightingModelConstant"];
          [(SCNMaterialProperty *)[(SCNMaterial *)v14 diffuse] setContents:self->_yellow];
          [(SCNMaterial *)v14 setFillMode:1];
          v16[0] = v14;
          -[SCNGeometry setMaterials:](v13, "setMaterials:", [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1]);
          v15 = [SCNNode nodeWithGeometry:v13];
          [(SCNNode *)v15 setAuthoringEnvironmentNode:1];
          [(SCNNode *)v15 setAuthoringEnvironmentCompanionNode:emitter];
          [emitter setAuthoringEnvironmentPresentationNode:v15];
          [node addChildNode:v15];
        }
      }
    }
  }
}

- (void)addParticlesNode:(id)node
{
  if (CFDictionaryContainsKey(self->_particlesDictionary, node))
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNAuthoringEnvironment2 addParticlesNode:];
    }
  }

  else
  {
    v6 = +[SCNNode node];
    v7 = [SCNNode nodeWithGeometry:[(SCNAuthoringEnvironment2 *)self particlesGeometry]];
    [(SCNNode *)v7 setName:@"particlesAuth"];
    [(SCNNode *)v7 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v7 setAuthoringEnvironmentCompanionNode:node];
    [node setAuthoringEnvironmentPresentationNode:v7];
    [(SCNNode *)v6 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v6 addChildNode:v7];
    [(SCNNode *)self->_particlesRoot addChildNode:v6];
    particlesDictionary = self->_particlesDictionary;

    CFDictionaryAddValue(particlesDictionary, node, v6);
  }
}

- (id)cameraGeometry
{
  result = self->_cameraGeometry;
  if (!result)
  {
    result = Mesh::CreateCameraGeometry(0);
    self->_cameraGeometry = result;
  }

  return result;
}

- (id)cameraFrustumGeometry
{
  result = self->_cameraFrustumGeometry;
  if (!result)
  {
    result = Mesh::CreateCameraFrustumGeometry(0);
    self->_cameraFrustumGeometry = result;
  }

  return result;
}

- (id)cameraOrthographicFrustumGeometry
{
  result = self->_cameraOrthographicFrustumGeometry;
  if (!result)
  {
    result = Mesh::CreateOrthographicCameraFrustumGeometry(0);
    self->_cameraOrthographicFrustumGeometry = result;
  }

  return result;
}

- (id)cameraNearPlaneGeometry
{
  result = self->_cameraNearPlaneGeometry;
  if (!result)
  {
    result = Mesh::CreateCameraNearPlaneGeometry(0);
    self->_cameraNearPlaneGeometry = result;
  }

  return result;
}

- (id)fieldGeometry
{
  result = self->_fieldGeometry;
  if (!result)
  {
    result = Mesh::CreatePhysicsFieldGeometry(0);
    self->_fieldGeometry = result;
  }

  return result;
}

- (void)addCameraNode:(id)node
{
  if (CFDictionaryContainsKey(self->_camerasDictionary, node))
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNAuthoringEnvironment2 addCameraNode:];
    }
  }

  else if ((![node name] || objc_msgSend(objc_msgSend(node, "name"), "compare:", @"kSCNFreeViewCameraName")) && (objc_msgSend(node, "authoringEnvironmentNode") & 1) == 0)
  {
    v6 = [SCNNode nodeWithGeometry:[(SCNAuthoringEnvironment2 *)self cameraGeometry]];
    [(SCNNode *)v6 setName:@"cameraAuth"];
    [(SCNNode *)v6 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v6 setAuthoringEnvironmentCompanionNode:node];
    [node setAuthoringEnvironmentPresentationNode:v6];
    if ([objc_msgSend(node "camera")])
    {
      cameraOrthographicFrustumGeometry = [(SCNAuthoringEnvironment2 *)self cameraOrthographicFrustumGeometry];
    }

    else
    {
      cameraOrthographicFrustumGeometry = [(SCNAuthoringEnvironment2 *)self cameraFrustumGeometry];
    }

    v8 = [SCNNode nodeWithGeometry:cameraOrthographicFrustumGeometry];
    [(SCNNode *)v8 setName:@"cameraFrustumAuth"];
    [(SCNNode *)v8 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v8 setHittable:0];
    v9 = [SCNNode nodeWithGeometry:[(SCNAuthoringEnvironment2 *)self cameraNearPlaneGeometry]];
    [(SCNNode *)v9 setName:@"cameraNearPlaneAuth"];
    [(SCNNode *)v9 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v9 setHittable:0];
    [(SCNNode *)self->_cameraRoot addChildNode:v6];
    [(SCNNode *)v6 addChildNode:v8];
    [(SCNNode *)v8 addChildNode:v9];
    camerasDictionary = self->_camerasDictionary;

    CFDictionaryAddValue(camerasDictionary, node, v6);
  }
}

- (void)removeCameraNode:(id)node
{
  [CFDictionaryGetValue(self->_camerasDictionary node)];
  camerasDictionary = self->_camerasDictionary;

  CFDictionaryRemoveValue(camerasDictionary, node);
}

- (void)addPhysicsFieldNode:(id)node
{
  if (CFDictionaryContainsKey(self->_physicsFieldsDictionary, node))
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNAuthoringEnvironment2 addPhysicsFieldNode:];
    }
  }

  else
  {
    v6 = [SCNNode nodeWithGeometry:[(SCNAuthoringEnvironment2 *)self fieldGeometry]];
    [(SCNNode *)v6 setName:@"fieldAuth"];
    [(SCNNode *)v6 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v6 setAuthoringEnvironmentCompanionNode:node];
    [node setAuthoringEnvironmentPresentationNode:v6];
    [(SCNNode *)self->_physicsFieldsRoot addChildNode:v6];
    physicsFieldsDictionary = self->_physicsFieldsDictionary;

    CFDictionaryAddValue(physicsFieldsDictionary, node, v6);
  }
}

- (void)removePhysicsFieldNode:(id)node
{
  [CFDictionaryGetValue(self->_physicsFieldsDictionary node)];
  physicsFieldsDictionary = self->_physicsFieldsDictionary;

  CFDictionaryRemoveValue(physicsFieldsDictionary, node);
}

- (void)removeLightNode:(id)node
{
  [CFDictionaryGetValue(self->_lightsDictionary node)];
  lightsDictionary = self->_lightsDictionary;

  CFDictionaryRemoveValue(lightsDictionary, node);
}

- (void)removeParticlesNode:(id)node
{
  [CFDictionaryGetValue(self->_particlesDictionary node)];
  particlesDictionary = self->_particlesDictionary;

  CFDictionaryRemoveValue(particlesDictionary, node);
}

- (void)addedNode:(id)node
{
  if (([node authoringEnvironmentNode] & 1) == 0)
  {
    if ([node light])
    {
      [(SCNAuthoringEnvironment2 *)self addLightNode:node];
    }

    if ([node particleSystems])
    {
      [(SCNAuthoringEnvironment2 *)self addParticlesNode:node];
    }

    if ([node camera])
    {
      [(SCNAuthoringEnvironment2 *)self addCameraNode:node];
    }

    if ([node physicsField])
    {

      [(SCNAuthoringEnvironment2 *)self addPhysicsFieldNode:node];
    }
  }
}

- (void)removedNode:(id)node
{
  if (([node authoringEnvironmentNode] & 1) == 0)
  {
    nodeCopy = node;
    if ([node light])
    {
      [(SCNAuthoringEnvironment2 *)self removeLightNode:node];
    }

    if ([node particleSystems])
    {
      [(SCNAuthoringEnvironment2 *)self removeParticlesNode:node];
    }

    if ([node camera])
    {
      [(SCNAuthoringEnvironment2 *)self removeCameraNode:node];
    }

    if ([node physicsField])
    {
      [(SCNAuthoringEnvironment2 *)self removePhysicsFieldNode:node];
    }
  }
}

- (void)selectNode:(id)node
{
  objc_sync_enter(self);
  if (([node authoringEnvironmentNode] & 1) == 0)
  {
    [(NSMutableSet *)self->_selection removeAllObjects];
    if (node)
    {
      [(NSMutableSet *)self->_selection addObject:node];
    }
  }

  objc_sync_exit(self);
}

- (void)addNodeToSelection:(id)selection
{
  objc_sync_enter(self);
  authoringEnvironmentNode = [selection authoringEnvironmentNode];
  if (selection)
  {
    v6 = authoringEnvironmentNode;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [(NSMutableSet *)self->_selection addObject:selection];
  }

  objc_sync_exit(self);
}

- (void)selectNodes:(id)nodes
{
  v14 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  [(NSMutableSet *)self->_selection removeAllObjects];
  if (nodes)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [nodes countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(nodes);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if (([v8 authoringEnvironmentNode] & 1) == 0)
          {
            [(NSMutableSet *)self->_selection addObject:v8];
          }
        }

        v5 = [nodes countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  objc_sync_exit(self);
}

- (void)cancelSelection
{
  objc_sync_enter(self);
  [(NSMutableSet *)self->_selection removeAllObjects];

  objc_sync_exit(self);
}

- (void)_resetLightAuthoringWithContainerNode:(id)node source:(id)source light:(id)light
{
  [node removeAllChilds];
  [node setValue:objc_msgSend(light forKey:{"type"), @"SCNDebugLightTypeKey"}];
  [node setValue:0 forKey:@"SCNDebugLightSubTypeKey"];
  if ([objc_msgSend(light "type")])
  {
    return;
  }

  if ([objc_msgSend(light "type")])
  {
    *__p = 0u;
    v59 = 0u;
    *v56 = 0u;
    v57 = 0u;
    *v55 = 0u;
    Mesh::AppendWireframeSphere(v55, 1.0, 3u, C3DAuthoringEnvironmentColorWhite);
    v9 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(v55)];
    [(SCNNode *)v9 setName:@"lightInnerAuth"];
    [(SCNNode *)v9 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v9 setHittable:0];
    [node addChildNode:v9];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v56[1])
    {
      *&v57 = v56[1];
      operator delete(v56[1]);
    }

    if (v55[0])
    {
      v55[1] = v55[0];
      operator delete(v55[0]);
    }

    *__p = 0u;
    v59 = 0u;
    *v56 = 0u;
    v57 = 0u;
    *v55 = 0u;
    Mesh::AppendWireframeSphere(v55, 1.0, 3u, C3DAuthoringEnvironmentColorWhite);
    v10 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(v55)];
    [(SCNNode *)v10 setName:@"lightOuterAuth"];
    [(SCNNode *)v10 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v10 setHittable:0];
    [node addChildNode:v10];
LABEL_19:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v56[1])
    {
      *&v57 = v56[1];
      operator delete(v56[1]);
    }

    if (v55[0])
    {
      v55[1] = v55[0];
      operator delete(v55[0]);
    }

    return;
  }

  if (([objc_msgSend(light "type")] & 1) != 0 || objc_msgSend(objc_msgSend(light, "type"), "isEqualToString:", @"ies"))
  {
    *__p = 0u;
    v59 = 0u;
    *v56 = 0u;
    v57 = 0u;
    *v55 = 0u;
    Mesh::AppendZUpArrow(v55, &C3DAuthoringEnvironmentColorOrange);
    v11 = [SCNNode nodeWithGeometry:Mesh::CreateTriangleGeometry(v55)];
    [(SCNNode *)v11 setName:@"lightArrowAuth"];
    [(SCNNode *)v11 setAuthoringEnvironmentNode:1];
    LODWORD(v12) = 1078530011;
    [(SCNNode *)v11 setEulerAngles:v12, 0.0, 0.0];
    LODWORD(v13) = 10.0;
    LODWORD(v14) = 10.0;
    LODWORD(v15) = 10.0;
    [(SCNNode *)v11 setScale:v13, v14, v15];
    [(SCNNode *)v11 setHittable:0];
    [node addChildNode:v11];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v56[1])
    {
      *&v57 = v56[1];
      operator delete(v56[1]);
    }

    if (v55[0])
    {
      v55[1] = v55[0];
      operator delete(v55[0]);
    }

    *__p = 0u;
    v59 = 0u;
    *v56 = 0u;
    v57 = 0u;
    *v55 = 0u;
    *&v52 = 0;
    DWORD2(v52) = 0;
    v61.x = 1.0;
    v61.y = 1.0;
    v61.z = 0.5;
    Mesh::AppendWireframeBox(v55, &v52, v61, &C3DAuthoringEnvironmentColorOrange);
    v16 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(v55)];
    [(SCNNode *)v16 setSimdPivot:*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), 0.0];
    [(SCNNode *)v16 setName:@"lightShadowAuth"];
    [(SCNNode *)v16 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v16 setHittable:0];
    [node addChildNode:v16];
    goto LABEL_19;
  }

  if (![objc_msgSend(light "type")])
  {
    if ([objc_msgSend(light "type")])
    {
      v18 = +[SCNSphere sphereWithRadius:](SCNSphere, "sphereWithRadius:", dbl_21C2A2360[[light probeType] == 1]);
      [(SCNGeometry *)v18 setName:@"probeGeometry"];
      if ([light probeType])
      {
        *__p = 0u;
        v59 = 0u;
        *v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        v62.x = 1.0;
        v62.y = 1.0;
        v62.z = 1.0;
        Mesh::AppendWireframeBox(v55, &SCNVector3Zero, v62, C3DAuthoringEnvironmentColorRed);
        v19 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(v55)];
        [(SCNNode *)v19 setName:@"lightProbeExtents"];
        [(SCNNode *)v19 setAuthoringEnvironmentNode:1];
        [(SCNNode *)v19 setHittable:0];
        [node addChildNode:v19];
        vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v55);
        [(SCNMaterial *)[(SCNGeometry *)v18 firstMaterial] setColorBufferWriteMask:0];
      }

      else
      {
        _sphericalHarmonics = [light _sphericalHarmonics];
        [objc_msgSend(-[SCNGeometry material](v18 "material")];
        [-[SCNGeometry material](v18 "material")];
        if (_sphericalHarmonics)
        {
          v30 = +[SCNProgram program];
          resourceManager = [(SCNMTLRenderContext *)[(SCNRenderer *)self->_renderer _renderContextMetal] resourceManager];
          -[SCNProgram setLibrary:](v30, "setLibrary:", [-[SCNMTLResourceManager libraryManager](resourceManager) frameworkLibrary]);
          [(SCNProgram *)v30 setVertexFunctionName:@"scn_probesphere_from_sh_vertex"];
          [(SCNProgram *)v30 setFragmentFunctionName:@"scn_probesphere_from_sh_fragment"];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __79__SCNAuthoringEnvironment2__resetLightAuthoringWithContainerNode_source_light___block_invoke;
          v54[3] = &unk_2782FF710;
          v54[4] = light;
          [(SCNProgram *)v30 handleBindingOfBufferNamed:@"sh" frequency:1 usingBlock:v54];
          [-[SCNGeometry material](v18 "material")];
        }
      }

      v32 = [SCNNode nodeWithGeometry:v18];
      [(SCNNode *)v32 setName:@"probe"];
      [(SCNNode *)v32 setAuthoringEnvironmentNode:1];
      [(SCNNode *)v32 setAuthoringEnvironmentCompanionNode:source];
      [source setAuthoringEnvironmentPresentationNode:v32];
      [(SCNNode *)v32 setHittable:1];
      [node addChildNode:v32];
      *__p = 0u;
      v59 = 0u;
      *v56 = 0u;
      v57 = 0u;
      *v55 = 0u;
      Mesh::AppendWireframeSphere(v55, 1.0, 3u, &C3DAuthoringEnvironmentColorGrayMedium);
      LineGeometry = Mesh::CreateLineGeometry(v55);
      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v55);
      v34 = [SCNNode nodeWithGeometry:LineGeometry];
      [(SCNNode *)v34 setName:@"lightInnerAuth"];
      [(SCNNode *)v34 setAuthoringEnvironmentNode:1];
      [(SCNNode *)v34 setHittable:0];
      [light zFar];
      v35 = 0.5;
      v37 = v36 * 0.5;
      *&v37 = v37;
      LODWORD(v35) = LODWORD(v37);
      LODWORD(v38) = LODWORD(v37);
      [(SCNNode *)v34 setScale:v37, v35, v38];
      nodeCopy2 = node;
      v40 = v34;
      goto LABEL_56;
    }

    if (![objc_msgSend(light "type")])
    {
      return;
    }

    v52 = 0u;
    v53 = 0u;
    *&v20 = C3DLightGetAreaDescription([light lightRef], &v52).n128_u64[0];
    [node setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedChar:", v52, v20), @"SCNDebugLightSubTypeKey"}];
    v21 = 0;
    if (v52 <= 1u)
    {
      if (v52)
      {
        if (v52 != 1)
        {
          goto LABEL_55;
        }

        *__p = 0u;
        v59 = 0u;
        *v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        v51.x = -1.0;
        *&v51.y = 1065353216;
        __asm { FMOV            V0.2S, #1.0 }

        *&v50.x = _D0;
        v50.z = 0.0;
        *&v49.x = -_D0;
        v49.z = 0.0;
        __asm { FMOV            V0.2S, #-1.0 }

        *&v48.x = _D0;
        v48.z = 0.0;
        Mesh::AppendQuad(v55, &v51, &v50, &v49, &v48, &C3DAuthoringEnvironmentColorOrange);
        v28 = Mesh::CreateLineGeometry(v55);
      }

      else
      {
        *__p = 0u;
        v59 = 0u;
        *v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        *&v51.x = 3212836864;
        v51.z = 0.0;
        *&v50.x = 1065353216;
        v50.z = 0.0;
        Mesh::AppendSegment(v55, &v51, &v50, &C3DAuthoringEnvironmentColorOrange, &C3DAuthoringEnvironmentColorOrange);
        v28 = Mesh::CreateLineGeometry(v55);
      }
    }

    else
    {
      switch(v52)
      {
        case 2u:
          *__p = 0u;
          v59 = 0u;
          *v56 = 0u;
          v57 = 0u;
          *v55 = 0u;
          Mesh::AppendWireframeXYDisk(v55, 1.0, &C3DAuthoringEnvironmentColorOrange);
          v28 = Mesh::CreateLineGeometry(v55);
          break;
        case 3u:
          *__p = 0u;
          v59 = 0u;
          *v56 = 0u;
          v57 = 0u;
          *v55 = 0u;
          Mesh::AppendWireframeSphere(v55, 1.0, 3u, &C3DAuthoringEnvironmentColorOrange);
          v28 = Mesh::CreateLineGeometry(v55);
          break;
        case 4u:
          *__p = 0u;
          v59 = 0u;
          *v56 = 0u;
          v57 = 0u;
          *v55 = 0u;
          v22 = v53;
          if (v53)
          {
            v23 = 0;
            v24 = v53 - 1;
            do
            {
              v25 = *(*(&v53 + 1) + 8 * v23);
              if (v24 == v23)
              {
                v26 = 0;
              }

              else
              {
                v26 = v23 + 1;
              }

              v27 = *(*(&v53 + 1) + 8 * v26);
              v51.x = -*&v25;
              v51.y = *(&v25 + 1);
              v51.z = 0.0;
              v50.x = -*&v27;
              v50.y = *(&v27 + 1);
              v50.z = 0.0;
              Mesh::AppendSegment(v55, &v51, &v50, &C3DAuthoringEnvironmentColorOrange, &C3DAuthoringEnvironmentColorOrange);
              ++v23;
            }

            while (v22 != v23);
          }

          v28 = Mesh::CreateLineGeometry(v55);
          break;
        default:
LABEL_55:
          v47 = [SCNNode nodeWithGeometry:v21];
          [(SCNNode *)v47 setName:@"lightAreaAuth"];
          [(SCNNode *)v47 setAuthoringEnvironmentNode:1];
          [(SCNNode *)v47 setAuthoringEnvironmentCompanionNode:source];
          nodeCopy2 = node;
          v40 = v47;
LABEL_56:
          [nodeCopy2 addChildNode:v40];
          return;
      }
    }

    v21 = v28;
    vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v55);
    goto LABEL_55;
  }

  v17 = +[SCNNode node];
  [(SCNNode *)v17 setName:@"lightSpotAuth"];
  [(SCNNode *)v17 setAuthoringEnvironmentNode:1];
  [(SCNNode *)v17 setHittable:0];

  [node addChildNode:v17];
}

void __79__SCNAuthoringEnvironment2__resetLightAuthoringWithContainerNode_source_light___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) _sphericalHarmonics];
  v4 = C3DDeduceSphericalHarmonicsOrderFromDataLength([v3 length]);
  v5 = [v3 bytes];
  if (v4 == 3)
  {
    v6 = v5;
    v7 = [v3 length];

    [a2 writeBytes:v6 length:v7];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __79__SCNAuthoringEnvironment2__resetLightAuthoringWithContainerNode_source_light___block_invoke_cold_1(v4, v8);
    }
  }
}

- (void)updateLightTypeForNode:(id)node source:(id)source light:(id)light screenspaceScalingFactor:(float)factor
{
  v11 = [node valueForKey:@"SCNDebugLightTypeKey"];
  v12 = [node valueForKey:@"SCNDebugLightSubTypeKey"];
  v13 = [objc_msgSend(node valueForKey:{@"disabled", "BOOLValue"}];
  v14 = 0;
  if ([(NSMutableSet *)self->_selection count]&& source)
  {
    sourceCopy = source;
    do
    {
      v14 = [(NSMutableSet *)self->_selection containsObject:sourceCopy];
      parentNode = [sourceCopy parentNode];
      if (v14)
      {
        break;
      }

      sourceCopy = parentNode;
    }

    while (parentNode);
  }

  sourceCopy2 = source;
  v17 = [source isHidden] & (v14 ^ 1);
  v18 = v13 ^ v17;
  if ((v13 ^ v17) == 1)
  {
    [node setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v17), @"disabled"}];
  }

  if ([objc_msgSend(node "childNodes")] && objc_msgSend(objc_msgSend(light, "type"), "isEqualToString:", @"probe"))
  {
    if ((v14 | v18))
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      _sphericalHarmonics = [light _sphericalHarmonics];
      v98 = [objc_msgSend(light "probeEnvironment")];
      v19 = [objc_msgSend(objc_msgSend(node childNodeWithName:@"probe" recursively:{1), "geometry"), "firstMaterial"}];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 program] != 0;
        LODWORD(v20) = [objc_msgSend(v20 "reflective")] != 0;
      }

      else
      {
        v21 = 0;
      }

      if ([light probeType])
      {
        _ZF = v20 == (v98 != 0);
      }

      else if (light)
      {
        _ZF = v21 == (_sphericalHarmonics != 0);
      }

      else
      {
        _ZF = 1;
      }

      LOBYTE(v18) = !_ZF;
    }
  }

  if ([objc_msgSend(light "type")])
  {
    areaType = [light areaType];
    LOBYTE(v18) = (areaType != [v12 integerValue]) | v18;
  }

  v25 = sourceCopy2;
  *&v23 = fmaxf(factor, 0.001);
  v99 = v23;
  if (![objc_msgSend(light "type")] || (v18 & 1) != 0)
  {
    [(SCNAuthoringEnvironment2 *)self _resetLightAuthoringWithContainerNode:node source:sourceCopy2 light:light];
  }

  v26.i32[1] = HIDWORD(v99);
  *v26.i32 = 1.0 / *&v99;
  v93 = v26;
  if ([objc_msgSend(light "type")])
  {
    v27 = [objc_msgSend(node "childNodes")];
    [light attenuationStartDistance];
    v29 = v28 * *v93.i32;
    *&v29 = v29;
    if (*&v29 < 0.0)
    {
      *&v29 = 0.0;
    }

    v95 = v29;
    [v27 setSimdScale:{*vdupq_lane_s32(*&v29, 0).i64}];
    [v27 setHidden:{*&v95 == 0.0, v95}];
    v30 = [objc_msgSend(node "childNodes")];
    [light attenuationEndDistance];
    v32 = v31 * *v93.i32;
    *&v32 = v32;
    if (*&v32 < 0.0)
    {
      *&v32 = 0.0;
    }

    v96 = v32;
    [v30 setSimdScale:{*vdupq_lane_s32(*&v32, 0).i64}];
    [v30 setHidden:{*&v96 == 0.0, v96}];
    if ([v25 isHidden])
    {
      v33 = 272;
      if (v14)
      {
        v33 = 256;
      }

      v34 = *(&self->super.isa + v33);
      [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
      [objc_msgSend(objc_msgSend(objc_msgSend(v27 "geometry")];
    }

    else
    {
      v48 = 240;
      if (v14)
      {
        v48 = 256;
        v49 = 256;
      }

      else
      {
        v49 = 248;
      }

      [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
      [objc_msgSend(objc_msgSend(objc_msgSend(v27 "geometry")];
      v34 = *(&self->super.isa + v49);
    }

    [objc_msgSend(objc_msgSend(objc_msgSend(v30 "geometry")];
    goto LABEL_87;
  }

  if ([objc_msgSend(light "type")])
  {
    [light spotOuterAngle];
    v36 = fmin(v35 / 180.0 * 3.14159265, 3.13159265);
    [light spotInnerAngle];
    v38 = v37 / 180.0 * 3.14159265;
    if (v38 >= v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = v38;
    }

    [light attenuationStartDistance];
    v41 = v40;
    [light attenuationEndDistance];
    v43 = v42;
    v44 = [objc_msgSend(node "childNodes")];
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"oa:%f ia:%f s:%f e:%f", v36, v39, v41, v43];
    v46 = [v44 valueForKey:@"AuthEnvHash"];
    if (!v46 || [v45 compare:v46])
    {
      __p = 0u;
      v108 = 0u;
      *v105 = 0u;
      v106 = 0u;
      *v104 = 0u;
      v103.z = 0.0;
      *&v103.x = 0;
      *&v102.x = 0;
      v102.z = -1.0;
      if (v41 > 0.0 || v43 > 0.0)
      {
        if (v41 > 0.0)
        {
          Mesh::AppendSphericalCap(v104, v41, v36 * 0.5, &C3DAuthoringEnvironmentColorGrayMedium);
        }

        if (v43 > 0.0)
        {
          Mesh::AppendSphericalCap(v104, v43, v36 * 0.5, &C3DAuthoringEnvironmentColorGrayMedium);
        }
      }

      else
      {
        v47 = tanf(v36 * 0.5);
        Mesh::AppendCone(v104, &v103, &v102, 20.0, v47 * 20.0, &C3DAuthoringEnvironmentColorOrange);
      }

      if (v39 > 0.0)
      {
        if (v43 <= 0.0)
        {
          v43 = 20.0;
        }

        v58 = tanf(v39 * 0.5);
        Mesh::AppendCone(v104, &v103, &v102, v43, v43 * v58, &C3DAuthoringEnvironmentColorOrange);
      }

      [v44 setGeometry:Mesh::CreateLineGeometry(v104)];
      [v44 setValue:v45 forKey:@"AuthEnvHash"];
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (v105[1])
      {
        *&v106 = v105[1];
        operator delete(v105[1]);
      }

      if (v104[0])
      {
        v104[1] = v104[0];
        operator delete(v104[0]);
      }
    }

    [v44 setSimdScale:{*vdupq_lane_s32(v93, 0).i64}];
    if ([sourceCopy2 isHidden])
    {
      if (v14)
      {
        v59 = 256;
      }

      else
      {
        v59 = 272;
      }

      v60 = *(&self->super.isa + v59);
    }

    else
    {
      v61 = 240;
      if (v14)
      {
        v61 = 256;
      }

      v60 = *(&self->super.isa + v61);
      if (v14)
      {
        v59 = 256;
      }

      else
      {
        v59 = 288;
      }
    }

    [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
    v62 = *(&self->super.isa + v59);
    nodeCopy = v44;
LABEL_86:
    [objc_msgSend(objc_msgSend(objc_msgSend(nodeCopy "geometry")];
    goto LABEL_87;
  }

  if (([objc_msgSend(light "type")] & 1) != 0 || objc_msgSend(objc_msgSend(light, "type"), "isEqualToString:", @"ies"))
  {
    v50 = [objc_msgSend(node "childNodes")];
    [objc_msgSend(objc_msgSend(node "childNodes")];
    v51 = [objc_msgSend(node "childNodes")];
    [v51 setHidden:{objc_msgSend(light, "automaticallyAdjustsShadowProjection")}];
    if (([light automaticallyAdjustsShadowProjection] & 1) == 0)
    {
      [light zNear];
      [v51 setSimdPosition:0.0];
      [light orthographicScale];
      v90 = v52;
      [light orthographicScale];
      v53.f64[0] = v90;
      v53.f64[1] = v54;
      v91 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_n_f64(v53, *v93.i32)));
      [light zFar];
      [light zNear];
      [v51 setSimdScale:v91];
    }

    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __89__SCNAuthoringEnvironment2_updateLightTypeForNode_source_light_screenspaceScalingFactor___block_invoke;
    v100[3] = &unk_2782FF738;
    v101 = v14;
    v100[4] = sourceCopy2;
    v100[5] = self;
    [node enumerateChildNodesUsingBlock:v100];
    isHidden = [sourceCopy2 isHidden];
    v56 = v14 == 0;
    if (isHidden)
    {
      v57 = 272;
    }

    else
    {
      v57 = 240;
    }

LABEL_83:
    if (!v56)
    {
      v57 = 256;
    }

    v62 = *(&self->super.isa + v57);
    nodeCopy = node;
    goto LABEL_86;
  }

  if (![objc_msgSend(light "type")])
  {
    if (![objc_msgSend(light "type")])
    {
      goto LABEL_87;
    }

    *v104 = 0u;
    *v105 = 0u;
    childNodes = [objc_msgSend(node childNodes];
    [childNodes setSimdScale:{*vdupq_lane_s32(v93, 0).i64}];
    if (LOBYTE(v104[0]) > 1u)
    {
      if (LOBYTE(v104[0]) != 2)
      {
        if (LOBYTE(v104[0]) != 3)
        {
LABEL_107:
          isHidden2 = [v25 isHidden];
          v57 = 240;
          if (isHidden2)
          {
            v57 = 272;
          }

          v56 = v14 == 0;
          goto LABEL_83;
        }

        [childNodes simdScale];
        v83 = *v105;
LABEL_106:
        [childNodes setSimdScale:{*vmulq_f32(v82, v83).i64}];
        goto LABEL_107;
      }
    }

    else
    {
      if (!LOBYTE(v104[0]))
      {
        __asm { FMOV            V0.4S, #1.0 }

        _Q0.i32[0] = v105[0];
        v97 = _Q0;
        goto LABEL_105;
      }

      if (LOBYTE(v104[0]) != 1)
      {
        goto LABEL_107;
      }
    }

    v84 = *v105;
    v84.i32[2] = 1.0;
    v97 = v84;
LABEL_105:
    [childNodes simdScale];
    v83 = v97;
    goto LABEL_106;
  }

  v65 = 288;
  if (v14)
  {
    v65 = 256;
  }

  [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
  [node setHidden:(self->_displayMask & 0x200) == 0];
  v66 = [node childNodeWithName:@"lightInnerAuth" recursively:0];
  [v66 setHidden:v14 ^ 1u];
  [light zFar];
  v67 = 0.5;
  v69 = v68 * 0.5;
  *&v69 = v69;
  LODWORD(v67) = LODWORD(v69);
  LODWORD(v70) = LODWORD(v69);
  [v66 setScale:{v69, v67, v70}];
  v71 = [node childNodeWithName:@"lightProbeExtents" recursively:0];
  [light probeExtents];
  v72.i64[0] = 0x3F0000003F000000;
  v72.i64[1] = 0x3F0000003F000000;
  v74 = vmulq_f32(v73, v72);
  v72.i32[0] = v74.i32[1];
  LODWORD(v75) = v74.i32[2];
  [v71 setScale:{*v74.i64, *v72.i64, v75}];
  v76 = [node childNodeWithName:@"probe" recursively:0];
  [light probeOffset];
  LODWORD(v78) = HIDWORD(v77);
  LODWORD(v80) = v79;
  [v76 setPosition:{v77, v78, v80}];
LABEL_87:
  if (light)
  {
    if (([objc_msgSend(light "type")] & 1) == 0)
    {
      [node simdScale];
      [node setSimdScale:{*vmulq_n_f32(v64, *&v99).i64}];
      [node setHidden:(self->_displayMask & 0x20) == 0];
    }
  }
}

uint64_t __89__SCNAuthoringEnvironment2_updateLightTypeForNode_source_light_screenspaceScalingFactor___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 authoringEnvironmentNode];
  if (result)
  {
    v5 = [*(a1 + 32) isHidden];
    v6 = 288;
    if (v5)
    {
      v6 = 272;
    }

    v7 = 256;
    if (!*(a1 + 48))
    {
      v7 = v6;
    }

    v8 = *(*(a1 + 40) + v7);
    v9 = [objc_msgSend(objc_msgSend(a2 "geometry")];

    return [v9 setColor:v8];
  }

  return result;
}

- (void)updateLightNode:(id)node withSourceNode:(id)sourceNode
{
  light = [sourceNode light];
  if (light)
  {
    v8 = light;
    if ([(SCNRenderer *)self->_renderer pointOfView]== sourceNode)
    {
      isHidden = 1;
    }

    else
    {
      isHidden = [sourceNode isHidden];
    }

    [node setHidden:isHidden];
    if (([node isHidden] & 1) == 0)
    {
      [objc_msgSend(sourceNode "presentationNode")];
      [node setSimdWorldTransform:?];
      v10 = [objc_msgSend(v8 "type")];
      C3DSizeForScreenSpaceSizeAndTransform([(SCNRenderer *)self->_renderer _engineContext]);
      [(SCNAuthoringEnvironment2 *)self updateLightTypeForNode:node source:sourceNode light:v8 screenspaceScalingFactor:?];
      if (v10)
      {
        v11 = (self->_displayMask & 0x200) == 0;

        [node setHidden:v11];
      }
    }
  }

  else
  {

    [(SCNAuthoringEnvironment2 *)self removeLightNode:sourceNode];
  }
}

- (void)updateParticlesNode:(id)node withSourceNode:(id)sourceNode
{
  if ([sourceNode particleSystems] && objc_msgSend(objc_msgSend(sourceNode, "particleSystems"), "count"))
  {
    [node setHidden:{objc_msgSend(sourceNode, "isHidden")}];
    if ([node isHidden])
    {
      return;
    }

    presentationNode = [sourceNode presentationNode];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    if (presentationNode)
    {
      [presentationNode worldTransform];
    }

    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;
    [node setTransform:v25];
    v8 = [(SCNRenderer *)self->_renderer _engineContext:C3DMatrix4x4FromSCNMatrix4(v25];
    C3DSizeForScreenSpaceSizeAndTransform(v8);
    v10 = v9;
    if (sourceNode)
    {
      sourceNodeCopy = sourceNode;
      do
      {
        v12 = [(NSMutableSet *)self->_selection containsObject:sourceNodeCopy];
        parentNode = [sourceNodeCopy parentNode];
        if (v12)
        {
          break;
        }

        sourceNodeCopy = parentNode;
      }

      while (parentNode);
    }

    else
    {
      v12 = 0;
    }

    v14 = [objc_msgSend(node "childNodes")];
    isHidden = [v14 isHidden];
    v16 = 240;
    if (isHidden)
    {
      v16 = 272;
    }

    if (v12)
    {
      v16 = 256;
    }

    [objc_msgSend(objc_msgSend(objc_msgSend(v14 "geometry")];
    v17 = [objc_msgSend(node "childNodes")];
    v18 = 0;
    if (v17 == 2)
    {
      v18 = [objc_msgSend(node "childNodes")];
    }

    v19 = v12 ^ 1u;
    [v18 setHidden:v19];
    if (v19)
    {
      v24 = 0;
    }

    else
    {
      v20 = [objc_msgSend(objc_msgSend(objc_msgSend(sourceNode "particleSystems")];
      if (v20 == [objc_msgSend(node valueForKey:{@"sourceShape", "unsignedLongValue"}])
      {
LABEL_26:
        LODWORD(v21) = v10;
        LODWORD(v22) = v10;
        LODWORD(v23) = v10;
        [v14 setScale:{v21, v22, v23}];
        return;
      }

      [(SCNAuthoringEnvironment2 *)self setupParticleMeshEmitter:sourceNode authoringNode:node];
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v20];
    }

    [node setValue:v24 forKey:@"sourceShape"];
    goto LABEL_26;
  }

  [(SCNAuthoringEnvironment2 *)self removeParticlesNode:sourceNode];
}

- (void)updateCameraNode:(id)node withSourceNode:(id)sourceNode
{
  camera = [sourceNode camera];
  if (camera)
  {
    v8 = camera;
    if ([(SCNRenderer *)self->_renderer pointOfView]== sourceNode)
    {
      isHidden = 1;
    }

    else
    {
      isHidden = [sourceNode isHidden];
    }

    [node setHidden:isHidden];
    if (([node isHidden] & 1) == 0)
    {
      if (sourceNode)
      {
        sourceNodeCopy = sourceNode;
        do
        {
          v11 = [(NSMutableSet *)self->_selection containsObject:sourceNodeCopy];
          parentNode = [sourceNodeCopy parentNode];
          if (v11)
          {
            break;
          }

          sourceNodeCopy = parentNode;
        }

        while (parentNode);
        if (v11)
        {
          v13 = 256;
        }

        else
        {
          v13 = 200;
        }
      }

      else
      {
        v13 = 200;
      }

      presentationNode = [sourceNode presentationNode];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      if (presentationNode)
      {
        [presentationNode worldTransform];
      }

      v42[0] = v43;
      v42[1] = v44;
      v42[2] = v45;
      v42[3] = v46;
      [node setTransform:v42];
      v15 = [(SCNRenderer *)self->_renderer _engineContext:C3DMatrix4x4FromSCNMatrix4(v42];
      C3DSizeForScreenSpaceSizeAndTransform(v15);
      v17 = *&v16;
      LODWORD(v18) = LODWORD(v16);
      LODWORD(v19) = LODWORD(v16);
      [node setScale:{v16, v18, v19}];
      cameraRef = [v8 cameraRef];
      ZNear = C3DCameraGetZNear(cameraRef);
      ZFar = C3DCameraGetZFar(cameraRef);
      UsesOrthographicProjection = C3DCameraGetUsesOrthographicProjection(cameraRef);
      v24 = [objc_msgSend(node "childNodes")];
      if (UsesOrthographicProjection)
      {
        [v24 setGeometry:{-[SCNAuthoringEnvironment2 cameraOrthographicFrustumGeometry](self, "cameraOrthographicFrustumGeometry")}];
        OrthographicScale = C3DCameraGetOrthographicScale(cameraRef);
        *&OrthographicScale = OrthographicScale;
        *&OrthographicScale = *&OrthographicScale / v17;
        *&v26 = ZFar / v17;
        v27 = v24;
        LODWORD(v28) = LODWORD(OrthographicScale);
      }

      else
      {
        [v24 setGeometry:{-[SCNAuthoringEnvironment2 cameraFrustumGeometry](self, "cameraFrustumGeometry")}];
        v41 = 0;
        Viewport = C3DEngineContextGetViewport([(SCNRenderer *)self->_renderer _engineContext]);
        __asm { FMOV            V1.2S, #1.0 }

        Viewport.n128_u64[0] = vmaxnm_f32(*&vextq_s8(Viewport, Viewport, 8uLL), _D1);
        C3DCameraGetEffectiveFovForAspectRatio(cameraRef, &v41 + 1, &v41, vdiv_f32(Viewport.n128_u64[0], vdup_lane_s32(Viewport.n128_u64[0], 1)).f32[0]);
        if (v17 == 0.0)
        {
LABEL_24:
          v36 = [objc_msgSend(v24 "childNodes")];
          *&v37 = ZNear / ZFar;
          *&v38 = ZNear / ZFar;
          *&v39 = ZNear / ZFar;
          [v36 setScale:{v37, v38, v39}];
          v40 = (self->_displayMask & 4) == 0;
          [v24 setHidden:v40];
          [v36 setHidden:v40];
          [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
          [objc_msgSend(objc_msgSend(objc_msgSend(v24 "geometry")];
          [objc_msgSend(objc_msgSend(objc_msgSend(v36 "geometry")];
          return;
        }

        v35 = tan(*&v41 * 0.5 / 180.0 * 3.14159265) * ZFar;
        OrthographicScale = tan(*(&v41 + 1) * 0.5 / 180.0 * 3.14159265) * ZFar;
        *&OrthographicScale = OrthographicScale;
        *&OrthographicScale = *&OrthographicScale / v17;
        *&v28 = v35 / v17;
        *&v26 = ZFar / v17;
        v27 = v24;
      }

      [v27 setScale:{OrthographicScale, v28, v26}];
      goto LABEL_24;
    }
  }

  else
  {

    [(SCNAuthoringEnvironment2 *)self removeCameraNode:sourceNode];
  }
}

- (void)updateFieldNode:(id)node withSourceNode:(id)sourceNode
{
  sourceNodeCopy = sourceNode;
  if ([sourceNode physicsField])
  {
    [node setHidden:{objc_msgSend(sourceNodeCopy, "isHidden")}];
    if (([node isHidden] & 1) == 0)
    {
      presentationNode = [sourceNodeCopy presentationNode];
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      if (presentationNode)
      {
        [presentationNode worldTransform];
      }

      v11[0] = v12;
      v11[1] = v13;
      v11[2] = v14;
      v11[3] = v15;
      [node setTransform:v11];
      if (sourceNodeCopy)
      {
        do
        {
          v8 = [(NSMutableSet *)self->_selection containsObject:sourceNodeCopy];
          parentNode = [sourceNodeCopy parentNode];
          if (v8)
          {
            break;
          }

          sourceNodeCopy = parentNode;
        }

        while (parentNode);
        v10 = 200;
        if (v8)
        {
          v10 = 256;
        }
      }

      else
      {
        v10 = 200;
      }

      [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
    }
  }

  else
  {

    [(SCNAuthoringEnvironment2 *)self removePhysicsFieldNode:sourceNodeCopy];
  }
}

- (void)updateWithRenderer:(id)renderer
{
  objc_sync_enter(self);
  self->_renderer = renderer;
  _engineContext = [renderer _engineContext];
  RendererContextGL = C3DEngineContextGetRendererContextGL(_engineContext);
  if (RendererContextGL)
  {
    ShowsAuthoringEnvironment = C3DRendererContextGetShowsAuthoringEnvironment(RendererContextGL);
  }

  else
  {
    ShowsAuthoringEnvironment = 0;
  }

  RenderContext = C3DEngineContextGetRenderContext(_engineContext);
  if (RenderContext)
  {
    ShowsAuthoringEnvironment = [(SCNMTLRenderContext *)RenderContext showsAuthoringEnvironment];
  }

  if (ShowsAuthoringEnvironment)
  {
    if (![(SCNNode *)self->_lightRoot isHidden])
    {
      CFDictionaryApplyFunction(self->_lightsDictionary, __UpdateLight, self);
    }

    if (![(SCNNode *)self->_cameraRoot isHidden])
    {
      CFDictionaryApplyFunction(self->_camerasDictionary, __UpdateCamera, self);
    }

    if (![(SCNNode *)self->_particlesRoot isHidden])
    {
      CFDictionaryApplyFunction(self->_particlesDictionary, __UpdateParticles, self);
    }

    if (![(SCNNode *)self->_physicsFieldsRoot isHidden])
    {
      CFDictionaryApplyFunction(self->_physicsFieldsDictionary, __UpdateFields, self);
    }

    privateRendererOwner = [renderer privateRendererOwner];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(privateRendererOwner "defaultCameraController")];
      [(SCNNode *)self->_cameraTarget setPosition:?];
    }

    [(SCNNode *)self->_cameraTarget setHidden:1];
  }

  [(SCNManipulator *)self->_manipulator updateManipulatorPosition:_engineContext];
  privateRendererOwner2 = [renderer privateRendererOwner];
  v11 = privateRendererOwner2;
  if (privateRendererOwner2 && [privateRendererOwner2 pointOfView])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = [(NSOrderedSet *)[(SCNManipulator *)self->_manipulator targets] count]== 0;
    targets = [(SCNManipulator *)self->_manipulator targets];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__SCNAuthoringEnvironment2_updateWithRenderer___block_invoke;
    v13[3] = &unk_2782FCAE0;
    v13[4] = v11;
    v13[5] = &v14;
    [(NSOrderedSet *)targets enumerateObjectsUsingBlock:v13];
    [(SCNNode *)[(SCNManipulator *)self->_manipulator manipulatorNode] setHidden:*(v15 + 24)];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    [(SCNNode *)[(SCNManipulator *)self->_manipulator manipulatorNode] setHidden:1];
  }

  if (ShowsAuthoringEnvironment == [(SCNNode *)self->_layerRoot isHidden])
  {
    [(SCNNode *)self->_layerRoot setHidden:ShowsAuthoringEnvironment ^ 1u];
    [(SCNNode *)self->_overlayLayerRoot setHidden:ShowsAuthoringEnvironment ^ 1u];
  }

  self->_renderer = 0;
  objc_sync_exit(self);
}

uint64_t __47__SCNAuthoringEnvironment2_updateWithRenderer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) pointOfView];
  result = [a2 node];
  if (v7 == result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_updateRootsVisibility
{
  [(SCNNode *)self->_lightRoot setHidden:(self->_displayMask & 0x228) == 0];
  [(SCNNode *)self->_particlesRoot setHidden:(self->_displayMask & 0x28) == 0];
  v3 = (self->_displayMask & 0x14) == 0;
  cameraRoot = self->_cameraRoot;

  [(SCNNode *)cameraRoot setHidden:v3];
}

- (void)setAuthoringCamera:(int64_t)camera forView:(id)view
{
  v31[1] = *MEMORY[0x277D85DE8];
  if ([view scene])
  {
    [objc_msgSend(view "defaultCameraController")];
    v30 = v7;
    v8 = [(NSArray *)[(SCNNode *)self->_pointsOfViewRoot childNodes] objectAtIndexedSubscript:camera];
    v31[0] = [objc_msgSend(view "scene")];
    v9.i64[0] = SCNNodeGetBoundingSphere([MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1], 0x10000);
    v9.i64[1] = v10;
    v28 = v9;
    v11 = *(&v10 + 1);
    [objc_msgSend(v8 "camera")];
    *&v12 = v12;
    v13 = vsubq_f32(v30, v28);
    v14 = vmulq_f32(v13, v13);
    *&v12 = (v11 + sqrtf(v14.f32[2] + vaddv_f32(*v14.f32))) + *&v12;
    v29 = v12;
    +[SCNNode simdLocalUp];
    v26 = v15;
    +[SCNNode simdLocalRight];
    v27 = v16;
    +[SCNNode simdLocalFront];
    if (camera > 3)
    {
      switch(camera)
      {
        case 4:
          LODWORD(v18) = 1070141403;
          break;
        case 5:
          v27 = v17;
          v18 = 0.0;
          goto LABEL_17;
        case 6:
          LODWORD(v18) = -1068953637;
          v27 = v17;
          break;
        default:
LABEL_20:
          [view setPointOfView:v8];
          [objc_msgSend(view "defaultCameraController")];
          return;
      }

      [v8 setEulerAngles:{0.0, v18, 0.0}];
      v20 = *&v29;
      v19 = v30;
      v21 = v27;
    }

    else
    {
      if (camera != 1)
      {
        if (camera == 2)
        {
          v17.i32[0] = 1070141403;
          [v8 setEulerAngles:{*v17.i64, 0.0, 0.0}];
          v24 = *&v29;
          v23 = v30;
          v25 = v26;
LABEL_18:
          v22 = vmlsq_lane_f32(v23, v25, v24, 0).u64[0];
          goto LABEL_19;
        }

        if (camera == 3)
        {
          LODWORD(v18) = -1077342245;
LABEL_17:
          [v8 setEulerAngles:{0.0, v18, 0.0}];
          v24 = *&v29;
          v23 = v30;
          v25 = v27;
          goto LABEL_18;
        }

        goto LABEL_20;
      }

      v17.i32[0] = -1077342245;
      [v8 setEulerAngles:{*v17.i64, 0.0, 0.0}];
      v20 = *&v29;
      v19 = v30;
      v21 = v26;
    }

    v22 = vmlaq_n_f32(v19, v21, v20).u64[0];
LABEL_19:
    [v8 setSimdWorldPosition:*&v22];
    goto LABEL_20;
  }
}

- (id)authoringCamera:(int64_t)camera
{
  childNodes = [(SCNNode *)self->_pointsOfViewRoot childNodes];

  return [(NSArray *)childNodes objectAtIndexedSubscript:camera];
}

void __79__SCNAuthoringEnvironment2__resetLightAuthoringWithContainerNode_source_light___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: SH order unsupported : %d", v2, 8u);
}

@end