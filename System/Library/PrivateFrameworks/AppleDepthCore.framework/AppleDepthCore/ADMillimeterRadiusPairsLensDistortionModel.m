@interface ADMillimeterRadiusPairsLensDistortionModel
- (ADMillimeterRadiusPairsLensDistortionModel)initWithDictionary:(id)a3;
- (ADMillimeterRadiusPairsLensDistortionModel)initWithDistortionCenter:(CGPoint)a3 distortedRadii:(id)a4 undistortedRadii:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CGPoint)distortionCenter;
- (float)applyDistortionModelToPixels:(double)a3 inPixels:(double)a4 intrinsicsMatrix:(float)a5 pixelSize:(uint64_t)a6 distort:(uint64_t)a7 outPixels:(char *)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation:(BOOL)a3;
- (unint64_t)hash;
- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6;
- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6;
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

- (id)dictionaryRepresentation:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(self->_distortionCenter);
  [v5 setObject:DictionaryRepresentation forKeyedSubscript:@"lensDistortionCenter"];

  if (v3)
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

- (ADMillimeterRadiusPairsLensDistortionModel)initWithDictionary:(id)a3
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
        self = [(ADMillimeterRadiusPairsLensDistortionModel *)self initWithDistortionCenter:v6 distortedRadii:v10 undistortedRadii:self->_distortionCenter.x, self->_distortionCenter.y];
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
  [v18 pixelSize];
  LODWORD(v14) = v13;
  [(ADMillimeterRadiusPairsLensDistortionModel *)self applyDistortionModelToPixels:a3 inPixels:a4 intrinsicsMatrix:0 pixelSize:a6 distort:v17 outPixels:v16, v15, v14];
}

- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6
{
  v18 = a5;
  [v18 intrinsicMatrix];
  v16 = v11;
  v17 = v10;
  v15 = v12;
  [v18 pixelSize];
  LODWORD(v14) = v13;
  [(ADMillimeterRadiusPairsLensDistortionModel *)self applyDistortionModelToPixels:a3 inPixels:a4 intrinsicsMatrix:1 pixelSize:a6 distort:v17 outPixels:v16, v15, v14];
}

- (float)applyDistortionModelToPixels:(double)a3 inPixels:(double)a4 intrinsicsMatrix:(float)a5 pixelSize:(uint64_t)a6 distort:(uint64_t)a7 outPixels:(char *)a8
{
  v16 = (a1 + 8);
  v17 = [*(a1 + 8) length];
  if (v17 > 3)
  {
    v19 = v17;
    if (a9)
    {
      v20 = [*(a1 + 16) bytes];
    }

    else
    {
      v20 = [*(a1 + 8) bytes];
      v16 = (a1 + 16);
    }

    result = [*v16 bytes];
    if (a7)
    {
      v21 = 0;
      v22 = *(&a4 + 1);
      v23 = a5;
      v24 = (v19 >> 2) - 1;
      do
      {
        v25 = &a8[16 * v21];
        if (a9)
        {
          v26 = *(a1 + 24);
          v27 = v25[1] - *(a1 + 32);
        }

        else
        {
          v27 = v25[1] - v22;
          v26 = *&a4;
        }

        v28 = (*v25 - v26) * v23;
        v29 = v27 * v23;
        v30 = sqrt(v29 * v29 + v28 * v28);
        v31 = 1.0;
        if (v30 != 0.0)
        {
          v32 = *(v20 + 4 * v24);
          v33 = v19 >> 2;
          v34 = v20;
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
            v31 = (*(v34 + result - v20 - 4) + ((*(v34 + result - v20) - *(v34 + result - v20 - 4)) / (*v34 - *(v34 - 1))) * (v30 - *(v34 - 1))) / v30;
          }
        }

        v39 = v29 * v31 / v23;
        if (a9)
        {
          v40 = v39 + v22;
          v41 = *&a4;
        }

        else
        {
          v41 = *(a1 + 24);
          v40 = v39 + *(a1 + 32);
        }

        v42 = &a10[16 * v21];
        *v42 = v28 * v31 / v23 + v41;
        v42[1] = v40;
        ++v21;
      }

      while (v21 != a7);
    }
  }

  else
  {

    return memcpy(a10, a8, 16 * a7);
  }

  return result;
}

- (ADMillimeterRadiusPairsLensDistortionModel)initWithDistortionCenter:(CGPoint)a3 distortedRadii:(id)a4 undistortedRadii:(id)a5
{
  y = a3.y;
  x = a3.x;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10)
  {
    v17 = @"distortedRadii cannot be nil";
    goto LABEL_13;
  }

  if (!v11)
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

  v14 = [v10 length];
  if (v14 == [v12 length])
  {
    v13->_distortionCenter.x = x;
    v13->_distortionCenter.y = y;
    objc_storeStrong(&v13->_distortedRadii, a4);
    objc_storeStrong(&v13->_undistortedRadii, a5);
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

- (id)copyWithZone:(_NSZone *)a3
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

  if (([(ADMillimeterRadiusPairsLensDistortionModel *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    x = self->_distortionCenter.x;
    y = self->_distortionCenter.y;
    [(ADMillimeterRadiusPairsLensDistortionModel *)v6 distortionCenter];
    v10 = 0;
    if (x == v11 && y == v9)
    {
      distortedRadii = self->_distortedRadii;
      v13 = [(ADMillimeterRadiusPairsLensDistortionModel *)v6 distortedRadii];
      if ([(NSData *)distortedRadii isEqualToData:v13])
      {
        undistortedRadii = self->_undistortedRadii;
        v15 = [(ADMillimeterRadiusPairsLensDistortionModel *)v6 undistortedRadii];
        v10 = [(NSData *)undistortedRadii isEqualToData:v15];
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