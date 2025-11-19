@interface ARCoachingMetalSplineData
- (id)init:(id)a3;
- (void)computeInstanceTransformScale:(ARCoachingMetalSplineData *)self;
- (void)computeInstanceTransformTranslate:(int)a3 index:;
- (void)computeShapeBlendWithEnd:(id *)a3 endCount:(int)a4;
- (void)makeShapes;
- (void)recordState;
- (void)resetInstanceTransforms:(id)a3;
@end

@implementation ARCoachingMetalSplineData

- (id)init:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ARCoachingMetalSplineData;
  v5 = [(ARCoachingMetalSplineData *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(ARCoachingMetalSplineData *)v5 makeShapes];
    v7 = [(ARCoachingBlendableSplineGroup *)v6->_shapes patchDataLength];
    v6->_patchCount = v7;
    v8 = [v4 newBufferWithLength:12 * v7 options:32];
    tessellationFactorsBuffer = v6->_tessellationFactorsBuffer;
    v6->_tessellationFactorsBuffer = v8;

    [(MTLBuffer *)v6->_tessellationFactorsBuffer setLabel:@"Tessellation Factors"];
    v10 = [(ARCoachingBlendableSplineGroup *)v6->_shapes controlPoints];
    v11 = [v10 objectAtIndexedSubscript:0];

    v12 = [v4 newBufferWithBytes:objc_msgSend(v11 length:"controlPoints") options:{32 * objc_msgSend(v11, "numControlPoints"), 0}];
    controlPointsBuffer = v6->_controlPointsBuffer;
    v6->_controlPointsBuffer = v12;

    [(MTLBuffer *)v6->_controlPointsBuffer setLabel:@"Control Points"];
    v14 = [v4 newBufferWithBytes:-[ARCoachingBlendableSplineGroup indices](v6->_shapes length:"indices") options:{2 * -[ARCoachingBlendableSplineGroup numIndices](v6->_shapes, "numIndices"), 0}];
    controlPointIndicesBuffer = v6->_controlPointIndicesBuffer;
    v6->_controlPointIndicesBuffer = v14;

    [(MTLBuffer *)v6->_controlPointIndicesBuffer setLabel:@"Control Point Indices"];
    v16 = [v4 newBufferWithBytes:-[ARCoachingBlendableSplineGroup patchData](v6->_shapes length:"patchData") options:{8 * -[ARCoachingBlendableSplineGroup patchDataLength](v6->_shapes, "patchDataLength"), 0}];
    patchUserDataBuffer = v6->_patchUserDataBuffer;
    v6->_patchUserDataBuffer = v16;

    [(MTLBuffer *)v6->_patchUserDataBuffer setLabel:@"Per Patch Tessellator variables"];
    [(ARCoachingMetalSplineData *)v6 resetInstanceTransforms:v4];
  }

  return v6;
}

