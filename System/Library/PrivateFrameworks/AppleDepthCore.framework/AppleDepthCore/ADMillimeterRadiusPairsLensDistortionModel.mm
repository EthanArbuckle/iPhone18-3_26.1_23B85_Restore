@interface ADMillimeterRadiusPairsLensDistortionModel
- (ADMillimeterRadiusPairsLensDistortionModel)initWithDictionary:(id)dictionary;
- (ADMillimeterRadiusPairsLensDistortionModel)initWithDistortionCenter:(CGPoint)center distortedRadii:(id)radii undistortedRadii:(id)undistortedRadii;
- (BOOL)isEqual:(id)equal;
- (CGPoint)distortionCenter;
- (float)applyDistortionModelToPixels:(double)pixels inPixels:(double)inPixels intrinsicsMatrix:(float)matrix pixelSize:(uint64_t)size distort:(uint64_t)distort outPixels:(char *)outPixels;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation:(BOOL)representation;
- (unint64_t)hash;
- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withCameraCalibration:(id)calibration outDistortedPixels:(CGPoint *)distortedPixels;
- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withCameraCalibration:(id)calibration outUndistortedPixels:(CGPoint *)undistortedPixels;
@end

@implementation ADMillimeterRadiusPairsLensDistortionModel

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
    v7 = dataToFloatsArray(self->_distortedRadii);
    [v5 setObject:v7 forKeyedSubscript:@"distortedRadii"];

    v8 = dataToFloatsArray(self->_undistortedRadii);
    [v5 setObject:v8 forKeyedSubscript:@"undistortedRadii"];
  }

  else
  {
    [v5 setObject:self->_distortedRadii forKeyedSubscript:@"distortedRadii"];
    [v5 setObject:self->_undistortedRadii forKeyedSubscript:@"undistortedRadii"];
  }

  return v5;
}

- (ADMillimeterRadiusPairsLensDistortionModel)initWithDictionary:(id)dictionary
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
        self = [(ADMillimeterRadiusPairsLensDistortionModel *)self initWithDistortionCenter:v6 distortedRadii:v10 undistortedRadii:self->_distortionCenter.x, self->_distortionCenter.y];
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
  [calibrationCopy pixelSize];
  LODWORD(v14) = v13;
  [(ADMillimeterRadiusPairsLensDistortionModel *)self applyDistortionModelToPixels:pixels inPixels:distortedPixels intrinsicsMatrix:0 pixelSize:undistortedPixels distort:v17 outPixels:v16, v15, v14];
}

- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withCameraCalibration:(id)calibration outDistortedPixels:(CGPoint *)distortedPixels
{
  calibrationCopy = calibration;
  [calibrationCopy intrinsicMatrix];
  v16 = v11;
  v17 = v10;
  v15 = v12;
  [calibrationCopy pixelSize];
  LODWORD(v14) = v13;
  [(ADMillimeterRadiusPairsLensDistortionModel *)self applyDistortionModelToPixels:pixels inPixels:undistortedPixels intrinsicsMatrix:1 pixelSize:distortedPixels distort:v17 outPixels:v16, v15, v14];
}

