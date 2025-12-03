@interface ADMagnificationForRadiusLensDistortionModel
- (ADMagnificationForRadiusLensDistortionModel)initWithDictionary:(id)dictionary;
- (ADMagnificationForRadiusLensDistortionModel)initWithDistortionCenter:(CGPoint)center lensDistortionLookupTable:(id)table inverseLensDistortionLookupTable:(id)lookupTable;
- (BOOL)isEqual:(id)equal;
- (CGPoint)distortionCenter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation:(BOOL)representation;
- (uint64_t)applyDistortionModelToPixels:(double)pixels inPixels:(double)inPixels intrinsicsMatrix:(double)matrix referenceDimensions:(double)dimensions magnificationLookupTable:(uint64_t)table outPixels:(uint64_t)outPixels;
- (unint64_t)hash;
- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withCameraCalibration:(id)calibration outDistortedPixels:(CGPoint *)distortedPixels;
- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withCameraCalibration:(id)calibration outUndistortedPixels:(CGPoint *)undistortedPixels;
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

- (id)dictionaryRepresentation:(BOOL)representation
{
  representationCopy = representation;
  v5 = objc_opt_new();
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(self->_distortionCenter);
  [v5 setObject:DictionaryRepresentation forKeyedSubscript:@"lensDistortionCenter"];

  if (representationCopy)
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

- (ADMagnificationForRadiusLensDistortionModel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (getDistortionCenterFromDictionary(dictionaryCopy, &self->_distortionCenter))
  {
    v5 = [(NSDictionary *)dictionaryCopy objectForKeyedSubscript:@"distortedRadii"];
    v6 = getTableAsNSData(v5);

    if ((v6 || (-[NSDictionary objectForKeyedSubscript:](dictionaryCopy, "objectForKeyedSubscript:", @"lensDistortionLookupTable"), v7 = objc_claimAutoreleasedReturnValue(), getTableAsNSData(v7), v6 = objc_claimAutoreleasedReturnValue(), v7, v6)) && ([v6 length] & 3) == 0)
    {
      v9 = [(NSDictionary *)dictionaryCopy objectForKeyedSubscript:@"undistortedRadii"];
      v10 = getTableAsNSData(v9);

      if ((v10 || (-[NSDictionary objectForKeyedSubscript:](dictionaryCopy, "objectForKeyedSubscript:", @"inverseLensDistortionLookupTable"), v11 = objc_claimAutoreleasedReturnValue(), getTableAsNSData(v11), v10 = objc_claimAutoreleasedReturnValue(), v11, v10)) && ([v10 length] & 3) == 0)
      {
        self = [(ADMagnificationForRadiusLensDistortionModel *)self initWithDistortionCenter:v6 lensDistortionLookupTable:v10 inverseLensDistortionLookupTable:self->_distortionCenter.x, self->_distortionCenter.y];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withCameraCalibration:(id)calibration outUndistortedPixels:(CGPoint *)undistortedPixels
{
  calibrationCopy = calibration;
  [calibrationCopy intrinsicMatrix];
  v16 = v11;
  v17 = v10;
  v15 = v12;
  [calibrationCopy referenceDimensions];
  [(ADMagnificationForRadiusLensDistortionModel *)self applyDistortionModelToPixels:pixels inPixels:distortedPixels intrinsicsMatrix:self->_lensDistortionLookupTable referenceDimensions:undistortedPixels magnificationLookupTable:v17 outPixels:v16, v15, v13, v14];
}

- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withCameraCalibration:(id)calibration outDistortedPixels:(CGPoint *)distortedPixels
{
  calibrationCopy = calibration;
  [calibrationCopy intrinsicMatrix];
  v16 = v11;
  v17 = v10;
  v15 = v12;
  [calibrationCopy referenceDimensions];
  [(ADMagnificationForRadiusLensDistortionModel *)self applyDistortionModelToPixels:pixels inPixels:undistortedPixels intrinsicsMatrix:self->_inverseLensDistortionLookupTable referenceDimensions:distortedPixels magnificationLookupTable:v17 outPixels:v16, v15, v13, v14];
}

- (uint64_t)applyDistortionModelToPixels:(double)pixels inPixels:(double)inPixels intrinsicsMatrix:(double)matrix referenceDimensions:(double)dimensions magnificationLookupTable:(uint64_t)table outPixels:(uint64_t)outPixels
{
  v17 = a10;
  v18 = *(self + 24);
  v19 = *(self + 32);
  if (v18 <= matrix - v18)
  {
    v20 = matrix - v18;
  }

  else
  {
    v20 = *(self + 24);
  }

  if (v19 <= dimensions - v19)
  {
    v21 = dimensions - v19;
  }

  else
  {
    v21 = *(self + 32);
  }

  v35 = v17;
  bytes = [v35 bytes];
  v23 = [v35 length];
  if (v23 > 3)
  {
    v24 = v35;
    if (outPixels)
    {
      v25 = v20;
      v26 = v21;
      v27 = sqrtf((v26 * v26) + (v25 * v25));
      v28 = (v23 >> 2) - 1;
      do
      {
        v29 = *(self + 24);
        v30 = vcvt_f32_f64(vsubq_f64(*a9, v29));
        v31 = sqrtf(COERCE_FLOAT(vmul_f32(v30, v30).i32[1]) + (v30.f32[0] * v30.f32[0]));
        if (v31 >= v27)
        {
          v33 = *(bytes + 4 * v28);
        }

        else
        {
          v32 = (v28 / v27) * v31;
          v33 = ((v32 - v32) * *(bytes + 4 * v32 + 4)) + ((1.0 - (v32 - v32)) * *(bytes + 4 * v32));
        }

        *a11++ = vaddq_f64(v29, vcvtq_f64_f32(vmla_n_f32(v30, v30, v33)));
        ++a9;
        --outPixels;
      }

      while (outPixels);
    }
  }

  else
  {
    v23 = memcpy(a11, a9, 16 * outPixels);
    v24 = v35;
  }

  return MEMORY[0x2821F96F8](v23, v24);
}

- (ADMagnificationForRadiusLensDistortionModel)initWithDistortionCenter:(CGPoint)center lensDistortionLookupTable:(id)table inverseLensDistortionLookupTable:(id)lookupTable
{
  y = center.y;
  x = center.x;
  tableCopy = table;
  lookupTableCopy = lookupTable;
  v12 = lookupTableCopy;
  if (!tableCopy)
  {
    v16 = @"lensDistortionLookupTable cannot be nil";
    goto LABEL_8;
  }

  if (!lookupTableCopy)
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
    objc_storeStrong(&v13->_lensDistortionLookupTable, table);
    objc_storeStrong(&v14->_inverseLensDistortionLookupTable, lookupTable);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_8;
  }

  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_13;
  }

  if (([(ADMagnificationForRadiusLensDistortionModel *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    x = self->_distortionCenter.x;
    y = self->_distortionCenter.y;
    [(ADMagnificationForRadiusLensDistortionModel *)v6 distortionCenter];
    v10 = 0;
    if (x == v11 && y == v9)
    {
      lensDistortionLookupTable = self->_lensDistortionLookupTable;
      lensDistortionLookupTable = [(ADMagnificationForRadiusLensDistortionModel *)v6 lensDistortionLookupTable];
      if ([(NSData *)lensDistortionLookupTable isEqualToData:lensDistortionLookupTable])
      {
        inverseLensDistortionLookupTable = self->_inverseLensDistortionLookupTable;
        inverseLensDistortionLookupTable = [(ADMagnificationForRadiusLensDistortionModel *)v6 inverseLensDistortionLookupTable];
        v10 = [(NSData *)inverseLensDistortionLookupTable isEqualToData:inverseLensDistortionLookupTable];
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