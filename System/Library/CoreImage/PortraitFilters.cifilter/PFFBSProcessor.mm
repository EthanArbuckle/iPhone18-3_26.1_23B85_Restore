@interface PFFBSProcessor
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation PFFBSProcessor

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3 >= 3)
  {
    sub_49D48();
  }

  return **(&off_74D28 + a3);
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v5 = [a4 objectForKeyedSubscript:{@"fullROI", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end