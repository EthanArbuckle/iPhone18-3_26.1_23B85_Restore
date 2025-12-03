@interface NotificationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation NotificationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_imageView:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"NotificationCell" isKindOfClass:@"UITableViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v17.receiver = self;
  v17.super_class = NotificationCellAccessibility;
  accessibilityTraits = [(NotificationCellAccessibility *)&v17 accessibilityTraits];
  v16 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  AXPerformSafeBlock();
  v3 = v11[5];
  _Block_object_dispose(&v10, 8);

  v4 = __UIAccessibilitySafeClass();

  if (v16 == 1)
  {
    abort();
  }

  image = [v4 image];
  accessibilityIdentification = [image accessibilityIdentification];
  v7 = [accessibilityIdentification hasPrefix:@"UIPreferencesBlueCheck"];

  if (v7)
  {
    v8 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v8 = 0;
  }

  return v8 | accessibilityTraits;
}

uint64_t __52__NotificationCellAccessibility_accessibilityTraits__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageView:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end