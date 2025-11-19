@interface PREditingPickerImageCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axLabelForSymbolName:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PREditingPickerImageCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PREditingPickerImageCellView" hasInstanceMethod:@"contentImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PREditingPickerImageCellViewAccessibility *)self safeValueForKey:@"contentImageView"];
  v11.receiver = self;
  v11.super_class = PREditingPickerImageCellViewAccessibility;
  v4 = [(PREditingPickerImageCellViewAccessibility *)&v11 accessibilityLabel];
  if ([v4 length])
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [v3 safeValueForKey:@"image"];
    v7 = [v6 safeValueForKey:@"_imageAsset"];
    v8 = [v7 safeStringForKey:@"assetName"];

    v9 = [(PREditingPickerImageCellViewAccessibility *)self _axLabelForSymbolName:v8];

    v4 = v9;
  }

  return v4;
}

- (id)_axLabelForSymbolName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"banner.horizontal.filled.top.iphone"])
  {
    goto LABEL_2;
  }

  if ([v3 isEqualToString:@"banner.vertical.filled.topright.iphone"] || objc_msgSend(v3, "isEqualToString:", @"textbox.vertical.filled.topright.iphone") || objc_msgSend(v3, "isEqualToString:", @"textbox.vertical.filled.topright.ipad") || objc_msgSend(v3, "isEqualToString:", @"textbox.vertical.filled.topright.ipad.landscape"))
  {
    v4 = @"title.layout.vertical";
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"textbox.horizontal.filled.top.iphone"] || objc_msgSend(v3, "isEqualToString:", @"textbox.horizontal.filled.top.ipad") || objc_msgSend(v3, "isEqualToString:", @"textbox.horizontal.filled.top.ipad.landscape"))
  {
LABEL_2:
    v4 = @"title.layout.horizontal";
LABEL_8:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_9;
  }

  v5 = accessibilityUIKitSymbolNamesLocalizedString();
LABEL_9:
  v6 = v5;

  return v6;
}

@end