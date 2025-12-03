@interface PREditingPickerImageCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabelForSymbolName:(id)name;
- (id)accessibilityLabel;
@end

@implementation PREditingPickerImageCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingPickerImageCellView" hasInstanceMethod:@"contentImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PREditingPickerImageCellViewAccessibility *)self safeValueForKey:@"contentImageView"];
  v11.receiver = self;
  v11.super_class = PREditingPickerImageCellViewAccessibility;
  accessibilityLabel = [(PREditingPickerImageCellViewAccessibility *)&v11 accessibilityLabel];
  if ([accessibilityLabel length])
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

    accessibilityLabel = v9;
  }

  return accessibilityLabel;
}

- (id)_axLabelForSymbolName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"banner.horizontal.filled.top.iphone"])
  {
    goto LABEL_2;
  }

  if ([nameCopy isEqualToString:@"banner.vertical.filled.topright.iphone"] || objc_msgSend(nameCopy, "isEqualToString:", @"textbox.vertical.filled.topright.iphone") || objc_msgSend(nameCopy, "isEqualToString:", @"textbox.vertical.filled.topright.ipad") || objc_msgSend(nameCopy, "isEqualToString:", @"textbox.vertical.filled.topright.ipad.landscape"))
  {
    v4 = @"title.layout.vertical";
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"textbox.horizontal.filled.top.iphone"] || objc_msgSend(nameCopy, "isEqualToString:", @"textbox.horizontal.filled.top.ipad") || objc_msgSend(nameCopy, "isEqualToString:", @"textbox.horizontal.filled.top.ipad.landscape"))
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