@interface MKMapSnapshotFeatureAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (MKMapSnapshotFeatureAnnotation)initWithCoder:(id)coder;
- (MKMapSnapshotFeatureAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title representation:(int64_t)representation;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKMapSnapshotFeatureAnnotation

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MKMapSnapshotFeatureAnnotation;
  v4 = [(MKMapSnapshotFeatureAnnotation *)&v10 description];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&self->_coordinate.latitude, *&self->_coordinate.longitude];
  v6 = v5;
  if (self->_representation == 1)
  {
    v7 = @"Generic";
  }

  else
  {
    v7 = @"Search";
  }

  v8 = [v3 stringWithFormat:@"%@ coordinate:%@ title:'%@' representation:%@", v4, v5, self->_title, v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  latitude = self->_coordinate.latitude;
  coderCopy = coder;
  [coderCopy encodeDouble:@"coordinate.latitude" forKey:latitude];
  [coderCopy encodeDouble:@"coordinate.longitude" forKey:self->_coordinate.longitude];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInteger:self->_representation forKey:@"representation"];
}

- (MKMapSnapshotFeatureAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"coordinate.latitude"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"coordinate.longitude"];
  v8 = v7;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v10 = [coderCopy decodeIntegerForKey:@"representation"];

  v11 = [(MKMapSnapshotFeatureAnnotation *)self initWithCoordinate:v9 title:v10 representation:v6, v8];
  return v11;
}

- (MKMapSnapshotFeatureAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title representation:(int64_t)representation
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  titleCopy = title;
  v20.receiver = self;
  v20.super_class = MKMapSnapshotFeatureAnnotation;
  v10 = [(MKMapSnapshotFeatureAnnotation *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_representation = representation;
    v10->_coordinate.latitude = latitude;
    v10->_coordinate.longitude = longitude;
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{v11->_coordinate.latitude, v11->_coordinate.longitude}];
    customFeature = v11->_customFeature;
    v11->_customFeature = v14;

    [(VKCustomFeature *)v11->_customFeature setSortKey:0];
    if ([titleCopy length])
    {
      [(VKCustomFeature *)v11->_customFeature setText:titleCopy locale:0];
    }

    annotationViewProvidedCustomFeatureStyleAttributes = [MEMORY[0x1E69A1DB0] annotationViewProvidedCustomFeatureStyleAttributes];
    v17 = annotationViewProvidedCustomFeatureStyleAttributes;
    if (representation == 2)
    {
      v19 = 0x100010022;
      [annotationViewProvidedCustomFeatureStyleAttributes replaceAttributes:&v19 count:1];
    }

    [(VKCustomFeature *)v11->_customFeature setStyleAttributes:v17];
  }

  return v11;
}

@end