@interface NSArray(AXMExtras)
+ (id)axmArrayByIgnoringNilElementsWithCount:()AXMExtras;
@end

@implementation NSArray(AXMExtras)

+ (id)axmArrayByIgnoringNilElementsWithCount:()AXMExtras
{
  array = [MEMORY[0x1E695DF70] array];
  for (i = &a9; a3; --a3)
  {
    v11 = i++;
    if (*v11)
    {
      [array addObject:?];
    }
  }

  return array;
}

@end