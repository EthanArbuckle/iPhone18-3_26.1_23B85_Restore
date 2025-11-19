@interface SCNManipulator
- (BOOL)_applyWithEvent:(id *)a3;
- (BOOL)mouseDown:(id *)a3;
- (BOOL)mouseDragged:(id *)a3;
- (BOOL)mouseMoved:(id *)a3;
- (BOOL)mouseUp:(id *)a3;
- (SCNManipulator)init;
- (SCNMatrix4)transform;
- (SCNNode)manipulatorNode;
- (SCNNode)target;
- (__n128)_snapPositionToAlign:(float)a3 original:(float)a4 unit:(float)a5 axisMove:(double)a6 rayStart:(__n128)a7 rayDir:(__n128)a8 didSnap:(uint64_t)a9 snapIndexes:(int)a10;
- (const)snapInfoAtIndex:(unint64_t)a3 axis:(unint64_t)a4;
- (id)copy;
- (id)hitTest:(id *)a3;
- (id)scene;
- (id)setupClones;
- (id)snapGuideIndexesOnAxis:(unint64_t)a3;
- (int64_t)effectiveEditingSpace;
- (unint64_t)_effectiveFeatures;
- (void)_deleteOriginalData;
- (void)_prepareSnapToAlignData:(SCNManipulator *)self minOffset:(SEL)a2 maxOffset:(unsigned __int16)a3;
- (void)_saveOriginalData;
- (void)_updateActionWithEvent:(id *)a3;
- (void)addClonesToScene;
- (void)clearSnapIndexes;
- (void)dealloc;
- (void)prepareSnapToAlignData;
- (void)prepareSnapToAlignDataIfNeeded;
- (void)removeClonesFromScene;
- (void)setTarget:(id)a3;
- (void)setTargets:(id)a3;
- (void)setupNode;
- (void)updateItemsPosition;
- (void)updateItemsRotation:(SCNManipulator *)self;
- (void)updateItemsScale:(float)a3;
- (void)updateManipulatorComponents;
- (void)updateManipulatorNode;
- (void)updateManipulatorPosition:(__C3DEngineContext *)a3;
- (void)validateClones;
@end

@implementation SCNManipulator

- (void)setTargets:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(SCNManipulator *)self authoringEnvironment];
  objc_sync_enter(v5);
  v6 = self->_targets;
  self->_targets = 0;
  if (a3)
  {
    v7 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(a3, "count")}];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          if (![v11 component])
          {
            for (i = [v11 parentItem]; ; i = objc_msgSend(v13, "parentItem"))
            {
              v13 = i;
              if (!i)
              {
                break;
              }

              if ([a3 containsObject:i])
              {
                goto LABEL_9;
              }
            }
          }

          [v7 addObject:v11];
LABEL_9:
          ++v10;
        }

        while (v10 != v8);
        v14 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v8 = v14;
      }

      while (v14);
    }

    self->_targets = v7;
  }

  objc_sync_exit(v5);
  [(SCNManipulator *)self updateManipulatorNode];
}

- (SCNNode)target
{
  v3 = [(SCNManipulator *)self authoringEnvironment];
  objc_sync_enter(v3);
  if ([(NSOrderedSet *)self->_targets count])
  {
    v4 = [(NSOrderedSet *)self->_targets firstObject];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);
  return v4;
}

- (void)setTarget:(id)a3
{
  if (a3)
  {
    a3 = [MEMORY[0x277CBEB70] orderedSetWithObject:?];
  }

  [(SCNManipulator *)self setTargets:a3];
}

- (SCNMatrix4)transform
{
  *&retstr->m31 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m21 = 0u;
  C3DMatrix4x4ToSCNMatrix4(&self->_worldMatrix.components[1], retstr);
  return result;
}