- (void)makeShapes
{
  v175[4] = *MEMORY[0x277D85DE8];
  v3 = [ARCoachingSplineGroup alloc];
  v4 = [ARCoachingCorner alloc];
  [ARCoachingTransformations rotate:0.0 axis:?];
  v156 = v5;
  v148 = v6;
  v152 = v7;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1064178811;
  LODWORD(v5) = 1058642330;
  LODWORD(v8) = 1065017672;
  v11 = [(ARCoachingCorner *)v4 initWithRadius:*&v6 relativeThickness:*&v7 anchorA:0.0 anchorB:*&v5 cornerEdge:v8 mat:v148, v152, v9, v10, v156];
  v175[0] = v11;
  v12 = [ARCoachingCorner alloc];
  LODWORD(v13) = 1119092736;
  [ARCoachingTransformations rotate:v13 axis:0.0];
  HIDWORD(v15) = HIDWORD(v14);
  v149 = v16;
  v153 = v17;
  LODWORD(v16) = 1.0;
  v157 = v18;
  LODWORD(v17) = 1064178811;
  LODWORD(v18) = 1058642330;
  LODWORD(v15) = 1065017672;
  v20 = [(ARCoachingCorner *)v12 initWithRadius:*&v16 relativeThickness:*&v17 anchorA:0.0 anchorB:*&v18 cornerEdge:v15 mat:v149, v153, v14, v19, v157];
  v175[1] = v20;
  v21 = [ARCoachingCorner alloc];
  LODWORD(v22) = 1127481344;
  [ARCoachingTransformations rotate:v22 axis:0.0];
  HIDWORD(v24) = HIDWORD(v23);
  v150 = v25;
  v154 = v26;
  LODWORD(v25) = 1.0;
  v158 = v27;
  LODWORD(v26) = 1064178811;
  LODWORD(v27) = 1058642330;
  LODWORD(v24) = 1065017672;
  v29 = [(ARCoachingCorner *)v21 initWithRadius:*&v25 relativeThickness:*&v26 anchorA:0.0 anchorB:*&v27 cornerEdge:v24 mat:v150, v154, v23, v28, v158];
  v175[2] = v29;
  v30 = [ARCoachingCorner alloc];
  LODWORD(v31) = 1132920832;
  [ARCoachingTransformations rotate:v31 axis:0.0];
  HIDWORD(v33) = HIDWORD(v32);
  v151 = v34;
  v155 = v35;
  LODWORD(v34) = 1.0;
  v159 = v36;
  LODWORD(v35) = 1064178811;
  LODWORD(v36) = 1058642330;
  LODWORD(v33) = 1065017672;
  v38 = [(ARCoachingCorner *)v30 initWithRadius:*&v34 relativeThickness:*&v35 anchorA:0.0 anchorB:*&v36 cornerEdge:v33 mat:v151, v155, v32, v37, v159];
  v175[3] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:4];
  v40 = [(ARCoachingSplineGroup *)v3 initWithSplines:v39];

  v41 = v40;
  __asm { FMOV            V0.4S, #1.0 }

  [ARCoachingTransformations scale:*&_Q0];
  v160 = v48;
  v161 = v47;
  v162 = v50;
  v163 = v49;
  v51 = [ARCoachingSplineGroup alloc];
  v52 = [ARCoachingCorner alloc];
  [ARCoachingTransformations rotate:0.0 axis:0.0];
  v57 = 0;
  v164 = v161;
  v165 = v160;
  v166 = v163;
  v167 = v162;
  do
  {
    v58 = *(&v164 + v57);
    *(&v168 + v57) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v58.f32[0]), v54, *v58.f32, 1), v55, v58, 2), v56, v58, 3);
    v57 += 16;
  }

  while (v57 != 64);
  HIDWORD(v59) = DWORD1(v171);
  LODWORD(v59) = 1053609165;
  v58.i32[0] = 1065017672;
  v60 = [(ARCoachingCorner *)v52 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v168) relativeThickness:1.0)) anchorA:COERCE_DOUBLE(__PAIR64__(DWORD1(v169) anchorB:1.0)) cornerEdge:0.0 mat:v59, *v58.i64, v168, v169, v170, v171];
  v174[0] = v60;
  v61 = [ARCoachingCorner alloc];
  LODWORD(v62) = 1119092736;
  [ARCoachingTransformations rotate:v62 axis:0.0];
  v67 = 0;
  v164 = v161;
  v165 = v160;
  v166 = v163;
  v167 = v162;
  do
  {
    *(&v168 + v67) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v164 + v67))), v64, *(&v164 + v67), 1), v65, *(&v164 + v67), 2), v66, *(&v164 + v67), 3);
    v67 += 16;
  }

  while (v67 != 64);
  HIDWORD(v68) = DWORD1(v168);
  HIDWORD(v69) = DWORD1(v169);
  LODWORD(v68) = 1053609165;
  LODWORD(v69) = 1065017672;
  v70 = [(ARCoachingCorner *)v61 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) relativeThickness:1.0)) anchorA:COERCE_DOUBLE(__PAIR64__(DWORD1(v171) anchorB:1.0)) cornerEdge:0.0 mat:v68, v69, v168, v169, v170, v171];
  v174[1] = v70;
  v71 = [ARCoachingCorner alloc];
  LODWORD(v72) = 1127481344;
  [ARCoachingTransformations rotate:v72 axis:0.0];
  v77 = 0;
  v164 = v161;
  v165 = v160;
  v166 = v163;
  v167 = v162;
  do
  {
    *(&v168 + v77) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v164 + v77))), v74, *(&v164 + v77), 1), v75, *(&v164 + v77), 2), v76, *(&v164 + v77), 3);
    v77 += 16;
  }

  while (v77 != 64);
  HIDWORD(v78) = DWORD1(v168);
  HIDWORD(v79) = DWORD1(v169);
  LODWORD(v78) = 1053609165;
  LODWORD(v79) = 1065017672;
  v80 = [(ARCoachingCorner *)v71 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) relativeThickness:1.0)) anchorA:COERCE_DOUBLE(__PAIR64__(DWORD1(v171) anchorB:1.0)) cornerEdge:0.0 mat:v78, v79, v168, v169, v170, v171];
  v174[2] = v80;
  v81 = [ARCoachingCorner alloc];
  LODWORD(v82) = 1132920832;
  [ARCoachingTransformations rotate:v82 axis:0.0];
  v87 = 0;
  v164 = v161;
  v165 = v160;
  v166 = v163;
  v167 = v162;
  do
  {
    *(&v168 + v87) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*(&v164 + v87))), v84, *(&v164 + v87), 1), v85, *(&v164 + v87), 2), v86, *(&v164 + v87), 3);
    v87 += 16;
  }

  while (v87 != 64);
  HIDWORD(v88) = DWORD1(v168);
  HIDWORD(v89) = DWORD1(v169);
  LODWORD(v88) = 1053609165;
  LODWORD(v89) = 1065017672;
  v90 = [(ARCoachingCorner *)v81 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) relativeThickness:1.0)) anchorA:COERCE_DOUBLE(__PAIR64__(DWORD1(v171) anchorB:1.0)) cornerEdge:0.0 mat:v88, v89, v168, v169, v170, v171];
  v174[3] = v90;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:4];
  v92 = [(ARCoachingSplineGroup *)v51 initWithSplines:v91];

  v93 = [ARCoachingSplineGroup alloc];
  v94 = [ARCoachingCorner alloc];
  [ARCoachingTransformations rotate:0.0 axis:0.0];
  v99 = 0;
  v164 = v161;
  v165 = v160;
  v166 = v163;
  v167 = v162;
  do
  {
    v100 = *(&v164 + v99);
    *(&v168 + v99) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v95, v100.f32[0]), v96, *v100.f32, 1), v97, v100, 2), v98, v100, 3);
    v99 += 16;
  }

  while (v99 != 64);
  HIDWORD(v101) = DWORD1(v169);
  LODWORD(v101) = 1050253722;
  v100.i32[0] = 1065336439;
  v102 = [(ARCoachingCorner *)v94 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v168) relativeThickness:1.0)) anchorA:v101 anchorB:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) cornerEdge:-1.0)) mat:0.0, *v100.i64, v168, v169, v170, v171];
  v173[0] = v102;
  v103 = [ARCoachingCorner alloc];
  LODWORD(v104) = 1119092736;
  [ARCoachingTransformations rotate:v104 axis:0.0];
  v109 = 0;
  v164 = v161;
  v165 = v160;
  v166 = v163;
  v167 = v162;
  do
  {
    *(&v168 + v109) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, COERCE_FLOAT(*(&v164 + v109))), v106, *(&v164 + v109), 1), v107, *(&v164 + v109), 2), v108, *(&v164 + v109), 3);
    v109 += 16;
  }

  while (v109 != 64);
  HIDWORD(v110) = DWORD1(v168);
  HIDWORD(v111) = DWORD1(v169);
  LODWORD(v110) = 1050253722;
  LODWORD(v111) = 1065336439;
  v112 = [(ARCoachingCorner *)v103 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) relativeThickness:1.0)) anchorA:v110 anchorB:COERCE_DOUBLE(__PAIR64__(DWORD1(v171) cornerEdge:-1.0)) mat:0.0, v111, v168, v169, v170, v171];
  v173[1] = v112;
  v113 = [ARCoachingCorner alloc];
  LODWORD(v114) = 1127481344;
  [ARCoachingTransformations rotate:v114 axis:0.0];
  v119 = 0;
  v164 = v161;
  v165 = v160;
  v166 = v163;
  v167 = v162;
  do
  {
    *(&v168 + v119) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v115, COERCE_FLOAT(*(&v164 + v119))), v116, *(&v164 + v119), 1), v117, *(&v164 + v119), 2), v118, *(&v164 + v119), 3);
    v119 += 16;
  }

  while (v119 != 64);
  HIDWORD(v120) = DWORD1(v168);
  HIDWORD(v121) = DWORD1(v169);
  LODWORD(v120) = 1050253722;
  LODWORD(v121) = 1065336439;
  v122 = [(ARCoachingCorner *)v113 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) relativeThickness:1.0)) anchorA:v120 anchorB:COERCE_DOUBLE(__PAIR64__(DWORD1(v171) cornerEdge:-1.0)) mat:0.0, v121, v168, v169, v170, v171];
  v173[2] = v122;
  v123 = [ARCoachingCorner alloc];
  LODWORD(v124) = 1132920832;
  [ARCoachingTransformations rotate:v124 axis:0.0];
  v129 = 0;
  v164 = v161;
  v165 = v160;
  v166 = v163;
  v167 = v162;
  do
  {
    *(&v168 + v129) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*(&v164 + v129))), v126, *(&v164 + v129), 1), v127, *(&v164 + v129), 2), v128, *(&v164 + v129), 3);
    v129 += 16;
  }

  while (v129 != 64);
  HIDWORD(v130) = DWORD1(v168);
  HIDWORD(v131) = DWORD1(v169);
  LODWORD(v130) = 1050253722;
  LODWORD(v131) = 1065336439;
  v132 = [(ARCoachingCorner *)v123 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) relativeThickness:1.0)) anchorA:v130 anchorB:COERCE_DOUBLE(__PAIR64__(DWORD1(v171) cornerEdge:-1.0)) mat:0.0, v131, v168, v169, v170, v171];
  v173[3] = v132;
  v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:4];
  v134 = [(ARCoachingSplineGroup *)v93 initWithSplines:v133];

  v135 = [ARCoachingBlendableSplineGroup alloc];
  v172[0] = v41;
  v172[1] = v92;
  v172[2] = v134;
  v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:3];
  v137 = [(ARCoachingBlendableSplineGroup *)v135 initWithSplineGroups:v136];
  shapes = self->_shapes;
  self->_shapes = v137;

  v139 = [ARCoachingControlPointContainer alloc];
  v140 = [(ARCoachingBlendableSplineGroup *)self->_shapes controlPoints];
  v141 = [v140 objectAtIndexedSubscript:0];
  v142 = [v141 controlPoints];
  v143 = [(ARCoachingBlendableSplineGroup *)self->_shapes controlPoints];
  v144 = [v143 objectAtIndexedSubscript:0];
  v145 = -[ARCoachingControlPointContainer initWithControlPoints:numControlPoints:](v139, "initWithControlPoints:numControlPoints:", v142, [v144 numControlPoints]);
  recordedControlPoints = self->_recordedControlPoints;
  self->_recordedControlPoints = v145;

  v147 = *MEMORY[0x277D85DE8];
}

