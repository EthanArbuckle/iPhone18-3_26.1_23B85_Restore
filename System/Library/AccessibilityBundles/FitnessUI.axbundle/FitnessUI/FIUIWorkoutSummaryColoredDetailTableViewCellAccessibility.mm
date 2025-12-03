@interface FIUIWorkoutSummaryColoredDetailTableViewCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
@end

@implementation FIUIWorkoutSummaryColoredDetailTableViewCellAccessibility

- (id)accessibilityLabel
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v7 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  _accessibleSubviews = [v2 _accessibleSubviews];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __79__FIUIWorkoutSummaryColoredDetailTableViewCellAccessibility_accessibilityLabel__block_invoke;
  v6[3] = &unk_83D8;
  v6[4] = &v8;
  [_accessibleSubviews enumerateObjectsUsingBlock:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __79__FIUIWorkoutSummaryColoredDetailTableViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = __AXStringForVariables();
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

- (CGPoint)accessibilityActivationPoint
{
  v17 = 0;
  objc_opt_class();
  v3 = [(FIUIWorkoutSummaryColoredDetailTableViewCellAccessibility *)self safeValueForKey:@"customAccessoryButton"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v17 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    [v4 frame];
    v20 = UIAccessibilityConvertFrameToScreenCoordinates(v19, v5);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    MidX = CGRectGetMidX(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MidY = CGRectGetMidY(v21);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = FIUIWorkoutSummaryColoredDetailTableViewCellAccessibility;
    [(FIUIWorkoutSummaryColoredDetailTableViewCellAccessibility *)&v16 accessibilityActivationPoint];
    MidX = v12;
    MidY = v13;
  }

  v14 = MidX;
  v15 = MidY;
  result.y = v15;
  result.x = v14;
  return result;
}

@end