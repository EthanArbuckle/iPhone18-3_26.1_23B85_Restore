@interface ARWorldTrackingFeaturePointData
- (ARWorldTrackingFeaturePointData)initWithCoder:(id)coder;
- (ARWorldTrackingFeaturePointData)initWithTimestamp:(double)timestamp;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
- (void)setVisionFeaturePoints:(id)points;
@end

@implementation ARWorldTrackingFeaturePointData

- (ARWorldTrackingFeaturePointData)initWithTimestamp:(double)timestamp
{
  v5.receiver = self;
  v5.super_class = ARWorldTrackingFeaturePointData;
  result = [(ARWorldTrackingFeaturePointData *)&v5 init];
  if (result)
  {
    result->_timestamp = timestamp;
  }

  return result;
}

- (void)setVisionFeaturePoints:(id)points
{
  objc_storeStrong(&self->_visionFeaturePoints, points);
  pointsCopy = points;
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

- (ARWorldTrackingFeaturePointData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ARWorldTrackingFeaturePointData;
  v5 = [(ARWorldTrackingFeaturePointData *)&v12 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visionFeaturePoints"];
    visionFeaturePoints = v5->_visionFeaturePoints;
    v5->_visionFeaturePoints = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featurePoints"];
    featurePoints = v5->_featurePoints;
    v5->_featurePoints = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeObject:self->_visionFeaturePoints forKey:@"visionFeaturePoints"];
  [coderCopy encodeObject:self->_featurePoints forKey:@"featurePoints"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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