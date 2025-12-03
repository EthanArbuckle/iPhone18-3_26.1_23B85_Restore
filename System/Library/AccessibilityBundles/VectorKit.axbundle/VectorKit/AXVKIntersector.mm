@interface AXVKIntersector
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinates;
- (AXVKIntersector)initWithFeature:(id)feature coordinates:(id)coordinates isDeadEnd:(BOOL)end;
- (AXVKIntersector)initWithFeatureWrapper:(id)wrapper coordinates:(id)coordinates isDeadEnd:(BOOL)end;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation AXVKIntersector

- (AXVKIntersector)initWithFeatureWrapper:(id)wrapper coordinates:(id)coordinates isDeadEnd:(BOOL)end
{
  var1 = coordinates.var1;
  var0 = coordinates.var0;
  wrapperCopy = wrapper;
  v14.receiver = self;
  v14.super_class = AXVKIntersector;
  v11 = [(AXVKIntersector *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_featureWrapper, wrapper);
    v12->_coordinates.latitude = var0;
    v12->_coordinates.longitude = var1;
    v12->_isDeadEnd = end;
  }

  return v12;
}

- (AXVKIntersector)initWithFeature:(id)feature coordinates:(id)coordinates isDeadEnd:(BOOL)end
{
  endCopy = end;
  var1 = coordinates.var1;
  var0 = coordinates.var0;
  featureCopy = feature;
  v10 = [[AXVKMultiSectionFeatureWrapper alloc] initWithFeature:featureCopy];
  var1 = [(AXVKIntersector *)self initWithFeatureWrapper:v10 coordinates:endCopy isDeadEnd:var0, var1];

  return var1;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  featureName = [(AXVKMultiSectionFeatureWrapper *)self->_featureWrapper featureName];
  v6 = [v3 stringWithFormat:@"%@:%p: %@ - (%f, %f)", v4, self, featureName, *&self->_coordinates.latitude, *&self->_coordinates.longitude];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      featureWrapper = [(AXVKIntersector *)v5 featureWrapper];
      IsSameRoad = GEOMultiSectionFeatureIsSameRoad();

      latitude = self->_coordinates.latitude;
      [(AXVKIntersector *)v5 coordinates];
      v10 = v9;
      longitude = self->_coordinates.longitude;
      [(AXVKIntersector *)v5 coordinates];
      v13 = vabdd_f64(longitude, v12);
      if (vabdd_f64(latitude, v10) < 0.001)
      {
        v14 = IsSameRoad;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13 < 0.001 && v14;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  feature = [(GEOMultiSectionFeature *)self->_featureWrapper->_feature feature];
  v4 = AXVKFeatureLabelsAndShieldsHash(feature);

  return (self->_coordinates.longitude + (53 * (self->_coordinates.latitude + (53 * v4 + 2809))));
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinates
{
  latitude = self->_coordinates.latitude;
  longitude = self->_coordinates.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end