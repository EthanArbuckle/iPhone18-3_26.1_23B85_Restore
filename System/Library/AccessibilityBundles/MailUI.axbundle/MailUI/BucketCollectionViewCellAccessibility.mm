@interface BucketCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation BucketCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailUI.BucketCollectionViewCell" hasSwiftField:@"item" withSwiftType:"Optional<BucketItem>"];
  [v3 validateClass:@"MailUI.BucketItem" hasSwiftField:@"title" withSwiftType:"String"];
  [v3 validateClass:@"MailUI.BucketItem" hasSwiftField:@"isUnseen" withSwiftType:"Bool"];
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
    v4 = accessibilityLocalizedString(@"category.unread");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BucketCollectionViewCellAccessibility;
    v4 = [(BucketCollectionViewCellAccessibility *)&v7 accessibilityValue];
  }

  v5 = v4;

  return v5;
}

@end