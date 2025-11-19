@interface ABPKCameraParams
- (ABPKCameraParams)initWithDictionary:(id)a3;
- (ABPKCameraParams)initWithIntrinsics:(__n128)a3 andExtrinsics:(__n128)a4 andDistortion:(__n128)a5;
- (ABPKCameraParams)initWithIntrinsics:(__n128)a3 andExtrinsics:(__n128)a4 andDistortion:(__n128)a5 andInputResolution:(__n128)a6;
- (CGSize)inputRes;
- (id)toDict;
- (uint64_t)isMatrixIdentity:(int8x16_t)a3;
- (void)checkAndSetApproximateIntrinsics;
- (void)setExtrinsics:(__n128)a3;
- (void)setIntrinsics:(__n128)a3;
@end

@implementation ABPKCameraParams

- (uint64_t)isMatrixIdentity:(int8x16_t)a3
{
  a1.i32[3] = a2.i32[0];
  v3 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_f32(a1, xmmword_23EE28180), vceqq_f32(vextq_s8(vextq_s8(a2, a2, 0xCuLL), a3, 8uLL), xmmword_23EE28180))));
  v3.i8[0] = vmaxv_u8(v3);
  return (*&a3.i32[2] == 1.0) & ~v3.i32[0];
}

- (void)checkAndSetApproximateIntrinsics
{
  if ([(ABPKCameraParams *)self isMatrixIdentity:*self->_anon_40, *&self->_anon_40[16], *&self->_anon_40[32]])
  {
    inputRes = self->_inputRes;
    *&v4 = vmuld_lane_f64(1462.18103, inputRes, 1) / 1920.0;
    LODWORD(v5) = 0;
    v6 = v4;
    HIDWORD(v5) = v4;
    __asm { FMOV            V1.2D, #0.5 }

    *&self->_anon_40[8] = 0;
    *self->_anon_40 = v6;
    *&self->_anon_40[24] = 0;
    *&self->_anon_40[16] = v5;
    *&self->_anon_40[40] = 1065353216;
    *&self->_anon_40[32] = vcvt_f32_f64(vmulq_f64(inputRes, _Q1));
    v12 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " Input intrinsics is identity. Approximate intrinsics: ", v13, 2u);
    }

    printSimd3x3(*self->_anon_40, *&self->_anon_40[16], *&self->_anon_40[32]);
  }
}

- (ABPKCameraParams)initWithIntrinsics:(__n128)a3 andExtrinsics:(__n128)a4 andDistortion:(__n128)a5
{
  v20.receiver = a1;
  v20.super_class = ABPKCameraParams;
  v9 = [(ABPKCameraParams *)&v20 init];
  v10 = v9;
  if (v9)
  {
    *v9->_anon_40 = a2;
    *&v9->_anon_40[16] = a3;
    *&v9->_anon_40[32] = a4;
    *&v9[1].super.isa = a5;
    *&v9[1]._deviceType = a6;
    *v9[1]._distortion = a7;
    v9[1]._inputRes = a8;
    *v9->_distortion = a9;
    v9->_isImageRectified = 0;
    v9->_deviceOrientation = 3;
    [(ABPKCameraParams *)v9 checkAndSetApproximateIntrinsics];
  }

  return v10;
}

- (ABPKCameraParams)initWithIntrinsics:(__n128)a3 andExtrinsics:(__n128)a4 andDistortion:(__n128)a5 andInputResolution:(__n128)a6
{
  v29.receiver = a1;
  v29.super_class = ABPKCameraParams;
  v18 = [(ABPKCameraParams *)&v29 init];
  v19 = v18;
  if (v18)
  {
    *v18->_anon_40 = a2;
    *&v18->_anon_40[16] = a3;
    *&v18->_anon_40[32] = a4;
    *&v18[1].super.isa = a5;
    *&v18[1]._deviceType = a6;
    *v18[1]._distortion = a7;
    v18[1]._inputRes = a8;
    *v18->_distortion = a9;
    v18->_inputRes.width = a10;
    v18->_inputRes.height = a11;
    v18->_isImageRectified = 0;
    v18->_deviceOrientation = 3;
    [(ABPKCameraParams *)v18 checkAndSetApproximateIntrinsics];
  }

  return v19;
}