- (SCNManipulator)init
{
  v5.receiver = self;
  v5.super_class = SCNManipulator;
  v2 = [(SCNManipulator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    C3DMatrix4x4MakeRotationY(v2->_xAxisToZAxisTransform.components, 1.5708);
    C3DMatrix4x4MakeRotationX(v3->_yAxisToZAxisTransform.components, -1.5708);
    C3DMatrix4x4MakeRotationY(v3->_xyPlaneToYZPlaneTransform.components, -1.5708);
    C3DMatrix4x4MakeRotationX(v3->_xyPlaneToXZPlaneTransform.components, 1.5708);
    v3->_zAlignment = 0;
    *&v3->_xAlignment = 0u;
    v3->_snapXIndexes = [MEMORY[0x277CCAB58] indexSet];
    v3->_snapYIndexes = [MEMORY[0x277CCAB58] indexSet];
    v3->_snapZIndexes = [MEMORY[0x277CCAB58] indexSet];
    v3->_features = 3;
  }

  return v3;
}

- (void)dealloc
{
  [(SCNManipulator *)self _deleteOriginalData];

  free(self->_snapToAlignOnX);
  free(self->_snapToAlignOnY);
  free(self->_snapToAlignOnZ);
  [(SCNNode *)self->_node removeFromParentNode];

  v3.receiver = self;
  v3.super_class = SCNManipulator;
  [(SCNManipulator *)&v3 dealloc];
}

- (id)copy
{
  v3 = objc_alloc_init(SCNManipulator);
  [(SCNManipulator *)v3 setTarget:[(SCNManipulator *)self target]];
  return v3;
}

- (int64_t)effectiveEditingSpace
{
  if ([(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment] editingSpace]<= 1 && [(NSOrderedSet *)self->_targets count]> 1)
  {
    return 2;
  }

  v4 = [(SCNManipulator *)self authoringEnvironment];

  return [(SCNAuthoringEnvironment *)v4 editingSpace];
}

- (SCNNode)manipulatorNode
{
  result = self->_node;
  if (!result)
  {
    [(SCNManipulator *)self setupNode];
    return self->_node;
  }

  return result;
}

- (void)setupNode
{
  v39 = +[SCNTransaction immediateMode];
  [SCNTransaction setImmediateMode:1];
  self->_node = +[SCNNode node];
  v3 = _arrowNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorRed]);
  v4 = _arrowNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGreen]);
  v5 = _arrowNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorBlue]);
  self->_zArrow = v5;
  LODWORD(v6) = -1077342245;
  [v3 setEulerAngles:{0.0, 0.0, v6}];
  LODWORD(v7) = 1070141403;
  [(SCNNode *)v5 setEulerAngles:v7, 0.0, 0.0];
  [v3 setCategoryBitMask:273];
  [v4 setCategoryBitMask:289];
  [(SCNNode *)v5 setCategoryBitMask:305];
  v8 = _axisNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorRed]);
  v9 = _axisNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGreen]);
  v10 = _axisNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorBlue]);
  LODWORD(v11) = -1077342245;
  [v8 setEulerAngles:{0.0, 0.0, v11}];
  LODWORD(v12) = 1070141403;
  [v10 setEulerAngles:{v12, 0.0, 0.0}];
  v13 = +[SCNNode node];
  self->_axis = v13;
  [(SCNNode *)v13 addChildNode:v8];
  [(SCNNode *)self->_axis addChildNode:v9];
  [(SCNNode *)self->_axis addChildNode:v10];
  [(SCNNode *)self->_axis setHidden:1];
  [(SCNNode *)self->_node addChildNode:self->_axis];
  v14 = +[SCNNode node];
  [(SCNNode *)v14 addChildNode:v3];
  [(SCNNode *)v14 addChildNode:v4];
  [(SCNNode *)v14 addChildNode:v5];
  self->_translateHandles = v14;
  [(SCNNode *)self->_node addChildNode:v14];
  self->_planarTranslationHandleXY = _translationPlaneNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorBlue]);
  self->_planarTranslationHandleYZ = _translationPlaneNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorRed]);
  self->_planarTranslationHandleXZ = _translationPlaneNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGreen]);
  LODWORD(v15) = -1077342245;
  [(SCNNode *)self->_planarTranslationHandleYZ setEulerAngles:0.0, v15, 0.0];
  LODWORD(v16) = 1070141403;
  [(SCNNode *)self->_planarTranslationHandleXZ setEulerAngles:v16, 0.0, 0.0];
  [(SCNNode *)self->_planarTranslationHandleXY setCategoryBitMask:561];
  [(SCNNode *)self->_planarTranslationHandleYZ setCategoryBitMask:529];
  [(SCNNode *)self->_planarTranslationHandleXZ setCategoryBitMask:545];
  v17 = +[SCNNode node];
  self->_planarTranslationHandles = v17;
  [(SCNNode *)v17 addChildNode:self->_planarTranslationHandleXY];
  [(SCNNode *)self->_planarTranslationHandles addChildNode:self->_planarTranslationHandleYZ];
  [(SCNNode *)self->_planarTranslationHandles addChildNode:self->_planarTranslationHandleXZ];
  [(SCNNode *)self->_node addChildNode:self->_planarTranslationHandles];
  self->_arcHandleXY = _rotationArcNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorBlue]);
  self->_arcHandleYZ = _rotationArcNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorRed]);
  self->_arcHandleXZ = _rotationArcNode([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGreen]);
  LODWORD(v18) = -1077342245;
  LODWORD(v19) = 1078530011;
  [(SCNNode *)self->_arcHandleXY setEulerAngles:v18, 0.0, v19];
  LODWORD(v20) = 1078530011;
  LODWORD(v21) = -1077342245;
  [(SCNNode *)self->_arcHandleYZ setEulerAngles:v20, 0.0, v21];
  LODWORD(v22) = 1078530011;
  [(SCNNode *)self->_arcHandleXZ setEulerAngles:0.0, v22, 0.0];
  [-[NSArray objectAtIndexedSubscript:](-[SCNNode childNodes](self->_arcHandleXY "childNodes")];
  [-[NSArray objectAtIndexedSubscript:](-[SCNNode childNodes](self->_arcHandleYZ "childNodes")];
  [-[NSArray objectAtIndexedSubscript:](-[SCNNode childNodes](self->_arcHandleXZ "childNodes")];
  [-[NSArray objectAtIndexedSubscript:](-[SCNNode childNodes](self->_arcHandleXY "childNodes")];
  [-[NSArray objectAtIndexedSubscript:](-[SCNNode childNodes](self->_arcHandleYZ "childNodes")];
  [-[NSArray objectAtIndexedSubscript:](-[SCNNode childNodes](self->_arcHandleXZ "childNodes")];
  v23 = +[SCNNode node];
  self->_arcHandles = v23;
  [(SCNNode *)v23 addChildNode:self->_arcHandleXY];
  [(SCNNode *)self->_arcHandles addChildNode:self->_arcHandleYZ];
  [(SCNNode *)self->_arcHandles addChildNode:self->_arcHandleXZ];
  [(SCNNode *)self->_node addChildNode:self->_arcHandles];
  v24 = +[SCNNode node];
  v25 = _wireframeCircle([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorRed], 1.0);
  v26 = _wireframeCircle([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGreen], 1.0);
  v27 = _wireframeCircle([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorBlue], 1.0);
  v28 = _wireframeCircle([MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGrayDark], 1.02);
  [v25 setRenderingOrder:2];
  [v26 setRenderingOrder:2];
  [v27 setRenderingOrder:2];
  [v28 setRenderingOrder:0];
  LODWORD(v29) = -1077342245;
  [v25 setEulerAngles:{0.0, 0.0, v29}];
  LODWORD(v30) = 1070141403;
  [v27 setEulerAngles:{v30, 0.0, 0.0}];
  LODWORD(v31) = 1070141403;
  [v28 setEulerAngles:{v31, 0.0, 0.0}];
  [v25 setCategoryBitMask:785];
  [v26 setCategoryBitMask:801];
  [v27 setCategoryBitMask:817];
  [v28 setCategoryBitMask:769];
  v32 = +[SCNNode node];
  [(SCNNode *)v32 addChildNode:v28];
  v33 = +[SCNBillboardConstraint billboardConstraint];
  self->_billboard = v33;
  [(SCNBillboardConstraint *)v33 setPreserveScale:1];
  self->_screenSpaceRotation = v32;
  v34 = +[SCNNode node];
  self->_rotationHandles = v34;
  [(SCNNode *)v34 addChildNode:v25];
  [(SCNNode *)self->_rotationHandles addChildNode:v26];
  [(SCNNode *)self->_rotationHandles addChildNode:v27];
  [(SCNNode *)v24 addChildNode:self->_rotationHandles];
  [(SCNNode *)v24 addChildNode:v32];
  [(SCNNode *)self->_node addChildNode:v24];
  v35 = [SCNSphere sphereWithRadius:0.99];
  [(SCNSphere *)v35 setGeodesic:1];
  [(SCNSphere *)v35 setSegmentCount:24];
  [(SCNMaterial *)[(SCNGeometry *)v35 firstMaterial] setLightingModelName:@"SCNLightingModelConstant"];
  [(SCNMaterial *)[(SCNGeometry *)v35 firstMaterial] setColorBufferWriteMask:0];
  v36 = [SCNNode nodeWithGeometry:v35];
  [(SCNNode *)v36 setOpacity:0.01];
  [(SCNNode *)v36 setRenderingOrder:1];
  self->_occluder = v36;
  [(SCNNode *)self->_node addChildNode:v36];
  v37 = [SCNBox boxWithWidth:0.2 height:0.2 length:0.2 chamferRadius:0.0];
  -[SCNMaterialProperty setContents:](-[SCNMaterial diffuse](-[SCNGeometry firstMaterial](v37, "firstMaterial"), "diffuse"), "setContents:", [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorYellow]);
  [(SCNMaterial *)[(SCNGeometry *)v37 firstMaterial] setLightingModelName:@"SCNLightingModelConstant"];
  v38 = [SCNNode nodeWithGeometry:v37];
  self->_scaleNode = v38;
  [(SCNNode *)v38 setCategoryBitMask:1073];
  [(SCNNode *)self->_scaleNode setHidden:1];
  [(SCNNode *)self->_node addChildNode:self->_scaleNode];
  [(SCNManipulator *)self updateManipulatorComponents];

  [SCNTransaction setImmediateMode:v39];
}

- (void)updateManipulatorPosition:(__C3DEngineContext *)a3
{
  v5 = +[SCNTransaction immediateMode];
  [SCNTransaction setImmediateMode:1];
  __computeAnchorMatrix(self, &v58);
  v6 = v59;
  *&self->_worldMatrix.components[1] = v58;
  *&self->_worldMatrix.components[5] = v6;
  v7 = v61;
  *&self->_worldMatrix.components[9] = v60;
  *&self->_worldMatrix.components[13] = v7;
  [(SCNNode *)self->_node setSimdWorldTransform:*&self->_worldMatrix.components[1], *&self->_worldMatrix.components[5], *&self->_worldMatrix.components[9], *&self->_worldMatrix.components[13]];
  C3DSizeForScreenSpaceSizeAndTransform(a3);
  v9 = v8;
  node = self->_node;
  if (v8 <= 0.000001)
  {
    [(SCNNode *)node setOpacity:0.0];
  }

  else
  {
    planarTranslationLayout = self->_planarTranslationLayout;
    [(SCNNode *)node setOpacity:1.0];
    *&v12 = v9;
    *&v13 = v9;
    *&v14 = v9;
    [(SCNNode *)self->_node setScale:v12, v13, v14];
    v15 = [(SCNManipulator *)self effectiveEditingSpace];
    if (!self->_layoutLocked || v15 == 3)
    {
      if (v15 == 3)
      {
        __asm { FMOV            V0.4S, #1.0 }

        *self->_planarTranslationLayout = _Q0;
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        Matrix4x4 = C3DEngineContextGetMatrix4x4(a3, 1);
        C3DMatrix4x4Mult(&self->_worldMatrix.components[1], Matrix4x4, &v58);
        v54 = v58;
        v55 = v59;
        v56 = v60;
        v57 = v61;
        C3DVector3Rotate(&v54, xmmword_21C27F910);
        v52 = v17;
        v54 = v58;
        v55 = v59;
        v56 = v60;
        v57 = v61;
        *&v18 = C3DVector3Rotate(&v54, xmmword_21C27F8C0);
        v49 = v18;
        v54 = v58;
        v55 = v59;
        v56 = v60;
        v57 = v61;
        C3DVector3Rotate(&v54, xmmword_21C27F600);
        v21 = -1.0;
        if (v52 >= 0.0)
        {
          *&v20 = 1.0;
        }

        else
        {
          *&v20 = -1.0;
        }

        if (*(&v49 + 2) >= 0.0)
        {
          v22 = 1.0;
        }

        else
        {
          v22 = -1.0;
        }

        if (v19 >= 0.0)
        {
          v21 = 1.0;
        }

        v23 = v20;
        *(&v23 + 1) = v22;
        _ZF = v22 == 1.0;
        v25 = 1.5708;
        v26 = 3.1416;
        if (_ZF)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = 1.5708;
        }

        if (_ZF)
        {
          v28 = 3.1416;
        }

        else
        {
          v28 = -1.5708;
        }

        if (_ZF)
        {
          v29 = -1.5708;
        }

        else
        {
          v29 = 0.0;
        }

        if (_ZF)
        {
          v30 = -1.5708;
        }

        else
        {
          v30 = 1.5708;
        }

        if (v21 == 1.0)
        {
          v31 = v28;
        }

        else
        {
          v31 = 0.0;
        }

        if (v21 == 1.0)
        {
          v32 = v27;
        }

        else
        {
          v32 = 0.0;
        }

        if (v21 == 1.0)
        {
          v33 = v29;
        }

        else
        {
          v25 = 0.0;
          v33 = v30;
        }

        if (v21 != 1.0)
        {
          v26 = -1.5708;
        }

        *(&v23 + 2) = v21;
        *self->_planarTranslationLayout = v23;
        if (*&v20 == 1.0)
        {
          v34 = v26;
        }

        else
        {
          v34 = v25;
        }

        [(SCNNode *)self->_arcHandleXY setEulerAngles:v49];
        *&v35 = v31;
        *&v36 = v32;
        *&v37 = v33;
        [(SCNNode *)self->_arcHandleYZ setEulerAngles:v35, v36, v37];
        *&v38 = v34;
        [(SCNNode *)self->_arcHandleXZ setEulerAngles:0.0, v38, 0.0];
      }
    }

    v51 = vdupq_n_s64(0x3FD3333333333333uLL);
    __asm { FMOV            V1.2D, #0.5 }

    v50 = _Q1;
    v44 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(*planarTranslationLayout), v51), _Q1)));
    LODWORD(_Q1.f64[0]) = HIDWORD(v44);
    [(SCNNode *)self->_planarTranslationHandleXY setPosition:v44, _Q1.f64[0], 0.0, *&v50.f64[0]];
    v45 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(*&self->_planarTranslationLayout[4]), v51), v50)));
    LODWORD(v46) = HIDWORD(v45);
    [(SCNNode *)self->_planarTranslationHandleYZ setPosition:0.0, v45, v46];
    HIDWORD(v47) = 1070805811;
    v48 = COERCE_FLOAT(*planarTranslationLayout->f32) * 0.3 * 0.5;
    *&v48 = v48;
    *&v47 = COERCE_FLOAT(*&self->_planarTranslationLayout[8]) * 0.3 * 0.5;
    [(SCNNode *)self->_planarTranslationHandleXZ setPosition:v48, 0.0, v47];
    if (self->_screenSpaceRotation)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      if (C3DConstraintBillboardMatrixForNode(a3, [(SCNConstraint *)self->_billboard __CFObject], [(SCNNode *)self->_screenSpaceRotation nodeRef], &v58, 1.0))
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        C3DMatrix4x4ToSCNMatrix4(&v58, &v54);
        v53[0] = v54;
        v53[1] = v55;
        v53[2] = v56;
        v53[3] = v57;
        [(SCNNode *)self->_screenSpaceRotation setTransform:v53];
      }
    }
  }

  [SCNTransaction setImmediateMode:v5];
}

