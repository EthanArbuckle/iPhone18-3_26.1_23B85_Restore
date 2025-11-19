@interface PKPaymentPassDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_infoCellWithDescription:(id)a3 forTableView:(id)a4;
- (id)_linkCellWithText:(id)a3 forTableView:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)_cardInfoSectionGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLabelIssuerLogo;
- (void)_axLoadAccessibilityInformationForCell:(id)a3 atIndexPath:(id)a4;
- (void)_axSetSanitizedLabelForCell:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PKPaymentPassDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentPassDetailViewController" isKindOfClass:@"PKDynamicTableViewController"];
  [v3 validateClass:@"PKPassField" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaymentPassDetailViewController" hasInstanceVariable:@"_logoView" withType:"UIImageView"];
  [v3 validateClass:@"PKDynamicTableViewController" hasInstanceMethod:@"indexOfSectionIdentifier:" withFullSignature:{"q", "@", 0}];
  [v3 validateClass:@"PKPaymentPassDetailViewController" hasInstanceMethod:@"_cardInfoSectionGenerateCellWithOutput:forRowIndex:tableView:" withFullSignature:{"Q", "^@", "q", "@", 0}];
  [v3 validateClass:@"PKPaymentPassDetailViewController" hasInstanceMethod:@"_linkCellWithText:forTableView:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"PKPaymentPassDetailViewController" hasInstanceMethod:@"_infoCellWithDescription:forTableView:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"PKPaymentPassDetailViewController" hasInstanceMethod:@"viewDidLayoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PKSectionTableViewController" hasInstanceMethod:@"shouldMapSection:" withFullSignature:{"B", "Q", 0}];
  [v3 validateClass:@"PKPass" hasInstanceMethod:@"fieldForKey:" withFullSignature:{"@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PKPaymentPassDetailViewControllerAccessibility;
  [(PKPaymentPassDetailViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PKPaymentPassDetailViewControllerAccessibility *)self _axLabelIssuerLogo];
}

- (void)_axLoadAccessibilityInformationForCell:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10 = a4;
  AXPerformSafeBlock();
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  v9 = v5;
  v7 = v5;
  v8 = v10;
  AXPerformSafeBlock();
}

void __101__PKPaymentPassDetailViewControllerAccessibility__axLoadAccessibilityInformationForCell_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(*(a1 + 40), "section")}];
  v3 = [v4 stringValue];
  *(*(*(a1 + 48) + 8) + 24) = [v2 indexOfSectionIdentifier:v3];
}

void __101__PKPaymentPassDetailViewControllerAccessibility__axLoadAccessibilityInformationForCell_atIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 33)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __101__PKPaymentPassDetailViewControllerAccessibility__axLoadAccessibilityInformationForCell_atIndexPath___block_invoke_3;
    v14 = &unk_29F2E1C50;
    v15 = *(a1 + 32);
    v16 = &v17;
    AXPerformSafeBlock();
    v3 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    if (v3 == 1)
    {
      if ([*(a1 + 40) row] != 1)
      {
        return;
      }

LABEL_8:
      [*(a1 + 32) _axSetSanitizedLabelForCell:{*(a1 + 48), v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
      return;
    }

    v2 = *(a1 + 56);
  }

  if (v2 == 34)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = __101__PKPaymentPassDetailViewControllerAccessibility__axLoadAccessibilityInformationForCell_atIndexPath___block_invoke_4;
    v8 = &unk_29F2E1C50;
    v9 = *(a1 + 32);
    v10 = &v17;
    AXPerformSafeBlock();
    v4 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    if (v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t __101__PKPaymentPassDetailViewControllerAccessibility__axLoadAccessibilityInformationForCell_atIndexPath___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) shouldMapSection:33];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __101__PKPaymentPassDetailViewControllerAccessibility__axLoadAccessibilityInformationForCell_atIndexPath___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) shouldMapSection:34];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_axLabelIssuerLogo
{
  v3 = accessibilityLocalizedString(@"issue.name.image");
  v4 = [(PKPaymentPassDetailViewControllerAccessibility *)self safeUIViewForKey:@"_logoView"];
  [v4 setAccessibilityLabel:v3];

  v5 = [(PKPaymentPassDetailViewControllerAccessibility *)self safeUIViewForKey:@"_logoView"];
  [v5 setIsAccessibilityElement:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaymentPassDetailViewControllerAccessibility;
  [(PKPaymentPassDetailViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(PKPaymentPassDetailViewControllerAccessibility *)self _axLabelIssuerLogo];
}

- (id)_linkCellWithText:(id)a3 forTableView:(id)a4
{
  v6.receiver = self;
  v6.super_class = PKPaymentPassDetailViewControllerAccessibility;
  v4 = [(PKPaymentPassDetailViewControllerAccessibility *)&v6 _linkCellWithText:a3 forTableView:a4];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  return v4;
}

- (unint64_t)_cardInfoSectionGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5
{
  v10.receiver = self;
  v10.super_class = PKPaymentPassDetailViewControllerAccessibility;
  v8 = [(PKPaymentPassDetailViewControllerAccessibility *)&v10 _cardInfoSectionGenerateCellWithOutput:a3 forRowIndex:a4 tableView:a5];
  if (a3 && !a4)
  {
    [(PKPaymentPassDetailViewControllerAccessibility *)self _axSetSanitizedLabelForCell:*a3];
  }

  return v8;
}

- (id)_infoCellWithDescription:(id)a3 forTableView:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentPassDetailViewControllerAccessibility;
  v4 = [(PKPaymentPassDetailViewControllerAccessibility *)&v7 _infoCellWithDescription:a3 forTableView:a4];
  v5 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:v5 & ~*MEMORY[0x29EDC7F70]];

  return v4;
}

- (void)_axSetSanitizedLabelForCell:(id)a3
{
  v3 = a3;
  NSClassFromString(&cfstr_Pkstackedlabel.isa);
  if (objc_opt_isKindOfClass())
  {
    [v3 safeValueForKey:@"_detailLabel"];
  }

  else
  {
    [v3 detailTextLabel];
  }
  v4 = ;

  v5 = [v4 safeStringForKey:@"text"];
  v6 = PKPANMask();
  v7 = [v5 containsString:v6];

  if (v7)
  {
    v8 = [v4 safeStringForKey:@"text"];
    v9 = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
    v10 = [v9 invertedSet];
    v11 = [v8 componentsSeparatedByCharactersInSet:v10];
    v12 = [v11 componentsJoinedByString:&stru_2A22657E8];

    v13 = [MEMORY[0x29EDB9F50] controlCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];

    v15 = MEMORY[0x29EDBD7E8];
    v16 = MEMORY[0x29EDBA0F8];
    v17 = accessibilityLocalizedString(@"ends.with");
    v18 = [v16 stringWithFormat:v17, v14];
    v19 = [v15 axAttributedStringWithString:v18];

    [v19 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD9D0]];
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __78__PKPaymentPassDetailViewControllerAccessibility__axSetSanitizedLabelForCell___block_invoke;
    v21[3] = &unk_29F2E1E88;
    v22 = v19;
    v20 = v19;
    [v4 _setAccessibilityLabelBlock:v21];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = PKPaymentPassDetailViewControllerAccessibility;
  v6 = a4;
  v7 = [(PKPaymentPassDetailViewControllerAccessibility *)&v9 tableView:a3 cellForRowAtIndexPath:v6];
  [(PKPaymentPassDetailViewControllerAccessibility *)self _axLoadAccessibilityInformationForCell:v7 atIndexPath:v6, v9.receiver, v9.super_class];

  return v7;
}

@end