@interface SymbolCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SymbolCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SymbolCollectionViewCell" hasInstanceVariable:@"_symbolName" withType:"NSString"];
  [validationsCopy validateClass:@"SymbolCollectionViewCell" hasInstanceVariable:@"_showsSelection" withType:"BOOL"];
}

- (id)accessibilityLabel
{
  v2 = [(SymbolCollectionViewCellAccessibility *)self safeStringForKey:@"_symbolName"];
  v3 = profileSymbolAccessibilityLabel(v2);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = SymbolCollectionViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(SymbolCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(SymbolCollectionViewCellAccessibility *)self safeBoolForKey:@"_showsSelection"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end