- (void)updateManipulatorNode
{
  node = self->_node;
  if (!node)
  {
    [(SCNManipulator *)self setupNode];
    node = self->_node;
  }

  if (![(SCNNode *)node parentNode])
  {
    v4 = [(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment] authoringOverlayLayer];
    v5 = [(SCNManipulator *)self manipulatorNode];

    [(SCNNode *)v4 addChildNode:v5];
  }
}

- (void)updateManipulatorComponents
{
  v3 = [(SCNManipulator *)self _effectiveFeatures];
  v4 = [(SCNManipulator *)self effectiveEditingSpace];
  v5 = (v3 & 4) != 0 && !self->_readonly;
  v6 = !v5;
  [(SCNNode *)self->_scaleNode setHidden:!v5];
  if ((v3 & 2) != 0)
  {
    v7 = !self->_readonly;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (v3)
    {
LABEL_6:
      v8 = !self->_readonly;
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:
  v9 = v4 == 3;
  [(SCNNode *)self->_rotationHandles setHidden:v9 | !v7 | (v8 && v6)];
  [(SCNNode *)self->_screenSpaceRotation setHidden:!v7 || v8 && v6];
  [(SCNNode *)self->_translateHandles setHidden:v6 && !v8];
  [(SCNNode *)self->_planarTranslationHandles setHidden:v5 || !v8 || v7 || self->_readonly];
  [(SCNNode *)self->_arcHandles setHidden:(v5 || self->_readonly) | (!v8 || !v7)];
  [(SCNNode *)self->_axis setHidden:!self->_readonly];
  [(SCNNode *)self->_zArrow setHidden:v9];
  [(SCNNode *)self->_planarTranslationHandleXZ setHidden:v9];
  [(SCNNode *)self->_planarTranslationHandleYZ setHidden:v9];
  [(SCNNode *)self->_arcHandleXZ setHidden:v9];
  arcHandleYZ = self->_arcHandleYZ;

  [(SCNNode *)arcHandleYZ setHidden:v9];
}

- (unint64_t)_effectiveFeatures
{
  features = self->_features;
  v3 = features | 4;
  if ((features & 4) != 0)
  {
    v3 = 7;
  }

  if (self->_alternateMode)
  {
    return v3;
  }

  else
  {
    return self->_features;
  }
}

uint64_t __41__SCNManipulator_unhighlightSelectedNode__block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(objc_msgSend(objc_msgSend(a2 "geometry")];
  v3 = [MEMORY[0x277D75348] whiteColor];
  v4 = [objc_msgSend(objc_msgSend(a2 "geometry")];

  return [v4 setContents:v3];
}

- (id)hitTest:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  node = self->_node;
  if (!node)
  {
    return 0;
  }

  [(SCNNode *)node opacity];
  if (v6 == 0.0)
  {
    return 0;
  }

  if ([(SCNNode *)self->_node isHidden])
  {
    return 0;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:self->_node forKey:@"kHitTestRootNode"];
  v8 = MEMORY[0x277CBEC28];
  [v7 setObject:MEMORY[0x277CBEC28] forKey:@"kHitTestSkipHiddenNode"];
  [v7 setObject:&unk_282E0F600 forKey:@"kHitTestSearchMode"];
  [v7 setObject:v8 forKey:@"kHitTestClipToZRange"];
  [v7 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 4), @"kHitTestLayerMask"}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [a3->var1 hitTest:v7 options:{a3->var3.x, a3->var3.y, 0}];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v22;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = [*(*(&v21 + 1) + 8 * i) node];
      if (v15 == self->_occluder)
      {
        goto LABEL_20;
      }

      v16 = v15;
      while ([(SCNNode *)v15 categoryBitMask]== 0xFFFF)
      {
        v15 = [(SCNNode *)v16 parentNode];
        v16 = v15;
      }

      if ((v12 & 1) != 0 && [(SCNNode *)v16 parentNode]== self->_rotationHandles)
      {
LABEL_20:
        v12 = 1;
      }

      else
      {
        v17 = v16;
        if (!v16)
        {
          return v16;
        }

        do
        {
          v18 = [v17 isHidden];
          v19 = [v17 parentNode];
          if (v18)
          {
            break;
          }

          v17 = v19;
        }

        while (v19);
        if ((v18 & 1) == 0)
        {
          return v16;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v16 = 0;
  }

  while (v11);
  return v16;
}

- (void)_updateActionWithEvent:(id *)a3
{
  v4 = *&a3->var4.x;
  v8[2] = a3->var3;
  v8[3] = v4;
  v8[4] = *&a3->var5.y;
  var2 = a3->var2;
  v8[0] = *&a3->var0;
  v8[1] = var2;
  v6 = [(SCNManipulator *)self hitTest:v8];
  highlightNode = self->_highlightNode;
  if (highlightNode != v6)
  {
    [(SCNManipulator *)self unhighlightSelectedNode];
  }

  if (v6)
  {
    self->_action = [(SCNNode *)v6 categoryBitMask]>> 8;
    self->_selectedAxis = [(SCNNode *)v6 categoryBitMask]>> 4;
    if (highlightNode != v6)
    {
      self->_highlightNode = v6;
      [(SCNNode *)v6 enumerateHierarchyUsingBlock:&__block_literal_global_16_0];
    }
  }

  else
  {
    self->_action = 0;
  }
}

uint64_t __41__SCNManipulator__updateActionWithEvent___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(objc_msgSend(objc_msgSend(a2 "geometry")];
  v3 = [MEMORY[0x277D75348] orangeColor];
  v4 = [objc_msgSend(objc_msgSend(a2 "geometry")];

  return [v4 setContents:v3];
}

- (BOOL)mouseMoved:(id *)a3
{
  action = self->_action;
  self->_action = 0;
  if ([(NSOrderedSet *)self->_targets count]&& !self->_readonly)
  {
    if ([(SCNNode *)self->_node isHidden])
    {
      return 0;
    }

    v7 = *&a3->var4.x;
    v9[2] = a3->var3;
    v9[3] = v7;
    v9[4] = *&a3->var5.y;
    var2 = a3->var2;
    v9[0] = *&a3->var0;
    v9[1] = var2;
    [(SCNManipulator *)self _updateActionWithEvent:v9];
  }

  return action != self->_action;
}

- (void)updateItemsPosition
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 count];
  v6 = *a2;
  v7 = 136315650;
  v8 = "setToApplyTo.count <= _originalDataCount";
  v9 = 1024;
  v10 = v5;
  v11 = 1024;
  v12 = v6;
  _os_log_fault_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. The set we are updating contains more elements than the number of positions we have in store, something it wrong (%d vs %d)", &v7, 0x18u);
}

- (void)updateItemsRotation:(SCNManipulator *)self
{
  v53 = *MEMORY[0x277D85DE8];
  v50 = v2;
  v4 = 16;
  if (self->_cloning)
  {
    v4 = 800;
  }

  v5 = *(&self->super.isa + v4);
  v6 = [(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment] editingSpace];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = [v12 parentItem];
        if (v13)
        {
          memset(&v45, 0, sizeof(v45));
          [v13 worldTransform];
          memset(&v44, 0, sizeof(v44));
          m = v45;
          SCNMatrix4Invert(&v44, &m);
          memset(&m, 0, sizeof(m));
          C3DMatrix4x4FromSCNMatrix4(&m, &v44);
          memset(v42, 0, sizeof(v42));
          memset(&v41, 0, sizeof(v41));
          memset(v40, 0, sizeof(v40));
          memset(v39, 0, sizeof(v39));
          v38.i32[2] = 0;
          v38.i64[0] = 0;
          memset(v37, 0, sizeof(v37));
          if (v12)
          {
            [v12 worldTransform];
          }

          memset(v36, 0, sizeof(v36));
          C3DMatrix4x4FromSCNMatrix4(v36, v37);
          C3DMatrix4x4GetScale(v36, &v38);
          C3DMatrix4x4MakeAffine(v42, (*self->_anon_188 + 16 * v9), (*&self->_anon_188[8] + 16 * v9), &v38);
          memset(&v35, 0, sizeof(v35));
          if (v6)
          {
            v14 = &self->_worldInitialMatrix.components[13];
          }

          else
          {
            v14 = (*self->_anon_188 + 16 * v9);
          }

          C3DMatrix4x4MakeTranslation(&v35, v14);
          C3DMatrix4x4Invert(&v35, &v41);
          C3DMatrix4x4Mult(v42, &v41, v42);
          C3DMatrix4x4MakeRotation(v39, &v50);
          C3DMatrix4x4Mult(v42, v39, v42);
          C3DMatrix4x4Mult(v42, &v35, v42);
          C3DMatrix4x4Mult(v42, &m, v40);
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          C3DMatrix4x4ToSCNMatrix4(v40, &v31);
          v30[0] = v31;
          v30[1] = v32;
          v30[2] = v33;
          v30[3] = v34;
          [v12 setTransform:v30];
        }

        ++v9;
      }

      v8 = [v5 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v8);
  }

  if (self->_cloning)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    targets = self->_targets;
    v16 = [(NSOrderedSet *)targets countByEnumeratingWithState:&v26 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v27;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(targets);
          }

          v21 = *(*(&v26 + 1) + 8 * j);
          v22 = (*&self->_anon_188[16] + (v18 << 6));
          v23 = v22[1];
          v24 = v22[2];
          v25 = v22[3];
          *&v45.m11 = *v22;
          *&v45.m21 = v23;
          *&v45.m31 = v24;
          *&v45.m41 = v25;
          [v21 setTransform:{&v45, *&v45.m11, v23, v24, v25}];
          ++v18;
        }

        v17 = [(NSOrderedSet *)targets countByEnumeratingWithState:&v26 objects:v51 count:16];
      }

      while (v17);
    }
  }
}