- (void)recordState
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(MTLBuffer *)self->_controlPointsBuffer contents];
  v4 = 0;
  __src = 0;
  v30 = 0;
  v31 = 0;
  while (1)
  {
    v5 = [(ARCoachingBlendableSplineGroup *)self->_shapes controlPoints];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = v4 < [v6 numControlPoints];

    if (!v7)
    {
      break;
    }

    v8 = v30;
    if (v30 >= v31)
    {
      v11 = __src;
      v12 = v30 - __src;
      v13 = (v30 - __src) >> 5;
      v14 = v13 + 1;
      if ((v13 + 1) >> 59)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
      }

      v15 = v31 - __src;
      if ((v31 - __src) >> 4 > v14)
      {
        v14 = v15 >> 4;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](&__src, v14);
      }

      v16 = (32 * v13);
      v17 = v3[1];
      *v16 = *v3;
      v16[1] = v17;
      v10 = 32 * v13 + 32;
      memcpy(0, v11, v12);
      v18 = __src;
      __src = 0;
      v30 = v10;
      v31 = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      v9 = v3[1];
      *v30 = *v3;
      *(v8 + 1) = v9;
      v10 = (v8 + 32);
    }

    v30 = v10;
    ++v4;
    v3 += 2;
  }

  [ARCoachingControlPointContainer overwriteWithControlPoints:"overwriteWithControlPoints:numControlPoints:" numControlPoints:?];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = self->_instanceTransforms;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v20)
  {
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v25 + 1) + 8 * i);
        [v23 localScale];
        [v23 setRecordedScale:?];
        [v23 localTranslation];
        [v23 setRecordedTranslation:?];
      }

      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v20);
  }

  if (__src)
  {
    v30 = __src;
    operator delete(__src);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)resetInstanceTransforms:(id)a3
{
  v116[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:-0.0078125];
  v99 = v7;
  v105 = v6;
  v87 = v9;
  v93 = v8;
  v6.i32[0] = 1119092736;
  [ARCoachingTransformations rotate:*v6.i64 axis:?];
  v10 = 0;
  v108 = v11;
  v109 = v12;
  v110 = v13;
  v111 = v14;
  do
  {
    *(&v112 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, COERCE_FLOAT(*(&v108 + v10))), v99, *(&v108 + v10), 1), v93, *(&v108 + v10), 2), v87, *(&v108 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v15 = [(ARCoachingInstanceTransform *)v5 init:*&v112, *&v113, *&v114, v115[0]];
  v116[0] = v15;
  v16 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:?];
  v94 = v18;
  v100 = v17;
  v84 = v20;
  v88 = v19;
  v17.i32[0] = 1119092736;
  [ARCoachingTransformations rotate:*v17.i64 axis:COERCE_DOUBLE(1065353216)];
  v21 = 0;
  v108 = v22;
  v109 = v23;
  v110 = v24;
  v111 = v25;
  do
  {
    *(&v112 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*(&v108 + v21))), v94, *(&v108 + v21), 1), v88, *(&v108 + v21), 2), v84, *(&v108 + v21), 3);
    v21 += 16;
  }

  while (v21 != 64);
  v26 = [(ARCoachingInstanceTransform *)v16 init:*&v112, *&v113, *&v114, v115[0]];
  v116[1] = v26;
  v27 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:0.0];
  v95 = v29;
  v101 = v28;
  v85 = v31;
  v89 = v30;
  [ARCoachingTransformations rotate:0.0 axis:COERCE_DOUBLE(1065353216)];
  v32 = 0;
  v108 = v33;
  v109 = v34;
  v110 = v35;
  v111 = v36;
  do
  {
    *(&v112 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*(&v108 + v32))), v95, *(&v108 + v32), 1), v89, *(&v108 + v32), 2), v85, *(&v108 + v32), 3);
    v32 += 16;
  }

  while (v32 != 64);
  v37 = [(ARCoachingInstanceTransform *)v27 init:*&v112, *&v113, *&v114, v115[0]];
  v116[2] = v37;
  v38 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:0.0];
  v96 = v40;
  v102 = v39;
  v86 = v42;
  v90 = v41;
  [ARCoachingTransformations rotate:0.0 axis:COERCE_DOUBLE(1065353216)];
  v43 = 0;
  v108 = v44;
  v109 = v45;
  v110 = v46;
  v111 = v47;
  do
  {
    *(&v112 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v108 + v43))), v96, *(&v108 + v43), 1), v90, *(&v108 + v43), 2), v86, *(&v108 + v43), 3);
    v43 += 16;
  }

  while (v43 != 64);
  v48 = [(ARCoachingInstanceTransform *)v38 init:*&v112, *&v113, *&v114, v115[0]];
  v116[3] = v48;
  v49 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:COERCE_DOUBLE(1065353216)];
  v106 = v50;
  v97 = v52;
  v103 = v51;
  v91 = v53;
  v50.i32[0] = 1119092736;
  [ARCoachingTransformations rotate:*v50.i64 axis:0.0078125];
  v54 = 0;
  v108 = v55;
  v109 = v56;
  v110 = v57;
  v111 = v58;
  do
  {
    *(&v112 + v54) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, COERCE_FLOAT(*(&v108 + v54))), v103, *(&v108 + v54), 1), v97, *(&v108 + v54), 2), v91, *(&v108 + v54), 3);
    v54 += 16;
  }

  while (v54 != 64);
  v59 = [(ARCoachingInstanceTransform *)v49 init:*&v112, *&v113, *&v114, v115[0]];
  v116[4] = v59;
  v60 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:COERCE_DOUBLE(3212836864)];
  v107 = v61;
  v98 = v63;
  v104 = v62;
  v92 = v64;
  v61.i32[0] = 1119092736;
  [ARCoachingTransformations rotate:*v61.i64 axis:0.0078125];
  v65 = 0;
  v108 = v66;
  v109 = v67;
  v110 = v68;
  v111 = v69;
  do
  {
    *(&v112 + v65) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, COERCE_FLOAT(*(&v108 + v65))), v104, *(&v108 + v65), 1), v98, *(&v108 + v65), 2), v92, *(&v108 + v65), 3);
    v65 += 16;
  }

  while (v65 != 64);
  v70 = [(ARCoachingInstanceTransform *)v60 init:*&v112, *&v113, *&v114, v115[0]];
  v116[5] = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:6];
  instanceTransforms = self->_instanceTransforms;
  self->_instanceTransforms = v71;

  v73 = 0;
  v74 = &v114;
  do
  {
    v75 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v73];
    [v75 setLocalScale:0.0];
    [v75 transform];
    *(v74 - 2) = v76;
    *(v74 - 1) = v77;
    *v74 = v78;
    v74[1] = v79;

    ++v73;
    v74 += 4;
  }

  while (v73 != 6);
  v80 = [v4 newBufferWithBytes:&v112 length:384 options:0];
  instanceBuffer = self->_instanceBuffer;
  p_instanceBuffer = &self->_instanceBuffer;
  *p_instanceBuffer = v80;

  [*p_instanceBuffer setLabel:@"Per Instance Post Tessellation variables"];
  v83 = *MEMORY[0x277D85DE8];
}

