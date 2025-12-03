@interface MKUserLocationHeadingLayerFactory
+ (id)headingLayerWithStyle:(int64_t)style userLocationView:(id)view shouldMatchAccuracyRadius:(BOOL)radius;
@end

@implementation MKUserLocationHeadingLayerFactory

+ (id)headingLayerWithStyle:(int64_t)style userLocationView:(id)view shouldMatchAccuracyRadius:(BOOL)radius
{
  radiusCopy = radius;
  viewCopy = view;
  switch(style)
  {
    case 2:
      goto LABEL_4;
    case 1:
      v8 = [[MKUserLocationHeadingArrowLayer alloc] initWithUserLocationView:viewCopy];
      goto LABEL_6;
    case 0:
LABEL_4:
      v8 = [[MKUserLocationHeadingConeLayer alloc] initWithUserLocationView:viewCopy shouldMatchAccuracyRadius:radiusCopy minimumPresentationAngle:40.0];
LABEL_6:
      v9 = v8;
      goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

@end