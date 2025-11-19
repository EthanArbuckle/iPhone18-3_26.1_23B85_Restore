@interface GEOFeatureStyleAttributes(MapKitExtras)
+ (id)annotationViewProvidedCustomFeatureStyleAttributes;
+ (id)genericMarkerStyleAttributes;
+ (id)markerStyleAttributes;
+ (id)styleAttributesForCalloutWithAttributes:()MapKitExtras;
+ (id)styleAttributesForMapFeatureAttributes:()MapKitExtras elevatedGround:;
+ (id)styleAttributesForRouteAnnotationWithAttributes:()MapKitExtras;
+ (id)styleAttributesForSearchResultWithAttributes:()MapKitExtras;
+ (id)styleAttributesForTrafficIncidentType:()MapKitExtras;
+ (id)styleAttributesForTransitType:()MapKitExtras;
+ (id)styleAttributesForUnpickedFeatureWithAttributes:()MapKitExtras;
+ (id)trainStationStyleAttributes;
- (id)styleAttributesWithElevatedGround:()MapKitExtras;
@end

@implementation GEOFeatureStyleAttributes(MapKitExtras)

+ (id)markerStyleAttributes
{
  v0 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{4, 226, 5, 3, 6, 348, 10, 0, 0}];

  return v0;
}

- (id)styleAttributesWithElevatedGround:()MapKitExtras
{
  v4 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithStyleAttributes:{objc_msgSend(a1, "featureStyleAttributes")}];
  v6[0] = 65617;
  v6[1] = a3;
  [v4 replaceAttributes:v6 count:1];

  return v4;
}

+ (id)styleAttributesForMapFeatureAttributes:()MapKitExtras elevatedGround:
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithStyleAttributes:{objc_msgSend(v5, "featureStyleAttributes")}];
  v8 = 0x100010025;
  v9 = 65617;
  v10 = a4;
  v11 = 0x200010075;
  [v6 replaceAttributes:&v8 count:3];

  return v6;
}

+ (id)styleAttributesForTransitType:()MapKitExtras
{
  if (a3 > 0xB)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1A30F7EE8[a3];
  }

  v4 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, v3, 10, 0, 0}];

  return v4;
}

+ (id)annotationViewProvidedCustomFeatureStyleAttributes
{
  v0 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 348, 65572, 1, 65567, 3, 0}];

  return v0;
}

+ (id)genericMarkerStyleAttributes
{
  v0 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{4, 226, 5, 3, 6, 348, 10, 0, 65572, 1, 65573, 0, 0}];

  return v0;
}

+ (id)trainStationStyleAttributes
{
  v0 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 24, 10, 0, 0}];

  return v0;
}

+ (id)styleAttributesForCalloutWithAttributes:()MapKitExtras
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithStyleAttributes:{objc_msgSend(v3, "featureStyleAttributes")}];
  v6 = 0x100010025;
  [v4 replaceAttributes:&v6 count:1];

  return v4;
}

+ (id)styleAttributesForSearchResultWithAttributes:()MapKitExtras
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithStyleAttributes:{objc_msgSend(v3, "featureStyleAttributes")}];
  v6 = xmmword_1A30F7310;
  v7 = 0x100010024;
  [v4 replaceAttributes:&v6 count:3];

  return v4;
}

+ (id)styleAttributesForUnpickedFeatureWithAttributes:()MapKitExtras
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithStyleAttributes:{objc_msgSend(v3, "featureStyleAttributes")}];
  v6 = 65573;
  [v4 replaceAttributes:&v6 count:1];

  return v4;
}

+ (id)styleAttributesForRouteAnnotationWithAttributes:()MapKitExtras
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithStyleAttributes:{objc_msgSend(v3, "featureStyleAttributes")}];
  v6[0] = 0x19C00000006;
  [v4 replaceAttributes:v6 count:1];

  return v4;
}

+ (id)styleAttributesForTrafficIncidentType:()MapKitExtras
{
  v3 = [objc_alloc(objc_opt_class()) initWithAttributes:{5, 3, 6, 222, 65544, a3, 0}];

  return v3;
}

@end