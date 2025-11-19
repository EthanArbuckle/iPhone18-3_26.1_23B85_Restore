@interface AVTSimpleAvatarPickerHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation AVTSimpleAvatarPickerHeaderViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(AVTSimpleAvatarPickerHeaderViewAccessibility *)self safeStringForKey:@"currentSymbolName"];
  if ([v3 isEqualToString:@"ellipsis"])
  {
    v4 = @"more.options";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"plus"])
  {
    v4 = @"starfish.add";
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = AVTSimpleAvatarPickerHeaderViewAccessibility;
  v5 = [(AVTSimpleAvatarPickerHeaderViewAccessibility *)&v8 accessibilityLabel];
LABEL_7:
  v6 = v5;

  return v6;
}

@end