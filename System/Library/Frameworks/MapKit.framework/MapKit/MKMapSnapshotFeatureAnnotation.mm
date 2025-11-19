@interface MKMapSnapshotFeatureAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (MKMapSnapshotFeatureAnnotation)initWithCoder:(id)a3;
- (MKMapSnapshotFeatureAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4 representation:(int64_t)a5;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  latitude = self->_coordinate.latitude;
  v5 = a3;
  [v5 encodeDouble:@"coordinate.latitude" forKey:latitude];
  [v5 encodeDouble:@"coordinate.longitude" forKey:self->_coordinate.longitude];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeInteger:self->_representation forKey:@"representation"];
}

- (MKMapSnapshotFeatureAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"coordinate.latitude"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"coordinate.longitude"];
  v8 = v7;
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v10 = [v4 decodeIntegerForKey:@"representation"];

  v11 = [(MKMapSnapshotFeatureAnnotation *)self initWithCoordinate:v9 title:v10 representation:v6, v8];
  return v11;
}

- (MKMapSnapshotFeatureAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4 representation:(int64_t)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = MKMapSnapshotFeatureAnnotation;
  v10 = [(MKMapSnapshotFeatureAnnotation *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_representation = a5;
    v10->_coordinate.latitude = latitude;
    v10->_coordinate.longitude = longitude;
    v12 = [v9 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{v11->_coordinate.latitude, v11->_coordinate.longitude}];
    customFeature = v11->_customFeature;
    v11->_customFeature = v14;

    [(VKCustomFeature *)v11->_customFeature setSortKey:0];
    if ([v9 length])
    {
      [(VKCustomFeature *)v11->_customFeature setText:v9 locale:0];
    }

    v16 = [MEMORY[0x1E69A1DB0] annotationViewProvidedCustomFeatureStyleAttributes];
    v17 = v16;
    if (a5 == 2)
    {
      v19 = 0x100010022;
      [v16 replaceAttributes:&v19 count:1];
    }

    [(VKCustomFeature *)v11->_customFeature setStyleAttributes:v17];
  }

  return v11;
}

@end