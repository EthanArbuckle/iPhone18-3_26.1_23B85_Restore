@interface Scene
+ (id)newInstancedCornellBoxSceneWithDevice:(id)a3 useIntersectionFunctions:(BOOL)a4;
- (Scene)initWithDevice:(id)a3;
- (id).cxx_construct;
- (void)addLight:(_OWORD *)a3;
- (void)clear;
- (void)uploadToBuffers;
@end

@implementation Scene

- (Scene)initWithDevice:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = Scene;
  v6 = [(Scene *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = objc_alloc_init(NSMutableArray);
    geometries = v7->_geometries;
    v7->_geometries = v8;

    v10 = objc_alloc_init(NSMutableArray);
    instances = v7->_instances;
    v7->_instances = v10;

    *v7->_cameraPosition = xmmword_100010350;
    *v7->_cameraTarget = 0u;
    *v7->_cameraUp = xmmword_100010360;
  }

  return v7;
}

- (void)clear
{
  [(NSMutableArray *)self->_geometries removeAllObjects];
  [(NSMutableArray *)self->_instances removeAllObjects];
  self->_lights.__end_ = self->_lights.__begin_;
}

- (void)addLight:(_OWORD *)a3
{
  v4 = a1[4];
  v5 = a1[5];
  if (v4 >= v5)
  {
    v10 = a1[3];
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v10) >> 4);
    v12 = v11 + 1;
    if (v11 + 1 > 0x333333333333333)
    {
      sub_100003598();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v10) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x199999999999999)
    {
      v14 = 0x333333333333333;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1000037F8((a1 + 3), v14);
    }

    v15 = 80 * v11;
    *v15 = *a3;
    v16 = a3[1];
    v17 = a3[2];
    v18 = a3[4];
    *(v15 + 48) = a3[3];
    *(v15 + 64) = v18;
    *(v15 + 16) = v16;
    *(v15 + 32) = v17;
    v9 = 80 * v11 + 80;
    v19 = a1[3];
    v20 = a1[4] - v19;
    v21 = v15 - v20;
    memcpy((v15 - v20), v19, v20);
    v22 = a1[3];
    a1[3] = v21;
    a1[4] = v9;
    a1[5] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = *a3;
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[4];
    v4[3] = a3[3];
    v4[4] = v8;
    v4[1] = v6;
    v4[2] = v7;
    v9 = (v4 + 5);
  }

  a1[4] = v9;
}

- (void)uploadToBuffers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_geometries;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v6) uploadToBuffers];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  p_lights = &self->_lights;
  v8 = [(MTLDevice *)self->_device newBufferWithLength:self->_lights.__end_ - self->_lights.__begin_ options:0];
  lightBuffer = self->_lightBuffer;
  p_lightBuffer = &self->_lightBuffer;
  *p_lightBuffer = v8;

  memcpy([*p_lightBuffer contents], p_lights->__begin_, objc_msgSend(*p_lightBuffer, "length"));
}