- (ABPKCameraParams)initWithDictionary:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = ABPKCameraParams;
  v5 = [(ABPKCameraParams *)&v42 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [v4 objectForKeyedSubscript:@"intrinsics"];
  v7 = convertNSArrayToSimd3x3(v6);
  *&v5->_anon_40[8] = v7.n128_u32[2];
  *&v5->_anon_40[24] = v8;
  *v5->_anon_40 = v7.n128_u64[0];
  *&v5->_anon_40[16] = v9;
  *&v5->_anon_40[40] = v10;
  *&v5->_anon_40[32] = v11;

  v12 = [v4 objectForKeyedSubscript:@"distortion"];
  *v5->_distortion = convertNSArrayToSimd4(v12);

  v13 = [v4 objectForKeyedSubscript:@"resolution"];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [v14 integerValue];
  v16 = [v4 objectForKeyedSubscript:@"resolution"];
  v17 = [v16 objectAtIndexedSubscript:1];
  v18 = [v17 integerValue];
  v5->_inputRes.width = v15;
  v5->_inputRes.height = v18;

  v19 = [v4 objectForKeyedSubscript:@"extrinsics"];
  *&v5[1].super.isa = convertNSMatToSimd4x4(v19);
  *&v5[1]._deviceType = v20;
  *v5[1]._distortion = v21;
  v5[1]._inputRes = v22;

  v23 = [v4 objectForKeyedSubscript:@"is_image_rectified"];
  LOBYTE(v15) = v23 == 0;

  if (v15)
  {
    v5->_isImageRectified = 0;
    v25 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v27 = " Image rectification type not specified. Setting Default to fisheye distortion ";
    v28 = v25;
    v29 = 2;
  }

  else
  {
    v24 = [v4 objectForKeyedSubscript:@"is_image_rectified"];
    v5->_isImageRectified = [v24 BOOLValue];

    v25 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    isImageRectified = v5->_isImageRectified;
    *buf = 67109120;
    v44 = isImageRectified;
    v27 = " Recorded data is rectified: %d ";
    v28 = v25;
    v29 = 8;
  }

  _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_DEBUG, v27, buf, v29);
LABEL_8:

  v30 = [v4 objectForKeyedSubscript:@"device_orientation"];
  v31 = v30 == 0;

  if (v31)
  {
    v5->_deviceOrientation = 3;
    v34 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v35 = " Device orientation not specified. Setting Default to landscape ";
      goto LABEL_17;
    }

LABEL_18:

    [(ABPKCameraParams *)v5 checkAndSetApproximateIntrinsics];
LABEL_19:
    v38 = v5;
    goto LABEL_20;
  }

  v32 = [v4 objectForKeyedSubscript:@"device_orientation"];
  v33 = [v32 isEqualToString:@"landscape"];

  if (v33)
  {
    v5->_deviceOrientation = 3;
    v34 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v35 = " Recorded sequence with landscape orientation ";
LABEL_17:
      _os_log_impl(&dword_23EDDC000, v34, OS_LOG_TYPE_DEBUG, v35, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v36 = [v4 objectForKeyedSubscript:@"device_orientation"];
  v37 = [v36 isEqualToString:@"portrait"];

  if (v37)
  {
    v5->_deviceOrientation = 1;
    v34 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v35 = " Recorded sequence with portrait orientation ";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v41 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v41, OS_LOG_TYPE_ERROR, " Invalid device orientation type specified. Exit ", buf, 2u);
  }

  v38 = 0;
LABEL_20:

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)toDict
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(ABPKCameraParams *)self intrinsics];
  v7 = simdMatrix3x3ToNSMat(v4, v5, v6);
  [v3 setObject:v7 forKey:@"intrinsics"];

  [(ABPKCameraParams *)self extrinsics];
  v12 = simdMatrix4x4ToNSMat(v8, v9, v10, v11);
  [v3 setObject:v12 forKey:@"extrinsics"];

  [(ABPKCameraParams *)self distortion];
  v14 = simdFloat4ToNSArray(v13);
  [v3 setObject:v14 forKey:@"distortion"];

  v15 = MEMORY[0x277CCABB0];
  [(ABPKCameraParams *)self inputRes];
  v17 = [v15 numberWithDouble:v16];
  v25[0] = v17;
  v18 = MEMORY[0x277CCABB0];
  [(ABPKCameraParams *)self inputRes];
  v19 = [v18 numberWithDouble:?];
  v25[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [v3 setObject:v20 forKey:@"resolution"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[ABPKCameraParams isImageRectified](self, "isImageRectified")}];
  [v3 setObject:v21 forKey:@"is_image_rectified"];

  if ([(ABPKCameraParams *)self deviceOrientation]== 3)
  {
    v22 = @"landscape";
  }

  else if ([(ABPKCameraParams *)self deviceOrientation]== 1)
  {
    v22 = @"portrait";
  }

  else
  {
    v22 = @"invalid";
  }

  [v3 setObject:v22 forKey:@"device_orientation"];
  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setIntrinsics:(__n128)a3
{
  v4[0] = a2;
  v4[1] = a3;
  v4[2] = a4;
  objc_copyStruct((a1 + 64), v4, 48, 1, 0);
}

- (void)setExtrinsics:(__n128)a3
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((a1 + 112), v5, 64, 1, 0);
}

- (CGSize)inputRes
{
  objc_copyStruct(v4, &self->_inputRes, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end