- (void)updateItemsScale:(float)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = 16;
  if (self->_cloning)
  {
    v4 = 800;
  }

  v5 = *(&self->super.isa + v4);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:{16, *&a3, v6}];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        if ([v12 parentItem])
        {
          v39.i32[2] = 0;
          v39.i64[0] = 0;
          v13 = vmulq_n_f32(*(*&self->_anon_188[24] + 16 * v9), v22);
          v38 = 0u;
          v39 = v13;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          C3DMatrix4x4MakeAffine(&v35, (*self->_anon_188 + 16 * v9), (*&self->_anon_188[8] + 16 * v9), &v39);
          C3DMatrix4x4ToSCNMatrix4(&v35, &v31);
          v30[0] = v31;
          v30[1] = v32;
          v30[2] = v33;
          v30[3] = v34;
          [v12 setWorldTransform:v30];
        }

        ++v9;
      }

      v8 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v8);
  }

  if (self->_cloning)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    targets = self->_targets;
    v15 = [(NSOrderedSet *)targets countByEnumeratingWithState:&v26 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v27;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(targets);
          }

          v20 = *(*(&v26 + 1) + 8 * j);
          v21 = (*&self->_anon_188[16] + (v17 << 6));
          v23 = v21[1];
          v24 = v21[2];
          v25 = v21[3];
          v35 = *v21;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          [v20 setTransform:&v35];
          ++v17;
        }

        v16 = [(NSOrderedSet *)targets countByEnumeratingWithState:&v26 objects:v44 count:16];
      }

      while (v16);
    }
  }
}

- (void)_saveOriginalData
{
  [(SCNManipulator *)self _deleteOriginalData];
  v3 = [(NSOrderedSet *)self->_targets count];
  self->_originalDataCount = v3;
  if (v3)
  {
    *&self->_anon_188[8] = malloc_type_malloc(16 * v3, 0x1000040451B5BE8uLL);
    *self->_anon_188 = malloc_type_malloc(16 * self->_originalDataCount, 0x1000040451B5BE8uLL);
    *&self->_anon_188[24] = malloc_type_malloc(16 * self->_originalDataCount, 0x1000040451B5BE8uLL);
    *&self->_anon_188[16] = malloc_type_malloc(self->_originalDataCount << 6, 0x1000040FA0F61DDuLL);
    targets = self->_targets;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __35__SCNManipulator__saveOriginalData__block_invoke;
    v5[3] = &unk_2782FB9F0;
    v5[4] = self;
    [(NSOrderedSet *)targets enumerateObjectsUsingBlock:v5];
  }
}

double __35__SCNManipulator__saveOriginalData__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  if (a2)
  {
    [a2 worldTransform];
    v7 = *(a1 + 32);
    v6 = a1 + 32;
    v8 = *(v7 + 408);
    [a2 transform];
  }

  else
  {
    v6 = a1 + 32;
    v8 = *(*(a1 + 32) + 408);
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v9 = v14;
  v10 = v15;
  v11 = (v8 + (a3 << 6));
  v12 = v17;
  v11[2] = v16;
  v11[3] = v12;
  *v11 = v9;
  v11[1] = v10;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  C3DMatrix4x4FromSCNMatrix4(&v14, v18);
  C3DMatrix4x4GetAffineTransforms(&v14, 0, (*(*v6 + 400) + 16 * a3), (*(*v6 + 416) + 16 * a3));
  result = *&v19;
  *(*(*v6 + 392) + 16 * a3) = v19;
  return result;
}

- (void)_deleteOriginalData
{
  anon_188 = self->_anon_188;
  free(*self->_anon_188);
  free(*&self->_anon_188[8]);
  free(*&self->_anon_188[24]);
  free(*&self->_anon_188[16]);
  self->_originalDataCount = 0;
  *anon_188 = 0u;
  *(anon_188 + 1) = 0u;
}

- (BOOL)_applyWithEvent:(id *)a3
{
  v96 = *MEMORY[0x277D85DE8];
  action = self->_action;
  if (action <= 2)
  {
    v4.i64[0] = *&a3->var4.x;
    v8 = v4;
    v8.i32[2] = LODWORD(a3->var4.z);
    v4.i32[2] = v8.i32[2];
    v5.i64[0] = *&a3->var5.x;
    v5.i32[2] = LODWORD(a3->var5.z);
    v9 = vsubq_f32(v5, v4);
    LODWORD(v10) = HIDWORD(*&self->_worldMatrix.components[13]);
    v87 = *&self->_worldMatrix.components[13];
    LODWORD(v11) = *&self->_worldMatrix.components[15];
    if (action != 1)
    {
      if (action == 2)
      {
        v12 = *&self->_anon_130[16];
        v13 = vmulq_f32(v9, v12);
        v14 = vmulq_f32(v12, vsubq_f32(*&self->_anon_130[32], v8));
        *v14.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v13.i8), vzip2_s32(*v14.i8, *v13.i8)));
        v86 = vaddq_f32(*&self->_anon_130[48], vmlaq_n_f32(v8, v9, vdiv_f32(*v14.i8, vdup_lane_s32(*v14.i8, 1)).f32[0]));
        +[SCNTransaction begin];
        [SCNTransaction setDisableActions:1];
        LOBYTE(v90) = 0;
        [(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment] gridUnit];
        v16 = v15;
        memset(&v95, 255, 24);
        v17 = [(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment] shouldSnapToAlign];
        v20 = 0;
        v21 = 0;
        if (v17)
        {
          *&v18 = v10;
          *&v19 = v11;
          [(SCNManipulator *)self _snapPositionToAlign:0 original:&v90 unit:&v95 axisMove:*v86.i64 rayStart:*&v87 rayDir:v18 didSnap:v19 snapIndexes:v16, 0.0, 0.0];
        }

        if ([(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment:v20] shouldSnapOnGrid])
        {
          if (v16 != 0.0)
          {
            v89[0].i8[0] = 0;
            _snapPositionToGrid(0, v89, v86, *&v87, v10, v11, v16, *&self->_anon_130[32], *&self->_anon_130[16]);
            if (v89[0].u8[0] == 1)
            {
              if (v90 == 1)
              {
                v23 = vsubq_f32(v22, v86);
                v24 = vmulq_f32(v23, v23);
                v25 = vsubq_f32(v85, v86);
                v26 = vmulq_f32(v25, v25);
                *v24.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v26.i8), vzip2_s32(*v24.i8, *v26.i8))));
                if ((vcgt_f32(vdup_lane_s32(*v24.i8, 1), *v24.i8).u32[0] & 1) == 0)
                {
                  goto LABEL_40;
                }

                memset(&v95, 255, 24);
              }

              else
              {
                LOBYTE(v90) = 1;
              }

              v85 = v22;
            }
          }
        }

