@interface SCNAuthoringEnvironment
+ (id)authoringEnvironmentForSceneRenderer:(id)renderer createIfNeeded:(BOOL)needed;
+ (id)rendererForSceneRenderer:(id)renderer;
- (BOOL)didTapAtPoint:(CGPoint)point;
- (BOOL)selectionIsReadonly;
- (SCNMatrix4)viewMatrix;
- (SCNNode)authoringOverlayLayer;
- (id)_initWithEngineContext:(__C3DEngineContext *)context;
- (id)authoringEnvironment2;
- (id)renderer;
- (void)_setupAuthoringEnv2:(id)env2;
- (void)beginEditingNode:(id)node;
- (void)beginEditingNodes:(id)nodes;
- (void)dealloc;
- (void)drawLineFromPoint:(SCNVector3)point toPoint:(SCNVector3)toPoint color:(id)color;
- (void)drawString:(id)string atPoint:(CGPoint)point color:(id)color;
- (void)sceneDidChange:(id)change;
- (void)setAuthoringDisplayMask:(int64_t)mask;
- (void)setEditingSpace:(int64_t)space;
- (void)setSelectionIsReadonly:(BOOL)readonly;
- (void)setupAuthoringEnv2;
- (void)update;
@end

@implementation SCNAuthoringEnvironment

- (id)_initWithEngineContext:(__C3DEngineContext *)context
{
  v5.receiver = self;
  v5.super_class = SCNAuthoringEnvironment;
  v3 = [(SCNAuthoringEnvironment *)&v5 init];
  if (v3)
  {
    LOBYTE(v3->_gridUnit) = 0;
    C3DWireframeRendererCreate();
  }

  return 0;
}

+ (id)rendererForSceneRenderer:(id)renderer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return renderer;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SCNAuthoringEnvironment rendererForSceneRenderer:];
    }

    return 0;
  }

  return [renderer renderer];
}

+ (id)authoringEnvironmentForSceneRenderer:(id)renderer createIfNeeded:(BOOL)needed
{
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment([objc_msgSend(self "rendererForSceneRenderer:"_engineContext"")], needed);
  v6 = AuthoringEnvironment;
  if (AuthoringEnvironment)
  {
    *(AuthoringEnvironment + 16) = renderer;
    objc_opt_class();
    v6[24] = objc_opt_isKindOfClass() & 1;
  }

  return v6;
}

- (id)renderer
{
  v3 = objc_opt_class();
  sceneRenderer = self->_sceneRenderer;

  return [v3 rendererForSceneRenderer:sceneRenderer];
}

- (SCNMatrix4)viewMatrix
{
  *&retstr->m31 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m21 = 0u;
  result = self->_engineContext;
  if (result)
  {
    Matrix4x4 = C3DEngineContextGetMatrix4x4(result, 1);

    C3DMatrix4x4ToSCNMatrix4(Matrix4x4, retstr);
  }

  else
  {
    *retstr = SCNMatrix4Identity;
  }

  return result;
}

- (BOOL)selectionIsReadonly
{
  manipulator = [(objc_class *)self[1].super.isa manipulator];

  return [manipulator readonly];
}

- (void)setSelectionIsReadonly:(BOOL)readonly
{
  readonlyCopy = readonly;
  manipulator = [(objc_class *)self[1].super.isa manipulator];

  [manipulator setReadonly:readonlyCopy];
}

- (void)setEditingSpace:(int64_t)space
{
  if (self->_editingSpace != space)
  {
    self->_editingSpace = space;
    manipulator = [(SCNAuthoringEnvironment *)self manipulator];

    [(SCNManipulator *)manipulator editingSpaceChanged];
  }
}

- (void)_setupAuthoringEnv2:(id)env2
{
  v3 = &self->_timedRecordingBuffer[63840];
  if (!self[1].super.isa)
  {
    v4 = [SCNAuthoringEnvironment2 authoringEnvironmentForScene:env2 createIfNeeded:1];
    *(v3 + 156) = v4;
    v5 = *(v3 + 21);

    [v4 setDisplayMask:v5];
  }
}

- (void)setupAuthoringEnv2
{
  if (!self[1].super.isa)
  {
    Scene = C3DEngineContextGetScene(self->_engineContext);
    ObjCWrapper = C3DEntityGetObjCWrapper(Scene);
    if (ObjCWrapper)
    {

      [(SCNAuthoringEnvironment *)self _setupAuthoringEnv2:ObjCWrapper];
    }
  }
}

- (id)authoringEnvironment2
{
  result = self[1].super.isa;
  if (!result)
  {
    [(SCNAuthoringEnvironment *)self setupAuthoringEnv2];
    return self[1].super.isa;
  }

  return result;
}

- (void)update
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
  if (RendererContextGL)
  {
    ShowsAuthoringEnvironment = C3DRendererContextGetShowsAuthoringEnvironment(RendererContextGL);
    RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
    if (!RenderContext)
    {
      if (!ShowsAuthoringEnvironment)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
    RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
    if (!RenderContext)
    {
      return;
    }
  }

  if (([(SCNMTLRenderContext *)RenderContext showsAuthoringEnvironment]& 1) == 0)
  {
    return;
  }

LABEL_7:
  isa = self[1].super.isa;
  authoringDisplayMask = self->_authoringDisplayMask;

  [(objc_class *)isa setDisplayMask:authoringDisplayMask];
}

