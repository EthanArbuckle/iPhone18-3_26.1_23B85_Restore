@interface PKCreditBalanceAndPaymentPresenterAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_configurePaymentDueCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
@end

@implementation PKCreditBalanceAndPaymentPresenterAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKDashboardCreditAccountItem" hasInstanceMethod:@"account" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDashboardCreditAccountItem" hasInstanceMethod:@"mostRecentTransactions" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDashboardCreditAccountItem" hasInstanceMethod:@"pendingPayments" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDashboardCreditAccountItem" hasInstanceMethod:@"upcomingScheduledPayments" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKCreditBalanceAndPaymentPresenter" hasInstanceMethod:@"_configurePaymentDueCell:forItem:inCollectionView:forIndexPath:" withFullSignature:{"v", "@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"PKCreditAccountController" hasClassMethod:@"paymentEducationStateForAccount:mostRecentTransactions:pendingPayments:upcomingScheduledPayments:" withFullSignature:{"Q", "@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"PKCreditPaymentDueCell" hasInstanceMethod:@"payButtonImage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKCreditPaymentDueCell" hasInstanceMethod:@"payButton" withFullSignature:{"@", 0}];
}

- (void)_configurePaymentDueCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = PKCreditBalanceAndPaymentPresenterAccessibility;
  [(PKCreditBalanceAndPaymentPresenterAccessibility *)&v24 _configurePaymentDueCell:cellCopy forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19 = MEMORY[0x29EDCA5F8];
  v14 = itemCopy;
  AXPerformSafeBlock();
  v15 = v21[3];

  _Block_object_dispose(&v20, 8);
  v16 = [cellCopy safeValueForKey:{@"payButtonImage", v19, 3221225472, __114__PKCreditBalanceAndPaymentPresenterAccessibility__configurePaymentDueCell_forItem_inCollectionView_forIndexPath___block_invoke, &unk_29F2E1C50}];

  if (v16 && v15 < 0xA && ((0x285u >> v15) & 1) != 0)
  {
    v17 = accessibilityLocalizedString(off_29F2E1C70[v15]);
    v18 = [cellCopy safeUIViewForKey:@"payButton"];
    [v18 setAccessibilityLabel:v17];
  }
}

void __114__PKCreditBalanceAndPaymentPresenterAccessibility__configurePaymentDueCell_forItem_inCollectionView_forIndexPath___block_invoke(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Pkcreditaccoun.isa);
  v6 = [*(a1 + 32) safeValueForKey:@"account"];
  v3 = [*(a1 + 32) safeValueForKey:@"mostRecentTransactions"];
  v4 = [*(a1 + 32) safeValueForKey:@"pendingPayments"];
  v5 = [*(a1 + 32) safeValueForKey:@"upcomingScheduledPayments"];
  *(*(*(a1 + 40) + 8) + 24) = [(objc_class *)v2 paymentEducationStateForAccount:v6 mostRecentTransactions:v3 pendingPayments:v4 upcomingScheduledPayments:v5];
}

@end