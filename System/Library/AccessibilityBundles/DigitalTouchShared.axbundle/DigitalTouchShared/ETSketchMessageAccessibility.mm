@interface ETSketchMessageAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityColorOfStroke:(unint64_t)stroke;
- (id)_accessibilityStringForColorCounts:(id)counts;
- (id)_accessibilityStrokeDescription;
- (id)accessibilityLabel;
- (void)_accessibilityIncrementNumberOfKey:(id)key inDictionary:(id)dictionary;
@end

@implementation ETSketchMessageAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETSketchMessage" isKindOfClass:@"ETMessage"];
  [validationsCopy validateClass:@"ETMessage" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ETSketchMessage" hasInstanceMethod:@"strokes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ETSketchMessage" hasInstanceMethod:@"colorsInMessage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ETSketchMessage" hasInstanceMethod:@"numberOfColors" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"ETSketchMessage" hasInstanceMethod:@"hasMultipleColors" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"sketch.message");
  _accessibilityStrokeDescription = [(ETSketchMessageAccessibility *)self _accessibilityStrokeDescription];
  v6 = [v3 stringWithFormat:v4, _accessibilityStrokeDescription];

  return v6;
}

- (id)_accessibilityStrokeDescription
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v11 = 0;
  objc_opt_class();
  v4 = [(ETSketchMessageAccessibility *)self safeValueForKey:@"strokes"];
  v5 = __UIAccessibilityCastAsClass();

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __63__ETSketchMessageAccessibility__accessibilityStrokeDescription__block_invoke;
  v9[3] = &unk_29F2BAB68;
  v9[4] = self;
  v10 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = [(ETSketchMessageAccessibility *)self _accessibilityStringForColorCounts:v6];

  return v7;
}

void __63__ETSketchMessageAccessibility__accessibilityStrokeDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityColorOfStroke:?];
  [*(a1 + 32) _accessibilityIncrementNumberOfKey:v2 inDictionary:*(a1 + 40)];
}

- (id)_accessibilityStringForColorCounts:(id)counts
{
  countsCopy = counts;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __67__ETSketchMessageAccessibility__accessibilityStringForColorCounts___block_invoke;
  v6[3] = &unk_29F2BAB90;
  v6[4] = &v7;
  [countsCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __67__ETSketchMessageAccessibility__accessibilityStringForColorCounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x29EDBA0F8];
  v6 = a3;
  v7 = a2;
  v8 = accessibilityLocalizedString(@"stroke.color.description");
  v9 = [v6 integerValue];

  v15 = [v5 localizedStringWithFormat:v8, v9];

  v10 = *(*(*(a1 + 32) + 8) + 40);
  v11 = [v7 axColorStringForSpeaking];

  v12 = __AXStringForVariables();
  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (void)_accessibilityIncrementNumberOfKey:(id)key inDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v7 = [dictionaryCopy objectForKey:keyCopy];
  v8 = MEMORY[0x29EDBA070];
  v11 = v7;
  if (v7)
  {
    v9 = [v7 integerValue] + 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v8 numberWithInteger:v9];
  [dictionaryCopy setObject:v10 forKey:keyCopy];
}

- (id)_accessibilityColorOfStroke:(unint64_t)stroke
{
  if ([(ETSketchMessageAccessibility *)self safeBoolForKey:@"hasMultipleColors"])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy_;
    v10 = __Block_byref_object_dispose_;
    v11 = 0;
    AXPerformSafeBlock();
    v4 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v4 = [(ETSketchMessageAccessibility *)self safeValueForKey:@"color"];
  }

  return v4;
}

void __60__ETSketchMessageAccessibility__accessibilityColorOfStroke___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) safeValueForKey:@"numberOfColors"];
  v4 = [v3 integerValue];

  if (v2 < v4)
  {
    v8 = [*(a1 + 32) safeValueForKey:@"_colorsInMessage"];
    v5 = [v8 objectAtIndex:*(a1 + 48)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

@end