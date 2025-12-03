@interface RUIWebContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (float)_accessibilityActivationDelay;
- (id)_axSubviewText;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation RUIWebContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RUIWebContainerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RUIWebContainerView" hasInstanceMethod:@"webView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RUITableViewRow" hasInstanceMethod:@"linkedPage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RUITableViewRow" hasInstanceMethod:@"tableCell" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RemoteUITableViewCell" hasInstanceMethod:@"remoteUIAccessoryType" withFullSignature:{"q", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(RUIWebContainerViewAccessibility *)self safeValueForKey:@"delegate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes = [v3 attributes];
    v5 = [attributes objectForKey:@"class"];
    isAccessibilityElement = [v5 isEqualToString:@"htmlLink"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RUIWebContainerViewAccessibility;
    isAccessibilityElement = [(RUIWebContainerViewAccessibility *)&v8 isAccessibilityElement];
  }

  return isAccessibilityElement;
}

- (id)_axSubviewText
{
  v2 = [(RUIWebContainerViewAccessibility *)self safeUIViewForKey:@"webView"];
  defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v4 = [v2 _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];
  v5 = MEMORY[0x29C2EAA00]();

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(RUIWebContainerViewAccessibility *)self safeValueForKey:@"delegate"];
  v4 = [(RUIWebContainerViewAccessibility *)self safeValueForKeyPath:@"delegate.tableCell.remoteUIAccessoryType"];
  intValue = [v4 intValue];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = [v3 safeValueForKey:@"linkedPage"];

  if (v6)
  {
    goto LABEL_6;
  }

  if (intValue == 1 && (-[RUIWebContainerViewAccessibility accessibilityContainer](self, "accessibilityContainer"), v7 = objc_claimAutoreleasedReturnValue(), [v7 _accessibilityFindSubviewDescendant:&__block_literal_global_0], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    [v8 accessibilityActivationPoint];
    v10 = v9;
    v12 = v11;
  }

  else
  {
LABEL_6:
    v17.receiver = self;
    v17.super_class = RUIWebContainerViewAccessibility;
    [(RUIWebContainerViewAccessibility *)&v17 accessibilityActivationPoint];
    v10 = v13;
    v12 = v14;
  }

  v15 = v10;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

uint64_t __64__RUIWebContainerViewAccessibility_accessibilityActivationPoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2EA9F0](@"_UITableCellAccessoryButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  if ([(RUIWebContainerViewAccessibility *)self isAccessibilityElement])
  {
    _axSubviewText = [(RUIWebContainerViewAccessibility *)self _axSubviewText];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = RUIWebContainerViewAccessibility;
    _axSubviewText = [(RUIWebContainerViewAccessibility *)&v5 accessibilityLabel];
  }

  return _axSubviewText;
}

- (float)_accessibilityActivationDelay
{
  if ([(RUIWebContainerViewAccessibility *)self isAccessibilityElement])
  {
    return 0.15;
  }

  v4.receiver = self;
  v4.super_class = RUIWebContainerViewAccessibility;
  [(RUIWebContainerViewAccessibility *)&v4 _accessibilityActivationDelay];
  return result;
}

- (unint64_t)accessibilityTraits
{
  if ([(RUIWebContainerViewAccessibility *)self isAccessibilityElement])
  {
    return *MEMORY[0x29EDC7F70];
  }

  v4.receiver = self;
  v4.super_class = RUIWebContainerViewAccessibility;
  return [(RUIWebContainerViewAccessibility *)&v4 accessibilityTraits];
}

@end