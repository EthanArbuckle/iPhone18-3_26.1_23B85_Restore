@interface LACustomPasswordControllerStyle
+ (LACustomPasswordControllerStyle)fullScreenStyle;
+ (LACustomPasswordControllerStyle)sheetStyle;
- (void)initWithStyle:(void *)result;
@end

@implementation LACustomPasswordControllerStyle

- (void)initWithStyle:(void *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = LACustomPasswordControllerStyle;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[1] = a2;
    }
  }

  return result;
}

+ (LACustomPasswordControllerStyle)sheetStyle
{
  v2 = [LACustomPasswordControllerStyle alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = LACustomPasswordControllerStyle;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2->_rawValue = 0;
    }
  }

  return v2;
}

+ (LACustomPasswordControllerStyle)fullScreenStyle
{
  v2 = [LACustomPasswordControllerStyle alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = LACustomPasswordControllerStyle;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2->_rawValue = 1;
    }
  }

  return v2;
}

@end