@interface SCNSkinner
+ (SCNSkinner)skinnerWithBaseGeometry:(SCNGeometry *)baseGeometry bones:(NSArray *)bones boneInverseBindTransforms:(NSArray *)boneInverseBindTransforms boneWeights:(SCNGeometrySource *)boneWeights boneIndices:(SCNGeometrySource *)boneIndices;
+ (SCNSkinner)skinnerWithSkinnerRef:(__C3DSkinner *)a3;
+ (__C3DSkinner)_createSkinnerWithBones:(id)a3 boneWeights:(id)a4 boneIndices:(id)a5 baseGeometry:(id)a6;
+ (__C3DSkinner)_createSkinnerWithCompressedData:(id)a3 bonesCount:(unint64_t)a4 vertexCount:(unint64_t)a5;
+ (id)_skinnerWithBaseGeometry:(id)a3 skinnableGeometry:(id)a4 bones:(id)a5 boneInverseBindTransforms:(id)a6 bindMatrix:(SCNMatrix4 *)a7;
- (BOOL)_setSkeleton:(id)a3;
- (NSArray)boneInverseBindTransforms;
- (NSArray)bones;
- (SCNGeometrySource)boneIndices;
- (SCNGeometrySource)boneWeights;
- (SCNMatrix4)baseGeometryBindTransform;
- (SCNSkinner)initWithCoder:(id)a3;
- (SCNSkinner)initWithSkinnerRef:(__C3DSkinner *)a3;
- (__C3DScene)sceneRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)scene;
- (void)_setBaseGeometry:(id)a3;
- (void)_syncObjCModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setBaseGeometry:(SCNGeometry *)baseGeometry;
- (void)setBaseGeometryBindTransform:(SCNMatrix4 *)baseGeometryBindTransform;
- (void)setBoneInverseBindTransforms:(id)a3;
- (void)setBones:(id)a3;
- (void)setSkeleton:(SCNNode *)skeleton;
@end

@implementation SCNSkinner

- (SCNSkinner)initWithSkinnerRef:(__C3DSkinner *)a3
{
  v7.receiver = self;
  v7.super_class = SCNSkinner;
  v4 = [(SCNSkinner *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    v4->_skinner = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    [(SCNSkinner *)v4 _syncObjCModel];
  }

  return v4;
}

+ (SCNSkinner)skinnerWithSkinnerRef:(__C3DSkinner *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithSkinnerRef:a3];

    return v6;
  }

  return result;
}

- (void)dealloc
{
  skinner = self->_skinner;
  if (skinner)
  {
    C3DEntitySetObjCWrapper(skinner, 0);
    v4 = self->_skinner;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __21__SCNSkinner_dealloc__block_invoke;
    v6[3] = &__block_descriptor_40_e8_v16__0d8l;
    v6[4] = v4;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v6];
  }

  objc_storeWeak(&self->_skeleton, 0);

  v5.receiver = self;
  v5.super_class = SCNSkinner;
  [(SCNSkinner *)&v5 dealloc];
}

