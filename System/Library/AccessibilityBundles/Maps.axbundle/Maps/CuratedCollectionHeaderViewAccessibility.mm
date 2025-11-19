@interface CuratedCollectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotatePublisherLogoImageView;
- (void)_updateHeaderContent;
@end

@implementation CuratedCollectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CuratedCollectionHeaderView" hasInstanceVariable:@"_titleSingleLineLabel" withType:"UILabel"];
  [v3 validateClass:@"CuratedCollectionHeaderView" hasInstanceVariable:@"_titleMultiLineLabel" withType:"UILabel"];
  [v3 validateClass:@"CuratedCollectionHeaderView" hasInstanceVariable:@"_publisherLogoImageView" withType:"UIImageView"];
  [v3 validateClass:@"CuratedCollectionHeaderView" hasInstanceMethod:@"curatedCollection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CuratedCollectionHeaderView" hasInstanceMethod:@"_updateHeaderContent" withFullSignature:{"v", 0}];
}

- (void)_axAnnotatePublisherLogoImageView
{
  v5 = [(CuratedCollectionHeaderViewAccessibility *)self safeValueForKey:@"_publisherLogoImageView"];
  v3 = [(CuratedCollectionHeaderViewAccessibility *)self safeValueForKey:@"curatedCollection"];
  v4 = AXPublisherDescriptionForCollection(v3);

  [v5 setIsAccessibilityElement:{objc_msgSend(v4, "length") != 0}];
  [v5 setAccessibilityLabel:v4];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CuratedCollectionHeaderViewAccessibility;
  [(CuratedCollectionHeaderViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7FD0];
  v4 = *MEMORY[0x29EDC7F80];
  v5 = [(CuratedCollectionHeaderViewAccessibility *)self safeValueForKey:@"_titleSingleLineLabel"];
  [v5 setAccessibilityTraits:v4 | v3];

  v6 = [(CuratedCollectionHeaderViewAccessibility *)self safeValueForKey:@"_titleMultiLineLabel"];
  [v6 setAccessibilityTraits:v4 | v3];

  [(CuratedCollectionHeaderViewAccessibility *)self _axAnnotatePublisherLogoImageView];
}

- (void)_updateHeaderContent
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionHeaderViewAccessibility;
  [(CuratedCollectionHeaderViewAccessibility *)&v3 _updateHeaderContent];
  [(CuratedCollectionHeaderViewAccessibility *)self _axAnnotatePublisherLogoImageView];
}

@end