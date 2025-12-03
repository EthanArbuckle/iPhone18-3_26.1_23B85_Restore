@interface BucketCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation BucketCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailUI.BucketCollectionViewCell" hasSwiftField:@"item" withSwiftType:"Optional<BucketItem>"];
  [validationsCopy validateClass:@"MailUI.BucketItem" hasSwiftField:@"title" withSwiftType:"String"];
  [validationsCopy validateClass:@"MailUI.BucketItem" hasSwiftField:@"isUnseen" withSwiftType:"Bool"];
}

- (id)accessibilityLabel
{
  v2 = [(BucketCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"item"];
  v3 = [v2 safeSwiftValueForKey:@"title"];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(BucketCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"item"];
  if ([v3 safeSwiftBoolForKey:@"isUnseen"])
  {
    accessibilityValue = accessibilityLocalizedString(@"category.unread");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BucketCollectionViewCellAccessibility;
    accessibilityValue = [(BucketCollectionViewCellAccessibility *)&v7 accessibilityValue];
  }

  v5 = accessibilityValue;

  return v5;
}

@end