- (void)sceneDidChange:(id)change
{
  [objc_msgSend(-[SCNAuthoringEnvironment authoringEnvironment2](self "authoringEnvironment2")];

  self[1].super.isa = 0;

  [(SCNAuthoringEnvironment *)self _setupAuthoringEnv2:change];
}

- (SCNNode)authoringOverlayLayer
{
  authoringEnvironment2 = [(SCNAuthoringEnvironment *)self authoringEnvironment2];

  return [authoringEnvironment2 authoringOverlayLayer];
}

- (void)setAuthoringDisplayMask:(int64_t)mask
{
  v5 = &self->_timedRecordingBuffer[63840];
  self->_authoringDisplayMask = mask;
  [-[SCNAuthoringEnvironment renderer](self "renderer")];
  if ((mask & 0x33C) != 0)
  {
    [(SCNAuthoringEnvironment *)self setupAuthoringEnv2];
  }

  v6 = *(v5 + 156);
  if (v6)
  {

    [v6 setDisplayMask:mask];
  }
}

- (void)beginEditingNode:(id)node
{
  nodeCopy = node;
  v6[1] = *MEMORY[0x277D85DE8];
  if (node)
  {
    v6[0] = node;
    node = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  [(SCNAuthoringEnvironment *)self beginEditingNodes:node];
  isa = self[1].super.isa;
  if (isa)
  {
    [(objc_class *)isa selectNode:nodeCopy];
  }
}

- (void)beginEditingNodes:(id)nodes
{
  v5 = &self->_timedRecordingBuffer[63840];
  v6 = [-[SCNAuthoringEnvironment authoringEnvironment2](self "authoringEnvironment2")];
  [v6 _setAuthoringEnvironment:self];
  objc_sync_enter(self);

  *(v5 + 30) = [nodes copy];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(nodes, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SCNAuthoringEnvironment_beginEditingNodes___block_invoke;
  v11[3] = &unk_2782FB9F0;
  v11[4] = v7;
  [nodes enumerateObjectsUsingBlock:v11];

  *(v5 + 29) = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v7];
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  Scene = C3DEngineContextGetScene(self->_engineContext);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", Scene, 0, 1u);
  objc_sync_exit(self);
  if ([*(v5 + 29) count])
  {
    v10 = *(v5 + 29);
  }

  else
  {
    v10 = 0;
  }

  [v6 setTargets:v10];
}

uint64_t __45__SCNAuthoringEnvironment_beginEditingNodes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([a2 authoringEnvironmentNode] && objc_msgSend(v2, "authoringEnvironmentCompanionNode"))
  {
    v2 = [v2 authoringEnvironmentCompanionNode];
  }

  v4 = [SCNNodeManipulableItem nodeManipulatorItemWithNode:v2 screenSize:0.0];
  v5 = *(a1 + 32);

  return [v5 addObject:v4];
}

- (BOOL)didTapAtPoint:(CGPoint)point
{
  v3 = &self->_timedRecordingBuffer[63840];
  if (!LOBYTE(self->_statisticsInfo.waitDisplayLinkTime))
  {
    goto LABEL_12;
  }

  y = point.y;
  x = point.x;
  v18 = 0;
  __appendText_(0, &v18, 0, @"$1$", 0, &self->_boldTextInfo, 0, 0);
  v17 = *&v18;
  v7 = 3.0;
  if (v3[289] == 1)
  {
    v8 = self->_normalTextInfo.lineHeight * 7.0 + 14.0;
    v7 = v8 + 3.0;
  }

  v9 = C3DEngineContextGetDrawableSafeAreaInsets(self->_engineContext).n128_u64[0];
  v21.origin.y = (v7 + *(&v9 + 1));
  v21.size.height = v17;
  v21.origin.x = (*&v9 + 7.0);
  v21.size.width = v17;
  v22 = CGRectInset(v21, -10.0, -10.0);
  v10 = v22.origin.x;
  v11 = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v19.x = x;
  v19.y = y;
  if (CGRectContainsPoint(v22, v19))
  {
    v14 = 0;
  }

  else
  {
    v23.origin.x = v10 + (v17 + 5.0);
    v23.origin.y = v11;
    v23.size.width = width;
    v23.size.height = height;
    v20.x = x;
    v20.y = y;
    v15 = CGRectContainsPoint(v23, v20);
    if (!v15)
    {
      return v15;
    }

    v14 = 1;
  }

  *(v3 + 38) = v14;
  if (!v3[288])
  {
LABEL_12:
    LOBYTE(v15) = 0;
    return v15;
  }

  if ((v14 & 1) == 0)
  {
    v3[289] ^= 1u;
  }

  *(v3 + 38) = -1;
  LOBYTE(v15) = 1;
  return v15;
}

- (void)drawLineFromPoint:(SCNVector3)point toPoint:(SCNVector3)toPoint color:(id)color
{
  z = toPoint.z;
  v12 = *&toPoint.x;
  y = toPoint.y;
  v10 = point.y;
  v11 = point.z;
  v9 = *&point.x;
  v15[0] = C3DColor4FromRGBCFColor(color, 0);
  v15[1] = v6;
  v7 = v9;
  v7.f32[1] = v10;
  v8 = v12;
  v7.f32[2] = v11;
  v8.f32[1] = y;
  v8.f32[2] = z;
  C3DAuthoringEnvironmentAppendDebugSegment(self, 0, v15, 0, v7, v8);
}

- (void)drawString:(id)string atPoint:(CGPoint)point color:(id)color
{
  x = point.x;
  y = point.y;
  v11[0] = C3DColor4FromRGBCFColor(color, 0);
  v11[1] = v7;
  v8.f64[0] = x;
  v8.f64[1] = y;
  C3DAuthoringEnvironmentAppendDebugString(self, string, v11, COERCE_DOUBLE(vcvt_f32_f64(v8)));
}

- (void)dealloc
{
  v3 = &self->_timedRecordingBuffer[63840];
  [objc_msgSend(-[SCNAuthoringEnvironment authoringEnvironment2](self "authoringEnvironment2")];
  C3DRasterizerStatesRelease(self->_depthOnCullOnStates);
  C3DRasterizerStatesRelease(self->_depthOnCullOffStates);
  C3DRasterizerStatesRelease(self->_depthOffCullOnStates);
  C3DRasterizerStatesRelease(self->_depthOffCullOffStates);

  __destroyGLInfo(self, &self->_logsInfo);
  __destroyGLInfo(self, &self->_dynamicLinesInfo);
  __destroyGLInfo(self, &self->_dynamicLinesNoDepthTestInfo);
  __destroyGLInfo(self, &self->_overlayDynamicLinesInfo);
  __destroyGLInfo(self, &self->_overlayDynamicTriangleInfo);
  __destroyGLInfo(self, &self->_dynamicTrianglesInfo);
  __destroyGLInfo(self, &self->_lightProbesInfo);
  __destroyGLInfo(self, &self->_textInfo);
  __destroyGLInfo(self, &self->_boldLogsInfo);
  texture = self->_normalTextInfo.textureInfo.texture;
  if (texture)
  {
    CFRelease(texture);
    self->_normalTextInfo.textureInfo.texture = 0;
  }

  symbolRects = self->_normalTextInfo.symbolRects;
  if (symbolRects)
  {
    free(symbolRects);
  }

  characterWidth_typography = self->_normalTextInfo.characterWidth_typography;
  if (characterWidth_typography)
  {
    free(characterWidth_typography);
  }

  v7 = self->_boldTextInfo.textureInfo.texture;
  if (v7)
  {
    CFRelease(v7);
    self->_boldTextInfo.textureInfo.texture = 0;
  }

  v8 = self->_boldTextInfo.symbolRects;
  if (v8)
  {
    free(v8);
  }

  v9 = self->_boldTextInfo.characterWidth_typography;
  if (v9)
  {
    free(v9);
  }

  noColorProgram = self->_noColorProgram;
  if (noColorProgram)
  {
    CFRelease(noColorProgram);
    self->_noColorProgram = 0;
  }

  colorOnlyProgram = self->_colorOnlyProgram;
  if (colorOnlyProgram)
  {
    CFRelease(colorOnlyProgram);
    self->_colorOnlyProgram = 0;
  }

  colorAndTextureProgram = self->_colorAndTextureProgram;
  if (colorAndTextureProgram)
  {
    CFRelease(colorAndTextureProgram);
    self->_colorAndTextureProgram = 0;
  }

  lightProbesProgram = self->_lightProbesProgram;
  if (lightProbesProgram)
  {
    CFRelease(lightProbesProgram);
    self->_lightProbesProgram = 0;
  }

  wireframeProgram = self->_wireframeProgram;
  if (wireframeProgram)
  {
    CFRelease(wireframeProgram);
    self->_wireframeProgram = 0;
  }

  drawInstancedQuadProgram = self->_drawInstancedQuadProgram;
  if (drawInstancedQuadProgram)
  {
    CFRelease(drawInstancedQuadProgram);
    self->_drawInstancedQuadProgram = 0;
  }

  drawInstancedCubeProgram = self->_drawInstancedCubeProgram;
  if (drawInstancedCubeProgram)
  {
    CFRelease(drawInstancedCubeProgram);
    self->_drawInstancedCubeProgram = 0;
  }

  v17 = *(v3 + 41);
  if (v17)
  {
    CFRelease(v17);
    *(v3 + 41) = 0;
  }

  v18 = *(v3 + 40);
  if (v18)
  {
    CFRelease(v18);
    *(v3 + 40) = 0;
  }

  v19 = *(v3 + 39);
  if (v19)
  {
    CFRelease(v19);
    *(v3 + 39) = 0;
  }

  C3DWireframeRendererDestroy(*(v3 + 34));

  v20.receiver = self;
  v20.super_class = SCNAuthoringEnvironment;
  [(SCNAuthoringEnvironment *)&v20 dealloc];
}

@end