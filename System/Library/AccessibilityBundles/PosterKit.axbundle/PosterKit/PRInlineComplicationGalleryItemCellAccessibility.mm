@interface PRInlineComplicationGalleryItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PRInlineComplicationGalleryItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRInlineComplicationGalleryItemCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRInlineComplicationGalleryItemCell" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHUISWidgetHostViewController" hasInstanceVariable:@"_descriptor" withType:"CHSWidgetDescriptor"];
  [v3 validateClass:@"PRInlineComplicationGalleryItemCell" hasInstanceMethod:@"showsCheckmark" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PRInlineComplicationGalleryItemCellAccessibility *)self safeValueForKey:@"contentViewController"];
  NSClassFromString(&cfstr_Chuiswidgethos.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PRInlineComplicationGalleryItemCellAccessibility *)self safeValueForKeyPath:@"contentViewController._descriptor"];
    v5 = AXWidgetAndAppName(v4, 1);
  }

  else
  {
    v5 = [(PRInlineComplicationGalleryItemCellAccessibility *)self safeStringForKey:@"title"];
  }

  return v5;
}

- (id)accessibilityCustomContent
{
  v3 = [(PRInlineComplicationGalleryItemCellAccessibility *)self safeValueForKey:@"contentViewController"];
  NSClassFromString(&cfstr_Chuiswidgethos.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PRInlineComplicationGalleryItemCellAccessibility *)self safeValueForKeyPath:@"contentViewController._descriptor"];
  }

  else
  {
    v4 = 0;
  }

  v5 = AXWidgetDescription(v4);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PRInlineComplicationGalleryItemCellAccessibility;
    v7 = [(PRInlineComplicationGalleryItemCellAccessibility *)&v10 accessibilityCustomContent];
  }

  v8 = v7;

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = PRInlineComplicationGalleryItemCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(PRInlineComplicationGalleryItemCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(PRInlineComplicationGalleryItemCellAccessibility *)self safeBoolForKey:@"showsCheckmark"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end