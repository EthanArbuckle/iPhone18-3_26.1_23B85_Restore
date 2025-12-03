@interface FBSProcessor
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation FBSProcessor

+ (int)formatForInputAtIndex:(int)index
{
  if (index >= 3)
  {
    +[FBSProcessor formatForInputAtIndex:];
  }

  return *off_1E75C2680[index];
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v5 = [arguments objectForKeyedSubscript:{@"fullROI", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end