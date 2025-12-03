@interface ISInternationalViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forPreferredLanguageAtIndex:(unint64_t)index;
@end

@implementation ISInternationalViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ISInternationalViewController" hasInstanceMethod:@"updateCell: forPreferredLanguageAtIndex:" withFullSignature:{"v", "@", "Q", 0}];
  [validationsCopy validateClass:@"ISInternationalViewController" hasInstanceMethod:@"updatedAppleLanguages" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ISInternationalViewController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)updateCell:(id)cell forPreferredLanguageAtIndex:(unint64_t)index
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = ISInternationalViewControllerAccessibility;
  [(ISInternationalViewControllerAccessibility *)&v10 updateCell:cellCopy forPreferredLanguageAtIndex:index];
  v7 = [(ISInternationalViewControllerAccessibility *)self safeValueForKey:@"updatedAppleLanguages"];
  preferredLanguages = __UIAccessibilitySafeClass();

  if (!preferredLanguages)
  {
    preferredLanguages = [MEMORY[0x29EDB8DE0] preferredLanguages];
  }

  if ([preferredLanguages count] > index)
  {
    v9 = [preferredLanguages objectAtIndexedSubscript:index];
    [cellCopy accessibilitySetIdentification:@"LanguageCell"];
    [cellCopy _accessibilitySetRetainedValue:v9 forKey:@"axLanguage"];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = ISInternationalViewControllerAccessibility;
  v8 = [(ISInternationalViewControllerAccessibility *)&v20 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  if ([pathCopy section])
  {
    name = 0;
  }

  else
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    [v10 indexForIndexPath:pathCopy];

    objc_opt_class();
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    AXPerformSafeBlock();
    v11 = v15[5];
    _Block_object_dispose(&v14, 8);

    v12 = __UIAccessibilityCastAsClass();

    name = [v12 name];
  }

  if ([(__CFString *)name isEqualToString:@"pt"])
  {

    name = @"pt-BR";
  }

  [v8 accessibilitySetIdentification:@"LanguageCell"];
  [v8 _accessibilitySetRetainedValue:name forKey:@"axLanguage"];

  return v8;
}

void __78__ISInternationalViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"_specifiers"];
  v2 = [v5 objectAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end