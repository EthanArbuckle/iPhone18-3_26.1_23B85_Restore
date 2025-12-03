@interface RemoteUITableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessoriesChanged;
- (void)setRemoteUIAccessoryView:(id)view;
@end

@implementation RemoteUITableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_imageView:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_textLabel:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"RUITableView"];
  [validationsCopy validateClass:@"RUITableView" hasInstanceMethod:@"objectModelRowForIndexPath:" withFullSignature:{"@", "@", 0}];
}

- (void)_accessoriesChanged
{
  v6.receiver = self;
  v6.super_class = RemoteUITableViewCellAccessibility;
  [(RemoteUITableViewCellAccessibility *)&v6 _accessoriesChanged];
  v3 = [(RemoteUITableViewCellAccessibility *)self safeValueForKey:@"_remoteUIAccessoryType"];
  intValue = [v3 intValue];

  if ((intValue & 0xFFFFFFFD) == 1)
  {
    v5 = [(RemoteUITableViewCellAccessibility *)self safeValueForKey:@"_remoteUIAccessoryView"];
    [v5 setIsAccessibilityElement:0];
  }
}

- (void)setRemoteUIAccessoryView:(id)view
{
  viewCopy = view;
  v7.receiver = self;
  v7.super_class = RemoteUITableViewCellAccessibility;
  [(RemoteUITableViewCellAccessibility *)&v7 setRemoteUIAccessoryView:viewCopy];
  v5 = [(RemoteUITableViewCellAccessibility *)self safeValueForKey:@"_remoteUIAccessoryType"];
  intValue = [v5 intValue];

  if ((intValue & 0xFFFFFFFD) == 1)
  {
    [viewCopy setIsAccessibilityElement:0];
  }
}

- (unint64_t)accessibilityTraits
{
  v3 = [(RemoteUITableViewCellAccessibility *)self safeValueForKey:@"_remoteUIAccessoryType"];
  intValue = [v3 intValue];

  if (intValue == 1)
  {
    v5 = MEMORY[0x29EDC7F70];
    return *v5;
  }

  if (intValue == 3)
  {
    v5 = MEMORY[0x29EDC7FC0];
    return *v5;
  }

  v7 = [(RemoteUITableViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  LOBYTE(v28) = 0;
  dataSource = [v7 dataSource];
  v9 = __UIAccessibilitySafeClass();

  v34 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 3221225472;
  v22 = __57__RemoteUITableViewCellAccessibility_accessibilityTraits__block_invoke;
  v23 = &unk_29F2F1BD0;
  v27 = &v28;
  v10 = v9;
  v24 = v10;
  v11 = v7;
  v25 = v11;
  selfCopy = self;
  AXPerformSafeBlock();
  v12 = v29[5];

  _Block_object_dispose(&v28, 8);
  v13 = __UIAccessibilitySafeClass();

  if (v34 == 1 || ([v13 safeValueForKey:@"attributes"], v14 = objc_claimAutoreleasedReturnValue(), __UIAccessibilitySafeClass(), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, HIBYTE(v34) == 1))
  {
    abort();
  }

  v16 = [v15 objectForKey:@"class"];
  v17 = [v16 isEqualToString:@"link"];

  if (v17)
  {
    accessibilityTraits = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = RemoteUITableViewCellAccessibility;
    accessibilityTraits = [(RemoteUITableViewCellAccessibility *)&v19 accessibilityTraits];
  }

  return accessibilityTraits;
}

void __57__RemoteUITableViewCellAccessibility_accessibilityTraits__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) indexPathForCell:*(a1 + 48)];
  v3 = [v2 objectModelRowForIndexPath:v6];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_privateAccessibilityCustomActions
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[2] = MEMORY[0x29EDCA5F8];
  v9[3] = 3221225472;
  v9[4] = __72__RemoteUITableViewCellAccessibility__privateAccessibilityCustomActions__block_invoke;
  v9[5] = &unk_29F2F1BF8;
  v9[6] = self;
  v9[7] = &v10;
  AXPerformSafeBlock();
  v3 = v11[5];
  _Block_object_dispose(&v10, 8);

  accessibilityIdentifier = [v3 accessibilityIdentifier];

  if (accessibilityIdentifier)
  {
    v9[0] = self;
    v5 = v9;
  }

  else
  {
    selfCopy = self;
    v5 = &selfCopy;
  }

  v5->super_class = RemoteUITableViewCellAccessibility;
  _privateAccessibilityCustomActions = [(objc_super *)v5 _privateAccessibilityCustomActions];

  return _privateAccessibilityCustomActions;
}

uint64_t __72__RemoteUITableViewCellAccessibility__privateAccessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageView:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)accessibilityLabel
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = MEMORY[0x29EDCA5F8];
  v15 = 3221225472;
  v16 = __56__RemoteUITableViewCellAccessibility_accessibilityLabel__block_invoke;
  v17 = &unk_29F2F1BF8;
  selfCopy = self;
  v19 = &v20;
  AXPerformSafeBlock();
  v3 = v21[5];
  _Block_object_dispose(&v20, 8);

  accessibilityLabel = [v3 accessibilityLabel];
  LOBYTE(v20) = 0;
  objc_opt_class();
  v5 = [(RemoteUITableViewCellAccessibility *)self safeArrayForKey:@"subviews"];
  v6 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_1];
  firstObject = [v6 firstObject];
  v8 = __UIAccessibilityCastAsClass();

  if (v20 == 1)
  {
    abort();
  }

  v13.receiver = self;
  v13.super_class = RemoteUITableViewCellAccessibility;
  accessibilityLabel2 = [(RemoteUITableViewCellAccessibility *)&v13 accessibilityLabel];
  accessibilityLabel3 = [v8 accessibilityLabel];
  v10 = __AXStringForVariables();

  return v10;
}

uint64_t __56__RemoteUITableViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageView:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __56__RemoteUITableViewCellAccessibility_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end