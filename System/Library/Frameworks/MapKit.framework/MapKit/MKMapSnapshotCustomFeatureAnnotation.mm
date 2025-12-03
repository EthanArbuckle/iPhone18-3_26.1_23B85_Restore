@interface MKMapSnapshotCustomFeatureAnnotation
+ (id)customFeatureAnnotationForMapItem:(id)item styleAttributes:(id)attributes suppressLabel:(BOOL)label;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (MKMapSnapshotCustomFeatureAnnotation)initWithCoder:(id)coder;
- (MKMapSnapshotCustomFeatureAnnotation)initWithCustomFeature:(id)feature coordinate:(id)coordinate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKMapSnapshotCustomFeatureAnnotation

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(_MKAnnotationViewCustomFeatureAnnotation *)self->_internalCustomFeatureAnnotation coordinate];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internalCustomFeatureAnnotation = [(MKMapSnapshotCustomFeatureAnnotation *)self internalCustomFeatureAnnotation];
  [coderCopy encodeObject:internalCustomFeatureAnnotation forKey:@"featureAnnotation"];
}

- (MKMapSnapshotCustomFeatureAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MKMapSnapshotCustomFeatureAnnotation;
  v5 = [(MKMapSnapshotCustomFeatureAnnotation *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureAnnotation"];
    internalCustomFeatureAnnotation = v5->_internalCustomFeatureAnnotation;
    v5->_internalCustomFeatureAnnotation = v6;
  }

  return v5;
}

- (MKMapSnapshotCustomFeatureAnnotation)initWithCustomFeature:(id)feature coordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  featureCopy = feature;
  v12.receiver = self;
  v12.super_class = MKMapSnapshotCustomFeatureAnnotation;
  v8 = [(MKMapSnapshotCustomFeatureAnnotation *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MKAnnotationViewCustomFeatureAnnotation);
    internalCustomFeatureAnnotation = v8->_internalCustomFeatureAnnotation;
    v8->_internalCustomFeatureAnnotation = v9;

    [(_MKAnnotationViewCustomFeatureAnnotation *)v8->_internalCustomFeatureAnnotation setCoordinate:var0, var1];
    [(_MKAnnotationViewCustomFeatureAnnotation *)v8->_internalCustomFeatureAnnotation setCustomFeature:featureCopy];
  }

  return v8;
}

+ (id)customFeatureAnnotationForMapItem:(id)item styleAttributes:(id)attributes suppressLabel:(BOOL)label
{
  labelCopy = label;
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  attributesCopy = attributes;
  [itemCopy _coordinate];
  v10 = v9;
  [itemCopy _coordinate];
  v12 = v11;
  v13 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{v10, v11}];
  v14 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (labelCopy)
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

  if (labelCopy)
  {
    [v13 setTextDisplayMode:3];
  }

  name = [itemCopy name];
  [v13 setText:name locale:0];

  v17 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    name2 = [itemCopy name];
    LODWORD(v29) = 138412290;
    *(&v29 + 4) = name2;
    _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "mapItemName: %@", &v29, 0xCu);
  }

  if (attributesCopy)
  {
    _styleAttributes = attributesCopy;
  }

  else
  {
    _styleAttributes = [itemCopy _styleAttributes];
  }

  v20 = _styleAttributes;
  hasAttributes = [_styleAttributes hasAttributes];
  v22 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    if (hasAttributes)
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

  if ((hasAttributes & 1) == 0)
  {
    markerStyleAttributes = [MEMORY[0x1E69A1DB0] markerStyleAttributes];

    v20 = markerStyleAttributes;
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