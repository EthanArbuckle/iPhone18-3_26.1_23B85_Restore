@interface ARPlaneAnchor
- (ARPlaneAnchor)initWithAnchor:(id)anchor;
- (ARPlaneAnchor)initWithCoder:(id)coder;
- (ARPlaneAnchor)initWithIdentifier:(uint64_t)identifier transform:(int64_t)transform alignment:;
- (float)area;
- (id)_description:(BOOL)_description;
- (id)_hitTestFromOrigin:(ARPlaneAnchor *)self withDirection:(SEL)direction usingExtent:(BOOL)extent usingGeometry:(BOOL)geometry;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPlaneAnchor

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ARPlaneAnchor;
  coderCopy = coder;
  [(ARAnchor *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_alignment forKey:{@"alignment", v6.receiver, v6.super_class}];
  [coderCopy ar_encodeVector3:@"center" forKey:*self->_center];
  [coderCopy ar_encodeVector3:@"extent" forKey:*self->_extent];
  [coderCopy encodeObject:self->_planeExtent forKey:@"planeExtent"];
  [coderCopy encodeObject:self->_geometry forKey:@"geometry"];
  [coderCopy encodeInteger:self->_worldAlignmentRotation forKey:@"worldAlignmentRotation"];
  [coderCopy encodeInteger:self->_classificationStatus forKey:@"classificationStatus"];
  [coderCopy encodeInteger:self->_classification forKey:@"classification"];
  *&v5 = self->_uncertaintyAlongNormal;
  [coderCopy encodeFloat:@"uncertaintyAlongNormal" forKey:v5];
  [coderCopy encodeObject:self->_classificationLabel forKey:@"classificationLabel"];
  [coderCopy encodeObject:self->_gridExtent forKey:@"gridExtent"];
}

