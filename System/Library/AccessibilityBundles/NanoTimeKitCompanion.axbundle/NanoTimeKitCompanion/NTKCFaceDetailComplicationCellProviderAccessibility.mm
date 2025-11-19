@interface NTKCFaceDetailComplicationCellProviderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)cellForItem:(id)a3 atIndexPath:(id)a4;
@end

@implementation NTKCFaceDetailComplicationCellProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailComplicationCellProvider" hasInstanceVariable:@"_listProvider" withType:"<NTKComplicationPickerListProvider>"];
  [v3 validateProtocol:@"NTKComplicationPickerListProvider" hasRequiredInstanceMethod:@"pickerSelectedItem"];
  [v3 validateProtocol:@"NTKComplicationItem" hasRequiredInstanceMethod:@"ntk_identifier"];
  [v3 validateClass:@"NTKCFaceDetailComplicationCellProvider" hasInstanceMethod:@"cellForItem:atIndexPath:" withFullSignature:{"@", "@", 0}];
}

- (id)cellForItem:(id)a3 atIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = NTKCFaceDetailComplicationCellProviderAccessibility;
  v6 = a3;
  v7 = [(NTKCFaceDetailComplicationCellProviderAccessibility *)&v13 cellForItem:v6 atIndexPath:a4];
  v8 = UIAccessibilityTraitNone;
  v9 = [v6 safeStringForKey:{@"ntk_identifier", v13.receiver, v13.super_class}];

  v10 = [(NTKCFaceDetailComplicationCellProviderAccessibility *)self safeValueForKeyPath:@"_listProvider.pickerSelectedItem"];
  v11 = [v10 safeStringForKey:@"ntk_identifier"];

  if (v9 && v11 && [v9 isEqualToString:v11])
  {
    v8 = UIAccessibilityTraitSelected;
  }

  [v7 setAccessibilityTraits:v8];

  return v7;
}

@end