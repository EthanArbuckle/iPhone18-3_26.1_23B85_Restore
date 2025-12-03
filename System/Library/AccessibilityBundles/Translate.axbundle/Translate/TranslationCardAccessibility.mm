@interface TranslationCardAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (void)senseTapped:(id)tapped;
@end

@implementation TranslationCardAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axSourceLanguage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axSourceLanguageTranslationResult" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axTargetLanguage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axTargetLanguageTranslationResult" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axTranslationIsFavorited" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axCanPerformLookupAction" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axPerformFavoriteAction" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axPerformSpeakTranslationAction" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axPerformLookupAction" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"_axSenseHeader" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.TranslationCard" hasInstanceMethod:@"senseTapped:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBD7E8];
  v4 = [(TranslationCardAccessibility *)self safeValueForKey:@"_axSourceLanguageTranslationResult"];
  v5 = [v3 axAttributedStringWithString:v4];

  v6 = [(TranslationCardAccessibility *)self safeValueForKey:@"_axSourceLocale"];
  v7 = MEMORY[0x29EDBD918];
  [v5 setAttribute:v6 forKey:*MEMORY[0x29EDBD918]];

  v8 = MEMORY[0x29EDBD7E8];
  v9 = [(TranslationCardAccessibility *)self safeValueForKey:@"_axTargetLanguageTranslationResult"];
  v10 = [v8 axAttributedStringWithString:v9];

  v11 = [(TranslationCardAccessibility *)self safeValueForKey:@"_axTargetLocale"];
  [v10 setAttribute:v11 forKey:*v7];

  v12 = [(TranslationCardAccessibility *)self safeValueForKey:@"_axSourceLanguage"];
  v13 = [(TranslationCardAccessibility *)self safeValueForKey:@"_axTargetLanguage"];
  if ([(TranslationCardAccessibility *)self safeBoolForKey:@"_axTranslationIsFavorited"])
  {
    v14 = @"favorited";
  }

  else
  {
    v14 = &stru_2A234CCD8;
  }

  v17 = accessibilityLocalizedString(v14);
  v15 = __UIAXStringForVariables();

  return v15;
}

- (id)accessibilityCustomActions
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = objc_alloc(MEMORY[0x29EDC78E0]);
  if ([(TranslationCardAccessibility *)self safeBoolForKey:@"_axTranslationIsFavorited"])
  {
    v5 = @"remove.favorite.action";
  }

  else
  {
    v5 = @"favorite.action";
  }

  v6 = accessibilityLocalizedString(v5);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __58__TranslationCardAccessibility_accessibilityCustomActions__block_invoke;
  v17[3] = &unk_29F30B390;
  v17[4] = self;
  v7 = [v4 initWithName:v6 actionHandler:v17];
  [v3 addObject:v7];

  v8 = objc_alloc(MEMORY[0x29EDC78E0]);
  v9 = accessibilityLocalizedString(@"speak.translation.action");
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __58__TranslationCardAccessibility_accessibilityCustomActions__block_invoke_3;
  v16[3] = &unk_29F30B390;
  v16[4] = self;
  v10 = [v8 initWithName:v9 actionHandler:v16];
  [v3 addObject:v10];

  if ([(TranslationCardAccessibility *)self safeBoolForKey:@"_axCanPerformLookupAction"])
  {
    v11 = objc_alloc(MEMORY[0x29EDC78E0]);
    v12 = accessibilityLocalizedString(@"lookup.word.action");
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __58__TranslationCardAccessibility_accessibilityCustomActions__block_invoke_5;
    v15[3] = &unk_29F30B390;
    v15[4] = self;
    v13 = [v11 initWithName:v12 actionHandler:v15];
    [v3 addObject:v13];
  }

  return v3;
}

uint64_t __58__TranslationCardAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
  return 1;
}

uint64_t __58__TranslationCardAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
  return 1;
}

uint64_t __58__TranslationCardAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
  return 1;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = objc_opt_new();
  v4 = [(TranslationCardAccessibility *)self safeUIViewForKey:@"_axSenseHeader"];
  [v3 addObject:v4];

  v5 = [(TranslationCardAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_0];
  [v3 addObjectsFromArray:v5];
  v6 = [(TranslationCardAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_359];
  [v3 addObjectsFromArray:v6];

  return v3;
}

uint64_t __70__TranslationCardAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3CDB0](@"SequoiaTranslator.SenseRow");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __70__TranslationCardAccessibility__accessibilitySupplementaryFooterViews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)senseTapped:(id)tapped
{
  v8.receiver = self;
  v8.super_class = TranslationCardAccessibility;
  [(TranslationCardAccessibility *)&v8 senseTapped:tapped];
  v4 = MEMORY[0x29EDBD7E8];
  v5 = [(TranslationCardAccessibility *)self safeValueForKey:@"_axTargetLanguageTranslationResult"];
  v6 = [v4 axAttributedStringWithString:v5];

  v7 = [(TranslationCardAccessibility *)self safeValueForKey:@"_axTargetLocale"];
  [v6 setAttribute:v7 forKey:*MEMORY[0x29EDBD918]];

  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end