- (ARPlaneAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ARPlaneAnchor;
  v5 = [(ARAnchor *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_alignment = [coderCopy decodeIntegerForKey:@"alignment"];
    [coderCopy ar_decodeVector3ForKey:@"center"];
    *v5->_center = v6;
    [coderCopy ar_decodeVector3ForKey:@"extent"];
    *v5->_extent = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planeExtent"];
    planeExtent = v5->_planeExtent;
    v5->_planeExtent = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    geometry = v5->_geometry;
    v5->_geometry = v10;

    v5->_worldAlignmentRotation = [coderCopy decodeIntegerForKey:@"worldAlignmentRotation"];
    v5->_classificationStatus = [coderCopy decodeIntegerForKey:@"classificationStatus"];
    v5->_classification = [coderCopy decodeIntegerForKey:@"classification"];
    [coderCopy decodeFloatForKey:@"uncertaintyAlongNormal"];
    v5->_uncertaintyAlongNormal = v12;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classificationLabel"];
    classificationLabel = v5->_classificationLabel;
    v5->_classificationLabel = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gridExtent"];
    gridExtent = v5->_gridExtent;
    v5->_gridExtent = v15;
  }

  return v5;
}

- (ARPlaneAnchor)initWithIdentifier:(uint64_t)identifier transform:(int64_t)transform alignment:
{
  v15.receiver = self;
  v15.super_class = ARPlaneAnchor;
  v5 = [ARAnchor initWithIdentifier:sel_initWithIdentifier_transform_ transform:?];
  v6 = v5;
  if (v5)
  {
    v5->_alignment = transform;
    *v5->_center = 0u;
    __asm { FMOV            V0.4S, #-1.0 }

    *v5->_extent = _Q0;
    v12 = objc_opt_new();
    planeExtent = v6->_planeExtent;
    v6->_planeExtent = v12;
  }

  return v6;
}

- (id)_hitTestFromOrigin:(ARPlaneAnchor *)self withDirection:(SEL)direction usingExtent:(BOOL)extent usingGeometry:(BOOL)geometry
{
  geometryCopy = geometry;
  extentCopy = extent;
  v101 = v5;
  v103 = v4;
  [(ARAnchor *)self transform];
  v10 = vmulq_f32(v9, v101);
  v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  if (v11 > -0.00000011921)
  {
    goto LABEL_3;
  }

  v99 = v9;
  [(ARAnchor *)self transform];
  v13 = vmulq_f32(v99, vsubq_f32(v12, v103));
  v14 = (v13.f32[2] + vaddv_f32(*v13.f32)) / v11;
  if (v14 < 0.0)
  {
    goto LABEL_3;
  }

  v100 = v14;
  [(ARAnchor *)self transform];
  v97 = v18;
  v98 = v17;
  v96 = v19;
  v20 = vmlaq_n_f32(v103, v101, v100);
  v20.i32[3] = 1.0;
  v104 = v20;
  [(ARAnchor *)self transform];
  v112 = __invert_f4(v111);
  v21 = 0;
  v105[0] = v98;
  v105[1] = v97;
  v105[2] = v96;
  v105[3] = v104;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  do
  {
    *(&v106 + v21 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112.columns[0], COERCE_FLOAT(v105[v21])), v112.columns[1], *&v105[v21], 1), v112.columns[2], v105[v21], 2), v112.columns[3], v105[v21], 3);
    ++v21;
  }

  while (v21 != 4);
  v94 = *&v107;
  v95 = *&v106;
  v93 = *&v108;
  v102 = v109;
  if (!extentCopy)
  {
    goto LABEL_17;
  }

  planeExtent = [(ARPlaneAnchor *)self planeExtent];
  [planeExtent rotationOnYAxis];
  v24 = v23;

  if (v24 == 0.0)
  {
    v54 = v102;
  }

  else
  {
    planeExtent2 = [(ARPlaneAnchor *)self planeExtent];
    [planeExtent2 rotationOnYAxis];
    v28 = __sincosf_stret(v26 * -0.5);
    cosval = v28.__cosval;
    _Q0 = vmulq_n_f32(xmmword_1C25C8BC0, v28.__sinval);
    _S2 = _Q0.i32[1];
    _S4 = _Q0.i32[2];
    __asm { FMLS            S3, S4, V0.S[2] }

    v37 = vmuls_lane_f32(v28.__cosval, _Q0, 2);
    v38 = vmuls_lane_f32(v28.__cosval, *_Q0.f32, 1);
    v39.i32[3] = 0;
    v39.f32[0] = _S3 + (cosval * cosval);
    v39.f32[1] = (v37 + (_Q0.f32[0] * _Q0.f32[1])) + (v37 + (_Q0.f32[0] * _Q0.f32[1]));
    v39.f32[2] = -(v38 - (_Q0.f32[0] * _Q0.f32[2])) - (v38 - (_Q0.f32[0] * _Q0.f32[2]));
    v40 = -(v37 - (_Q0.f32[0] * _Q0.f32[1])) - (v37 - (_Q0.f32[0] * _Q0.f32[1]));
    __asm
    {
      FMLA            S5, S2, V0.S[1]
      FMLA            S6, S4, V0.S[1]
    }

    v43.i32[3] = 0;
    v43.f32[0] = v40;
    v43.f32[1] = (_S5 + (cosval * cosval)) - (_Q0.f32[0] * _Q0.f32[0]);
    v43.f32[2] = _S6 + _S6;
    v89 = v43;
    v90 = v39;
    __asm
    {
      FMLA            S5, S4, V0.S[1]
      FMLA            S1, S4, V0.S[2]
      FMLS            S1, S2, V0.S[1]
    }

    _Q0.f32[0] = (v38 + (_Q0.f32[2] * _Q0.f32[0])) + (v38 + (_Q0.f32[2] * _Q0.f32[0]));
    _Q0.f32[1] = _S5 + _S5;
    _Q0.i64[1] = _S1;
    v88 = _Q0;

    [(ARPlaneAnchor *)self center];
    v87 = v47;
    [(ARPlaneAnchor *)self center];
    v48 = xmmword_1C25C8560;
    v48.i32[0] = v87;
    v48.i32[2] = v49;
    v50 = vsubq_f32(v102, v48);
    v91 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v90, v50.f32[0]), v89, *v50.f32, 1), v88, v50, 2), xmmword_1C25C8560, v50, 3);
    [(ARPlaneAnchor *)self center];
    v89.i32[0] = v51;
    [(ARPlaneAnchor *)self center];
    v52 = xmmword_1C25C8560;
    v52.i32[0] = v89.i32[0];
    v52.i32[2] = v53;
    v54 = vaddq_f32(v52, v91);
  }

  v92 = v54.f32[2];
  v55 = v54.f32[0];
  [(ARPlaneAnchor *)self center];
  v57 = v56;
  [(ARPlaneAnchor *)self extent];
  if (v57 + v58 * -0.5 > v55 || ([(ARPlaneAnchor *)self center], v60 = v59, [(ARPlaneAnchor *)self extent], v61 * 0.5 + v60 < v55) || ([(ARPlaneAnchor *)self center], v63 = v62, [(ARPlaneAnchor *)self extent], v63 + v64 * -0.5 > v92) || ([(ARPlaneAnchor *)self center], v66 = v65, [(ARPlaneAnchor *)self extent], v67 * 0.5 + v66 < v92))
  {
LABEL_3:
    v15 = 0;
  }

  else
  {
LABEL_17:
    if (geometryCopy)
    {
      geometry = [(ARPlaneAnchor *)self geometry];
      boundaryVertices = [geometry boundaryVertices];

      geometry2 = [(ARPlaneAnchor *)self geometry];
      boundaryVertexCount = [geometry2 boundaryVertexCount];

      v72 = boundaryVertexCount & ~(boundaryVertexCount >> 63);
      v73 = 1;
      v74 = boundaryVertices;
      while (v72)
      {
        if (v73 >= boundaryVertexCount)
        {
          v75 = 0;
        }

        else
        {
          v75 = v73;
        }

        v76 = *v74++;
        v77 = vsubq_f32(v76, v102);
        v78 = vmulq_f32(v77, v77);
        *&v79 = v78.f32[2] + vaddv_f32(*v78.f32);
        *v78.f32 = vrsqrte_f32(v79);
        *v78.f32 = vmul_f32(*v78.f32, vrsqrts_f32(v79, vmul_f32(*v78.f32, *v78.f32)));
        v80 = vmulq_n_f32(v77, vmul_f32(*v78.f32, vrsqrts_f32(v79, vmul_f32(*v78.f32, *v78.f32))).f32[0]);
        v81 = vsubq_f32(*(boundaryVertices + 16 * v75), v102);
        v82 = vmulq_f32(v81, v81);
        *&v83 = v82.f32[2] + vaddv_f32(*v82.f32);
        *v82.f32 = vrsqrte_f32(v83);
        *v82.f32 = vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32)));
        v84 = vmulq_n_f32(v81, vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32))).f32[0]);
        --v72;
        ++v73;
        if (vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL), vnegq_f32(v80)), v84, vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL)).f32[0] < -0.00000011921)
        {
          goto LABEL_3;
        }
      }
    }

    v85 = 8;
    if (extentCopy)
    {
      v85 = 16;
    }

    if (geometryCopy)
    {
      v86 = 32;
    }

    else
    {
      v86 = v85;
    }

    v15 = [[ARHitTestResult alloc] initWithType:v86];
    [(ARHitTestResult *)v15 setAnchor:self];
    [(ARHitTestResult *)v15 setDistance:v100];
    [(ARHitTestResult *)v15 setWorldTransform:*&v98, *&v97, *&v96, *v104.i64];
    [(ARHitTestResult *)v15 setLocalTransform:v95, v94, v93, *v102.i64];
  }

  return v15;
}

