@interface SCNSkinner
+ (SCNSkinner)skinnerWithBaseGeometry:(SCNGeometry *)baseGeometry bones:(NSArray *)bones boneInverseBindTransforms:(NSArray *)boneInverseBindTransforms boneWeights:(SCNGeometrySource *)boneWeights boneIndices:(SCNGeometrySource *)boneIndices;
+ (SCNSkinner)skinnerWithSkinnerRef:(__C3DSkinner *)ref;
+ (__C3DSkinner)_createSkinnerWithBones:(id)bones boneWeights:(id)weights boneIndices:(id)indices baseGeometry:(id)geometry;
+ (__C3DSkinner)_createSkinnerWithCompressedData:(id)data bonesCount:(unint64_t)count vertexCount:(unint64_t)vertexCount;
+ (id)_skinnerWithBaseGeometry:(id)geometry skinnableGeometry:(id)skinnableGeometry bones:(id)bones boneInverseBindTransforms:(id)transforms bindMatrix:(SCNMatrix4 *)matrix;
- (BOOL)_setSkeleton:(id)skeleton;
- (NSArray)boneInverseBindTransforms;
- (NSArray)bones;
- (SCNGeometrySource)boneIndices;
- (SCNGeometrySource)boneWeights;
- (SCNMatrix4)baseGeometryBindTransform;
- (SCNSkinner)initWithCoder:(id)coder;
- (SCNSkinner)initWithSkinnerRef:(__C3DSkinner *)ref;
- (__C3DScene)sceneRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)scene;
- (void)_setBaseGeometry:(id)geometry;
- (void)_syncObjCModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setBaseGeometry:(SCNGeometry *)baseGeometry;
- (void)setBaseGeometryBindTransform:(SCNMatrix4 *)baseGeometryBindTransform;
- (void)setBoneInverseBindTransforms:(id)transforms;
- (void)setBones:(id)bones;
- (void)setSkeleton:(SCNNode *)skeleton;
@end

@implementation SCNSkinner

