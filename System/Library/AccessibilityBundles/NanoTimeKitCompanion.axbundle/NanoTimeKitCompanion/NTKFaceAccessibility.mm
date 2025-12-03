@interface NTKFaceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityFaceEditOptionsDescription;
@end

@implementation NTKFaceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKFace" hasInstanceMethod:@"faceStyle" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"NTKFace" hasInstanceMethod:@"faceDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFace" hasInstanceMethod:@"configuration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFace" hasInstanceMethod:@"_customEditModes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKEditOption"];
  [validationsCopy validateClass:@"NTKEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFaceConfiguration"];
  [validationsCopy validateClass:@"NTKFaceConfiguration" hasInstanceMethod:@"optionForCustomEditMode: slot:" withFullSignature:{"@", "q", "@", 0}];
}

- (id)_accessibilityFaceEditOptionsDescription
{
  v13 = +[NSMutableArray array];
  v3 = [(NTKFaceAccessibility *)self safeValueForKey:@"configuration"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  objc_opt_class();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  AXPerformSafeBlock();
  v4 = v17[5];
  _Block_object_dispose(&v16, 8);

  obj = __UIAccessibilityCastAsClass();

  if (v22 == 1)
  {
    abort();
  }

  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v23 + 1) + 8 * i) integerValue];
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy_;
        v20 = __Block_byref_object_dispose_;
        v21 = 0;
        v15 = v3;
        AXPerformSafeBlock();
        v8 = v17[5];

        _Block_object_dispose(&v16, 8);
        if (v8)
        {
          v16 = 0;
          v17 = &v16;
          v18 = 0x3032000000;
          v19 = __Block_byref_object_copy_;
          v20 = __Block_byref_object_dispose_;
          v21 = 0;
          v14 = v8;
          AXPerformSafeBlock();
          v9 = v17[5];

          _Block_object_dispose(&v16, 8);
          if (([v13 containsObject:v9] & 1) == 0)
          {
            [v13 axSafelyAddObject:v9];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v10 = UIAXLabelForElements();

  return v10;
}

uint64_t __64__NTKFaceAccessibility__accessibilityFaceEditOptionsDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _customEditModes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t __64__NTKFaceAccessibility__accessibilityFaceEditOptionsDescription__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) optionForCustomEditMode:*(a1 + 48) slot:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t __64__NTKFaceAccessibility__accessibilityFaceEditOptionsDescription__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"localizedName"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

@end