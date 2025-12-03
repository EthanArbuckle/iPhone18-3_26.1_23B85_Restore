@interface AKFormFeatureCheckbox
+ (id)checkboxWithRect:(CGRect)rect onPage:(id)page;
@end

@implementation AKFormFeatureCheckbox

+ (id)checkboxWithRect:(CGRect)rect onPage:(id)page
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pageCopy = page;
  v10 = [[self alloc] initWithRect:pageCopy onPage:{x, y, width, height}];

  return v10;
}

@end