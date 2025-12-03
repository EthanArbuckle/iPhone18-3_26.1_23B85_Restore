@interface CRCameraReaderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityCameraView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)sendDidFindTarget:(id)target frameTime:(id *)time;
- (void)sendDidRecognizeNewObjects:(id)objects;
- (void)startSession;
@end

@implementation CRCameraReaderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CALayer" hasInstanceMethod:@"superlayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CRCameraReader" hasInstanceMethod:@"sessionManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CRDefaultCaptureSessionManager" hasInstanceMethod:@"previewLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CRCameraReader" hasInstanceMethod:@"alignmentLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CRAlignmentLayer" hasInstanceMethod:@"outlineLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CRCameraReader" hasInstanceMethod:@"sendDidFindTarget:frameTime:" withFullSignature:{"v", "@", "{?=qiIq}", 0}];
  [validationsCopy validateClass:@"CRCameraReader" hasInstanceMethod:@"sendDidRecognizeNewObjects:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CRCameraReader" hasInstanceMethod:@"startSession" withFullSignature:{"v", 0}];
}

- (void)sendDidFindTarget:(id)target frameTime:(id *)time
{
  v54 = *MEMORY[0x29EDCA608];
  targetCopy = target;
  v52.receiver = self;
  v52.super_class = CRCameraReaderAccessibility;
  v44 = *time;
  [(CRCameraReaderAccessibility *)&v52 sendDidFindTarget:targetCopy frameTime:&v44];
  v7 = [(CRCameraReaderAccessibility *)self safeValueForKey:@"sessionManager"];
  v8 = [v7 safeValueForKey:@"previewLayer"];
  array = [MEMORY[0x29EDB8DE8] array];
  v10 = [v8 safeValueForKey:@"bounds"];
  [v10 CGRectValue];
  v42 = v12;
  v43 = v11;
  v14 = v13;
  v16 = v15;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = targetCopy;
  v17 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v17)
  {
    v18 = *v49;
    v19 = 1;
    v20 = 2.22507386e-308;
    v21 = 1.79769313e308;
    v39 = *(MEMORY[0x29EDB90B8] + 8);
    v40 = *MEMORY[0x29EDB90B8];
    v22 = 1.79769313e308;
    v23 = 2.22507386e-308;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = CGPointFromString(v25);
          y = v28.y;
          x = v28.x;
        }

        else
        {
          objc_opt_class();
          v29 = v39;
          v30 = v40;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          [(NSString *)v25 CGPointValue];
        }

        [v7 convertCameraPoint:v8 toLayer:{x, y}];
        v30 = v31;
        v29 = v32;
LABEL_11:
        v33 = [MEMORY[0x29EDBA168] valueWithCGPoint:{v30, v29}];
        [array addObject:v33];

        v56.origin.y = v42;
        v56.origin.x = v43;
        v56.size.width = v14;
        v56.size.height = v16;
        v55.x = v30;
        v55.y = v29;
        v19 &= CGRectContainsPoint(v56, v55);
        if (v30 < v22)
        {
          v22 = v30;
        }

        if (v29 < v21)
        {
          v21 = v29;
        }

        if (v30 > v23)
        {
          v23 = v30;
        }

        if (v29 > v20)
        {
          v20 = v29;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (!v17)
      {

        if (!v19)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }
    }
  }

  v22 = 1.79769313e308;
  v23 = 2.22507386e-308;
  v20 = 2.22507386e-308;
  v21 = 1.79769313e308;
LABEL_24:
  v44.var0 = 0;
  *&v44.var1 = &v44;
  v44.var3 = 0x4010000000;
  v45 = &unk_29BD6D12D;
  v46 = 0u;
  v47 = 0u;
  AXPerformSafeBlock();
  v34 = (v23 - v22) * (v20 - v21);
  v35 = *(*&v44.var1 + 48);
  v36 = *(*&v44.var1 + 56);
  _Block_object_dispose(&v44, 8);
  if (v34 > v35 * v36 * 0.5 && v34 < v35 * v36 * 1.2)
  {
    UIAccessibilityPostNotification(0x40Bu, 0);
  }

LABEL_30:
  ++sendDidFindTarget_frameTime__counter;

  v38 = *MEMORY[0x29EDCA608];
}

