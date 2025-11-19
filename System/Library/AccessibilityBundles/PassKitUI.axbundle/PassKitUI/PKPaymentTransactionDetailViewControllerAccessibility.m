@interface PKPaymentTransactionDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_tableView:(id)a3 actionButtonCellForSection:(unint64_t)a4;
- (id)_transactionIdentifierCellForTableView:(id)a3;
- (void)_handleTransactionHeaderTapRecognizer:(id)a3;
@end

@implementation PKPaymentTransactionDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentTransactionDetailViewController" hasInstanceMethod:@"_tableView:actionButtonCellForSection:" withFullSignature:{"@", "@", "Q", 0}];
  [v3 validateClass:@"PKPaymentTransactionDetailViewController" hasInstanceMethod:@"_transactionIdentifierCellForTableView:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"PKPaymentTransactionDetailViewController" hasInstanceMethod:@"_handleTransactionHeaderTapRecognizer:" withFullSignature:{"v", "@", 0}];
}

- (id)_transactionIdentifierCellForTableView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentTransactionDetailViewControllerAccessibility;
  v5 = [(PKPaymentTransactionDetailViewControllerAccessibility *)&v11 _transactionIdentifierCellForTableView:v4];
  objc_initWeak(&location, v5);
  v6 = [v5 detailTextLabel];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __96__PKPaymentTransactionDetailViewControllerAccessibility__transactionIdentifierCellForTableView___block_invoke;
  v8[3] = &unk_29F2E1B98;
  objc_copyWeak(&v9, &location);
  [v6 _setAccessibilityLabelBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

id __96__PKPaymentTransactionDetailViewControllerAccessibility__transactionIdentifierCellForTableView___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x29EDBD7E8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained detailTextLabel];
  v4 = [v3 text];
  v5 = [v1 axAttributedStringWithString:v4];

  [v5 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD930]];

  return v5;
}

- (void)_handleTransactionHeaderTapRecognizer:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKPaymentTransactionDetailViewControllerAccessibility;
  [(PKPaymentTransactionDetailViewControllerAccessibility *)&v3 _handleTransactionHeaderTapRecognizer:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_tableView:(id)a3 actionButtonCellForSection:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = PKPaymentTransactionDetailViewControllerAccessibility;
  v4 = [(PKPaymentTransactionDetailViewControllerAccessibility *)&v6 _tableView:a3 actionButtonCellForSection:a4];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  return v4;
}

@end