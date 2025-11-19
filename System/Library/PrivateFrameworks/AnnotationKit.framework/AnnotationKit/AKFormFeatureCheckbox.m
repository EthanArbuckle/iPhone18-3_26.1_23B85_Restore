@interface AKFormFeatureCheckbox
+ (id)checkboxWithRect:(CGRect)a3 onPage:(id)a4;
@end

@implementation AKFormFeatureCheckbox

+ (id)checkboxWithRect:(CGRect)a3 onPage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [[a1 alloc] initWithRect:v9 onPage:{x, y, width, height}];

  return v10;
}

@end