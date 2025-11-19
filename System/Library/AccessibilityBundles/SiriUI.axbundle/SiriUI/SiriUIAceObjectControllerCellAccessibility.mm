@interface SiriUIAceObjectControllerCellAccessibility
- (id)accessibilityIdentifier;
@end

@implementation SiriUIAceObjectControllerCellAccessibility

- (id)accessibilityIdentifier
{
  v2 = [(SiriUIAceObjectControllerCellAccessibility *)self safeValueForKey:@"aceViewController"];
  v3 = [v2 safeValueForKey:@"aceObject"];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = v3;
  AXPerformSafeBlock();
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    v7 = v4;
    AXPerformSafeBlock();
    v5 = v9[5];

    _Block_object_dispose(&v8, 8);
  }

  return v5;
}

uint64_t __69__SiriUIAceObjectControllerCellAccessibility_accessibilityIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) propertyForKey:@"dialogIdentifier"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __69__SiriUIAceObjectControllerCellAccessibility_accessibilityIdentifier__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) propertyForKey:@"$group"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end