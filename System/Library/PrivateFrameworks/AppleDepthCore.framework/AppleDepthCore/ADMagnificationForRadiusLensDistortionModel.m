@interface ADMagnificationForRadiusLensDistortionModel
- (ADMagnificationForRadiusLensDistortionModel)initWithDictionary:(id)a3;
- (ADMagnificationForRadiusLensDistortionModel)initWithDistortionCenter:(CGPoint)a3 lensDistortionLookupTable:(id)a4 inverseLensDistortionLookupTable:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CGPoint)distortionCenter;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation:(BOOL)a3;
- (uint64_t)applyDistortionModelToPixels:(double)a3 inPixels:(double)a4 intrinsicsMatrix:(double)a5 referenceDimensions:(double)a6 magnificationLookupTable:(uint64_t)a7 outPixels:(uint64_t)a8;
- (unint64_t)hash;
- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6;
- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6;
@end

@implementation ADMagnificationForRadiusLensDistortionModel

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
  v3 = a3;
  v5 = objc_opt_new();
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(self->_distortionCenter);
  [v5 setObject:DictionaryRepresentation forKeyedSubscript:@"lensDistortionCenter"];

  if (v3)
  {
    v7 = dataToFloatsArray(self->_lensDistortionLookupTable);
    [v5 setObject:v7 forKeyedSubscript:@"distortedRadii"];

    v8 = dataToFloatsArray(self->_inverseLensDistortionLookupTable);
    [v5 setObject:v8 forKeyedSubscript:@"undistortedRadii"];
  }

  else
  {
    [v5 setObject:self->_lensDistortionLookupTable forKeyedSubscript:@"distortedRadii"];
    [v5 setObject:self->_inverseLensDistortionLookupTable forKeyedSubscript:@"undistortedRadii"];
  }

  return v5;
}

