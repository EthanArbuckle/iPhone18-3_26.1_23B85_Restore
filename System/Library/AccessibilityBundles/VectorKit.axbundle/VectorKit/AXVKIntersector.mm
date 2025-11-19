@interface AXVKIntersector
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinates;
- (AXVKIntersector)initWithFeature:(id)a3 coordinates:(id)a4 isDeadEnd:(BOOL)a5;
- (AXVKIntersector)initWithFeatureWrapper:(id)a3 coordinates:(id)a4 isDeadEnd:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation AXVKIntersector

- (AXVKIntersector)initWithFeatureWrapper:(id)a3 coordinates:(id)a4 isDeadEnd:(BOOL)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = AXVKIntersector;
  v11 = [(AXVKIntersector *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_featureWrapper, a3);
    v12->_coordinates.latitude = var0;
    v12->_coordinates.longitude = var1;
    v12->_isDeadEnd = a5;
  }

  return v12;
}

- (AXVKIntersector)initWithFeature:(id)a3 coordinates:(id)a4 isDeadEnd:(BOOL)a5
{
  v5 = a5;
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v10 = [[AXVKMultiSectionFeatureWrapper alloc] initWithFeature:v9];
  v11 = [(AXVKIntersector *)self initWithFeatureWrapper:v10 coordinates:v5 isDeadEnd:var0, var1];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = [(AXVKMultiSectionFeatureWrapper *)self->_featureWrapper featureName];
  v6 = [v3 stringWithFormat:@"%@:%p: %@ - (%f, %f)", v4, self, v5, *&self->_coordinates.latitude, *&self->_coordinates.longitude];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXVKIntersector *)v5 featureWrapper];
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
  v3 = [(GEOMultiSectionFeature *)self->_featureWrapper->_feature feature];
  v4 = AXVKFeatureLabelsAndShieldsHash(v3);

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