@interface SVSBaseViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SVSBaseViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SVSBaseViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SharingViewService.B389DoneViewController"];
  [v3 validateClass:@"SharingViewService.B389DoneViewController" isKindOfClass:@"SVSBaseViewController"];
  [v3 validateClass:@"SVSCurrentLocationIndicator"];
  [v3 validateClass:@"SVSBaseViewController" hasInstanceMethod:@"containerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SVSBaseViewController" hasInstanceMethod:@"mainController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SharingViewService.B389SetupMainViewController" hasInstanceMethod:@"accessibilitySession" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SPPairingSession" hasInstanceMethod:@"pairingLocation" withFullSignature:{"@", 0}];
}

BOOL __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED35320](@"UIStackView");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 subviews];
    v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_329];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED35320](@"SVSCurrentLocationIndicator");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED35320](@"UIImageView");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 superview];
    MEMORY[0x29ED35320](@"UIButton");
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void __52__SVSBaseViewControllerAccessibility_viewDidAppear___block_invoke_345(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    _AXLogWithFacility();
  }

  else
  {
    v16 = [a2 firstObject];
    v4 = [v16 name];
    v5 = [v16 thoroughfare];
    v6 = [v16 locality];
    v7 = [v16 administrativeArea];
    v8 = [v16 postalCode];
    v9 = [v16 country];
    v10 = [v16 inlandWater];
    v11 = [v16 ocean];
    v12 = __UIAXStringForVariables();
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v15 = v9;
      if (v9 || (v15 = v10) != 0 || (v15 = v11) != 0)
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), v15);
      }
    }
  }
}

@end