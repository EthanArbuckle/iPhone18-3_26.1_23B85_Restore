@interface AKFormFeatureSegmented
+ (id)segments:(id)a3 withEnclosingRect:(CGRect)a4 baseline:(id)a5 onPage:(id)a6;
- (AKFormFeatureSegmented)initWithCharacterSegments:(id)a3 enclosingRect:(CGRect)a4 baseline:(id)a5 onPage:(id)a6;
- (CGRect)enclosingRegionRect;
@end

@implementation AKFormFeatureSegmented

+ (id)segments:(id)a3 withEnclosingRect:(CGRect)a4 baseline:(id)a5 onPage:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [[a1 alloc] initWithCharacterSegments:v15 enclosingRect:v14 baseline:v13 onPage:{x, y, width, height}];

  return v16;
}

- (AKFormFeatureSegmented)initWithCharacterSegments:(id)a3 enclosingRect:(CGRect)a4 baseline:(id)a5 onPage:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = AKFormFeatureSegmented;
  v16 = [(AKFormFeature *)&v19 initWithRect:a6 onPage:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_characterSegmentRects, a3);
    v17->_enclosingRegionRect.origin.x = x;
    v17->_enclosingRegionRect.origin.y = y;
    v17->_enclosingRegionRect.size.width = width;
    v17->_enclosingRegionRect.size.height = height;
    objc_storeStrong(&v17->_baseline, a5);
  }

  return v17;
}

- (CGRect)enclosingRegionRect
{
  x = self->_enclosingRegionRect.origin.x;
  y = self->_enclosingRegionRect.origin.y;
  width = self->_enclosingRegionRect.size.width;
  height = self->_enclosingRegionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end