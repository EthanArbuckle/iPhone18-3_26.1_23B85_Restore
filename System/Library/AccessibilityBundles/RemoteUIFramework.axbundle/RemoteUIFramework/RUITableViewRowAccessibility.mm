@interface RUITableViewRowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)loadImage;
@end

@implementation RUITableViewRowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RUITableViewRow" isKindOfClass:@"RUIElement"];
  [validationsCopy validateClass:@"RUIElement" hasInstanceMethod:@"loadImage" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"RUIElement" hasInstanceMethod:@"URLAttributeForImageName: getScale:" withFullSignature:{"@", "@", "^d", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_imageView:" withFullSignature:{"@", "B", 0}];
}

- (BOOL)loadImage
{
  v24.receiver = self;
  v24.super_class = RUITableViewRowAccessibility;
  loadImage = [(RUITableViewRowAccessibility *)&v24 loadImage];
  if (loadImage)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0xBFF0000000000000;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    AXPerformSafeBlock();
    v4 = v18[5];
    _Block_object_dispose(&v17, 8);

    absoluteString = [v4 absoluteString];
    lastPathComponent = [absoluteString lastPathComponent];

    LOBYTE(v17) = 0;
    v7 = [(RUITableViewRowAccessibility *)self safeValueForKey:@"tableCell"];
    v8 = __UIAccessibilitySafeClass();

    if (v17 == 1)
    {
      abort();
    }

    objc_opt_class();
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v16 = MEMORY[0x29EDCA5F8];
    v9 = v8;
    AXPerformSafeBlock();
    v10 = v18[5];

    _Block_object_dispose(&v17, 8);
    v11 = __UIAccessibilityCastAsClass();

    if (lastPathComponent)
    {
      accessibilityIdentifier = [v11 accessibilityIdentifier];

      if (!accessibilityIdentifier)
      {
        v13 = [lastPathComponent componentsSeparatedByString:@"@"];
        if ([v13 count])
        {
          firstObject = [v13 firstObject];
          [v11 setAccessibilityIdentifier:firstObject];
        }
      }
    }

    _Block_object_dispose(v23, 8);
  }

  return loadImage;
}

uint64_t __41__RUITableViewRowAccessibility_loadImage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) URLAttributeForImageName:@"image" getScale:*(*(a1 + 48) + 8) + 24];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __41__RUITableViewRowAccessibility_loadImage__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageView:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end