LABEL_40:
        if (v90 == 1)
        {
          v65 = v95.columns[0].i64[0];
          if (v95.columns[0].i64[0] != -1 && v95.columns[0].i64[0] < self->_snapToAlignCount)
          {
            var0 = self->_snapToAlignOnX[v95.columns[0].i64[0]].var0;
            v67 = v95.columns[0].i64[0];
            do
            {
              if (vabds_f32(self->_snapToAlignOnX[v67].var0, var0) >= 0.00001)
              {
                break;
              }

              [(NSMutableIndexSet *)self->_snapXIndexes addIndex:v65++];
              ++v67;
            }

            while (v65 < self->_snapToAlignCount);
          }

          v68 = v95.columns[0].i64[1];
          if (v95.columns[0].i64[1] != -1 && v95.columns[0].i64[1] < self->_snapToAlignCount)
          {
            v69 = self->_snapToAlignOnY[v95.columns[0].i64[1]].var0;
            v70 = v95.columns[0].i64[1];
            do
            {
              if (vabds_f32(self->_snapToAlignOnY[v70].var0, v69) >= 0.00001)
              {
                break;
              }

              [(NSMutableIndexSet *)self->_snapYIndexes addIndex:v68++];
              ++v70;
            }

            while (v68 < self->_snapToAlignCount);
          }

          v71 = v95.columns[1].i64[0];
          if (v95.columns[1].i64[0] != -1 && v95.columns[1].i64[0] < self->_snapToAlignCount)
          {
            v72 = self->_snapToAlignOnZ[v95.columns[1].i64[0]].var0;
            v73 = v95.columns[1].i64[0];
            do
            {
              if (vabds_f32(self->_snapToAlignOnZ[v73].var0, v72) >= 0.00001)
              {
                break;
              }

              [(NSMutableIndexSet *)self->_snapZIndexes addIndex:v71++];
              ++v73;
            }

            while (v71 < self->_snapToAlignCount);
          }

LABEL_75:
          v86 = v85;
          goto LABEL_76;
        }

        goto LABEL_76;
      }

      goto LABEL_17;
    }

    *v36.i64 = __resolveAxisMove(self, v8, v9);
    v86 = vaddq_f32(v36, *&self->_anon_130[32]);
    +[SCNTransaction begin];
    [SCNTransaction setDisableActions:1];
    LOBYTE(v90) = 0;
    [(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment] gridUnit];
    v38 = v37;
    memset(&v95, 255, 24);
    v39 = [(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment] shouldSnapToAlign];
    v42 = 0;
    v43 = 0;
    if (v39)
    {
      *&v40 = v10;
      *&v41 = v11;
      [(SCNManipulator *)self _snapPositionToAlign:1 original:&v90 unit:&v95 axisMove:*v86.i64 rayStart:*&v87 rayDir:v40 didSnap:v41 snapIndexes:v38, *self->_anon_130, *&self->_anon_130[16]];
    }

    if ([(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment:v42] shouldSnapOnGrid])
    {
      if (v38 != 0.0)
      {
        v89[0].i8[0] = 0;
        _snapPositionToGrid(1, v89, v86, *&v87, v10, v11, v38, *self->_anon_130, *&self->_anon_130[16]);
        if (v89[0].u8[0] == 1)
        {
          if (v90 == 1)
          {
            v45 = vsubq_f32(v44, v86);
            v46 = vmulq_f32(v45, v45);
            v47 = vsubq_f32(v85, v86);
            v48 = vmulq_f32(v47, v47);
            *v46.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v48, v48, 8uLL)), vadd_f32(vzip1_s32(*v46.i8, *v48.i8), vzip2_s32(*v46.i8, *v48.i8))));
            if ((vcgt_f32(vdup_lane_s32(*v46.i8, 1), *v46.i8).u32[0] & 1) == 0)
            {
              goto LABEL_59;
            }

            memset(&v95, 255, 24);
          }

          else
          {
            LOBYTE(v90) = 1;
          }

          v85 = v44;
        }
      }
    }

LABEL_59:
    if (v90 == 1)
    {
      v74 = v95.columns[0].i64[0];
      if (v95.columns[0].i64[0] != -1 && v95.columns[0].i64[0] < self->_snapToAlignCount)
      {
        v75 = self->_snapToAlignOnX[v95.columns[0].i64[0]].var0;
        v76 = v95.columns[0].i64[0];
        do
        {
          if (vabds_f32(self->_snapToAlignOnX[v76].var0, v75) >= 0.00001)
          {
            break;
          }

          [(NSMutableIndexSet *)self->_snapXIndexes addIndex:v74++];
          ++v76;
        }

        while (v74 < self->_snapToAlignCount);
      }

      v77 = v95.columns[0].i64[1];
      if (v95.columns[0].i64[1] != -1 && v95.columns[0].i64[1] < self->_snapToAlignCount)
      {
        v78 = self->_snapToAlignOnY[v95.columns[0].i64[1]].var0;
        v79 = v95.columns[0].i64[1];
        do
        {
          if (vabds_f32(self->_snapToAlignOnY[v79].var0, v78) >= 0.00001)
          {
            break;
          }

          [(NSMutableIndexSet *)self->_snapYIndexes addIndex:v77++];
          ++v79;
        }

        while (v77 < self->_snapToAlignCount);
      }

      v80 = v95.columns[1].i64[0];
      if (v95.columns[1].i64[0] != -1 && v95.columns[1].i64[0] < self->_snapToAlignCount)
      {
        v81 = self->_snapToAlignOnZ[v95.columns[1].i64[0]].var0;
        v82 = v95.columns[1].i64[0];
        do
        {
          if (vabds_f32(self->_snapToAlignOnZ[v82].var0, v81) >= 0.00001)
          {
            break;
          }

          [(NSMutableIndexSet *)self->_snapZIndexes addIndex:v80++];
          ++v82;
        }

        while (v80 < self->_snapToAlignCount);
      }

      goto LABEL_75;
    }

LABEL_76:
    v83 = v86;
    v83.i32[3] = *(&self->_worldMatrix + 16);
    *&self->_worldMatrix.components[13] = v83;
    [(SCNManipulator *)self updateItemsPosition];
    +[SCNTransaction commit];
    return 1;
  }

  if (action == 3)
  {
    v49 = a3->var2.y - self->_originalMouseLocation.y;
    v50 = (*self->_anon_130 * v49) * 0.01;
    v94 = 0uLL;
    selectedAxis = self->_selectedAxis;
    v88 = v50;
    if (self->_selectedAxis)
    {
      __asm { FMOV            V1.2S, #1.0 }

      *v3.f32 = vand_s8(_D1, vceq_s32(vdup_n_s32(selectedAxis), 0x200000001));
      v57 = 0.0;
      if (selectedAxis == 3)
      {
        v57 = 1.0;
      }

      v3.f32[2] = v57;
      v58 = *&self->_worldInitialMatrix.components[5];
      v95.columns[0] = *&self->_worldInitialMatrix.components[1];
      v95.columns[1] = v58;
      v59 = *&self->_worldInitialMatrix.components[13];
      v95.columns[2] = *&self->_worldInitialMatrix.components[9];
      v95.columns[3] = v59;
      *v60.i64 = C3DVector3RotateAndScale(&v95, v3);
      v61 = vmulq_f32(v60, v60);
      *&v62 = v61.f32[2] + vaddv_f32(*v61.f32);
      *v61.f32 = vrsqrte_f32(v62);
      *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
      v63 = vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
    }

    else
    {
      memset(&v95, 0, sizeof(v95));
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v64 = [(SCNManipulator *)self authoringEnvironment];
      if (v64)
      {
        [(SCNAuthoringEnvironment *)v64 viewMatrix];
      }

      else
      {
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
      }

      C3DMatrix4x4FromSCNMatrix4(&v95, &v90);
      C3DMatrix4x4Invert(&v95, &v95);
      v89[0] = v95.columns[0];
      v89[1] = v95.columns[1];
      v89[2] = v95.columns[2];
      v89[3] = v95.columns[3];
      *v63.i64 = C3DVector3Rotate(v89, xmmword_21C27F900);
    }

    v63.f32[3] = v88;
    v89[0] = v63;
    C3DQuaternionMakeAxisAngle(&v94, v89);
    memset(&v95, 0, sizeof(v95));
    C3DMatrix4x4MakeRotation(&v95, &v94);
    [SCNTransaction begin:C3DMatrix4x4Mult3x3(&self->_worldInitialMatrix.components[1]];
    v33 = 1;
    [SCNTransaction setDisableActions:1];
    [(SCNManipulator *)self updateItemsRotation:*v94.i64];
    goto LABEL_37;
  }

  if (action == 4)
  {
    v27 = a3->var2.y - self->_originalMouseLocation.y;
    v28 = v27 <= 0.0;
    v29 = v27;
    v30 = 1.0 / ((100.0 - v29) / 100.0);
    v31 = (v29 + 100.0) / 100.0;
    if (v28)
    {
      v31 = v30;
    }

    v32 = v31;
    +[SCNTransaction begin];
    v33 = 1;
    [SCNTransaction setDisableActions:1];
    *&v34 = v32;
    [(SCNManipulator *)self updateItemsScale:v34];
LABEL_37:
    +[SCNTransaction commit];
    return v33;
  }

LABEL_17:
  v35 = scn_default_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    [SCNManipulator _applyWithEvent:v35];
  }

  return 0;
}