void __21__SCNSkinner_dealloc__block_invoke(uint64_t a1)
{
  C3DSkinnerSetJoints(*(a1 + 32), 0);
  C3DSkinnerSetSkeleton(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (id)copyWithZone:(_NSZone *)a3
{
  Copy = C3DSkinnerCreateCopy(self->_skinner);
  v5 = [[SCNSkinner alloc] initWithSkinnerRef:Copy];
  CFRelease(Copy);
  [(SCNSkinner *)v5 _setSkeleton:[(SCNSkinner *)self skeleton]];
  [(SCNSkinner *)v5 _setBaseGeometry:self->_baseGeometry];
  [(SCNSkinner *)v5 set_bonesAndIndicesCompression:self->_bonesAndIndicesCompression];
  return v5;
}

- (BOOL)_setSkeleton:(id)a3
{
  Weak = objc_loadWeak(&self->_skeleton);
  if (Weak != a3)
  {
    objc_storeWeak(&self->_skeleton, a3);
  }

  return Weak != a3;
}

- (void)_syncObjCModel
{
  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(self->_skinner);
  if (MTLVertexFormat)
  {
    v4 = [SCNNode nodeWithNodeRef:MTLVertexFormat];
  }

  else
  {
    v4 = _commonAncessor_0([(SCNSkinner *)self bones]);
    if (!v4)
    {
      return;
    }
  }

  [(SCNSkinner *)self _setSkeleton:v4];
}

- (void)setSkeleton:(SCNNode *)skeleton
{
  v5 = [(SCNSkinner *)self skeleton];
  if ([(SCNSkinner *)self _setSkeleton:skeleton])
  {
    if (self->_skinner)
    {
      v6 = [(SCNSkinner *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __26__SCNSkinner_setSkeleton___block_invoke;
      v7[3] = &unk_2782FC928;
      v7[4] = self;
      v7[5] = skeleton;
      v7[6] = v5;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
    }
  }
}

double __26__SCNSkinner_setSkeleton___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) skinnerRef];
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = C3DSkinnerSkeletonNeedsRetargeting(v2, [v3 nodeRef]);
  v5 = *(a1 + 40);
  if (v4)
  {
    if (!C3DSkinnerTransposeSkeleton(v2, [v5 nodeRef]) && !C3DSkinnerTransposeSkeletonUsingNodeNames(v2, objc_msgSend(*(a1 + 40), "nodeRef")))
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v12 = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Failed to transpose skeleton\nold skeleton: %@\nnew skeleton: %@", &v12, 0x16u);
      }
    }

    return result;
  }

  if (!v5)
  {
    C3DSkinnerSetJoints(v2, 0);
LABEL_11:
    v11 = v2;
    v10 = 0;
    goto LABEL_12;
  }

  v10 = [v5 nodeRef];
  v11 = v2;
LABEL_12:

  *&result = C3DSkinnerSetSkeleton(v11, v10).n128_u64[0];
  return result;
}

- (void)setBaseGeometry:(SCNGeometry *)baseGeometry
{
  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNSkinner setBaseGeometry:];
  }
}

- (void)_setBaseGeometry:(id)a3
{
  if (a3)
  {
    baseGeometry = self->_baseGeometry;
    if (baseGeometry != a3)
    {

      self->_baseGeometry = a3;
    }
  }
}