- (ADMagnificationForRadiusLensDistortionModel)initWithDictionary:(id)a3
{
  v4 = a3;
  if (getDistortionCenterFromDictionary(v4, &self->_distortionCenter))
  {
    v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"distortedRadii"];
    v6 = getTableAsNSData(v5);

    if ((v6 || (-[NSDictionary objectForKeyedSubscript:](v4, "objectForKeyedSubscript:", @"lensDistortionLookupTable"), v7 = objc_claimAutoreleasedReturnValue(), getTableAsNSData(v7), v6 = objc_claimAutoreleasedReturnValue(), v7, v6)) && ([v6 length] & 3) == 0)
    {
      v9 = [(NSDictionary *)v4 objectForKeyedSubscript:@"undistortedRadii"];
      v10 = getTableAsNSData(v9);

      if ((v10 || (-[NSDictionary objectForKeyedSubscript:](v4, "objectForKeyedSubscript:", @"inverseLensDistortionLookupTable"), v11 = objc_claimAutoreleasedReturnValue(), getTableAsNSData(v11), v10 = objc_claimAutoreleasedReturnValue(), v11, v10)) && ([v10 length] & 3) == 0)
      {
        self = [(ADMagnificationForRadiusLensDistortionModel *)self initWithDistortionCenter:v6 lensDistortionLookupTable:v10 inverseLensDistortionLookupTable:self->_distortionCenter.x, self->_distortionCenter.y];
        v8 = self;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6
{
  v18 = a5;
  [v18 intrinsicMatrix];
  v16 = v11;
  v17 = v10;
  v15 = v12;
  [v18 referenceDimensions];
  [(ADMagnificationForRadiusLensDistortionModel *)self applyDistortionModelToPixels:a3 inPixels:a4 intrinsicsMatrix:self->_lensDistortionLookupTable referenceDimensions:a6 magnificationLookupTable:v17 outPixels:v16, v15, v13, v14];
}

- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6
{
  v18 = a5;
  [v18 intrinsicMatrix];
  v16 = v11;
  v17 = v10;
  v15 = v12;
  [v18 referenceDimensions];
  [(ADMagnificationForRadiusLensDistortionModel *)self applyDistortionModelToPixels:a3 inPixels:a4 intrinsicsMatrix:self->_inverseLensDistortionLookupTable referenceDimensions:a6 magnificationLookupTable:v17 outPixels:v16, v15, v13, v14];
}

- (uint64_t)applyDistortionModelToPixels:(double)a3 inPixels:(double)a4 intrinsicsMatrix:(double)a5 referenceDimensions:(double)a6 magnificationLookupTable:(uint64_t)a7 outPixels:(uint64_t)a8
{
  v17 = a10;
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  if (v18 <= a5 - v18)
  {
    v20 = a5 - v18;
  }

  else
  {
    v20 = *(a1 + 24);
  }

  if (v19 <= a6 - v19)
  {
    v21 = a6 - v19;
  }

  else
  {
    v21 = *(a1 + 32);
  }

  v35 = v17;
  v22 = [v35 bytes];
  v23 = [v35 length];
  if (v23 > 3)
  {
    v24 = v35;
    if (a8)
    {
      v25 = v20;
      v26 = v21;
      v27 = sqrtf((v26 * v26) + (v25 * v25));
      v28 = (v23 >> 2) - 1;
      do
      {
        v29 = *(a1 + 24);
        v30 = vcvt_f32_f64(vsubq_f64(*a9, v29));
        v31 = sqrtf(COERCE_FLOAT(vmul_f32(v30, v30).i32[1]) + (v30.f32[0] * v30.f32[0]));
        if (v31 >= v27)
        {
          v33 = *(v22 + 4 * v28);
        }

        else
        {
          v32 = (v28 / v27) * v31;
          v33 = ((v32 - v32) * *(v22 + 4 * v32 + 4)) + ((1.0 - (v32 - v32)) * *(v22 + 4 * v32));
        }

        *a11++ = vaddq_f64(v29, vcvtq_f64_f32(vmla_n_f32(v30, v30, v33)));
        ++a9;
        --a8;
      }

      while (a8);
    }
  }

  else
  {
    v23 = memcpy(a11, a9, 16 * a8);
    v24 = v35;
  }

  return MEMORY[0x2821F96F8](v23, v24);
}

- (ADMagnificationForRadiusLensDistortionModel)initWithDistortionCenter:(CGPoint)a3 lensDistortionLookupTable:(id)a4 inverseLensDistortionLookupTable:(id)a5
{
  y = a3.y;
  x = a3.x;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10)
  {
    v16 = @"lensDistortionLookupTable cannot be nil";
    goto LABEL_8;
  }

  if (!v11)
  {
    v16 = @"inverseLensDistortionLookupTable cannot be nil";
LABEL_8:
    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v16 userInfo:0];
    objc_exception_throw(v17);
  }

  v18.receiver = self;
  v18.super_class = ADMagnificationForRadiusLensDistortionModel;
  v13 = [(ADMagnificationForRadiusLensDistortionModel *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_distortionCenter.x = x;
    v13->_distortionCenter.y = y;
    objc_storeStrong(&v13->_lensDistortionLookupTable, a4);
    objc_storeStrong(&v14->_inverseLensDistortionLookupTable, a5);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ADMagnificationForRadiusLensDistortionModel alloc];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  v7 = [(NSData *)self->_lensDistortionLookupTable copy];
  v8 = [(NSData *)self->_inverseLensDistortionLookupTable copy];
  v9 = [(ADMagnificationForRadiusLensDistortionModel *)v4 initWithDistortionCenter:v7 lensDistortionLookupTable:v8 inverseLensDistortionLookupTable:x, y];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distortionCenter.x];
  v4 = [v3 hash];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distortionCenter.y];
  v6 = v4 ^ (2 * [v5 hash]);

  v7 = v6 ^ (3 * [(NSData *)self->_lensDistortionLookupTable hash]);
  return v7 ^ (4 * [(NSData *)self->_inverseLensDistortionLookupTable hash]);
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
    v10 = 1;
    goto LABEL_13;
  }

  if (([(ADMagnificationForRadiusLensDistortionModel *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    x = self->_distortionCenter.x;
    y = self->_distortionCenter.y;
    [(ADMagnificationForRadiusLensDistortionModel *)v6 distortionCenter];
    v10 = 0;
    if (x == v11 && y == v9)
    {
      lensDistortionLookupTable = self->_lensDistortionLookupTable;
      v13 = [(ADMagnificationForRadiusLensDistortionModel *)v6 lensDistortionLookupTable];
      if ([(NSData *)lensDistortionLookupTable isEqualToData:v13])
      {
        inverseLensDistortionLookupTable = self->_inverseLensDistortionLookupTable;
        v15 = [(ADMagnificationForRadiusLensDistortionModel *)v6 inverseLensDistortionLookupTable];
        v10 = [(NSData *)inverseLensDistortionLookupTable isEqualToData:v15];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

LABEL_13:

  return v10;
}

@end