- (void)computeShapeBlendWithEnd:(id *)a3 endCount:(int)a4
{
  v6 = [(MTLBuffer *)self->_controlPointsBuffer contents];
  if (a4 >= 1)
  {
    v7 = a4;
    v8 = (v6 + 16);
    v9 = a3 + 4;
    do
    {
      *(v8 - 1) = *&v9[-4].var0;
      var0 = v9->var0;
      v9 += 8;
      *v8 = var0;
      v8 += 8;
      --v7;
    }

    while (v7);
  }
}

- (void)computeInstanceTransformScale:(ARCoachingMetalSplineData *)self
{
  v13 = v2;
  v4 = [(MTLBuffer *)self->_instanceBuffer contents];
  if ([(NSArray *)self->_instanceTransforms count])
  {
    v5 = 0;
    v6 = (v4 + 32);
    do
    {
      v7 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v5];
      [v7 setLocalScale:v13];

      v8 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v5];
      [v8 transform];
      *(v6 - 2) = v9;
      *(v6 - 1) = v10;
      *v6 = v11;
      v6[1] = v12;
      v6 += 4;

      ++v5;
    }

    while ([(NSArray *)self->_instanceTransforms count]> v5);
  }
}

- (void)computeInstanceTransformTranslate:(int)a3 index:
{
  v12 = v3;
  v6 = [(MTLBuffer *)self->_instanceBuffer contents];
  v13 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:a3];
  [v13 setLocalTranslation:v12];

  v14 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:a3];
  [v14 transform];
  v7 = (v6 + (a3 << 6));
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
}

@end