- (id)_description:(BOOL)_description
{
  _descriptionCopy = _description;
  alignment = [(ARPlaneAnchor *)self alignment];
  v6 = @"vertical";
  if (alignment != ARPlaneAnchorAlignmentVertical)
  {
    v6 = 0;
  }

  if (alignment == ARPlaneAnchorAlignmentHorizontal)
  {
    v6 = @"horizontal";
  }

  v7 = v6;
  if (!v7)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[ARPlaneAnchor alignment](self, "alignment")];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  identifier = [(ARAnchor *)self identifier];
  [(ARAnchor *)self transform];
  v16 = ARMatrix4x4Description(_descriptionCopy, v12, v13, v14, v15);
  [(ARPlaneAnchor *)self center];
  v18 = ARVector3Description(v17);
  [(ARPlaneAnchor *)self extent];
  v20 = ARVector3Description(v19);
  v21 = NSStringFromARPlaneClassification([(ARPlaneAnchor *)self classification]);
  v22 = [v8 stringWithFormat:@"<%@: %p identifier=%@ transform=%@ alignment=%@ center=%@ extent=%@ classification=%@", v10, self, identifier, v16, v7, v18, v20, v21];

  v23 = [v22 stringByAppendingString:@">"];

  return v23;
}

- (float)area
{
  geometry = [(ARPlaneAnchor *)self geometry];
  boundaryVertexCount = [geometry boundaryVertexCount];
  if (boundaryVertexCount)
  {
    v4 = boundaryVertexCount;
    v5 = 0;
    v6 = 0.0;
    do
    {
      v12 = *([geometry boundaryVertices] + 16 * v5);
      boundaryVertices = [geometry boundaryVertices];
      if (--v4)
      {
        v8 = v5 + 1;
      }

      else
      {
        v8 = 0;
      }

      ++v5;
      v6 = v6 + ((-*(&v12 + 2) * COERCE_FLOAT(*(boundaryVertices + 16 * v8))) + (*&v12 * COERCE_FLOAT(*(boundaryVertices + 16 * v8 + 8))));
    }

    while (v4);
    v9 = v6 * 0.5;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = fabsf(v9);

  return v10;
}

- (ARPlaneAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v23.receiver = self;
  v23.super_class = ARPlaneAnchor;
  v5 = [(ARAnchor *)&v23 initWithAnchor:anchorCopy];
  if (v5)
  {
    v5->_alignment = [anchorCopy alignment];
    [anchorCopy center];
    *v5->_center = v6;
    [anchorCopy extent];
    *v5->_extent = v7;
    planeExtent = [anchorCopy planeExtent];
    v9 = [planeExtent copy];
    planeExtent = v5->_planeExtent;
    v5->_planeExtent = v9;

    gridExtent = [anchorCopy gridExtent];
    gridExtent = v5->_gridExtent;
    v5->_gridExtent = gridExtent;

    geometry = [anchorCopy geometry];
    geometry = v5->_geometry;
    v5->_geometry = geometry;

    [anchorCopy uncertaintyAlongNormal];
    v5->_uncertaintyAlongNormal = v15;
    v5->_worldAlignmentRotation = [anchorCopy worldAlignmentRotation];
    v5->_classificationStatus = [anchorCopy classificationStatus];
    v5->_classification = [anchorCopy classification];
    possibleClassifications = [anchorCopy possibleClassifications];
    v17 = [possibleClassifications copy];
    possibleClassifications = v5->_possibleClassifications;
    v5->_possibleClassifications = v17;

    classificationLabel = [anchorCopy classificationLabel];
    v20 = [classificationLabel copy];
    classificationLabel = v5->_classificationLabel;
    v5->_classificationLabel = v20;
  }

  return v5;
}

@end