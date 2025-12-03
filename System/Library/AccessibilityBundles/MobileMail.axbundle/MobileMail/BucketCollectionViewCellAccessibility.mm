@interface BucketCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation BucketCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BucketCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"BucketCollectionViewCell" hasInstanceMethod:@"accessibilityBucketCollectConfiguration" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(BucketCollectionViewCellAccessibility *)self safeArrayForKey:@"accessibilityBucketCollectConfiguration"];
  objc_opt_class();
  v3 = [v2 axSafeObjectAtIndex:0];
  v4 = __UIAccessibilityCastAsClass();

  if (![v4 length])
  {
    objc_opt_class();
    v5 = [v2 axSafeObjectAtIndex:1];
    v6 = __UIAccessibilityCastAsClass();

    lowercaseString = [v6 lowercaseString];
    v8 = [lowercaseString isEqualToString:@"clock"];

    if (v8)
    {
      v9 = accessibilityLocalizedString(@"mail.filter.button.later");

      goto LABEL_6;
    }
  }

  v9 = v4;
LABEL_6:

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = BucketCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(BucketCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end