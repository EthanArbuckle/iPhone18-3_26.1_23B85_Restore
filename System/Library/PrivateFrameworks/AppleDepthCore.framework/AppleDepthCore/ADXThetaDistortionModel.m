@interface ADXThetaDistortionModel
- (ADXThetaDistortionModel)initWithDictionary:(id)a3;
- (ADXThetaDistortionModel)initWithDistortionCenter:(CGPoint)a3 XThetaType:(unint64_t)a4 distortionCoefficients:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CGPoint)distortionCenter;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation:(BOOL)a3;
- (unint64_t)hash;
- (void)applyDistortionModelToPixels:(double)a3 inPixels:(float32x2_t)a4 intrinsicsMatrix:(uint64_t)a5 distort:(uint64_t)a6 outPixels:(float64x2_t *)a7;
- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6;
- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6;
@end

@implementation ADXThetaDistortionModel

- (CGPoint)distortionCenter
{
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)dictionaryRepresentation:(BOOL)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(self->_distortionCenter);
  [v4 setObject:DictionaryRepresentation forKeyedSubscript:@"lensDistortionCenter"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_XThetaType];
  [v4 setObject:v6 forKeyedSubscript:@"typeXTheta"];

  [v4 setObject:self->_distortionCoefficients forKeyedSubscript:@"distortionCoefficients"];
  v7 = [v4 copy];

  return v7;
}

- (ADXThetaDistortionModel)initWithDictionary:(id)a3
{
  v4 = a3;
  if (getDistortionCenterFromDictionary(v4, &self->_distortionCenter))
  {
    v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"typeXTheta"];

    if (v5)
    {
      v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"distortionCoefficients"];
      distortionCoefficients = self->_distortionCoefficients;
      self->_distortionCoefficients = v6;

      v8 = [(NSDictionary *)v4 objectForKeyedSubscript:@"typeXTheta"];
      v9 = [v8 unsignedIntegerValue];

      self = [(ADXThetaDistortionModel *)self initWithDistortionCenter:v9 XThetaType:self->_distortionCoefficients distortionCoefficients:self->_distortionCenter.x, self->_distortionCenter.y];
      v5 = self;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ADXThetaDistortionModel)initWithDistortionCenter:(CGPoint)a3 XThetaType:(unint64_t)a4 distortionCoefficients:(id)a5
{
  y = a3.y;
  x = a3.x;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ADXThetaDistortionModel;
  v11 = [(ADXThetaDistortionModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_distortionCenter.x = x;
    v11->_distortionCenter.y = y;
    v11->_XThetaType = a4;
    objc_storeStrong(&v11->_distortionCoefficients, a5);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ADXThetaDistortionModel alloc];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  XThetaType = self->_XThetaType;
  distortionCoefficients = self->_distortionCoefficients;

  return [(ADXThetaDistortionModel *)v4 initWithDistortionCenter:XThetaType XThetaType:distortionCoefficients distortionCoefficients:x, y];
}

- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6
{
  v10 = a5;
  [v10 intrinsicMatrix];
  [(ADXThetaDistortionModel *)self applyDistortionModelToPixels:a3 inPixels:a4 intrinsicsMatrix:0 distort:a6 outPixels:?];
}

- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6
{
  v10 = a5;
  [v10 intrinsicMatrix];
  [(ADXThetaDistortionModel *)self applyDistortionModelToPixels:a3 inPixels:a4 intrinsicsMatrix:1 distort:a6 outPixels:?];
}

- (void)applyDistortionModelToPixels:(double)a3 inPixels:(float32x2_t)a4 intrinsicsMatrix:(uint64_t)a5 distort:(uint64_t)a6 outPixels:(float64x2_t *)a7
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 8);
  switch(v10)
  {
    case 0:
      if (!a6)
      {
        return;
      }

      v13 = __PAIR64__(HIDWORD(a3), LODWORD(a2));
      v14 = 0;
      __asm { FMOV            V0.2S, #1.0 }

      v52 = v13;
      v56 = vcvt_f32_f64(*(a1 + 24));
      v57 = vdiv_f32(_D0, v13);
      v53 = vneg_f32(0x3F0000003FLL);
      while (1)
      {
        v19 = vcvt_f32_f64(a7[v14]);
        if (!a8)
        {
          break;
        }

        v20 = vmul_f32(v57, vsub_f32(v19, a4));
        v21 = sqrtf(vaddv_f32(vmul_f32(v20, v20)));
        v22 = atanf(v21);
        if (v22 > 0.0000001)
        {
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v23 = *(a1 + 16);
          v24 = [v23 countByEnumeratingWithState:&v67 objects:v73 count:16];
          if (v24)
          {
            v25 = v22 * v22;
            v26 = *v68;
            v27 = v22;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v68 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                [*(*(&v67 + 1) + 8 * i) floatValue];
                v27 = v25 * v27;
                v22 = v22 + (v29 * v27);
              }

              v24 = [v23 countByEnumeratingWithState:&v67 objects:v73 count:16];
            }

            while (v24);
          }

          v30 = v22 / v21;
          v31 = vmul_f32(v52, v20);
          v32 = v56;
LABEL_44:
          v19 = vmla_n_f32(v32, v31, v30);
        }

LABEL_45:
        a9[v14++] = vcvtq_f64_f32(v19);
        if (v14 == a6)
        {
          return;
        }
      }

      v54 = vmul_f32(v57, vsub_f32(v19, v56));
      v62 = sqrtf(vaddv_f32(vmul_f32(v54, v54)));
      if (v62 < 0.00000001)
      {
        goto LABEL_45;
      }

      v33 = 0;
      v34 = 3.4028e38;
      v35 = v62;
      while (1)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v36 = *(a1 + 16);
        v37 = [v36 countByEnumeratingWithState:&v63 objects:v72 count:16];
        v61 = v34;
        if (v37)
        {
          v38 = v35 * v35;
          v39 = *v64;
          v40 = 1.0;
          v41 = v35;
          v42 = v35;
          v43 = 1.0;
          do
          {
            v44 = 0;
            v45 = v42;
            do
            {
              if (*v64 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v46 = *(*(&v63 + 1) + 8 * v44);
              [v46 floatValue];
              v48 = v47;
              [v46 floatValue];
              v43 = v43 + 2.0;
              v42 = v38 * v45;
              v40 = v40 + ((v43 * v48) * (v35 * v45));
              v41 = v41 + (v49 * (v38 * v45));
              ++v44;
              v45 = v38 * v45;
            }

            while (v37 != v44);
            v37 = [v36 countByEnumeratingWithState:&v63 objects:v72 count:16];
          }

          while (v37);
        }

        else
        {
          v40 = 1.0;
          v41 = v35;
        }

        if (fabsf(v40) < 0.001)
        {
          break;
        }

        v34 = (v41 - v62) / v40;
        v35 = v35 - v34;
        v50 = fabsf(v34);
        if (v50 <= 0.0000011921 || v33++ >= 0x13)
        {
          goto LABEL_40;
        }
      }

      v50 = fabsf(v61);
