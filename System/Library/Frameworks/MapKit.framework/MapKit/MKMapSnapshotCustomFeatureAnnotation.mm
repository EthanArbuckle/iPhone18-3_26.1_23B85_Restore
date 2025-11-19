@interface MKMapSnapshotCustomFeatureAnnotation
+ (id)customFeatureAnnotationForMapItem:(id)a3 styleAttributes:(id)a4 suppressLabel:(BOOL)a5;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (MKMapSnapshotCustomFeatureAnnotation)initWithCoder:(id)a3;
- (MKMapSnapshotCustomFeatureAnnotation)initWithCustomFeature:(id)a3 coordinate:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MKMapSnapshotCustomFeatureAnnotation

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(_MKAnnotationViewCustomFeatureAnnotation *)self->_internalCustomFeatureAnnotation coordinate];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MKMapSnapshotCustomFeatureAnnotation *)self internalCustomFeatureAnnotation];
  [v4 encodeObject:v5 forKey:@"featureAnnotation"];
}

- (MKMapSnapshotCustomFeatureAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MKMapSnapshotCustomFeatureAnnotation;
  v5 = [(MKMapSnapshotCustomFeatureAnnotation *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureAnnotation"];
    internalCustomFeatureAnnotation = v5->_internalCustomFeatureAnnotation;
    v5->_internalCustomFeatureAnnotation = v6;
  }

  return v5;
}

- (MKMapSnapshotCustomFeatureAnnotation)initWithCustomFeature:(id)a3 coordinate:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MKMapSnapshotCustomFeatureAnnotation;
  v8 = [(MKMapSnapshotCustomFeatureAnnotation *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MKAnnotationViewCustomFeatureAnnotation);
    internalCustomFeatureAnnotation = v8->_internalCustomFeatureAnnotation;
    v8->_internalCustomFeatureAnnotation = v9;

    [(_MKAnnotationViewCustomFeatureAnnotation *)v8->_internalCustomFeatureAnnotation setCoordinate:var0, var1];
    [(_MKAnnotationViewCustomFeatureAnnotation *)v8->_internalCustomFeatureAnnotation setCustomFeature:v7];
  }

  return v8;
}

+ (id)customFeatureAnnotationForMapItem:(id)a3 styleAttributes:(id)a4 suppressLabel:(BOOL)a5
{
  v5 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [v7 _coordinate];
  v10 = v9;
  [v7 _coordinate];
  v12 = v11;
  v13 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{v10, v11}];
  v14 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (v5)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    LODWORD(v29) = 138412290;
    *(&v29 + 4) = v15;
    _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_INFO, "suppressLabel: %@", &v29, 0xCu);
  }

  if (v5)
  {
    [v13 setTextDisplayMode:3];
  }

  v16 = [v7 name];
  [v13 setText:v16 locale:0];

  v17 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v7 name];
    LODWORD(v29) = 138412290;
    *(&v29 + 4) = v18;
    _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "mapItemName: %@", &v29, 0xCu);
  }

  if (v8)
  {
    v19 = v8;
  }

  else
  {
    v19 = [v7 _styleAttributes];
  }

  v20 = v19;
  v21 = [v19 hasAttributes];
  v22 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    if (v21)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    LODWORD(v29) = 138412290;
    *(&v29 + 4) = v23;
    _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_INFO, "hasAttributes: %@", &v29, 0xCu);
  }

  if ((v21 & 1) == 0)
  {
    v24 = [MEMORY[0x1E69A1DB0] markerStyleAttributes];

    v20 = v24;
  }

  v25 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    LODWORD(v29) = 138412290;
    *(&v29 + 4) = v20;
    _os_log_impl(&dword_1A2EA0000, v25, OS_LOG_TYPE_INFO, "attributes: %@", &v29, 0xCu);
  }

  v26 = [v20 copy];
  v29 = xmmword_1A30F71B0;
  [v26 replaceAttributes:&v29 count:2];
  [v13 setStyleAttributes:v26];
  v27 = [[MKMapSnapshotCustomFeatureAnnotation alloc] initWithCustomFeature:v13 coordinate:v10, v12];

  return v27;
}

@end