- (SCNSkinner)initWithSkinnerRef:(__C3DSkinner *)ref
{
  v7.receiver = self;
  v7.super_class = SCNSkinner;
  v4 = [(SCNSkinner *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_skinner = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    [(SCNSkinner *)v4 _syncObjCModel];
  }

  return v4;
}

+ (SCNSkinner)skinnerWithSkinnerRef:(__C3DSkinner *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithSkinnerRef:ref];

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

- (id)copyWithZone:(_NSZone *)zone
{
  Copy = C3DSkinnerCreateCopy(self->_skinner);
  v5 = [[SCNSkinner alloc] initWithSkinnerRef:Copy];
  CFRelease(Copy);
  [(SCNSkinner *)v5 _setSkeleton:[(SCNSkinner *)self skeleton]];
  [(SCNSkinner *)v5 _setBaseGeometry:self->_baseGeometry];
  [(SCNSkinner *)v5 set_bonesAndIndicesCompression:self->_bonesAndIndicesCompression];
  return v5;
}

- (BOOL)_setSkeleton:(id)skeleton
{
  Weak = objc_loadWeak(&self->_skeleton);
  if (Weak != skeleton)
  {
    objc_storeWeak(&self->_skeleton, skeleton);
  }

  return Weak != skeleton;
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
  skeleton = [(SCNSkinner *)self skeleton];
  if ([(SCNSkinner *)self _setSkeleton:skeleton])
  {
    if (self->_skinner)
    {
      sceneRef = [(SCNSkinner *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __26__SCNSkinner_setSkeleton___block_invoke;
      v7[3] = &unk_2782FC928;
      v7[4] = self;
      v7[5] = skeleton;
      v7[6] = skeleton;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
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

- (void)_setBaseGeometry:(id)geometry
{
  if (geometry)
  {
    baseGeometry = self->_baseGeometry;
    if (baseGeometry != geometry)
    {

      self->_baseGeometry = geometry;
    }
  }
}

+ (__C3DSkinner)_createSkinnerWithBones:(id)bones boneWeights:(id)weights boneIndices:(id)indices baseGeometry:(id)geometry
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = [bones count];
  v10 = v9;
  if (v9 < 2)
  {
    v19 = C3DSkinCreateWith(0, v9, 0, [geometry __CFObject]);
    C3DSkinSetMaxInfluencesPerVertex(v19, 1);
  }

  else
  {
    v11 = [objc_msgSend(objc_msgSend(geometry geometrySourcesForSemantic:{@"kGeometrySourceSemanticVertex", "firstObject"), "vectorCount"}];
    v12 = [objc_msgSend(weights "data")];
    bytesPerComponent = [weights bytesPerComponent];
    v14 = [objc_msgSend(indices "data")];
    bytesPerComponent2 = [indices bytesPerComponent];
    vectorCount = [indices vectorCount];
    if (vectorCount != [weights vectorCount] || (v17 = v12 / v11 / bytesPerComponent, v14 / v11 / bytesPerComponent2 != v17))
    {
      v21 = scn_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    if (![weights floatComponents] || objc_msgSend(weights, "bytesPerComponent") != 4)
    {
      v23 = scn_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    if ([indices bytesPerComponent] >= 3)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    dataStride = [indices dataStride];
    componentsPerVector = [indices componentsPerVector];
    if (dataStride != [indices bytesPerComponent] * componentsPerVector)
    {
      v45 = scn_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    dataStride2 = [weights dataStride];
    componentsPerVector2 = [weights componentsPerVector];
    if (dataStride2 != [weights bytesPerComponent] * componentsPerVector2)
    {
      v46 = scn_default_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    v28 = v17 * v11;
    v19 = C3DSkinCreateWith(v11, v10, v17 * v11, [geometry __CFObject]);
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

    v36 = [objc_msgSend(indices "data")];
    v37 = [objc_msgSend(indices "data")];
    v38 = [objc_msgSend(weights "data")];
    bytesPerComponent3 = [indices bytesPerComponent];
    if (v28 >= 1)
    {
      v40 = bytesPerComponent3;
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

+ (__C3DSkinner)_createSkinnerWithCompressedData:(id)data bonesCount:(unint64_t)count vertexCount:(unint64_t)vertexCount
{
  if ([data count] != 3)
  {
    if ([data count] != 1)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(SCNSkinner *)v18 _createSkinnerWithCompressedData:v19 bonesCount:v20 vertexCount:v21, v22, v23, v24, v25];
      }
    }

    v11 = [data objectAtIndexedSubscript:0];
    v12 = [v11 length];
    v8 = 0;
    v10 = 0;
    v9 = 1;
    goto LABEL_14;
  }

  v8 = [data objectAtIndexedSubscript:0];
  if ([v8 length] == vertexCount)
  {
    v9 = 1;
    v10 = [data objectAtIndexedSubscript:1];
    v11 = [data objectAtIndexedSubscript:2];
    v12 = [v11 length];
    if (v8)
    {
      bytes = [v8 bytes];
      if (vertexCount)
      {
        v14 = 1;
        vertexCountCopy = vertexCount;
        do
        {
          v17 = *bytes++;
          v16 = v17;
          if (v14 <= v17)
          {
            v14 = v16;
          }

          --vertexCountCopy;
        }

        while (vertexCountCopy);
        v9 = 0;
LABEL_15:
        v26 = C3DSkinCreateWith(vertexCount, count, v12, 0);
        C3DSkinSetMaxInfluencesPerVertex(v26, v14);
        if (count < 2)
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
          if (vertexCount)
          {
            v27 = 0;
            v28 = v59;
            vertexCountCopy2 = vertexCount;
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
              --vertexCountCopy2;
            }

            while (vertexCountCopy2);
            goto LABEL_34;
          }
        }

        else
        {
          bytes2 = [v8 bytes];
          if (vertexCount)
          {
            v27 = 0;
            v34 = v59;
            vertexCountCopy3 = vertexCount;
            do
            {
              *v34++ = v27;
              v36 = *bytes2++;
              v27 += v36;
              --vertexCountCopy3;
            }

            while (vertexCountCopy3);
            goto LABEL_34;
          }
        }

        v27 = 0;
LABEL_34:
        v59[vertexCount] = v27;
        bytes3 = [v11 bytes];
        if (v10)
        {
          v38 = [v10 length] / v12;
          if (v38 == 2)
          {
            bytes4 = [v10 bytes];
            if (v12 >= 1)
            {
              v49 = v57;
              v48 = v58;
              do
              {
                v50 = *bytes3++;
                *v48++ = v50;
                v51 = *bytes4++;
                *v49++ = v51 / 65535.0;
                --v12;
              }

              while (v12);
            }
          }

          else if (v38 == 1)
          {
            bytes5 = [v10 bytes];
            if (v12 >= 1)
            {
              v41 = v57;
              v40 = v58;
              do
              {
                v42 = *bytes3++;
                *v40++ = v42;
                v43 = *bytes5++;
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
                v55 = *bytes3++;
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
            v46 = *bytes3++;
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

  v14 = [self _createSkinnerWithBones:bones boneWeights:boneWeights boneIndices:boneIndices baseGeometry:baseGeometry];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = [[self alloc] initWithSkinnerRef:v14];
  CFRelease(v15);
  [v16 setBones:bones];
  [v16 setBoneInverseBindTransforms:boneInverseBindTransforms];
  [v16 _setBaseGeometry:baseGeometry];
  [v16 _setSkeleton:_commonAncessor_0(bones)];

  return v16;
}

+ (id)_skinnerWithBaseGeometry:(id)geometry skinnableGeometry:(id)skinnableGeometry bones:(id)bones boneInverseBindTransforms:(id)transforms bindMatrix:(SCNMatrix4 *)matrix
{
  Mesh = C3DGeometryGetMesh([skinnableGeometry geometryRef]);
  result = C3DSkinCreateWithSkinnableMesh(Mesh, [bones count]);
  if (result)
  {
    v14 = result;
    v15 = C3DSkinnerCreateWithSkin(result);
    CFRelease(v14);
    v16 = [[self alloc] initWithSkinnerRef:v15];
    CFRelease(v15);
    [v16 setBones:bones];
    [v16 setBoneInverseBindTransforms:transforms];
    v17 = *&matrix->m21;
    v19[0] = *&matrix->m11;
    v19[1] = v17;
    v18 = *&matrix->m41;
    v19[2] = *&matrix->m31;
    v19[3] = v18;
    [v16 setBaseGeometryBindTransform:v19];
    [v16 _setBaseGeometry:geometry];
    [v16 _setSkeleton:_commonAncessor_0(bones)];
    return v16;
  }

  return result;
}

- (SCNMatrix4)baseGeometryBindTransform
{
  *retstr = SCNMatrix4Identity;
  sceneRef = [(SCNSkinner *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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
  sceneRef = [(SCNSkinner *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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
  sceneRef = [(SCNSkinner *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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
  sceneRef = [(SCNSkinner *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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
  sceneRef = [(SCNSkinner *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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

- (void)setBoneInverseBindTransforms:(id)transforms
{
  sceneRef = [(SCNSkinner *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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
  if ([transforms count] == JointsCount)
  {
    InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(v8);
    if (JointsCount)
    {
      v11 = InverseBindMatricesPtr;
      for (i = 0; i != JointsCount; ++i)
      {
        v13 = [transforms objectAtIndex:{i, 0, 0, 0, 0, 0, 0, 0, 0}];
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
      [(SCNSkinner *)JointsCount setBoneInverseBindTransforms:transforms, v14];
    }
  }
}

- (NSArray)bones
{
  sceneRef = [(SCNSkinner *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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

- (void)setBones:(id)bones
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(bones, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [bones countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(bones);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v5 addObject:{objc_msgSend(v10, "nodeRef")}];
        [v10 setIsJoint:1];
      }

      v7 = [bones countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  sceneRef = [(SCNSkinner *)self sceneRef];
  if (sceneRef)
  {
    v12 = sceneRef;
    C3DSceneLock(sceneRef);
    C3DSkinnerSetJoints(self->_skinner, v5);
    C3DSceneUnlock(v12);
  }

  else
  {
    C3DSkinnerSetJoints(self->_skinner, v5);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v43 = *MEMORY[0x277D85DE8];
  [coder encodeObject:-[SCNSkinner skeleton](self forKey:{"skeleton"), @"skeleton"}];
  [coder encodeObject:-[SCNSkinner baseGeometry](self forKey:{"baseGeometry"), @"baseGeometry"}];
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

  SCNEncodeSCNMatrix4(coder, @"baseGeometryBindTransform", &v37);
  bones = [(SCNSkinner *)self bones];
  [coder encodeObject:bones forKey:@"bones"];
  if ([(NSArray *)bones count]>= 2)
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
      bytes = [v10 bytes];
      if (WeightsCount >= 1)
      {
        v12 = bytes;
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
        bytes2 = [v20 bytes];
        if (MTLVertexFormat >= 1)
        {
          for (j = 0; j != MTLVertexFormat; ++j)
          {
            *(bytes2 + j) = *(v36 + 8 * j + 8) - *(v36 + 8 * j);
          }
        }

        weightsCount = [MEMORY[0x277CBEB28] dataWithLength:2 * WeightsCount];
        bytes3 = [weightsCount bytes];
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

            *bytes3++ = v27 & ~(v27 >> 31);
            --WeightsCount;
          }

          while (WeightsCount);
        }

        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:{v20, weightsCount, v10, 0}];
      }

      boneIndices = v28;
      v19 = @"compressedSkinData";
    }

    else
    {
      [coder encodeObject:-[SCNSkinner boneWeights](self forKey:{"boneWeights"), @"boneWeights"}];
      boneIndices = [(SCNSkinner *)self boneIndices];
      v19 = @"boneIndices";
    }

    [coder encodeObject:boneIndices forKey:v19];
  }

  boneInverseBindTransforms = [(SCNSkinner *)self boneInverseBindTransforms];
  v30 = [(NSArray *)boneInverseBindTransforms count];
  if (v30)
  {
    v31 = v30;
    for (k = 0; k != v31; ++k)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"baseGeometryBindTransform-%d", k];
      v34 = [(NSArray *)boneInverseBindTransforms objectAtIndex:k];
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

      SCNEncodeSCNMatrix4(coder, v33, &v37);
    }
  }
}

- (SCNSkinner)initWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = SCNSkinner;
  v4 = [(SCNSkinner *)&v25 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"skeleton"];
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"baseGeometry"];
    v8 = [objc_msgSend(objc_msgSend(v7 geometrySourcesForSemantic:{@"kGeometrySourceSemanticVertex", "firstObject"), "vectorCount"}];
    v9 = [coder scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"bones"];
    v10 = [coder scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"compressedSkinData"];
    if (v10)
    {
      v4->_bonesAndIndicesCompression = 1;
      v11 = [objc_opt_class() _createSkinnerWithCompressedData:v10 bonesCount:objc_msgSend(v9 vertexCount:{"count"), v8}];
    }

    else
    {
      v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"boneWeights"];
      v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"boneIndices"];
      v11 = [objc_opt_class() _createSkinnerWithBones:v9 boneWeights:v12 boneIndices:v13 baseGeometry:v7];
    }

    v4->_skinner = v11;
    if (v11)
    {
      array = [MEMORY[0x277CBEB18] array];
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
          SCNDecodeSCNMatrix4(coder, [MEMORY[0x277CCACA8] stringWithFormat:@"baseGeometryBindTransform-%d", i], &v21);
          v20[0] = v21;
          v20[1] = v22;
          v20[2] = v23;
          v20[3] = v24;
          [array addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNMatrix4:", v20)}];
        }
      }

      [(SCNSkinner *)v4 _setBaseGeometry:v7];
      [(SCNSkinner *)v4 setBones:v9];
      SCNDecodeSCNMatrix4(coder, @"baseGeometryBindTransform", v19);
      v21 = v19[0];
      v22 = v19[1];
      v23 = v19[2];
      v24 = v19[3];
      [(SCNSkinner *)v4 setBaseGeometryBindTransform:&v21];
      [(SCNSkinner *)v4 setBoneInverseBindTransforms:array];
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
  __CFObject = [(SCNSkinner *)self __CFObject];

  return C3DGetScene(__CFObject);
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