LABEL_40:
      v19 = v53;
      if (v50 > 0.001)
      {
        goto LABEL_45;
      }

      v19 = v53;
      if (v35 < 0.0)
      {
        goto LABEL_45;
      }

      v19 = v53;
      if (v35 > 1.57079633)
      {
        goto LABEL_45;
      }

      v30 = tanf(v35) / v62;
      v31 = vmul_f32(v52, v54);
      v32 = a4;
      goto LABEL_44;
    case 1:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "FSinTheta distort/undistort not supported", buf, 2u);
      }

      break;
    case 2:
      v11 = 16 * a6;

      memcpy(a9, a7, v11);
      break;
  }
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distortionCenter.x];
  v4 = [v3 hash];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distortionCenter.y];
  v6 = [v5 hash];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_XThetaType];
  v8 = v4 ^ (2 * v6) ^ (3 * [v7 hash]);

  return v8 ^ (4 * ADCommonUtils::hashArray(self->_distortionCoefficients, v9));
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  if (self == v4)
  {
    v10 = 1;
    goto LABEL_17;
  }

  if (([(ADXThetaDistortionModel *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    x = self->_distortionCenter.x;
    y = self->_distortionCenter.y;
    [(ADXThetaDistortionModel *)v6 distortionCenter];
    v10 = 0;
    if (x == v11 && y == v9)
    {
      XThetaType = self->_XThetaType;
      if (XThetaType == [(ADXThetaDistortionModel *)v6 XThetaType])
      {
        distortionCoefficients = self->_distortionCoefficients;
        v14 = [(ADXThetaDistortionModel *)v6 distortionCoefficients];
        if ((distortionCoefficients == 0) == (v14 != 0))
        {
          v10 = 0;
        }

        else
        {
          v15 = self->_distortionCoefficients;
          if (v15)
          {
            v16 = [(ADXThetaDistortionModel *)v6 distortionCoefficients];
            v10 = [(NSArray *)v15 isEqualToArray:v16];
          }

          else
          {
            v10 = 1;
          }
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

LABEL_17:

  return v10;
}

@end