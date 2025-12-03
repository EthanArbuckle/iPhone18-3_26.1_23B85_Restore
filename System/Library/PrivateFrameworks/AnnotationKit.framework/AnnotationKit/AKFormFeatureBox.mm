@interface AKFormFeatureBox
+ (id)boxWithRect:(CGRect)rect onPage:(id)page flags:(unint64_t)flags baseline:(id)baseline;
- (AKFormFeatureBox)initWithRect:(CGRect)rect onPage:(id)page flags:(unint64_t)flags baseline:(id)baseline;
- (CGRect)enclosingRegionRect;
@end

@implementation AKFormFeatureBox

+ (id)boxWithRect:(CGRect)rect onPage:(id)page flags:(unint64_t)flags baseline:(id)baseline
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  baselineCopy = baseline;
  pageCopy = page;
  v15 = [[self alloc] initWithRect:pageCopy onPage:flags flags:baselineCopy baseline:{x, y, width, height}];

  return v15;
}

- (AKFormFeatureBox)initWithRect:(CGRect)rect onPage:(id)page flags:(unint64_t)flags baseline:(id)baseline
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  baselineCopy = baseline;
  v19.receiver = self;
  v19.super_class = AKFormFeatureBox;
  height = [(AKFormFeature *)&v19 initWithRect:page onPage:x, y, width, height];
  v15 = height;
  if (height)
  {
    height->_flags = flags;
    height->_widthExpands = flags & 1;
    height->_multiline = (flags & 2) != 0;
    v16 = [baselineCopy copy];
    baseline = v15->_baseline;
    v15->_baseline = v16;

    if ((flags & 4) != 0 || (flags & 8) == 0)
    {
      v15->_alignment = 0;
    }

    else
    {
      v15->_alignment = 2;
    }
  }

  return v15;
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