+ (__C3DSkinner)_createSkinnerWithBones:(id)a3 boneWeights:(id)a4 boneIndices:(id)a5 baseGeometry:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = [a3 count];
  v10 = v9;
  if (v9 < 2)
  {
    v19 = C3DSkinCreateWith(0, v9, 0, [a6 __CFObject]);
    C3DSkinSetMaxInfluencesPerVertex(v19, 1);
  }

  else
  {
    v11 = [objc_msgSend(objc_msgSend(a6 geometrySourcesForSemantic:{@"kGeometrySourceSemanticVertex", "firstObject"), "vectorCount"}];
    v12 = [objc_msgSend(a4 "data")];
    v13 = [a4 bytesPerComponent];
    v14 = [objc_msgSend(a5 "data")];
    v15 = [a5 bytesPerComponent];
    v16 = [a5 vectorCount];
    if (v16 != [a4 vectorCount] || (v17 = v12 / v11 / v13, v14 / v11 / v15 != v17))
    {
      v21 = scn_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    if (![a4 floatComponents] || objc_msgSend(a4, "bytesPerComponent") != 4)
    {
      v23 = scn_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    if ([a5 bytesPerComponent] >= 3)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    v24 = [a5 dataStride];
    v25 = [a5 componentsPerVector];
    if (v24 != [a5 bytesPerComponent] * v25)
    {
      v45 = scn_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    v26 = [a4 dataStride];
    v27 = [a4 componentsPerVector];
    if (v26 != [a4 bytesPerComponent] * v27)
    {
      v46 = scn_default_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    v28 = v17 * v11;
    v19 = C3DSkinCreateWith(v11, v10, v17 * v11, [a6 __CFObject]);
    C3DSkinSetMaxInfluencesPerVertex(v19, v17);
    v48 = 0;
    v49 = 0;
    v47 = 0;
    C3DSkinGetVertexWeightsPointers(v19, &v49, &v48, &v47);
    if (v49 && (v11 & 0x8000000000000000) == 0)
    {
      v29 = 0;
      v30 = vdupq_n_s64(v11);
      v31 = (v11 & 0x7FFFFFFFFFFFFFFELL) + 2;
      v32 = xmmword_21C27F640;
      v33 = (v49 + 8);
      v34 = vdupq_n_s64(2uLL);
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v30, v32));
        if (v35.i8[0])
        {
          *(v33 - 1) = v29 * v17;
        }

        if (v35.i8[4])
        {
          *v33 = (v29 | 1) * v17;
        }

        v29 += 2;
        v32 = vaddq_s64(v32, v34);
        v33 += 2;
        v31 -= 2;
      }

      while (v31);
    }

    v36 = [objc_msgSend(a5 "data")];
    v37 = [objc_msgSend(a5 "data")];
    v38 = [objc_msgSend(a4 "data")];
    v39 = [a5 bytesPerComponent];
    if (v28 >= 1)
    {
      v40 = v39;
      for (i = 0; i < v28; ++i)
      {
        if (v40 == 1)
        {
          v42 = *(v36 + i);
        }

        else
        {
          v42 = *(v37 + 2 * i);
        }

        *(v48 + 2 * i) = v42;
        if (v47)
        {
          *(v47 + 4 * i) = *(v38 + 4 * i);
        }

        if (v42 < 0)
        {
          v43 = scn_default_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = *(v48 + 2 * i);
            *buf = 67109120;
            v51 = v44;
            _os_log_error_impl(&dword_21BEF7000, v43, OS_LOG_TYPE_ERROR, "Error: skinner: invalid index (%d)", buf, 8u);
          }

          *(v48 + 2 * i) = -1;
        }
      }
    }

    C3DSkinPackWeightAndIndices(v19);
  }

  v20 = C3DSkinnerCreateWithSkin(v19);
  CFRelease(v19);
  return v20;
}

+ (__C3DSkinner)_createSkinnerWithCompressedData:(id)a3 bonesCount:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  if ([a3 count] != 3)
  {
    if ([a3 count] != 1)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(SCNSkinner *)v18 _createSkinnerWithCompressedData:v19 bonesCount:v20 vertexCount:v21, v22, v23, v24, v25];
      }
    }

    v11 = [a3 objectAtIndexedSubscript:0];
    v12 = [v11 length];
    v8 = 0;
    v10 = 0;
    v9 = 1;
    goto LABEL_14;
  }

  v8 = [a3 objectAtIndexedSubscript:0];
  if ([v8 length] == a5)
  {
    v9 = 1;
    v10 = [a3 objectAtIndexedSubscript:1];
    v11 = [a3 objectAtIndexedSubscript:2];
    v12 = [v11 length];
    if (v8)
    {
      v13 = [v8 bytes];
      if (a5)
      {
        v14 = 1;
        v15 = a5;
        do
        {
          v17 = *v13++;
          v16 = v17;
          if (v14 <= v17)
          {
            v14 = v16;
          }

          --v15;
        }

        while (v15);
        v9 = 0;
LABEL_15:
        v26 = C3DSkinCreateWith(a5, a4, v12, 0);
        C3DSkinSetMaxInfluencesPerVertex(v26, v14);
        if (a4 < 2)
        {
LABEL_55:
          v32 = C3DSkinnerCreateWithSkin(v26);
          CFRelease(v26);
          return v32;
        }

        v58 = 0;
        v59 = 0;
        v57 = 0;
        C3DSkinGetVertexWeightsPointers(v26, &v59, &v58, &v57);
        if (v9)
        {
          if (a5)
          {
            v27 = 0;
            v28 = v59;
            v29 = a5;
            do
            {
              if (v27 >= v12)
              {
                v30 = v12 - 1;
              }

              else
              {
                v30 = v27;
              }

              if (v27 < v12)
              {
                ++v27;
              }

              *v28++ = v30;
              --v29;
            }

            while (v29);
            goto LABEL_34;
          }
        }

        else
        {
          v33 = [v8 bytes];
          if (a5)
          {
            v27 = 0;
            v34 = v59;
            v35 = a5;
            do
            {
              *v34++ = v27;
              v36 = *v33++;
              v27 += v36;
              --v35;
            }

            while (v35);
            goto LABEL_34;
          }
        }

        v27 = 0;
LABEL_34:
        v59[a5] = v27;
        v37 = [v11 bytes];
        if (v10)
        {
          v38 = [v10 length] / v12;
          if (v38 == 2)
          {
            v47 = [v10 bytes];
            if (v12 >= 1)
            {
              v49 = v57;
              v48 = v58;
              do
              {
                v50 = *v37++;
                *v48++ = v50;
                v51 = *v47++;
                *v49++ = v51 / 65535.0;
                --v12;
              }

              while (v12);
            }
          }

          else if (v38 == 1)
          {
            v39 = [v10 bytes];
            if (v12 >= 1)
            {
              v41 = v57;
              v40 = v58;
              do
              {
                v42 = *v37++;
                *v40++ = v42;
                v43 = *v39++;
                *v41++ = v43 / 255.0;
                --v12;
              }

              while (v12);
            }
          }

          else
          {
            v52 = scn_default_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              +[SCNSkinner _createSkinnerWithCompressedData:bonesCount:vertexCount:];
            }

            if (v12 >= 1)
            {
              v54 = v57;
              v53 = v58;
              do
              {
                v55 = *v37++;
                *v53++ = v55;
                *v54++ = 1.0;
                --v12;
              }

              while (v12);
            }
          }
        }

        else if (v12 >= 1)
        {
          v45 = v57;
          v44 = v58;
          do
          {
            v46 = *v37++;
            *v44++ = v46;
            *v45++ = 1.0;
            --v12;
          }

          while (v12);
        }

        C3DSkinPackWeightAndIndices(v26);
        goto LABEL_55;
      }

      v9 = 0;
    }