- (void)clearSnapIndexes
{
  free(self->_snapToAlignOnX);
  free(self->_snapToAlignOnY);
  free(self->_snapToAlignOnZ);
  *&self->_snapToAlignCount = 0u;
  *&self->_snapToAlignOnY = 0u;
  [(NSMutableIndexSet *)self->_snapXIndexes removeAllIndexes];
  [(NSMutableIndexSet *)self->_snapYIndexes removeAllIndexes];
  snapZIndexes = self->_snapZIndexes;

  [(NSMutableIndexSet *)snapZIndexes removeAllIndexes];
}

- (BOOL)mouseDragged:(id *)a3
{
  if (!self->_action)
  {
    return 0;
  }

  v5 = *&a3->var4.x;
  var3 = a3->var3;
  v13 = v5;
  v14 = *&a3->var5.y;
  var2 = a3->var2;
  v10 = *&a3->var0;
  v11 = var2;
  [(SCNManipulator *)self _updateCloneStateWithEvent:&v10];
  v7 = *&a3->var4.x;
  var3 = a3->var3;
  v13 = v7;
  v14 = *&a3->var5.y;
  v8 = a3->var2;
  v10 = *&a3->var0;
  v11 = v8;
  return [(SCNManipulator *)self _applyWithEvent:&v10];
}

- (BOOL)mouseDown:(id *)a3
{
  v77 = *MEMORY[0x277D85DE8];
  if ([(SCNManipulator *)self readonly])
  {
    return 0;
  }

  v5 = *&a3->var4.x;
  var3 = a3->var3;
  v75 = v5;
  v76 = *&a3->var5.y;
  var2 = a3->var2;
  v72 = *&a3->var0;
  v73 = var2;
  [(SCNManipulator *)self _updateActionWithEvent:&v72];
  if (!self->_action)
  {
    return 0;
  }

  v7 = 1;
  self->_isMouseDown = 1;
  [(SCNManipulator *)self _saveOriginalData];
  __computeAnchorMatrix(self, &v72);
  v9 = v73;
  *&self->_worldMatrix.components[1] = v72;
  *&self->_worldMatrix.components[5] = v9;
  v10 = v75;
  *&self->_worldMatrix.components[9] = var3;
  *&self->_worldMatrix.components[13] = v10;
  v11 = *&self->_worldMatrix.components[5];
  *&self->_worldInitialMatrix.components[1] = *&self->_worldMatrix.components[1];
  *&self->_worldInitialMatrix.components[5] = v11;
  v12 = *&self->_worldMatrix.components[13];
  *&self->_worldInitialMatrix.components[9] = *&self->_worldMatrix.components[9];
  *&self->_worldInitialMatrix.components[13] = v12;
  v13 = a3->var2;
  self->_originalMouseLocation = v13;
  action = self->_action;
  if (action > 2)
  {
    if (action != 3)
    {
      if (action == 4)
      {
        return v7;
      }

LABEL_11:
      v35 = scn_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [SCNManipulator _applyWithEvent:v35];
      }

      return 0;
    }

    v52 = *&self->_worldMatrix.components[5];
    v72 = *&self->_worldMatrix.components[1];
    v73 = v52;
    v55 = *&self->_worldMatrix.components[9];
    _Q1 = *&self->_worldMatrix.components[13];
    selectedAxis = self->_selectedAxis;
    var3 = v55;
    v75 = _Q1;
    __asm { FMOV            V1.2S, #1.0 }

    *v55.f32 = vand_s8(*&_Q1, vceq_s32(vdup_n_s32(selectedAxis), 0x200000001));
    v56 = 0.0;
    if (selectedAxis == 3)
    {
      v56 = 1.0;
    }

    v55.f32[2] = v56;
    *v57.i64 = C3DVector3RotateAndScale(&v72, v55);
    v58 = vmulq_f32(v57, v57);
    *&v59 = v58.f32[2] + vaddv_f32(*v58.f32);
    *v58.f32 = vrsqrte_f32(v59);
    *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32)));
    v60 = vmulq_n_f32(v57, vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32))).f32[0]);
    v58.i64[0] = *&a3->var5.x;
    v58.i32[2] = LODWORD(a3->var5.z);
    v61.i64[0] = *&a3->var4.x;
    v61.i32[2] = LODWORD(a3->var4.z);
    v62 = vmulq_f32(v60, vsubq_f32(v58, v61));
    v58.f32[0] = vaddv_f32(*v62.f32);
    v63 = -1.0;
    if ((v62.f32[2] + v58.f32[0]) <= 0.0)
    {
      v63 = 1.0;
    }

    *self->_anon_130 = v63;
  }

  else
  {
    if (action != 1)
    {
      if (action == 2)
      {
        v15 = self->_selectedAxis;
        __asm { FMOV            V1.2S, #1.0 }

        *v8.f32 = vand_s8(vceq_s32(vdup_n_s32(v15), 0x200000001), _D1);
        v21 = 0.0;
        if (v15 == 3)
        {
          v21 = 1.0;
        }

        v8.f32[2] = v21;
        v66 = v8;
        v22 = *&self->_worldMatrix.components[5];
        v72 = *&self->_worldMatrix.components[1];
        v73 = v22;
        v23 = *&self->_worldMatrix.components[13];
        v25 = *&self->_worldMatrix.components[1];
        v24 = *&self->_worldMatrix.components[5];
        var3 = *&self->_worldMatrix.components[9];
        v75 = v23;
        v68 = v25;
        v69 = v24;
        v26 = *&self->_worldMatrix.components[13];
        v70 = *&self->_worldMatrix.components[9];
        v71 = v26;
        *v27.i64 = C3DVector3MultMatrix4x4(&v68, 0);
        v64 = v27;
        v68 = v72;
        v69 = v73;
        v70 = var3;
        v71 = v75;
        *v28.i64 = C3DVector3MultMatrix4x4(&v68, v66);
        v29.i32[3] = v64.i32[3];
        v30 = vsubq_f32(v28, v64);
        *&self->_anon_130[16] = v30;
        *&self->_anon_130[32] = v64;
        *self->_anon_130 = v64;
        v29.i64[0] = *&a3->var4.x;
        v29.i32[2] = LODWORD(a3->var4.z);
        v31.i64[0] = *&a3->var5.x;
        v31.i32[2] = LODWORD(a3->var5.z);
        v32 = vsubq_f32(v31, v29);
        v33 = vmulq_f32(v30, v32);
        v34 = vmulq_f32(v30, vsubq_f32(v64, v29));
        *&self->_anon_130[48] = vsubq_f32(v64, vmlaq_n_f32(v29, v32, (v34.f32[2] + vaddv_f32(*v34.f32)) / (v33.f32[2] + vaddv_f32(*v33.f32))));
        return v7;
      }

      goto LABEL_11;
    }

    v37 = self->_selectedAxis;
    __asm { FMOV            V1.2S, #1.0 }

    *v13.f32 = vand_s8(vceq_s32(vdup_n_s32(v37), 0x200000001), _D1);
    v39 = 0.0;
    if (v37 == 3)
    {
      v39 = 1.0;
    }

    v13.f32[2] = v39;
    v65 = vmulq_f32(v13, vdupq_n_s32(0x42C80000u));
    v40 = *&self->_worldMatrix.components[5];
    v72 = *&self->_worldMatrix.components[1];
    v73 = v40;
    v41 = *&self->_worldMatrix.components[13];
    v42 = *&self->_worldMatrix.components[1];
    v43 = *&self->_worldMatrix.components[5];
    var3 = *&self->_worldMatrix.components[9];
    v75 = v41;
    v68 = v42;
    v69 = v43;
    v44 = *&self->_worldMatrix.components[13];
    v70 = *&self->_worldMatrix.components[9];
    v71 = v44;
    *v45.i64 = C3DVector3MultMatrix4x4(&v68, 0);
    v67 = v45;
    v68 = v72;
    v69 = v73;
    v70 = var3;
    v71 = v75;
    *v46.i64 = C3DVector3MultMatrix4x4(&v68, v65);
    v47 = vsubq_f32(v46, v67);
    v48 = vmulq_f32(v47, v47);
    *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
    *v48.f32 = vrsqrte_f32(v49);
    *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
    v50 = vmulq_n_f32(v47, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
    *self->_anon_130 = v67;
    *&self->_anon_130[16] = v50;
    v50.i64[0] = *&a3->var4.x;
    v50.i32[2] = LODWORD(a3->var4.z);
    v48.i64[0] = *&a3->var5.x;
    v48.i32[2] = LODWORD(a3->var5.z);
    *v51.i64 = __resolveAxisMove(self, v50, vsubq_f32(v48, v50));
    *&self->_anon_130[32] = vsubq_f32(v67, v51);
  }

  return v7;
}

- (BOOL)mouseUp:(id *)a3
{
  if ([(SCNManipulator *)self readonly])
  {
    return 0;
  }

  [(SCNManipulator *)self clearSnapIndexes];
  v5 = self->_action != 0;
  if (self->_action)
  {
    v6 = *&a3->var4.x;
    var3 = a3->var3;
    v18 = v6;
    v19 = *&a3->var5.y;
    var2 = a3->var2;
    v15 = *&a3->var0;
    v16 = var2;
    [(SCNManipulator *)self _updateCloneStateWithEvent:&v15];
    v8 = *&a3->var4.x;
    var3 = a3->var3;
    v18 = v8;
    v19 = *&a3->var5.y;
    v9 = a3->var2;
    v15 = *&a3->var0;
    v16 = v9;
    [(SCNManipulator *)self _applyWithEvent:&v15];
    if (self->_cloning)
    {
      [(SCNManipulator *)self validateClones];
    }

    else
    {
      v10 = [(SCNAuthoringEnvironment *)self->_authoringEnvironment delegate];
      if (v10)
      {
        v11 = v10;
        if (objc_opt_respondsToSelector())
        {
          [(SCNAuthoringEnvironmentDelegate *)v11 authoringEnvironment:self->_authoringEnvironment didMoveItems:[(NSOrderedSet *)self->_targets array] fromTransform:*&self->_anon_188[16]];
        }
      }
    }
  }

  self->_cloneSet = 0;
  self->_cloning = 0;
  self->_action = 0;
  *self->_anon_130 = 0u;
  *&self->_anon_130[16] = 0u;
  *&self->_anon_130[32] = 0u;
  *&self->_anon_130[48] = 0u;
  self->_isMouseDown = 0;
  v12 = *&a3->var4.x;
  var3 = a3->var3;
  v18 = v12;
  v19 = *&a3->var5.y;
  v13 = a3->var2;
  v15 = *&a3->var0;
  v16 = v13;
  [(SCNManipulator *)self mouseMoved:&v15];
  return v5;
}

- (id)scene
{
  v2 = [(SCNAuthoringEnvironment *)[(SCNManipulator *)self authoringEnvironment] sceneRenderer];

  return [(SCNSceneRenderer *)v2 scene];
}

- (void)removeClonesFromScene
{
  [(NSOrderedSet *)self->_cloneSet firstObject];
  v3 = objc_opt_class();
  v4 = [(NSOrderedSet *)self->_cloneSet array];

  [v3 removeItemsFromScene:v4];
}

- (void)addClonesToScene
{
  v3 = [(SCNManipulator *)self scene];
  [(NSOrderedSet *)self->_cloneSet firstObject];
  v4 = objc_opt_class();
  v5 = [(NSOrderedSet *)self->_cloneSet array];

  [v4 addItems:v5 toScene:v3];
}

- (void)validateClones
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SCNAuthoringEnvironment *)self->_authoringEnvironment delegate];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(SCNManipulator *)self authoringEnvironment];
      objc_sync_enter(v5);
      [(NSOrderedSet *)self->_cloneSet firstObject];
      [objc_opt_class() removeItemsFromScene:{-[NSOrderedSet array](self->_cloneSet, "array")}];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      cloneSet = self->_cloneSet;
      v7 = [(NSOrderedSet *)cloneSet countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        v8 = *v11;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(cloneSet);
            }

            [*(*(&v10 + 1) + 8 * i) validateClone];
          }

          v7 = [(NSOrderedSet *)cloneSet countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      objc_sync_exit(v5);
      [(SCNAuthoringEnvironmentDelegate *)v4 authoringEnvironment:self->_authoringEnvironment didCloneSelection:[(NSOrderedSet *)self->_cloneSet array]];
    }
  }
}

