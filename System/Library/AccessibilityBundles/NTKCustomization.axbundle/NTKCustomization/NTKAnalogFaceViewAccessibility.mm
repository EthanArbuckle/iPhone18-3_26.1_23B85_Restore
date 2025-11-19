@interface NTKAnalogFaceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NTKAnalogFaceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKAnalogFaceView" isKindOfClass:@"NTKFaceView"];
  [v3 validateClass:@"NTKFaceView" hasInstanceVariable:@"_timeView" withType:"UIView<NTKTimeView>"];
  [v3 validateClass:@"NTKAnalogFaceView" hasInstanceVariable:@"_complicationDisplayWrappers" withType:"NSMutableDictionary"];
  [v3 validateClass:@"NTKAnalogFaceView" hasInstanceMethod:@"_isComplicationSlotInsideDial:" withFullSignature:{"B", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NTKAnalogFaceViewAccessibility;
  [(NTKAnalogFaceViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKAnalogFaceViewAccessibility *)self safeValueForKey:@"_timeView"];
  [v3 _setAccessibilityServesAsFirstElement:1];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global];
  [v3 _accessibilitySetOverridesInvisibility:1];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = a4;
  v23 = [(NTKAnalogFaceViewAccessibility *)self safeDictionaryForKey:@"_complicationDisplayWrappers"];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v23 allKeys];
  v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = *v38;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v36 = 0;
        v26 = _NSConcreteStackBlock;
        v27 = 3221225472;
        v28 = __66__NTKAnalogFaceViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
        v29 = &unk_1C5F8;
        v31 = v10;
        v32 = &v33;
        v30 = self;
        AXPerformSafeBlock();
        v11 = *(v34 + 24);
        _Block_object_dispose(&v33, 8);
        if (v11 == 1)
        {
          LOBYTE(v33) = 0;
          objc_opt_class();
          v12 = [v23 objectForKeyedSubscript:v10];
          v13 = __UIAccessibilityCastAsClass();

          if (v33 == 1 || (LOBYTE(v33) = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v14 = objc_claimAutoreleasedReturnValue(), v33 == 1))
          {
            abort();
          }

          v15 = v14;
          [v13 convertPoint:v14 fromView:{x, y}];
          v17 = v16;
          v19 = v18;

          if ([v13 pointInside:v22 withEvent:{v17, v19}])
          {
            v20 = [v13 _accessibilityHitTest:v22 withEvent:{v17, v19}];

            goto LABEL_15;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v25.receiver = self;
  v25.super_class = NTKAnalogFaceViewAccessibility;
  v20 = [(NTKAnalogFaceViewAccessibility *)&v25 _accessibilityHitTest:v22 withEvent:x, y];
LABEL_15:

  return v20;
}

id __66__NTKAnalogFaceViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isComplicationSlotInsideDial:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end