LABEL_14:
    LOWORD(v14) = 1;
    goto LABEL_15;
  }

  v31 = scn_default_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    +[SCNSkinner _createSkinnerWithCompressedData:bonesCount:vertexCount:];
  }

  return 0;
}

+ (SCNSkinner)skinnerWithBaseGeometry:(SCNGeometry *)baseGeometry bones:(NSArray *)bones boneInverseBindTransforms:(NSArray *)boneInverseBindTransforms boneWeights:(SCNGeometrySource *)boneWeights boneIndices:(SCNGeometrySource *)boneIndices
{
  if (!bones || ![(NSArray *)bones count])
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[SCNSkinner skinnerWithBaseGeometry:bones:boneInverseBindTransforms:boneWeights:boneIndices:];
    }

    return 0;
  }

  if (!baseGeometry)
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[SCNSkinner skinnerWithBaseGeometry:bones:boneInverseBindTransforms:boneWeights:boneIndices:];
    }

    return 0;
  }

  v13 = [(NSArray *)bones count];
  if (v13 != [(NSArray *)boneInverseBindTransforms count])
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[SCNSkinner skinnerWithBaseGeometry:bones:boneInverseBindTransforms:boneWeights:boneIndices:];
    }

    return 0;
  }

  v14 = [a1 _createSkinnerWithBones:bones boneWeights:boneWeights boneIndices:boneIndices baseGeometry:baseGeometry];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = [[a1 alloc] initWithSkinnerRef:v14];
  CFRelease(v15);
  [v16 setBones:bones];
  [v16 setBoneInverseBindTransforms:boneInverseBindTransforms];
  [v16 _setBaseGeometry:baseGeometry];
  [v16 _setSkeleton:_commonAncessor_0(bones)];

  return v16;
}

