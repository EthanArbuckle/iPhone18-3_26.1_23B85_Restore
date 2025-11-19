@interface MKPointAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MKPointAnnotation)init;
- (MKPointAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (MKPointAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle;
- (id)_initWithGeoJSONObject:(id)a3 error:(id *)a4;
- (id)feature;
@end

@implementation MKPointAnnotation

- (id)_initWithGeoJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MKPointAnnotation *)self init];
  if (!v7)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 objectForKeyedSubscript:@"type"];
    v9 = _geoJSONGeometryType(v8);

    if (v9 == 1)
    {
      v10 = [v6 objectForKeyedSubscript:@"coordinates"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v10 count] > 1)
        {
          if ([v10 count] >= 4)
          {
            v14 = MKGetMKGeoJSONSerializationLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_INFO, "GeoJSON positions SHOULD NOT extend positions beyond three elements", buf, 2u);
            }
          }

          v15 = [v10 objectAtIndexedSubscript:0];
          v16 = [v10 objectAtIndexedSubscript:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v16 doubleValue];
            v18 = v17;
            [v15 doubleValue];
            v20 = CLLocationCoordinate2DMake(v18, v19);
            if (fabs(v20.longitude) <= 180.0 && fabs(v20.latitude) <= 90.0)
            {

              [(MKPointAnnotation *)v7 setCoordinate:v20.latitude, v20.longitude];
              v13 = v7;
LABEL_30:

              goto LABEL_31;
            }

            if (a4)
            {
              v22 = MEMORY[0x1E696AEC0];
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&v20.latitude, *&v20.longitude];
              v24 = [v22 stringWithFormat:@"Invalid coordinate position: %@", v23];
              *a4 = _errorWithReason(v24);
            }
          }

          else if (a4)
          {
            *a4 = _errorWithReason(@"GeoJSON positions must be an array of numbers");
          }
        }

        else if (a4)
        {
          v11 = @"GeoJSON positions must have at least two values";
LABEL_16:
          *a4 = _errorWithReason(v11);
        }
      }

      else if (a4)
      {
        v11 = @"coordinate value is not an array";
        goto LABEL_16;
      }

      v13 = 0;
      goto LABEL_30;
    }

    if (a4)
    {
      v12 = @"Input is not a Point GeoJSON object";
      goto LABEL_12;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_31;
  }

  if (!a4)
  {
    goto LABEL_13;
  }

  v12 = @"Point object must be a dictionary";
LABEL_12:
  _errorWithReason(v12);
  *a4 = v13 = 0;
LABEL_31:

  return v13;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)feature
{
  customFeature = self->_customFeature;
  if (!customFeature)
  {
    if (self->_representation)
    {
      v4 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{self->_coordinate.latitude, self->_coordinate.longitude}];
      v5 = self->_customFeature;
      self->_customFeature = v4;

      v6 = [(MKShape *)self title];
      v7 = [v6 length];

      v8 = self->_customFeature;
      if (v7)
      {
        v9 = [(MKShape *)self title];
        [(VKCustomFeature *)v8 setText:v9 locale:0];
      }

      else
      {
        [(VKCustomFeature *)self->_customFeature setText:@" " locale:0];
      }

      v10 = [(MKShape *)self subtitle];
      v11 = [v10 length];

      if (v11)
      {
        v12 = self->_customFeature;
        v13 = [(MKShape *)self subtitle];
        [(VKCustomFeature *)v12 setAnnotationText:v13 locale:0];
      }

      v14 = [MEMORY[0x1E69A1DB0] genericMarkerStyleAttributes];
      v15 = v14;
      if (self->_representation == 2)
      {
        v17 = 0x100010022;
        [v14 replaceAttributes:&v17 count:1];
      }

      [(VKCustomFeature *)self->_customFeature setStyleAttributes:v15];

      customFeature = self->_customFeature;
    }

    else
    {
      customFeature = 0;
    }
  }

  return customFeature;
}

- (MKPointAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = title;
  v10 = subtitle;
  v11 = [(MKPointAnnotation *)self init];
  v12 = v11;
  if (v11)
  {
    [(MKPointAnnotation *)v11 setCoordinate:latitude, longitude];
    [(MKShape *)v12 setTitle:v9];
    [(MKShape *)v12 setSubtitle:v10];
    v13 = v12;
  }

  return v12;
}

- (MKPointAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v5 = [(MKPointAnnotation *)self init];
  v6 = v5;
  if (v5)
  {
    [(MKPointAnnotation *)v5 setCoordinate:latitude, longitude];
    v7 = v6;
  }

  return v6;
}

- (MKPointAnnotation)init
{
  v3.receiver = self;
  v3.super_class = MKPointAnnotation;
  return [(MKPointAnnotation *)&v3 init];
}

@end