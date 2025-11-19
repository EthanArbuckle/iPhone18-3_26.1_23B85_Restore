@interface MKUserLocationHeadingLayerFactory
+ (id)headingLayerWithStyle:(int64_t)a3 userLocationView:(id)a4 shouldMatchAccuracyRadius:(BOOL)a5;
@end

@implementation MKUserLocationHeadingLayerFactory

+ (id)headingLayerWithStyle:(int64_t)a3 userLocationView:(id)a4 shouldMatchAccuracyRadius:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  switch(a3)
  {
    case 2:
      goto LABEL_4;
    case 1:
      v8 = [[MKUserLocationHeadingArrowLayer alloc] initWithUserLocationView:v7];
      goto LABEL_6;
    case 0:
LABEL_4:
      v8 = [[MKUserLocationHeadingConeLayer alloc] initWithUserLocationView:v7 shouldMatchAccuracyRadius:v5 minimumPresentationAngle:40.0];
LABEL_6:
      v9 = v8;
      goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

@end