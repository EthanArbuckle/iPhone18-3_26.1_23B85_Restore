@interface NTKRingsAndDotsViewAccessibility
- (void)setRingsFillFractions:(id)a3;
@end

@implementation NTKRingsAndDotsViewAccessibility

- (void)setRingsFillFractions:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NTKRingsAndDotsViewAccessibility;
  [(NTKRingsAndDotsViewAccessibility *)&v17 setRingsFillFractions:v4];
  v16 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  if ([v5 count] == &dword_0 + 3)
  {
    v6 = [v5 objectAtIndex:0];
    [v6 floatValue];
    v8 = v7;

    v9 = [v5 objectAtIndex:1];
    [v9 floatValue];
    v11 = v10;

    v12 = [v5 objectAtIndex:2];
    [v12 floatValue];
    v14 = v13;

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __58__NTKRingsAndDotsViewAccessibility_setRingsFillFractions___block_invoke;
    v15[3] = &__block_descriptor_56_e15___NSString_8__0l;
    *&v15[4] = v8;
    *&v15[5] = v11;
    *&v15[6] = v14;
    [(NTKRingsAndDotsViewAccessibility *)self _setAccessibilityLabelBlock:v15];
  }
}

id __58__NTKRingsAndDotsViewAccessibility_setRingsFillFractions___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) >= 0.0 || *(a1 + 40) >= 0.0 || *(a1 + 48) >= 0.0)
  {
    v4 = UIAXFormatFloatWithPercentage();
    v5 = *(a1 + 40);
    v6 = UIAXFormatFloatWithPercentage();
    v7 = *(a1 + 48);
    v8 = UIAXFormatFloatWithPercentage();
    v3 = accessibilityWellnessStringUsingUnitNames(v4, v6, v8);
  }

  else
  {
    v3 = accessibilityLocalizedString(@"lifestyle.no.activity.data", a2);
  }

  return v3;
}

@end