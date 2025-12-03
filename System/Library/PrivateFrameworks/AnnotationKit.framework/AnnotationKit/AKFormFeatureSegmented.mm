@interface AKFormFeatureSegmented
+ (id)segments:(id)segments withEnclosingRect:(CGRect)rect baseline:(id)baseline onPage:(id)page;
- (AKFormFeatureSegmented)initWithCharacterSegments:(id)segments enclosingRect:(CGRect)rect baseline:(id)baseline onPage:(id)page;
- (CGRect)enclosingRegionRect;
@end

@implementation AKFormFeatureSegmented

+ (id)segments:(id)segments withEnclosingRect:(CGRect)rect baseline:(id)baseline onPage:(id)page
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pageCopy = page;
  baselineCopy = baseline;
  segmentsCopy = segments;
  v16 = [[self alloc] initWithCharacterSegments:segmentsCopy enclosingRect:baselineCopy baseline:pageCopy onPage:{x, y, width, height}];

  return v16;
}

- (AKFormFeatureSegmented)initWithCharacterSegments:(id)segments enclosingRect:(CGRect)rect baseline:(id)baseline onPage:(id)page
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  segmentsCopy = segments;
  baselineCopy = baseline;
  v19.receiver = self;
  v19.super_class = AKFormFeatureSegmented;
  height = [(AKFormFeature *)&v19 initWithRect:page onPage:x, y, width, height];
  v17 = height;
  if (height)
  {
    objc_storeStrong(&height->_characterSegmentRects, segments);
    v17->_enclosingRegionRect.origin.x = x;
    v17->_enclosingRegionRect.origin.y = y;
    v17->_enclosingRegionRect.size.width = width;
    v17->_enclosingRegionRect.size.height = height;
    objc_storeStrong(&v17->_baseline, baseline);
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