+ (id)_skinnerWithBaseGeometry:(id)a3 skinnableGeometry:(id)a4 bones:(id)a5 boneInverseBindTransforms:(id)a6 bindMatrix:(SCNMatrix4 *)a7
{
  Mesh = C3DGeometryGetMesh([a4 geometryRef]);
  result = C3DSkinCreateWithSkinnableMesh(Mesh, [a5 count]);
  if (result)
  {
    v14 = result;
    v15 = C3DSkinnerCreateWithSkin(result);
    CFRelease(v14);
    v16 = [[a1 alloc] initWithSkinnerRef:v15];
    CFRelease(v15);
    [v16 setBones:a5];
    [v16 setBoneInverseBindTransforms:a6];
    v17 = *&a7->m21;
    v19[0] = *&a7->m11;
    v19[1] = v17;
    v18 = *&a7->m41;
    v19[2] = *&a7->m31;
    v19[3] = v18;
    [v16 setBaseGeometryBindTransform:v19];
    [v16 _setBaseGeometry:a3];
    [v16 _setSkeleton:_commonAncessor_0(a5)];
    return v16;
  }

  return result;
}

- (SCNMatrix4)baseGeometryBindTransform
{
  *retstr = SCNMatrix4Identity;
  v5 = [(SCNSkinner *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  result = C3DGeometryGetOverrideMaterial(self->_skinner);
  if (result)
  {
    DefaultShapeMatrix = C3DSkinGetDefaultShapeMatrix(result);
    C3DMatrix4x4ToSCNMatrix4(DefaultShapeMatrix, retstr);
  }

  if (v6)
  {

    return C3DSceneUnlock(v6);
  }

  return result;
}

- (void)setBaseGeometryBindTransform:(SCNMatrix4 *)baseGeometryBindTransform
{
  v5 = [(SCNSkinner *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  if (OverrideMaterial)
  {
    v8 = OverrideMaterial;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    C3DMatrix4x4FromSCNMatrix4(&v10, baseGeometryBindTransform);
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
    C3DSkinSetDefaultShapeMatrix(v8, v9);
  }

  if (v6)
  {
    C3DSceneUnlock(v6);
  }
}

- (SCNGeometrySource)boneWeights
{
  v3 = [(SCNSkinner *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  if (C3DSkinnerHasOnlyOneJoint(self->_skinner))
  {
    v5 = 0;
    if (!v4)
    {
      return v5;
    }

    goto LABEL_28;
  }

  v32 = v4;
  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(OverrideMaterial);
  MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(OverrideMaterial);
  v38 = 0;
  v39 = 0;
  C3DSkinGetVertexWeightsPointers(OverrideMaterial, &v38, 0, &v39);
  v31 = 4 * MTLVertexFormat * MaxInfluencesPerVertex;
  v35 = malloc_type_malloc(v31, 0x100004052888210uLL);
  v37 = MTLVertexFormat;
  if (MTLVertexFormat >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v38;
    v13 = v39;
    v14 = *v38;
    v15 = 4 * (MaxInfluencesPerVertex & ~(MaxInfluencesPerVertex >> 63));
    v33 = -MaxInfluencesPerVertex;
    v34 = MaxInfluencesPerVertex;
    v16 = v35;
    v17 = &v35[v15 / 4];
    do
    {
      v18 = v14;
      v14 = v12[++v9];
      v19 = v14 - v18;
      if (v14 - v18 >= MaxInfluencesPerVertex)
      {
        v20 = MaxInfluencesPerVertex;
      }

      else
      {
        v20 = v14 - v18;
      }

      if (v20 < 1)
      {
        v20 = 0;
        v21 = 0.0;
      }

      else
      {
        v10 += v20;
        v21 = 0.0;
        v22 = v16;
        v23 = v20;
        do
        {
          v24 = *(v13 + 4 * v11);
          v21 = v21 + v24;
          ++v11;
          *v22++ = v24;
          --v23;
        }

        while (v23);
      }

      if (MaxInfluencesPerVertex > v20)
      {
        v25 = 4 * (MaxInfluencesPerVertex - v20);
        v36 = v10;
        v26 = v9;
        bzero(&v35[v10], v25);
        v9 = v26;
        MaxInfluencesPerVertex = v34;
        v10 = v36 + v34 - v20;
      }

      if (v19 > MaxInfluencesPerVertex && v21 > 0.0 && MaxInfluencesPerVertex >= 1)
      {
        v28 = v33;
        do
        {
          *&v17[4 * v28] = *&v17[4 * v28] / v21;
        }

        while (!__CFADD__(v28++, 1));
      }

      v16 = (v16 + v15);
      v17 += v15;
    }

    while (v9 != v37);
  }

  v5 = +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v35 length:v31 freeWhenDone:1], @"kGeometrySourceSemanticBoneWeights", v37, 1, MaxInfluencesPerVertex, 4, 0, 0);
  v4 = v32;
  if (v32)
  {
LABEL_28:
    C3DSceneUnlock(v4);
  }

  return v5;
}

- (SCNGeometrySource)boneIndices
{
  v3 = [(SCNSkinner *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  if (C3DSkinnerHasOnlyOneJoint(self->_skinner))
  {
    v5 = 0;
    if (!v4)
    {
      return v5;
    }

    goto LABEL_28;
  }

  v41 = v4;
  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(OverrideMaterial);
  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(OverrideMaterial);
  v44 = 0;
  v45 = 0;
  v40 = OverrideMaterial;
  C3DSkinGetVertexWeightsPointers(OverrideMaterial, &v44, &v45, 0);
  v9 = malloc_type_malloc(2 * MaxInfluencesPerVertex * MTLVertexFormat, 0x1000040BDFB0063uLL);
  v42 = v9;
  v43 = MTLVertexFormat;
  if (MTLVertexFormat < 1)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v44;
    v14 = v45;
    v15 = *v44;
    v16 = v9;
    do
    {
      v17 = v15;
      v15 = v13[++v10];
      v18 = v15 - v17;
      if (v18 >= MaxInfluencesPerVertex)
      {
        v19 = MaxInfluencesPerVertex;
      }

      else
      {
        v19 = v18;
      }

      if (v19 < 1)
      {
        v19 = 0;
      }

      else
      {
        v11 += v19;
        v20 = v16;
        v21 = v19;
        do
        {
          v22 = *(v14 + 2 * v12++);
          *v20 = v22;
          v20 += 2;
          --v21;
        }

        while (v21);
      }

      if (MaxInfluencesPerVertex > v19)
      {
        bzero(&v42[2 * v11], 2 * (MaxInfluencesPerVertex - v19));
        v11 = v11 + MaxInfluencesPerVertex - v19;
      }

      v16 += 2 * (MaxInfluencesPerVertex & ~(MaxInfluencesPerVertex >> 63));
    }

    while (v10 != v43);
  }

  if (v12 > C3DSkinGetWeightsCount(v40))
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [(SCNSkinner *)v23 boneIndices:v24];
    }
  }

  if (v11 != v43 * MaxInfluencesPerVertex)
  {
    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      [(SCNSkinner *)v31 boneIndices:v32];
    }
  }

  v5 = +[SCNGeometrySource _geometrySourceWithData:semantic:vectorCount:componentType:componentCount:dataOffset:dataStride:](SCNGeometrySource, "_geometrySourceWithData:semantic:vectorCount:componentType:componentCount:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v42 length:2 * v43 * MaxInfluencesPerVertex freeWhenDone:1], @"kGeometrySourceSemanticBoneIndices", v43, 14, MaxInfluencesPerVertex, 0, 0);
  v4 = v41;
  if (v41)
  {
LABEL_28:
    C3DSceneUnlock(v4);
  }

  return v5;
}

- (NSArray)boneInverseBindTransforms
{
  v3 = [(SCNSkinner *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  v6 = OverrideMaterial;
  if (OverrideMaterial)
  {
    LODWORD(v7) = C3DSkinGetJointsCount(OverrideMaterial);
    InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(v6);
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    if (v7 >= 1)
    {
      v7 = v7;
      do
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        C3DMatrix4x4ToSCNMatrix4(InverseBindMatricesPtr, &v11);
        v10[0] = v11;
        v10[1] = v12;
        v10[2] = v13;
        v10[3] = v14;
        -[NSArray addObject:](v6, "addObject:", [MEMORY[0x277CCAE60] valueWithSCNMatrix4:v10]);
        InverseBindMatricesPtr += 64;
        --v7;
      }

      while (v7);
    }
  }

  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return v6;
}

- (void)setBoneInverseBindTransforms:(id)a3
{
  v5 = [(SCNSkinner *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
    OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
    if (!OverrideMaterial)
    {
LABEL_13:
      C3DSceneUnlock(v6);
      return;
    }
  }

  else
  {
    OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
    if (!OverrideMaterial)
    {
      return;
    }
  }

  v8 = OverrideMaterial;
  JointsCount = C3DSkinGetJointsCount(OverrideMaterial);
  if ([a3 count] == JointsCount)
  {
    InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(v8);
    if (JointsCount)
    {
      v11 = InverseBindMatricesPtr;
      for (i = 0; i != JointsCount; ++i)
      {
        v13 = [a3 objectAtIndex:{i, 0, 0, 0, 0, 0, 0, 0, 0}];
        if (v13)
        {
          [v13 SCNMatrix4Value];
        }

        else
        {
          memset(v15, 0, sizeof(v15));
        }

        C3DMatrix4x4FromSCNMatrix4(v11, v15);
        v11 += 4;
      }
    }

    C3DSkinInverseBindMatricesHaveChanged(v8);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SCNSkinner *)JointsCount setBoneInverseBindTransforms:a3, v14];
    }
  }
}

- (NSArray)bones
{
  v3 = [(SCNSkinner *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [C3DSkinnerGetJoints(self->_skinner) copy];
  v6 = [v5 count];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      -[NSArray addObject:](v7, "addObject:", +[SCNNode nodeWithNodeRef:](SCNNode, "nodeWithNodeRef:", [v5 objectAtIndex:i]));
    }
  }

  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return v7;
}

- (void)setBones:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v5 addObject:{objc_msgSend(v10, "nodeRef")}];
        [v10 setIsJoint:1];
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(SCNSkinner *)self sceneRef];
  if (v11)
  {
    v12 = v11;
    C3DSceneLock(v11);
    C3DSkinnerSetJoints(self->_skinner, v5);
    C3DSceneUnlock(v12);
  }

  else
  {
    C3DSkinnerSetJoints(self->_skinner, v5);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  [a3 encodeObject:-[SCNSkinner skeleton](self forKey:{"skeleton"), @"skeleton"}];
  [a3 encodeObject:-[SCNSkinner baseGeometry](self forKey:{"baseGeometry"), @"baseGeometry"}];
  if (self)
  {
    [(SCNSkinner *)self baseGeometryBindTransform];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
  }

  SCNEncodeSCNMatrix4(a3, @"baseGeometryBindTransform", &v37);
  v5 = [(SCNSkinner *)self bones];
  [a3 encodeObject:v5 forKey:@"bones"];
  if ([(NSArray *)v5 count]>= 2)
  {
    if (self->_bonesAndIndicesCompression)
    {
      OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
      MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(OverrideMaterial);
      WeightsCount = C3DSkinGetWeightsCount(OverrideMaterial);
      MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(OverrideMaterial);
      v36 = 0;
      *&v37 = 0;
      v35 = 0;
      C3DSkinGetVertexWeightsPointers(OverrideMaterial, &v36, &v35, &v37);
      v10 = [MEMORY[0x277CBEB28] dataWithLength:WeightsCount];
      v11 = [v10 bytes];
      if (WeightsCount >= 1)
      {
        v12 = v11;
        for (i = 0; i != WeightsCount; ++i)
        {
          v14 = v35;
          if (*(v35 + 2 * i) >= 0x100u)
          {
            v15 = scn_default_log();
            v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
            v14 = v35;
            if (v16)
            {
              v17 = *(v35 + 2 * i);
              *buf = 67109120;
              v42 = v17;
              _os_log_error_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_ERROR, "Error: Bones index too large for compressed representation : %d", buf, 8u);
              v14 = v35;
            }
          }

          *(v12 + i) = *(v14 + 2 * i);
        }
      }

      if (MaxInfluencesPerVertex <= 1)
      {
        v28 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
      }

      else
      {
        v20 = [MEMORY[0x277CBEB28] dataWithLength:MTLVertexFormat];
        v21 = [v20 bytes];
        if (MTLVertexFormat >= 1)
        {
          for (j = 0; j != MTLVertexFormat; ++j)
          {
            *(v21 + j) = *(v36 + 8 * j + 8) - *(v36 + 8 * j);
          }
        }

        v23 = [MEMORY[0x277CBEB28] dataWithLength:2 * WeightsCount];
        v24 = [v23 bytes];
        if (WeightsCount >= 1)
        {
          v25 = v37;
          do
          {
            v26 = *v25++;
            v27 = rintf(v26 * 65535.0);
            if (v27 >= 0xFFFF)
            {
              v27 = 0xFFFF;
            }

            *v24++ = v27 & ~(v27 >> 31);
            --WeightsCount;
          }

          while (WeightsCount);
        }

        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:{v20, v23, v10, 0}];
      }

      v18 = v28;
      v19 = @"compressedSkinData";
    }

    else
    {
      [a3 encodeObject:-[SCNSkinner boneWeights](self forKey:{"boneWeights"), @"boneWeights"}];
      v18 = [(SCNSkinner *)self boneIndices];
      v19 = @"boneIndices";
    }

    [a3 encodeObject:v18 forKey:v19];
  }

  v29 = [(SCNSkinner *)self boneInverseBindTransforms];
  v30 = [(NSArray *)v29 count];
  if (v30)
  {
    v31 = v30;
    for (k = 0; k != v31; ++k)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"baseGeometryBindTransform-%d", k];
      v34 = [(NSArray *)v29 objectAtIndex:k];
      if (v34)
      {
        [v34 SCNMatrix4Value];
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
      }

      SCNEncodeSCNMatrix4(a3, v33, &v37);
    }
  }
}