void __59__CRCameraReaderAccessibility_sendDidFindTarget_frameTime___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) safeValueForKey:@"alignmentLayer"];
  v2 = [v8 safeValueForKey:@"outlineLayer"];
  [v2 bounds];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CRCameraReaderAccessibility;
  [(CRCameraReaderAccessibility *)&v3 loadView];
  [(CRCameraReaderAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)startSession
{
  v4.receiver = self;
  v4.super_class = CRCameraReaderAccessibility;
  [(CRCameraReaderAccessibility *)&v4 startSession];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  [(CRCameraReaderAccessibility *)self _accessibilitySetRetainedValue:dictionary forKey:@"AnnouncedStatusActions"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CRCameraReaderAccessibility;
  [(CRCameraReaderAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  _accessibilityCameraView = [(CRCameraReaderAccessibility *)self _accessibilityCameraView];
  [_accessibilityCameraView setIsAccessibilityElement:1];
  [_accessibilityCameraView setAccessibilityIdentifier:@"CardCaptureViewFinder"];
  v4 = accessibilityLocalizedString(@"camera.viewfinder");
  [_accessibilityCameraView setAccessibilityLabel:v4];

  accessibilityHint = [(CRCameraReaderAccessibility *)self accessibilityHint];
  if (!accessibilityHint)
  {
    accessibilityHint = accessibilityLocalizedString(@"camera.scan.card.hint");
  }

  [_accessibilityCameraView setAccessibilityHint:accessibilityHint];
  [_accessibilityCameraView _setAccessibilityServesAsFirstElement:1];
}

- (id)_accessibilityCameraView
{
  v3 = [(CRCameraReaderAccessibility *)self safeValueForKey:@"sessionManager"];
  v4 = [v3 safeValueForKey:@"previewLayer"];
  v5 = [v4 safeValueForKey:@"superlayer"];

  v6 = [(CRCameraReaderAccessibility *)self safeUIViewForKey:@"view"];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __55__CRCameraReaderAccessibility__accessibilityCameraView__block_invoke;
  v10[3] = &unk_29F2B8E28;
  v11 = v5;
  v7 = v5;
  v8 = [v6 _accessibilityFindSubviewDescendant:v10];

  return v8;
}

BOOL __55__CRCameraReaderAccessibility__accessibilityCameraView__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)sendDidRecognizeNewObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [objectsCopy objectForKey:@"code"];
  v6 = [objectsCopy objectForKey:@"cardholderName"];
  v7 = [objectsCopy objectForKey:@"expirationDate"];
  v8 = [(CRCameraReaderAccessibility *)self _accessibilityValueForKey:@"AnnouncedStatusActions"];
  v24.receiver = self;
  v24.super_class = CRCameraReaderAccessibility;
  [(CRCameraReaderAccessibility *)&v24 sendDidRecognizeNewObjects:objectsCopy];

  if (v5 && v6 && v7)
  {
    v9 = *MEMORY[0x29EDC7EA8];
    v10 = accessibilityLocalizedString(@"camera.creditcard.allinfo.found");
    UIAccessibilityPostNotification(v9, v10);
  }

  else
  {
    if ([v5 length])
    {
      v11 = [v8 objectForKey:@"code"];

      if (!v11)
      {
        v12 = *MEMORY[0x29EDC7EA8];
        v13 = accessibilityLocalizedString(@"camera.card.number.found");
        UIAccessibilityPostNotification(v12, v13);

        [v8 setValue:MEMORY[0x29EDB8EB0] forKey:@"code"];
      }
    }

    if ([v6 length])
    {
      v14 = [v8 objectForKey:@"cardholderName"];

      if (!v14)
      {
        v15 = *MEMORY[0x29EDC7EA8];
        v16 = MEMORY[0x29EDBA0F8];
        v17 = accessibilityLocalizedString(@"camera.card.holder.found");
        v18 = [v16 stringWithFormat:v17, v6];
        UIAccessibilityPostNotification(v15, v18);

        [v8 setValue:MEMORY[0x29EDB8EB0] forKey:@"cardholderName"];
      }
    }

    if ([v7 length])
    {
      v19 = [v8 objectForKey:@"expirationDate"];

      if (!v19)
      {
        v20 = *MEMORY[0x29EDC7EA8];
        v21 = MEMORY[0x29EDBA0F8];
        v22 = accessibilityLocalizedString(@"camera.card.expiration.found");
        v23 = [v21 stringWithFormat:v22, v7];
        UIAccessibilityPostNotification(v20, v23);

        [v8 setValue:MEMORY[0x29EDB8EB0] forKey:@"expirationDate"];
      }
    }
  }
}

@end