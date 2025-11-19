@interface UITabButtonAccessibility
@end

@implementation UITabButtonAccessibility

uint64_t __48___UITabButtonAccessibility_accessibilityTraits__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uitabbarcustom.isa);
  isKindOfClass = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __50___UITabButtonAccessibility_accessibilityRowRange__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

void __50___UITabButtonAccessibility_accessibilityRowRange__block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0] == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 40) + 8) + 40);
  }

  NSClassFromString(&cfstr_Uitabbutton.isa);
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 40) + 8) + 40);
  }

  objc_storeStrong(location, 0);
}

uint64_t __46___UITabButtonAccessibility_accessibilityPath__block_invoke(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *v27 = a1;
  *&v27[8] = a2;
  *&v27[16] = a3;
  *&v27[24] = a4;
  *v26 = a5;
  *&v26[8] = a6;
  *&v26[16] = a7;
  *&v26[24] = a8;
  MinX = CGRectGetMinX(*&a1);
  v16 = MinX - CGRectGetWidth(*v27) / 2.0;
  v23 = v16 <= CGRectGetMinX(*v26);
  MaxX = CGRectGetMaxX(*v27);
  v18 = MaxX + CGRectGetWidth(*v27) / 2.0;
  v8 = CGRectGetMaxX(*v26);
  v9 = 0;
  if (v18 >= v8)
  {
    v9 = 2;
  }

  v24 = v23 | v9;
  v19 = CGRectGetMinX(*v27);
  v20 = v19 - CGRectGetWidth(*v27) / 2.0;
  v10 = CGRectGetMinX(*v26);
  v11 = 0;
  if (v20 <= v10)
  {
    v11 = 4;
  }

  v25 = v24 | v11;
  v21 = CGRectGetMaxX(*v27);
  v22 = v21 + CGRectGetWidth(*v27) / 2.0;
  v12 = CGRectGetMaxX(*v26);
  v13 = 0;
  if (v22 >= v12)
  {
    v13 = 8;
  }

  return v25 | v13;
}

@end