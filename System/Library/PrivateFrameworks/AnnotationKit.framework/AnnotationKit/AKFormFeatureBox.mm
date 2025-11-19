@interface AKFormFeatureBox
+ (id)boxWithRect:(CGRect)a3 onPage:(id)a4 flags:(unint64_t)a5 baseline:(id)a6;
- (AKFormFeatureBox)initWithRect:(CGRect)a3 onPage:(id)a4 flags:(unint64_t)a5 baseline:(id)a6;
- (CGRect)enclosingRegionRect;
@end

@implementation AKFormFeatureBox

+ (id)boxWithRect:(CGRect)a3 onPage:(id)a4 flags:(unint64_t)a5 baseline:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v14 = a4;
  v15 = [[a1 alloc] initWithRect:v14 onPage:a5 flags:v13 baseline:{x, y, width, height}];

  return v15;
}

- (AKFormFeatureBox)initWithRect:(CGRect)a3 onPage:(id)a4 flags:(unint64_t)a5 baseline:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = AKFormFeatureBox;
  v14 = [(AKFormFeature *)&v19 initWithRect:a4 onPage:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    v14->_flags = a5;
    v14->_widthExpands = a5 & 1;
    v14->_multiline = (a5 & 2) != 0;
    v16 = [v13 copy];
    baseline = v15->_baseline;
    v15->_baseline = v16;

    if ((a5 & 4) != 0 || (a5 & 8) == 0)
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