@interface MFCaptionLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MFCaptionLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFCaptionLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"MFCaptionLabel" hasInstanceMethod:@"_chevronAttributedString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v10 = MEMORY[0x29EDCA5F8];
  selfCopy = self;
  AXPerformSafeBlock();
  v4 = v13[5];
  _Block_object_dispose(&v12, 8);

  attributedText = [v3 attributedText];
  string = [attributedText string];
  string2 = [v4 string];

  v8 = [string stringByReplacingOccurrencesOfString:string2 withString:&stru_2A2207348];

  return v8;
}

uint64_t __49__MFCaptionLabelAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _chevronAttributedString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end