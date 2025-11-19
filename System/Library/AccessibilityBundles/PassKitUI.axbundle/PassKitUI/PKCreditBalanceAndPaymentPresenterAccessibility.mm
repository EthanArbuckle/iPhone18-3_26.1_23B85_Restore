@interface PKCreditBalanceAndPaymentPresenterAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_configurePaymentDueCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
@end

@implementation PKCreditBalanceAndPaymentPresenterAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKDashboardCreditAccountItem" hasInstanceMethod:@"account" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardCreditAccountItem" hasInstanceMethod:@"mostRecentTransactions" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardCreditAccountItem" hasInstanceMethod:@"pendingPayments" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardCreditAccountItem" hasInstanceMethod:@"upcomingScheduledPayments" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKCreditBalanceAndPaymentPresenter" hasInstanceMethod:@"_configurePaymentDueCell:forItem:inCollectionView:forIndexPath:" withFullSignature:{"v", "@", "@", "@", "@", 0}];
  [v3 validateClass:@"PKCreditAccountController" hasClassMethod:@"paymentEducationStateForAccount:mostRecentTransactions:pendingPayments:upcomingScheduledPayments:" withFullSignature:{"Q", "@", "@", "@", "@", 0}];
  [v3 validateClass:@"PKCreditPaymentDueCell" hasInstanceMethod:@"payButtonImage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKCreditPaymentDueCell" hasInstanceMethod:@"payButton" withFullSignature:{"@", 0}];
}

- (void)_configurePaymentDueCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PKCreditBalanceAndPaymentPresenterAccessibility;
  [(PKCreditBalanceAndPaymentPresenterAccessibility *)&v24 _configurePaymentDueCell:v10 forItem:v11 inCollectionView:v12 forIndexPath:v13];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19 = MEMORY[0x29EDCA5F8];
  v14 = v11;
  AXPerformSafeBlock();
  v15 = v21[3];

  _Block_object_dispose(&v20, 8);
  v16 = [v10 safeValueForKey:{@"payButtonImage", v19, 3221225472, __114__PKCreditBalanceAndPaymentPresenterAccessibility__configurePaymentDueCell_forItem_inCollectionView_forIndexPath___block_invoke, &unk_29F2E1C50}];

  if (v16 && v15 < 0xA && ((0x285u >> v15) & 1) != 0)
  {
    v17 = accessibilityLocalizedString(off_29F2E1C70[v15]);
    v18 = [v10 safeUIViewForKey:@"payButton"];
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