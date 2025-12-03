@interface NTKCFaceDetailComplicationCellProviderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)cellForItem:(id)item atIndexPath:(id)path;
@end

@implementation NTKCFaceDetailComplicationCellProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCFaceDetailComplicationCellProvider" hasInstanceVariable:@"_listProvider" withType:"<NTKComplicationPickerListProvider>"];
  [validationsCopy validateProtocol:@"NTKComplicationPickerListProvider" hasRequiredInstanceMethod:@"pickerSelectedItem"];
  [validationsCopy validateProtocol:@"NTKComplicationItem" hasRequiredInstanceMethod:@"ntk_identifier"];
  [validationsCopy validateClass:@"NTKCFaceDetailComplicationCellProvider" hasInstanceMethod:@"cellForItem:atIndexPath:" withFullSignature:{"@", "@", 0}];
}

- (id)cellForItem:(id)item atIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = NTKCFaceDetailComplicationCellProviderAccessibility;
  itemCopy = item;
  v7 = [(NTKCFaceDetailComplicationCellProviderAccessibility *)&v13 cellForItem:itemCopy atIndexPath:path];
  v8 = UIAccessibilityTraitNone;
  v9 = [itemCopy safeStringForKey:{@"ntk_identifier", v13.receiver, v13.super_class}];

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