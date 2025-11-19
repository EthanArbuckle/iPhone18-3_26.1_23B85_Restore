@interface ISInternationalViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forPreferredLanguageAtIndex:(unint64_t)a4;
@end

@implementation ISInternationalViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ISInternationalViewController" hasInstanceMethod:@"updateCell: forPreferredLanguageAtIndex:" withFullSignature:{"v", "@", "Q", 0}];
  [v3 validateClass:@"ISInternationalViewController" hasInstanceMethod:@"updatedAppleLanguages" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ISInternationalViewController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)updateCell:(id)a3 forPreferredLanguageAtIndex:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = ISInternationalViewControllerAccessibility;
  [(ISInternationalViewControllerAccessibility *)&v10 updateCell:v6 forPreferredLanguageAtIndex:a4];
  v7 = [(ISInternationalViewControllerAccessibility *)self safeValueForKey:@"updatedAppleLanguages"];
  v8 = __UIAccessibilitySafeClass();

  if (!v8)
  {
    v8 = [MEMORY[0x29EDB8DE0] preferredLanguages];
  }

  if ([v8 count] > a4)
  {
    v9 = [v8 objectAtIndexedSubscript:a4];
    [v6 accessibilitySetIdentification:@"LanguageCell"];
    [v6 _accessibilitySetRetainedValue:v9 forKey:@"axLanguage"];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ISInternationalViewControllerAccessibility;
  v8 = [(ISInternationalViewControllerAccessibility *)&v20 tableView:v6 cellForRowAtIndexPath:v7];
  if ([v7 section])
  {
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    [v10 indexForIndexPath:v7];

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

    v9 = [v12 name];
  }

  if ([(__CFString *)v9 isEqualToString:@"pt"])
  {

    v9 = @"pt-BR";
  }

  [v8 accessibilitySetIdentification:@"LanguageCell"];
  [v8 _accessibilitySetRetainedValue:v9 forKey:@"axLanguage"];

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