+ (id)newInstancedCornellBoxSceneWithDevice:(id)a3 useIntersectionFunctions:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[Scene alloc] initWithDevice:v5];
  [(Scene *)v6 setCameraPosition:0.0078125];
  [(Scene *)v6 setCameraTarget:?];
  [(Scene *)v6 setCameraUp:0.0078125];
  v96 = [[TriangleGeometry alloc] initWithDevice:v5];
  v87 = v5;
  [(Scene *)v6 addGeometry:?];
  *v7.i64 = matrix4x4_translation(0.0, 1.0, 0.0);
  v110 = v8;
  v116 = v7;
  v98 = v10;
  v104 = v9;
  matrix4x4_scale(0.5, 1.98, 0.5);
  v11 = 0;
  v129 = v12;
  v130 = v13;
  v131 = v14;
  v132 = v15;
  do
  {
    *(&v124 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v116, COERCE_FLOAT(*(&v129 + v11))), v110, *(&v129 + v11), 1), v104, *(&v129 + v11), 2), v98, *(&v129 + v11), 3);
    v11 += 16;
  }

  while (v11 != 64);
  __asm { FMOV            V0.4S, #1.0 }

  [(TriangleGeometry *)v96 addCubeWithFaces:8 color:1 transform:*&_Q0 inwardNormals:*v124.i64, *&v125, *&v126, *&v127];
  v21 = [[TriangleGeometry alloc] initWithDevice:v5];
  [(Scene *)v6 addGeometry:v21];
  *v22.i64 = matrix4x4_translation(0.0, 1.0, 0.0);
  v111 = v23;
  v117 = v22;
  v99 = v25;
  v105 = v24;
  matrix4x4_scale(2.0, 2.0, 2.0);
  v26 = 0;
  v129 = v27;
  v130 = v28;
  v131 = v29;
  v132 = v30;
  do
  {
    *(&v124 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, COERCE_FLOAT(*(&v129 + v26))), v111, *(&v129 + v26), 1), v105, *(&v129 + v26), 2), v99, *(&v129 + v26), 3);
    v26 += 16;
  }

  while (v26 != 64);
  v100 = *&v127;
  v112 = *&v125;
  v118 = *v124.i64;
  v106 = *&v126;
  [TriangleGeometry addCubeWithFaces:v21 color:"addCubeWithFaces:color:transform:inwardNormals:" transform:28 inwardNormals:1];
  [(TriangleGeometry *)v21 addCubeWithFaces:1 color:1 transform:2.40106589e-12 inwardNormals:v118, v112, v106, v100];
  [(TriangleGeometry *)v21 addCubeWithFaces:2 color:1 transform:0.0000106811512 inwardNormals:v118, v112, v106, v100];
  *v31.i64 = matrix4x4_translation(-0.335, 0.6, -0.29);
  v113 = v32;
  v119 = v31;
  v101 = v34;
  v107 = v33;
  *&v35 = matrix4x4_rotation(0.3, xmmword_100010360);
  v88 = v36;
  v90 = v35;
  v92 = v38;
  v94 = v37;
  matrix4x4_scale(0.6, 1.2, 0.6);
  v43 = 0;
  v129 = v90;
  v130 = v88;
  v131 = v94;
  v132 = v92;
  do
  {
    *(&v124 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, COERCE_FLOAT(*(&v129 + v43))), v113, *(&v129 + v43), 1), v107, *(&v129 + v43), 2), v101, *(&v129 + v43), 3);
    v43 += 16;
  }

  while (v43 != 64);
  v44 = 0;
  v45 = v124;
  v46 = v125;
  v47 = v126;
  v48 = v127;
  v129 = v39;
  v130 = v40;
  v131 = v41;
  v132 = v42;
  do
  {
    *(&v124 + v44) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v129 + v44))), v46, *(&v129 + v44), 1), v47, *(&v129 + v44), 2), v48, *(&v129 + v44), 3);
    v44 += 16;
  }

  while (v44 != 64);
  [(TriangleGeometry *)v21 addCubeWithFaces:63 color:0 transform:0.000332031224 inwardNormals:*v124.i64, *&v125, *&v126, *&v127];
  if (v4)
  {
    v49 = [[SphereGeometry alloc] initWithDevice:v5];
    [(Scene *)v6 addGeometry:v49];
    LODWORD(v50) = 1050253722;
    [(SphereGeometry *)v49 addSphereWithOrigin:0.000000381469873 radius:v50 color:0.000332031224];
  }

  else
  {
    *v51.i64 = matrix4x4_translation(0.3275, 0.3, 0.3725);
    v114 = v52;
    v120 = v51;
    v102 = v54;
    v108 = v53;
    *&v55 = matrix4x4_rotation(-0.3, xmmword_100010360);
    v91 = v56;
    v93 = v55;
    v122 = v57;
    v95 = v58;
    matrix4x4_scale(0.6, 0.6, 0.6);
    v63 = 0;
    v129 = v93;
    v130 = v91;
    v131 = v122;
    v132 = v95;
    do
    {
      *(&v124 + v63) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, COERCE_FLOAT(*(&v129 + v63))), v114, *(&v129 + v63), 1), v108, *(&v129 + v63), 2), v102, *(&v129 + v63), 3);
      v63 += 16;
    }

    while (v63 != 64);
    v64 = 0;
    v65 = v124;
    v66 = v125;
    v67 = v126;
    v68 = v127;
    v129 = v59;
    v130 = v60;
    v131 = v61;
    v132 = v62;
    do
    {
      *(&v124 + v64) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(&v129 + v64))), v66, *(&v129 + v64), 1), v67, *(&v129 + v64), 2), v68, *(&v129 + v64), 3);
      v64 += 16;
    }

    while (v64 != 64);
    [(TriangleGeometry *)v21 addCubeWithFaces:63 color:0 transform:0.000332031224 inwardNormals:*v124.i64, *&v125, *&v126, *&v127];
    v49 = 0;
  }

  v69 = -1;
  __asm { FMOV            V11.2S, #4.0 }

  v71 = xmmword_1000103E0;
  do
  {
    v89 = v69;
    v72 = v69 * 2.5;
    *&v71 = v72 + 1.98;
    v97 = v71;
    for (i = -1; i != 2; ++i)
    {
      v103 = i * 2.5;
      v74 = matrix4x4_translation(v103, v72, 0.0);
      v121 = v75;
      v123 = v74;
      v109 = v77;
      v115 = v76;
      v78 = [[GeometryInstance alloc] initWithGeometry:v96 transform:4 mask:v74, v75, v76, v77];
      [(Scene *)v6 addInstance:v78];
      v79 = [[GeometryInstance alloc] initWithGeometry:v21 transform:1 mask:v123, v121, v115, v109];
      [(Scene *)v6 addInstance:v79];
      if (v4)
      {
        v80 = [[GeometryInstance alloc] initWithGeometry:v49 transform:2 mask:v123, v121, v115, v109];
        [(Scene *)v6 addInstance:v80];
      }

      v81 = rand();
      v82 = rand();
      v83 = rand();
      HIDWORD(v84) = HIDWORD(v97);
      v85.f32[0] = vcvts_n_f32_s32(v81, 0x1FuLL);
      v85.i32[1] = vcvts_n_f32_s32(v82, 0x1FuLL);
      *&v84 = vmul_f32(v85, _D11);
      *(&v84 + 2) = vcvts_n_f32_s32(v83, 0x1FuLL) * 4.0;
      v124 = __PAIR64__(v97, LODWORD(v103));
      v125 = xmmword_1000103C0;
      v126 = xmmword_1000103D0;
      v127 = xmmword_1000103E0;
      v128 = v84;
      [(Scene *)v6 addLight:&v124];
    }

    v69 = v89 + 1;
  }

  while (v89 != 1);

  return v6;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end