- (float)applyDistortionModelToPixels:(double)pixels inPixels:(double)inPixels intrinsicsMatrix:(float)matrix pixelSize:(uint64_t)size distort:(uint64_t)distort outPixels:(char *)outPixels
{
  v16 = (self + 8);
  v17 = [*(self + 8) length];
  if (v17 > 3)
  {
    v19 = v17;
    if (a9)
    {
      bytes = [*(self + 16) bytes];
    }

    else
    {
      bytes = [*(self + 8) bytes];
      v16 = (self + 16);
    }

    result = [*v16 bytes];
    if (distort)
    {
      v21 = 0;
      v22 = *(&inPixels + 1);
      matrixCopy = matrix;
      v24 = (v19 >> 2) - 1;
      do
      {
        v25 = &outPixels[16 * v21];
        if (a9)
        {
          v26 = *(self + 24);
          v27 = v25[1] - *(self + 32);
        }

        else
        {
          v27 = v25[1] - v22;
          v26 = *&inPixels;
        }

        v28 = (*v25 - v26) * matrixCopy;
        v29 = v27 * matrixCopy;
        v30 = sqrt(v29 * v29 + v28 * v28);
        v31 = 1.0;
        if (v30 != 0.0)
        {
          v32 = *(bytes + 4 * v24);
          v33 = v19 >> 2;
          v34 = bytes;
          if (v30 >= v32)
          {
            if (v32 != 0.0)
            {
              v31 = (result[v24] / v32);
            }
          }

          else
          {
            do
            {
              v35 = v33 >> 1;
              v36 = &v34[v33 >> 1];
              v38 = *v36;
              v37 = v36 + 1;
              v33 += ~(v33 >> 1);
              if (v30 < v38)
              {
                v33 = v35;
              }

              else
              {
                v34 = v37;
              }
            }

            while (v33);
            v31 = (*(v34 + result - bytes - 4) + ((*(v34 + result - bytes) - *(v34 + result - bytes - 4)) / (*v34 - *(v34 - 1))) * (v30 - *(v34 - 1))) / v30;
          }
        }

        v39 = v29 * v31 / matrixCopy;
        if (a9)
        {
          v40 = v39 + v22;
          v41 = *&inPixels;
        }

        else
        {
          v41 = *(self + 24);
          v40 = v39 + *(self + 32);
        }

        v42 = &a10[16 * v21];
        *v42 = v28 * v31 / matrixCopy + v41;
        v42[1] = v40;
        ++v21;
      }

      while (v21 != distort);
    }
  }

  else
  {

    return memcpy(a10, outPixels, 16 * distort);
  }

  return result;
}

- (ADMillimeterRadiusPairsLensDistortionModel)initWithDistortionCenter:(CGPoint)center distortedRadii:(id)radii undistortedRadii:(id)undistortedRadii
{
  y = center.y;
  x = center.x;
  radiiCopy = radii;
  undistortedRadiiCopy = undistortedRadii;
  v12 = undistortedRadiiCopy;
  if (!radiiCopy)
  {
    v17 = @"distortedRadii cannot be nil";
    goto LABEL_13;
  }

  if (!undistortedRadiiCopy)
  {
    v17 = @"undistortedRadii cannot be nil";
LABEL_13:
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  v20.receiver = self;
  v20.super_class = ADMillimeterRadiusPairsLensDistortionModel;
  v13 = [(ADMillimeterRadiusPairsLensDistortionModel *)&v20 init];
  if (!v13)
  {
LABEL_6:
    v15 = v13;
    goto LABEL_10;
  }

  v14 = [radiiCopy length];
  if (v14 == [v12 length])
  {
    v13->_distortionCenter.x = x;
    v13->_distortionCenter.y = y;
    objc_storeStrong(&v13->_distortedRadii, radii);
    objc_storeStrong(&v13->_undistortedRadii, undistortedRadii);
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v19 = 0;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADMillimeterRadiusPairsLensDistortionModel: cannot init when distorted and undistorted radii are not with the same length", v19, 2u);
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ADMillimeterRadiusPairsLensDistortionModel alloc];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  v7 = [(NSData *)self->_distortedRadii copy];
  v8 = [(NSData *)self->_undistortedRadii copy];
  v9 = [(ADMillimeterRadiusPairsLensDistortionModel *)v4 initWithDistortionCenter:v7 distortedRadii:v8 undistortedRadii:x, y];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distortionCenter.x];
  v4 = [v3 hash];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distortionCenter.y];
  v6 = v4 ^ (2 * [v5 hash]);

  v7 = v6 ^ (3 * [(NSData *)self->_distortedRadii hash]);
  return v7 ^ (4 * [(NSData *)self->_undistortedRadii hash]);
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

  if (([(ADMillimeterRadiusPairsLensDistortionModel *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    x = self->_distortionCenter.x;
    y = self->_distortionCenter.y;
    [(ADMillimeterRadiusPairsLensDistortionModel *)v6 distortionCenter];
    v10 = 0;
    if (x == v11 && y == v9)
    {
      distortedRadii = self->_distortedRadii;
      distortedRadii = [(ADMillimeterRadiusPairsLensDistortionModel *)v6 distortedRadii];
      if ([(NSData *)distortedRadii isEqualToData:distortedRadii])
      {
        undistortedRadii = self->_undistortedRadii;
        undistortedRadii = [(ADMillimeterRadiusPairsLensDistortionModel *)v6 undistortedRadii];
        v10 = [(NSData *)undistortedRadii isEqualToData:undistortedRadii];
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