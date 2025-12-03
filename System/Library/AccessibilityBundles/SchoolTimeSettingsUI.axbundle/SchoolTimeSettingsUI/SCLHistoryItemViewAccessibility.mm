@interface SCLHistoryItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddPausesToNewLineInLabel:(id)label;
- (void)setHistoryGroup:(id)group;
@end

@implementation SCLHistoryItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SCLHistoryItemView" hasInstanceVariable:@"_label" withType:"UILabel"];
  [validationsCopy validateClass:@"SCLHistoryItemView" hasInstanceVariable:@"_intervalLabel" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = SCLHistoryItemViewAccessibility;
  [(SCLHistoryItemViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(SCLHistoryItemViewAccessibility *)self safeValueForKey:@"_label"];
  v4 = __UIAccessibilityCastAsClass();

  [(SCLHistoryItemViewAccessibility *)self _axAddPausesToNewLineInLabel:v4];
  objc_opt_class();
  v5 = [(SCLHistoryItemViewAccessibility *)self safeValueForKey:@"_intervalLabel"];
  v6 = __UIAccessibilityCastAsClass();

  [(SCLHistoryItemViewAccessibility *)self _axAddPausesToNewLineInLabel:v6];
}

- (void)setHistoryGroup:(id)group
{
  v4.receiver = self;
  v4.super_class = SCLHistoryItemViewAccessibility;
  [(SCLHistoryItemViewAccessibility *)&v4 setHistoryGroup:group];
  [(SCLHistoryItemViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axAddPausesToNewLineInLabel:(id)label
{
  labelCopy = label;
  objc_initWeak(&location, labelCopy);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __64__SCLHistoryItemViewAccessibility__axAddPausesToNewLineInLabel___block_invoke;
  v6[3] = &unk_41E0;
  objc_copyWeak(&v7, &location);
  [labelCopy _setAccessibilityLabelBlock:v6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __64__SCLHistoryItemViewAccessibility__axAddPausesToNewLineInLabel___block_invoke_2;
  v4[3] = &unk_41E0;
  objc_copyWeak(&v5, &location);
  [labelCopy _setAccessibilityValueBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __64__SCLHistoryItemViewAccessibility__axAddPausesToNewLineInLabel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained text];
  v3 = +[NSCharacterSet newlineCharacterSet];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 firstObject];

  return v5;
}

id __64__SCLHistoryItemViewAccessibility__axAddPausesToNewLineInLabel___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained text];
  v3 = +[NSCharacterSet newlineCharacterSet];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  if ([v4 count])
  {
    v5 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 1}];

    v4 = v5;
  }

  v6 = [v4 componentsJoinedByString:{@", "}];

  return v6;
}

@end