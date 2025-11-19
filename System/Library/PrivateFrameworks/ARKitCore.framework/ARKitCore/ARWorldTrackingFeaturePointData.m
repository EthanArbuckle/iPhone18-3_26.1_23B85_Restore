@interface ARWorldTrackingFeaturePointData
- (ARWorldTrackingFeaturePointData)initWithCoder:(id)a3;
- (ARWorldTrackingFeaturePointData)initWithTimestamp:(double)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setVisionFeaturePoints:(id)a3;
@end

@implementation ARWorldTrackingFeaturePointData

- (ARWorldTrackingFeaturePointData)initWithTimestamp:(double)a3
{
  v5.receiver = self;
  v5.super_class = ARWorldTrackingFeaturePointData;
  result = [(ARWorldTrackingFeaturePointData *)&v5 init];
  if (result)
  {
    result->_timestamp = a3;
  }

  return result;
}

- (void)setVisionFeaturePoints:(id)a3
{
  objc_storeStrong(&self->_visionFeaturePoints, a3);
  v5 = a3;
  v7 = [(ARPointCloud *)self->_visionFeaturePoints pointCloudByApplyingTransform:ARVisionToRenderingCoordinateTransform()];
  if ([v7 count])
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&self->_featurePoints, v6);
}

- (ARWorldTrackingFeaturePointData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ARWorldTrackingFeaturePointData;
  v5 = [(ARWorldTrackingFeaturePointData *)&v12 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visionFeaturePoints"];
    visionFeaturePoints = v5->_visionFeaturePoints;
    v5->_visionFeaturePoints = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featurePoints"];
    featurePoints = v5->_featurePoints;
    v5->_featurePoints = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 encodeObject:self->_visionFeaturePoints forKey:@"visionFeaturePoints"];
  [v5 encodeObject:self->_featurePoints forKey:@"featurePoints"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (vabdd_f64(self->_timestamp, *(v5 + 1)) < 2.22044605e-16 && ((visionFeaturePoints = self->_visionFeaturePoints, visionFeaturePoints == *(v5 + 2)) || [(ARPointCloud *)visionFeaturePoints isEqual:?]))
    {
      featurePoints = self->_featurePoints;
      if (featurePoints == *(v5 + 3))
      {
        v8 = 1;
      }

      else
      {
        v8 = [(ARPointCloud *)featurePoints isEqual:?];
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

@end