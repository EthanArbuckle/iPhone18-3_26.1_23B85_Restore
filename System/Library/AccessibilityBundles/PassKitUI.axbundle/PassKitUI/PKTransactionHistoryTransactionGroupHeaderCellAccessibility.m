@interface PKTransactionHistoryTransactionGroupHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PKTransactionHistoryTransactionGroupHeaderCellAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKTransactionHistoryTransactionGroupHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKTransactionHistoryTransactionGroupHeaderCell" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"PKTransactionHistoryTransactionGroupHeaderCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryTransactionGroupHeaderCellAccessibility;
  [(PKTransactionHistoryTransactionGroupHeaderCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(PKTransactionHistoryTransactionGroupHeaderCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:v3];
}

- (PKTransactionHistoryTransactionGroupHeaderCellAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryTransactionGroupHeaderCellAccessibility;
  v3 = [(PKTransactionHistoryTransactionGroupHeaderCellAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PKTransactionHistoryTransactionGroupHeaderCellAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end