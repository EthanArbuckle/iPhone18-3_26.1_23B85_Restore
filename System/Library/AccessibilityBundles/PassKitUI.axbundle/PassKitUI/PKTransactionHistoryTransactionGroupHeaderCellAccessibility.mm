@interface PKTransactionHistoryTransactionGroupHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PKTransactionHistoryTransactionGroupHeaderCellAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKTransactionHistoryTransactionGroupHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKTransactionHistoryTransactionGroupHeaderCell" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"PKTransactionHistoryTransactionGroupHeaderCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
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

- (PKTransactionHistoryTransactionGroupHeaderCellAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryTransactionGroupHeaderCellAccessibility;
  v3 = [(PKTransactionHistoryTransactionGroupHeaderCellAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PKTransactionHistoryTransactionGroupHeaderCellAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end