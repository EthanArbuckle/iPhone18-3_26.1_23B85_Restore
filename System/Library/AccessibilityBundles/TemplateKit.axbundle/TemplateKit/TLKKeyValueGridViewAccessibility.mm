@interface TLKKeyValueGridViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation TLKKeyValueGridViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKKeyValueGridView" hasInstanceMethod:@"keyLabels" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKKeyValueGridView" hasInstanceMethod:@"valueLabels" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(TLKKeyValueGridViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
    v7 = [(TLKKeyValueGridViewAccessibility *)self safeArrayForKey:@"keyLabels"];
    v8 = [(TLKKeyValueGridViewAccessibility *)self safeArrayForKey:@"valueLabels"];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __57__TLKKeyValueGridViewAccessibility_accessibilityElements__block_invoke;
    v12[3] = &unk_29F309C28;
    v13 = v8;
    v14 = self;
    v9 = v6;
    v15 = v9;
    v10 = v8;
    [v7 enumerateObjectsUsingBlock:v12];
    [(TLKKeyValueGridViewAccessibility *)self _accessibilitySetRetainedValue:v9 forKey:*v3];
    v5 = v9;
  }

  return v5;
}

void __57__TLKKeyValueGridViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = MEMORY[0x29EDB8DE8];
  v6 = a2;
  v9 = [v5 array];
  [v9 addObject:v6];

  if ([*(a1 + 32) count] > a3)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    [v9 addObject:v7];
  }

  v8 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:*(a1 + 40) representedElements:v9];
  [*(a1 + 48) addObject:v8];
}

@end