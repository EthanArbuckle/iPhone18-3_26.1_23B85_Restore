@interface OKWidgetMediaViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation OKWidgetMediaViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OKWidgetMediaView" isKindOfClass:@"OKWidgetMediaViewProxy"];
  [v3 validateClass:@"OKWidgetViewProxy" hasInstanceMethod:@"mediaURLs" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OKWidgetViewProxy" hasInstanceMethod:@"pageViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OKPageViewController" hasInstanceMethod:@"presentationViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OKPresentationViewControllerProxy" hasInstanceMethod:@"presentation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OKPresentation" hasInstanceMethod:@"mediaItemForURL:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"OKMediaPhotoKitItem" hasInstanceVariable:@"_asset" withType:"PHAsset"];
}

- (id)accessibilityLabel
{
  v3 = [(OKWidgetMediaViewAccessibility *)self safeValueForKey:@"mediaURLs"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [(OKWidgetMediaViewAccessibility *)self safeValueForKey:@"pageViewController"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"presentationViewController"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [v8 safeValueForKey:@"presentation"];
  v10 = __UIAccessibilitySafeClass();

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v15 = v10;
  v16 = v4;
  AXPerformSafeBlock();
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  v12 = [v11 safeValueForKey:@"_asset"];

  v13 = [v12 accessibilityLabel];

  return v13;
}

void __52__OKWidgetMediaViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) firstObject];
  v3 = [v2 mediaItemForURL:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end