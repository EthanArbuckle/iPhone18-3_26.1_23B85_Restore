@interface _MKMapItemCustomFeature
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_MKMapItemCustomFeature)initWithCoder:(id)a3;
- (_MKMapItemCustomFeature)initWithMapItem:(id)a3;
- (void)deselect;
- (void)encodeWithCoder:(id)a3;
- (void)select;
@end

@implementation _MKMapItemCustomFeature

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)select
{
  styleAttributes = self->_styleAttributes;
  v5 = 0x100010025;
  v4 = styleAttributes;
  [(GEOFeatureStyleAttributes *)v4 replaceAttributes:&v5 count:1];
  [(VKCustomFeature *)self->_feature setStyleAttributes:v4];
}

- (void)deselect
{
  styleAttributes = self->_styleAttributes;
  v5 = 65573;
  v4 = styleAttributes;
  [(GEOFeatureStyleAttributes *)v4 replaceAttributes:&v5 count:1];
  [(VKCustomFeature *)self->_feature setStyleAttributes:v4];
}

- (_MKMapItemCustomFeature)initWithMapItem:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _MKMapItemCustomFeature;
  v5 = [(_MKMapItemCustomFeature *)&v17 init];
  if (v5)
  {
    v6 = [v4 location];
    [v6 coordinate];
    v5->_coordinate.latitude = v7;

    v8 = [v4 location];
    [v8 coordinate];
    v5->_coordinate.longitude = v9;

    v10 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{v5->_coordinate.latitude, v5->_coordinate.longitude}];
    feature = v5->_feature;
    v5->_feature = v10;

    v12 = v5->_feature;
    v13 = [v4 name];
    [(VKCustomFeature *)v12 setText:v13 locale:0];

    v14 = [v4 _styleAttributes];
    v18[0] = xmmword_1A30F77E0;
    v18[1] = unk_1A30F77F0;
    v18[2] = xmmword_1A30F7800;
    [v14 replaceAttributes:v18 count:6];
    [(VKCustomFeature *)v5->_feature setStyleAttributes:v14];
    -[VKCustomFeature setBusinessID:](v5->_feature, "setBusinessID:", [v4 _muid]);
    -[VKCustomFeature setFeatureID:](v5->_feature, "setFeatureID:", [v4 _customIconID]);
    styleAttributes = v5->_styleAttributes;
    v5->_styleAttributes = v14;
  }

  return v5;
}

- (_MKMapItemCustomFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _MKMapItemCustomFeature;
  v5 = [(_MKMapItemCustomFeature *)&v13 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"coordinate.latitude"];
    v5->_coordinate.latitude = v6;
    [v4 decodeDoubleForKey:@"coordinate.longitude"];
    v5->_coordinate.longitude = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feature"];
    feature = v5->_feature;
    v5->_feature = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"styleAttributes"];
    styleAttributes = v5->_styleAttributes;
    v5->_styleAttributes = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  latitude = self->_coordinate.latitude;
  v5 = a3;
  [v5 encodeDouble:@"coordinate.latitude" forKey:latitude];
  [v5 encodeDouble:@"coordinate.longitude" forKey:self->_coordinate.longitude];
  [v5 encodeObject:self->_feature forKey:@"feature"];
  [v5 encodeObject:self->_styleAttributes forKey:@"styleAttributes"];
}

@end