- (id)setupClones
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v4 = [(SCNManipulator *)self scene];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  targets = self->_targets;
  v6 = [(NSOrderedSet *)targets countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(targets);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) cloneForManipulators];
        if (v10)
        {
          v11 = v10;
          v12 = objc_opt_class();
          v18 = v11;
          [v12 addItems:objc_msgSend(MEMORY[0x277CBEA60] toScene:{"arrayWithObjects:count:", &v18, 1), v4}];
          [v3 addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSOrderedSet *)targets countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)snapGuideIndexesOnAxis:(unint64_t)a3
{
  v3 = 608;
  if (a3 == 2)
  {
    v3 = 600;
  }

  if (a3 == 1)
  {
    v3 = 592;
  }

  return *(&self->super.isa + v3);
}

- (const)snapInfoAtIndex:(unint64_t)a3 axis:(unint64_t)a4
{
  v4 = 584;
  if (a4 == 2)
  {
    v4 = 576;
  }

  if (a4 == 1)
  {
    v4 = 568;
  }

  return (*(&self->super.isa + v4) + 24 * a3);
}

- (void)_prepareSnapToAlignData:(SCNManipulator *)self minOffset:(SEL)a2 maxOffset:(unsigned __int16)a3
{
  v34 = v3;
  v35 = v4;
  if ((a3 - 1) >= 3)
  {
    NSLog(&cfstr_Preparesnaptoa.isa, a2);
  }

  else
  {
    v5 = a3;
    v7 = (&self->super.isa + ((a3 - 1) & 0x1FFF));
    free(v7[71]);
    v7[71] = 0;
    if ([(NSOrderedSet *)self->_targets count])
    {
      v8 = [objc_msgSend(-[SCNManipulator scene](self "scene")];
      v9 = [v8 count];
      v10 = v9;
      if (v9)
      {
        v11 = 0;
        v12 = 0;
        v7[71] = malloc_type_calloc(0x18uLL, 5 * v9, 0xCDB5EBC1uLL);
        v13 = *(&v34 + 2);
        v14 = *(&v35 + 2);
        v15 = *(&v34 + 1);
        v16 = *(&v35 + 1);
        while (1)
        {
          v17 = [v8 objectAtIndex:{v11, v34, v35}];
          if ((_itemsContainsNode(self->_targets, v17) & 1) == 0)
          {
            break;
          }

LABEL_19:
          if (v10 == ++v11)
          {
            self->_snapToAlignCount = v12;
            qsort(v7[71], v12, 0x18uLL, _sortSnapData);
            return;
          }
        }

        v18 = [v17 nodeRef];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        if (v17)
        {
          [v17 worldTransform];
        }

        v36 = 0u;
        v37 = 0u;
        if (C3DNodeGetLocalBoundingBox(v18, &v36))
        {
          WorldMatrix = C3DNodeGetWorldMatrix(v18);
          v20 = WorldMatrix[1];
          v21 = WorldMatrix[2];
          v22 = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v20, *v36.f32, 1), *WorldMatrix, v36.f32[0]), v21, v36, 2));
          v22.i32[3] = 1.0;
          v23 = v37;
          v23.i32[1] = v37.i32[0];
          v23.i32[2] = v37.i32[0];
          v24 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(*WorldMatrix, v23)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v37.i8, 1), v37), v20))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v37, v37), v37), v21)));
        }

        else
        {
          v22 = v41;
          v22.i32[3] = 1.0;
          v24 = 0uLL;
        }

        v36 = v22;
        v37 = v24;
        v25 = 3 * v12;
        *(v7[71] + v25 + 1) = v18;
        v26 = v12 + 1;
        *(v7[71] + 3 * v12 + 4) = v18;
        v27 = v12 + 2;
        *(v7[71] + 3 * v12 + 7) = v18;
        v28 = v12 + 3;
        *(v7[71] + 3 * v12 + 10) = v18;
        *(v7[71] + 3 * v12 + 13) = v18;
        v29 = v7[71];
        v29[2 * v25 + 4] = 0;
        switch(v5)
        {
          case 3:
            v29[6 * v12] = v41.i32[2];
            *&v29[6 * v26] = v13 + (v36.f32[2] + *&v37.i32[2]);
            *&v29[6 * v27] = v14 + (v36.f32[2] + *&v37.i32[2]);
            *&v29[6 * v28] = v13 + (v36.f32[2] - *&v37.i32[2]);
            v30 = v14 + (v36.f32[2] - *&v37.i32[2]);
            v31 = v13;
            v32 = v14;
            break;
          case 2:
            v29[6 * v12] = v41.i32[1];
            *&v29[6 * v26] = v15 + (v36.f32[1] + *&v37.i32[1]);
            *&v29[6 * v27] = v16 + (v36.f32[1] + *&v37.i32[1]);
            *&v29[6 * v28] = v15 + (v36.f32[1] - *&v37.i32[1]);
            v30 = v16 + (v36.f32[1] - *&v37.i32[1]);
            v31 = v15;
            v32 = v16;
            break;
          case 1:
            v29[6 * v12] = v41.i32[0];
            *&v29[6 * v26] = (v36.f32[0] + *v37.i32) + *&v34;
            *&v29[6 * v27] = (v36.f32[0] + *v37.i32) + *&v35;
            *&v29[6 * v28] = (v36.f32[0] - *v37.i32) + *&v34;
            v30 = (v36.f32[0] - *v37.i32) + *&v35;
            v31 = *&v34;
            v32 = *&v35;
            break;
          default:
LABEL_18:
            v12 += 5;
            goto LABEL_19;
        }

        v33 = &v29[6 * v12 + 24];
        *v33 = v30;
        *&v29[6 * v26 + 4] = v31;
        *&v29[6 * v27 + 4] = v32;
        *&v29[6 * v28 + 4] = v31;
        v33[4] = v32;
        goto LABEL_18;
      }
    }
  }
}

