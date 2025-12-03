@interface NTKPeopleDetailComplicationPickerDataSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation NTKPeopleDetailComplicationPickerDataSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKPeopleDetailComplicationPickerDataSource" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"NTKPeopleDetailComplicationPickerDataSource" hasInstanceMethod:@"_itemIsSelectedAtIndexPath:" withFullSignature:{"B", "@", 0}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = NTKPeopleDetailComplicationPickerDataSourceAccessibility;
  v8 = [(NTKPeopleDetailComplicationPickerDataSourceAccessibility *)&v16 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9 = pathCopy;
  AXPerformSafeBlock();
  LODWORD(pathCopy) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  v10 = &UIAccessibilityTraitSelected;
  if (!pathCopy)
  {
    v10 = &UIAccessibilityTraitNone;
  }

  [v8 setAccessibilityTraits:*v10];

  return v8;
}

id __92__NTKPeopleDetailComplicationPickerDataSourceAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _itemIsSelectedAtIndexPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end