- (SCNSkinner)initWithCoder:(id)a3
{
  v25.receiver = self;
  v25.super_class = SCNSkinner;
  v4 = [(SCNSkinner *)&v25 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"skeleton"];
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"baseGeometry"];
    v8 = [objc_msgSend(objc_msgSend(v7 geometrySourcesForSemantic:{@"kGeometrySourceSemanticVertex", "firstObject"), "vectorCount"}];
    v9 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"bones"];
    v10 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"compressedSkinData"];
    if (v10)
    {
      v4->_bonesAndIndicesCompression = 1;
      v11 = [objc_opt_class() _createSkinnerWithCompressedData:v10 bonesCount:objc_msgSend(v9 vertexCount:{"count"), v8}];
    }

    else
    {
      v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"boneWeights"];
      v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"boneIndices"];
      v11 = [objc_opt_class() _createSkinnerWithBones:v9 boneWeights:v12 boneIndices:v13 baseGeometry:v7];
    }

    v4->_skinner = v11;
    if (v11)
    {
      v14 = [MEMORY[0x277CBEB18] array];
      v15 = [v9 count];
      if (v15)
      {
        v16 = v15;
        for (i = 0; i != v16; ++i)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          SCNDecodeSCNMatrix4(a3, [MEMORY[0x277CCACA8] stringWithFormat:@"baseGeometryBindTransform-%d", i], &v21);
          v20[0] = v21;
          v20[1] = v22;
          v20[2] = v23;
          v20[3] = v24;
          [v14 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNMatrix4:", v20)}];
        }
      }

      [(SCNSkinner *)v4 _setBaseGeometry:v7];
      [(SCNSkinner *)v4 setBones:v9];
      SCNDecodeSCNMatrix4(a3, @"baseGeometryBindTransform", v19);
      v21 = v19[0];
      v22 = v19[1];
      v23 = v19[2];
      v24 = v19[3];
      [(SCNSkinner *)v4 setBaseGeometryBindTransform:&v21];
      [(SCNSkinner *)v4 setBoneInverseBindTransforms:v14];
      [(SCNSkinner *)v4 setSkeleton:v6];
      [SCNTransaction setImmediateMode:v5];
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (__C3DScene)sceneRef
{
  v2 = [(SCNSkinner *)self __CFObject];

  return C3DGetScene(v2);
}

- (id)scene
{
  result = [(SCNSkinner *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (void)setBoneInverseBindTransforms:(NSObject *)a3 .cold.1(__int16 a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = [a2 count];
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: number of transforms (%d) doesn't match the number of joints (%d)", v4, 0xEu);
}

@end