- (void)prepareSnapToAlignData
{
  v55 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = 0;
  v3 = [(SCNManipulator *)self targets];
  v4 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7.i64[0] = 0x80000000800000;
    v7.i64[1] = 0x80000000800000;
    *&v8 = 0x80000000800000;
    *(&v8 + 1) = 0x80000000800000;
    v38 = v8;
    v40 = vnegq_f32(v7);
    v9 = *v51;
    do
    {
      v10 = 0;
      v11 = v40;
      do
      {
        v41 = v11;
        if (*v51 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v50 + 1) + 8 * v10);
        if ([v12 node] && (v49 = 0.0, v48 = 0, v47 = 0, v46 = 0, objc_msgSend(objc_msgSend(v12, "node"), "getBoundingBoxMin:max:", &v48, &v46)))
        {
          v13 = [v12 node];
          LODWORD(v15) = HIDWORD(v48);
          LODWORD(v14) = v48;
          *&v16 = v49;
          [v13 convertPosition:0 toNode:{v14, v15, v16}];
          v48 = __PAIR64__(v18, v17);
          v49 = v19;
          v20 = [v12 node];
          LODWORD(v22) = HIDWORD(v46);
          LODWORD(v21) = v46;
          LODWORD(v23) = v47;
          [v20 convertPosition:0 toNode:{v21, v22, v23}];
          v27 = v41.f32[2];
          if (v49 >= v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = v49;
          }

          if (v49 >= v26)
          {
            v26 = v49;
          }

          if (v41.f32[2] >= v28)
          {
            v27 = v28;
          }

          v24.i32[1] = v25;
          v29 = vcgt_f32(v24, v48);
          v30 = vbsl_s8(v29, v48, v24);
          *v11.f32 = vbsl_s8(vcgt_f32(v30, *v41.f32), *v41.f32, v30);
          v11.i64[1] = __PAIR64__(v41.u32[3], LODWORD(v27));
          v31 = vbsl_s8(v29, v24, v48);
          *&v32 = vbsl_s8(vcgt_f32(v31, *&v38), v31, *&v38);
          v33 = *(&v38 + 2);
          if (*(&v38 + 2) < v26)
          {
            v33 = v26;
          }

          *(&v32 + 1) = __PAIR64__(HIDWORD(v38), LODWORD(v33));
          v6 = 1;
          v38 = v32;
        }

        else
        {
          v11 = v41;
        }

        ++v10;
      }

      while (v5 != v10);
      v40 = v11;
      v5 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v5);
    *&v34 = 0.0;
    if (v6)
    {
      if (self)
      {
        [(SCNManipulator *)self transform];
        [(SCNManipulator *)self transform];
        [(SCNManipulator *)self transform];
        [(SCNManipulator *)self transform];
        [(SCNManipulator *)self transform];
        [(SCNManipulator *)self transform];
        v34 = vsub_f32(*v40.f32, __PAIR64__(v42, v43));
        v35 = vsub_f32(*&v38, __PAIR64__(v44, v45));
      }

      else
      {
        v34 = *v40.f32;
        v35 = v38;
      }

      v36 = v35;
    }
  }

  else
  {
    *&v34 = 0.0;
  }

  v39 = *&v34;
  [(SCNManipulator *)self _prepareSnapToAlignData:1 minOffset:*&v36 maxOffset:?];
  [(SCNManipulator *)self _prepareSnapToAlignData:2 minOffset:v39 maxOffset:v37];
  [(SCNManipulator *)self _prepareSnapToAlignData:3 minOffset:v39 maxOffset:v37];
}

- (void)prepareSnapToAlignDataIfNeeded
{
  if (!self->_snapToAlignCount)
  {
    v4 = [-[SCNManipulator scene](self "scene")];
    +[SCNTransaction lock];
    if (v4)
    {
      C3DSceneLock(v4);
      [(SCNManipulator *)self prepareSnapToAlignData];
      C3DSceneUnlock(v4);
    }

    else
    {
      [(SCNManipulator *)self prepareSnapToAlignData];
    }

    +[SCNTransaction unlock];
  }
}

- (__n128)_snapPositionToAlign:(float)a3 original:(float)a4 unit:(float)a5 axisMove:(double)a6 rayStart:(__n128)a7 rayDir:(__n128)a8 didSnap:(uint64_t)a9 snapIndexes:(int)a10
{
  v36 = a8;
  v37 = a7;
  [a1 prepareSnapToAlignDataIfNeeded];
  *a11 = 0;
  if (!a1[70] || !a1[71])
  {
    return a2;
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  C3DRay3Make(&v34, &v37, &v36);
  v20 = a2;
  if (vabds_f32(a2.n128_f32[0], a3) <= 0.00001)
  {
    v23 = 0;
LABEL_8:
    v22 = v20;
    goto LABEL_9;
  }

  v21 = _snapPositionToAlign(a1[71], a1[70], &v33, a2.n128_f32[0], a6);
  *a12 = v21;
  if (v21 == -1)
  {
    v23 = 0;
    v20 = a2;
    goto LABEL_8;
  }

  v22.i32[0] = v33;
  v20 = a2;
  *(v22.i64 + 4) = *(a2.n128_i64 + 4);
  v23 = 1;
LABEL_9:
  if (vabds_f32(v20.n128_f32[1], a4) <= 0.00001)
  {
    v25 = 0;
  }

  else
  {
    v30 = v22;
    v24 = _snapPositionToAlign(a1[72], a1[70], &v33, v20.n128_f32[1], a6);
    a12[1] = v24;
    if (v24 == -1)
    {
      v25 = 0;
      v22 = v30;
      v20 = a2;
    }

    else
    {
      v20 = a2;
      v22.i64[0] = __PAIR64__(v33, v30.u32[0]);
      v22.i64[1] = v30.i64[1];
      v25 = 1;
    }
  }

  if (vabds_f32(v20.n128_f32[2], a5) <= 0.00001)
  {
    v27 = 0;
  }

  else
  {
    v31 = v22;
    v26 = _snapPositionToAlign(a1[73], a1[70], &v33, v20.n128_f32[2], a6);
    a12[2] = v26;
    if (v26 == -1)
    {
      v27 = 0;
      v22 = v31;
      v20 = a2;
    }

    else
    {
      v20 = a2;
      v22.i64[0] = v31.i64[0];
      v22.i64[1] = __PAIR64__(v31.u32[3], v33);
      v27 = 1;
    }
  }

  *a11 = v23 | v25 | v27;
  if (v23 | v25 | v27 && a10)
  {
    _adjustSnapForAxisMove(v23, v25, v27, a12, v22, v20, v34, v35);
    return v28;
  }

  return v22;
}

@end