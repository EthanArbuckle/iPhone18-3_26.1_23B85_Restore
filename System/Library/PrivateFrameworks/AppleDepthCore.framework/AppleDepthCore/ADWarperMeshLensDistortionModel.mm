@interface ADWarperMeshLensDistortionModel
- (ADWarperMeshLensDistortionModel)initWithDictionary:(id)a3;
- (ADWarperMeshLensDistortionModel)initWithWarperMesh:(id)a3 type:(unint64_t)a4 width:(int64_t)a5 height:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation:(BOOL)a3;
- (unint64_t)hash;
- (void)adjustForImageRotation:(int64_t)a3 forDimensions:(CGSize)a4;
- (void)crop:(CGRect)a3 fromDimensions:(CGSize)a4;
- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)x3_0 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6;
- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)x3_0 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6;
@end

@implementation ADWarperMeshLensDistortionModel

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  return self;
}

- (id)dictionaryRepresentation:(BOOL)a3
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"meshType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ADWarperMeshLensDistortionModel type](self, "type", a3)}];
  v11[0] = v4;
  v10[1] = @"meshWidth";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ADWarperMeshLensDistortionModel width](self, "width")}];
  v11[1] = v5;
  v10[2] = @"meshHeight";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ADWarperMeshLensDistortionModel height](self, "height")}];
  v11[2] = v6;
  v10[3] = @"mesh";
  v7 = [(ADWarperMeshLensDistortionModel *)self warperMesh];
  v11[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

- (ADWarperMeshLensDistortionModel)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"meshType"];
  v6 = [v4 objectForKeyedSubscript:@"meshWidth"];
  v7 = [v4 objectForKeyedSubscript:@"meshHeight"];
  v8 = [v4 objectForKeyedSubscript:@"mesh"];
  v9 = v8;
  v10 = 0;
  if (v5 && v6 && v7 && v8)
  {
    self = -[ADWarperMeshLensDistortionModel initWithWarperMesh:type:width:height:](self, "initWithWarperMesh:type:width:height:", v8, [v5 unsignedIntValue], objc_msgSend(v6, "integerValue"), objc_msgSend(v7, "integerValue"));
    v10 = self;
  }

  return v10;
}

- (void)adjustForImageRotation:(int64_t)a3 forDimensions:(CGSize)a4
{
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"warper mesh distortion model does not support rotation" userInfo:{0, a4.width, a4.height}];
  objc_exception_throw(v4);
}

- (void)crop:(CGRect)a3 fromDimensions:(CGSize)a4
{
  y = a3.origin.y;
  refDimensions = self->_undistortMesh._refDimensions;
  height = a4.height;
  *self->_anon_38 = vcvt_f32_f64(vaddq_f64(vdivq_f64(vmulq_f64(a3.origin, refDimensions), a4), vcvtq_f64_f32(*self->_anon_38)));
  v7 = a3.size.height;
  v8 = vdivq_f64(a3.size, a4);
  self->_undistortMesh._refDimensions = vmulq_f64(v8, refDimensions);
  v9 = self->_distortMesh._refDimensions;
  self[1].super.isa = vcvt_f32_f64(vaddq_f64(vdivq_f64(vmulq_f64(a3.origin, v9), a4), vcvtq_f64_f32(self[1].super.isa)));
  self->_distortMesh._refDimensions = vmulq_f64(v8, v9);
}

- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)x3_0 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6
{
  v10 = a5;
  [v10 referenceDimensions];
  ADWarperMesh::apply(&self->_undistortMesh, a3, x3_0, v12, a6);
}

- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)x3_0 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6
{
  v10 = a5;
  [v10 referenceDimensions];
  ADWarperMesh::apply(&self->_distortMesh, a3, x3_0, v12, a6);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ADWarperMeshLensDistortionModel alloc];
  v5 = [(NSData *)self->_undistortMesh._warperMesh copy];
  v6 = [(ADWarperMeshLensDistortionModel *)v4 initWithWarperMesh:v5 type:self->_undistortMesh._type width:*&self->_anon_38[8] height:*&self->_anon_38[12]];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ADWarperMeshLensDistortionModel type](self, "type")}];
  v4 = [v3 hash];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ADWarperMeshLensDistortionModel width](self, "width")}];
  v6 = [v5 hash];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ADWarperMeshLensDistortionModel height](self, "height")}];
  v8 = [v7 hash];

  v9 = [(ADWarperMeshLensDistortionModel *)self warperMesh];
  v10 = v4 ^ (2 * v6) ^ (3 * v8) ^ (4 * [v9 hash]);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (self == v4)
  {
    v12 = 1;
    goto LABEL_12;
  }

  if (([(ADWarperMeshLensDistortionModel *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    v7 = [(ADWarperMeshLensDistortionModel *)self type];
    if (v7 == [(ADWarperMeshLensDistortionModel *)v6 type]&& (v8 = [(ADWarperMeshLensDistortionModel *)self width], v8 == [(ADWarperMeshLensDistortionModel *)v6 width]) && (v9 = [(ADWarperMeshLensDistortionModel *)self height], v9 == [(ADWarperMeshLensDistortionModel *)v6 height]))
    {
      v10 = [(ADWarperMeshLensDistortionModel *)self warperMesh];
      v11 = [(ADWarperMeshLensDistortionModel *)v6 warperMesh];
      v12 = [v10 isEqualToData:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (ADWarperMeshLensDistortionModel)initWithWarperMesh:(id)a3 type:(unint64_t)a4 width:(int64_t)a5 height:(int64_t)a6
{
  v106[8] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = v11;
  if (!v11)
  {
    v101 = @"warperMesh cannot be nil";
    goto LABEL_57;
  }

  if ([v11 length] != 8 * a5 * a6)
  {
    v101 = @"warperMesh length should be width * height * 2 floats";
LABEL_57:
    v102 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v101 userInfo:0];
    objc_exception_throw(v102);
  }

  v105.receiver = self;
  v105.super_class = ADWarperMeshLensDistortionModel;
  v13 = [(ADWarperMeshLensDistortionModel *)&v105 init];
  if (v13)
  {
    v14 = v12;
    *(v13 + 1) = a4;
    objc_storeStrong(v13 + 4, a3);
    *(v13 + 16) = a5;
    *(v13 + 17) = a6;
    *(v13 + 11) = 0;
    *(v13 + 12) = 0;
    if (a4 == 1)
    {
      *(v13 + 10) = 0;
      LODWORD(a5) = a5 - 1;
      LODWORD(a6) = a6 - 1;
    }

    else
    {
      if (a4)
      {
        v103 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"unknown warper mesh type" userInfo:0];
        objc_exception_throw(v103);
      }

      *(v13 + 10) = 1056964608;
    }

    *(v13 + 2) = a5;
    *(v13 + 3) = a6;

    v106[0] = 0;
    v15 = *(v13 + 64);
    LODWORD(v16) = v15.i32[0] / 2;
    v106[1] = (v15.i32[0] / 2);
    v106[2] = (v15.i32[0] - 1);
    v104 = v15;
    v18 = v15.i32[1];
    LODWORD(v19) = 0;
    LODWORD(v20) = 0;
    LODWORD(v17) = --v15.i32[0];
    v15.i32[1] /= 2;
    *(&v20 + 4) = v15.u32[1];
    v106[3] = v20;
    v106[4] = v15;
    HIDWORD(v19) = v18 - 1;
    HIDWORD(v16) = v18 - 1;
    v106[5] = v19;
    v106[6] = v16;
    HIDWORD(v17) = v18 - 1;
    v106[7] = v17;
    v21 = [*(v13 + 4) bytes];
    v22 = v21;
    v23 = 0;
    v24 = vcvt_f32_s32(v104);
    v25 = 0;
    do
    {
      v26 = *(v21 + 8 * (v106[v23] + HIDWORD(v106[v23]) * *(v13 + 16)));
      v24 = vbsl_s8(vcgt_f32(v24, v26), v26, v24);
      v25 = vbsl_s8(vcgt_f32(v26, v25), v26, v25);
      ++v23;
    }

    while (v23 != 8);
    *(v13 + 9) = *(v13 + 1);
    *(v13 + 5) = *(v13 + 1);
    *(v13 + 26) = *(v13 + 10);
    v27 = vcvt_s32_f32(vneg_f32(vrndp_f32(v24)));
    *(v13 + 108) = v27;
    __asm { FMOV            V8.2S, #1.0 }

    v33 = vcvt_s32_f32(vadd_f32(vadd_f32(vrndm_f32(v25), vcvt_f32_s32(v27)), _D8));
    *(v13 + 16) = v33;
    v34 = [MEMORY[0x277CBEB28] dataWithLength:{8 * vmul_lane_s32(v33, v33, 1).i32[0]}];
    objc_storeStrong(v13 + 12, v34);
    v35 = v34;
    v36 = [v34 mutableBytes];
    v39 = *(v13 + 33);
    if (v39 >= 1)
    {
      v40 = 0;
      v41 = *(v13 + 32);
      v42 = vneg_f32(0x3F0000003FLL);
      v43 = v36;
      do
      {
        if (v41 >= 1)
        {
          for (i = 0; i < v41; ++i)
          {
            *v43++ = v42;
            v41 = *(v13 + 32);
          }

          v39 = *(v13 + 33);
        }

        ++v40;
      }

      while (v40 < v39);
    }

    v45 = *(v13 + 17);
    if (v45 > 1)
    {
      v46 = 0;
      v47 = *(v13 + 16);
      do
      {
        if (v47 >= 2)
        {
          v48 = 0;
          v49 = (v22 + 8 * v47 * v46);
          v50 = v49;
          do
          {
            v51 = v50[1];
            ++v50;
            v52 = v51;
            v53 = v47;
            v54 = v47 + 1;
            v55 = *v49;
            v56 = v49[v47];
            if (vcgt_f32(*v49, v56).u8[0])
            {
              LODWORD(v57) = v49[v47];
            }

            else
            {
              LODWORD(v57) = *v49->f32;
            }

            v58 = v49[v54];
            v55.i32[0] = HIDWORD(*v49);
            if (v52.f32[1] < v55.f32[1])
            {
              v55.f32[0] = v52.f32[1];
            }

            v59 = vcvtps_s32_f32(v55.f32[0]);
            LODWORD(v60) = HIDWORD(*&v49[v54]);
            if (v56.f32[1] >= v58.f32[1])
            {
              LODWORD(v60) = HIDWORD(*&v49[v47]);
            }

            v61 = vcvtms_s32_f32(v60);
            if (v59 <= v61)
            {
              v62 = vcvtps_s32_f32(v57);
              if (vcgt_f32(v58, v52).u8[0])
              {
                v52.i32[0] = v49[v54];
              }

              v63 = vcvtms_s32_f32(v52.f32[0]);
              v52.f32[0] = v48;
              v64.f32[0] = v48;
              v64.f32[1] = v46;
              v65 = vadd_f32(v64, 0x3F80000000000000);
              v66 = vadd_f32(v64, 1065353216);
              *v68.f32 = vzip1_s32(v52, v66);
              v67.i32[1] = v66.i32[1];
              v67.f32[0] = v46;
              *&v67.u32[2] = vdup_lane_s32(v65, 1);
              *v69.f32 = vzip1_s32(v66, v65);
              *&v68.u32[2] = v65;
              *&v69.u32[2] = vadd_f32(v64, _D8);
              *v70.f32 = vzip2_s32(v66, v65);
              *&v70.u32[2] = vdup_lane_s32(*&v69.u32[2], 1);
              do
              {
                if (v62 <= v63)
                {
                  v71 = v59;
                  v72 = v62;
                  do
                  {
                    v73 = *(v13 + 27);
                    if (v72 + v73 >= 0)
                    {
                      v74 = *(v13 + 28);
                      if (((v74 + v59) & 0x80000000) == 0)
                      {
                        v75 = *(v13 + 32);
                        if (v72 + v73 < v75 && v74 + v59 < *(v13 + 33))
                        {
                          v76 = v72 + v73 + v75 * (v59 + v74);
                          v77 = v49[v53];
                          v78 = v49[1];
                          v79 = v78.f32[1];
                          v80 = v77.f32[1];
                          v81 = vsub_f32(*v49, v77).f32[0];
                          v82 = vsub_f32(v77, v78).f32[0];
                          LODWORD(v83) = HIDWORD(*v49);
                          v84 = 1.0 / (((v83 - v80) * v82) + ((v78.f32[1] - v80) * v81));
                          v85 = v72 - v77.f32[0];
                          v38.f32[0] = (((v71 - v80) * v82) + ((v78.f32[1] - v80) * v85)) * v84;
                          if (v38.f32[0] >= -0.00001)
                          {
                            v86 = (((v71 - v77.f32[1]) * v81) + ((v77.f32[1] - v83) * v85)) * v84;
                            if (v86 >= -0.00001)
                            {
                              v87 = 1.0 - v38.f32[0] - v86;
                              if (v87 >= -0.00001)
                              {
                                v38.f32[1] = v86;
                                v38.f32[2] = 1.0 - v38.f32[0] - v86;
                                v88 = vmulq_f32(v68, v38);
                                v89 = vmulq_f32(v67, v38);
                                *(v36 + 8 * v76) = vadd_f32(vzip1_s32(*&vextq_s8(v88, v88, 8uLL), *&vextq_s8(v89, v89, 8uLL)), vadd_f32(vzip1_s32(*v88.i8, *v89.i8), vzip2_s32(*v88.i8, *v89.i8)));
                                v78 = v49[1];
                                v77 = v49[v53];
                                v80 = v77.f32[1];
                                v79 = v78.f32[1];
                              }
                            }
                          }

                          v94 = v49[v54];
                          v90 = v80 - v94.f32[1];
                          v91 = v78.f32[0] - v94.f32[0];
                          v92 = v94.f32[0] - v77.f32[0];
                          v93 = 1.0 / (((v94.f32[0] - v77.f32[0]) * (v79 - v94.f32[1])) + (v90 * v91));
                          v94.f32[0] = v72 - v94.f32[0];
                          v37.f32[0] = ((v92 * (v71 - v94.f32[1])) + (v90 * v94.f32[0])) * v93;
                          if (v37.f32[0] >= -0.00001)
                          {
                            v95 = ((v91 * (v71 - v94.f32[1])) + ((v94.f32[1] - v79) * v94.f32[0])) * v93;
                            if (v95 >= -0.00001)
                            {
                              v96 = 1.0 - v37.f32[0] - v95;
                              if (v96 >= -0.00001)
                              {
                                v37.f32[1] = v95;
                                v37.f32[2] = 1.0 - v37.f32[0] - v95;
                                v97 = vmulq_f32(v69, v37);
                                v98 = vmulq_f32(v70, v37);
                                v99 = vadd_f32(vzip1_s32(*v97.i8, *v98.i8), vzip2_s32(*v97.i8, *v98.i8));
                                v37 = vextq_s8(v98, v98, 8uLL);
                                *(v36 + 8 * v76) = vadd_f32(vzip1_s32(*&vextq_s8(v97, v97, 8uLL), *v37.f32), v99);
                              }
                            }
                          }
                        }
                      }
                    }

                    ++v72;
                  }

                  while (v63 + 1 != v72);
                }
              }

              while (v59++ != v61);
              v47 = *(v13 + 16);
            }

            ++v48;
            v49 = v50;
          }

          while (v48 < v47 - 1);
          v45 = *(v13 + 17);
        }

        ++v46;
      }

      while (v46 < v45 - 1);
    }
  }

  return v13;
}

@end