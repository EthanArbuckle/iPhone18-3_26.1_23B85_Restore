@interface NTKPeopleDetailComplicationPickerDataSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation NTKPeopleDetailComplicationPickerDataSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKPeopleDetailComplicationPickerDataSource" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"NTKPeopleDetailComplicationPickerDataSource" hasInstanceMethod:@"_itemIsSelectedAtIndexPath:" withFullSignature:{"B", "@", 0}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = NTKPeopleDetailComplicationPickerDataSourceAccessibility;
  v8 = [(NTKPeopleDetailComplicationPickerDataSourceAccessibility *)&v16 tableView:v6 cellForRowAtIndexPath:v7];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9 = v7;
  AXPerformSafeBlock();
  LODWORD(v7) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  v10 = &UIAccessibilityTraitSelected;
  if (!v7)
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