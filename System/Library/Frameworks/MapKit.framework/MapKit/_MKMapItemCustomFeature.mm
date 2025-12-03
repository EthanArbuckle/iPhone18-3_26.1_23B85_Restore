@interface _MKMapItemCustomFeature
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_MKMapItemCustomFeature)initWithCoder:(id)coder;
- (_MKMapItemCustomFeature)initWithMapItem:(id)item;
- (void)deselect;
- (void)encodeWithCoder:(id)coder;
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

- (_MKMapItemCustomFeature)initWithMapItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = _MKMapItemCustomFeature;
  v5 = [(_MKMapItemCustomFeature *)&v17 init];
  if (v5)
  {
    location = [itemCopy location];
    [location coordinate];
    v5->_coordinate.latitude = v7;

    location2 = [itemCopy location];
    [location2 coordinate];
    v5->_coordinate.longitude = v9;

    v10 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{v5->_coordinate.latitude, v5->_coordinate.longitude}];
    feature = v5->_feature;
    v5->_feature = v10;

    v12 = v5->_feature;
    name = [itemCopy name];
    [(VKCustomFeature *)v12 setText:name locale:0];

    _styleAttributes = [itemCopy _styleAttributes];
    v18[0] = xmmword_1A30F77E0;
    v18[1] = unk_1A30F77F0;
    v18[2] = xmmword_1A30F7800;
    [_styleAttributes replaceAttributes:v18 count:6];
    [(VKCustomFeature *)v5->_feature setStyleAttributes:_styleAttributes];
    -[VKCustomFeature setBusinessID:](v5->_feature, "setBusinessID:", [itemCopy _muid]);
    -[VKCustomFeature setFeatureID:](v5->_feature, "setFeatureID:", [itemCopy _customIconID]);
    styleAttributes = v5->_styleAttributes;
    v5->_styleAttributes = _styleAttributes;
  }

  return v5;
}

- (_MKMapItemCustomFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _MKMapItemCustomFeature;
  v5 = [(_MKMapItemCustomFeature *)&v13 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"coordinate.latitude"];
    v5->_coordinate.latitude = v6;
    [coderCopy decodeDoubleForKey:@"coordinate.longitude"];
    v5->_coordinate.longitude = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feature"];
    feature = v5->_feature;
    v5->_feature = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"styleAttributes"];
    styleAttributes = v5->_styleAttributes;
    v5->_styleAttributes = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  latitude = self->_coordinate.latitude;
  coderCopy = coder;
  [coderCopy encodeDouble:@"coordinate.latitude" forKey:latitude];
  [coderCopy encodeDouble:@"coordinate.longitude" forKey:self->_coordinate.longitude];
  [coderCopy encodeObject:self->_feature forKey:@"feature"];
  [coderCopy encodeObject:self->_styleAttributes forKey:@"styleAttributes"];
}

@end