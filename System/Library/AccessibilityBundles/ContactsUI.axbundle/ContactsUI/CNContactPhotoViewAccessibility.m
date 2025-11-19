@interface CNContactPhotoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CNContactPhotoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNContactPhotoView" hasInstanceMethod:@"contact" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNContactPhotoView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CNContactPhotoView" hasInstanceMethod:@"hasPhoto" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CNContactPhotoView" hasInstanceMethod:@"avatarView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNContact" hasInstanceVariable:@"_displayNameOrder" withType:"NSInteger"];
  [v3 validateClass:@"CNContactPhotoView" hasInstanceVariable:@"_editPhotoButton" withType:"UIButton"];
}

- (BOOL)isAccessibilityElement
{
  if (([(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"hasPhoto"]& 1) != 0)
  {
    return 1;
  }

  return [(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"isEditing"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(CNContactPhotoViewAccessibility *)self safeValueForKey:@"contact"];
  v4 = __UIAccessibilityCastAsClass();

  [(CNContactPhotoViewAccessibility *)self frame];
  v6 = v5;
  v7 = [(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"hasPhoto"];
  v8 = [(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"isEditing"];
  if (!v7 && v8 && v6 >= 50.0)
  {
    v9 = @"add.photo.button";
LABEL_10:
    v12 = accessibilityLocalizedString(v9);
    goto LABEL_11;
  }

  if (!v4)
  {
LABEL_9:
    v9 = @"missing.photo.for.text.no.name";
    goto LABEL_10;
  }

  v10 = [v4 givenName];
  v11 = [v4 familyName];
  if (!(v10 | v11))
  {
    if (v7)
    {
      v9 = @"photo.for.text.no.name";
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = &stru_2A2173908;
  }

  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = &stru_2A2173908;
  }

  if ([v4 safeIntegerForKey:@"_displayNameOrder"] == 2)
  {
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", v15, v14];
  }

  else
  {
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", v14, v15];
  }
  v16 = ;
  if (v7)
  {
    v17 = [(CNContactPhotoViewAccessibility *)self safeValueForKey:@"avatarView"];
    v18 = [v17 accessibilityLabel];
  }

  else
  {
    v17 = accessibilityLocalizedString(@"missing.photo.for.text");
    v19 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
    v20 = [v16 stringByTrimmingCharactersInSet:v19];
    v21 = [v20 length];

    if (!v21)
    {
      v22 = [v4 phoneNumbers];
      v23 = [v22 firstObject];
      v24 = [v23 value];
      v25 = [v24 stringValue];

      v16 = v25;
    }

    v18 = [MEMORY[0x29EDBA0F8] stringWithFormat:v17, v16];
  }

  v12 = v18;

LABEL_11:

  return v12;
}

- (id)accessibilityValue
{
  v3 = [(CNContactPhotoViewAccessibility *)self safeValueForKey:@"_editPhotoButton"];
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = [(CNContactPhotoViewAccessibility *)self safeValueForKey:@"_editPhotoButton"];
    v6 = [v5 accessibilityValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNContactPhotoViewAccessibility;
    v6 = [(CNContactPhotoViewAccessibility *)&v8 accessibilityValue];
  }

  return v6;
}

- (id)accessibilityHint
{
  if ([(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"hasPhoto"]&& [(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"isEditing"])
  {
    v3 = accessibilityLocalizedString(@"edit.photo.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CNContactPhotoViewAccessibility;
    v3 = [(CNContactPhotoViewAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CNContactPhotoViewAccessibility;
  v3 = [(CNContactPhotoViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"isEditing"];
  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3 | *MEMORY[0x29EDC7F88];
}

@end