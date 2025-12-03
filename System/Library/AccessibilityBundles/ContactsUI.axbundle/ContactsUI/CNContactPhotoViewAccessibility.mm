@interface CNContactPhotoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CNContactPhotoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNContactPhotoView" hasInstanceMethod:@"contact" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNContactPhotoView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNContactPhotoView" hasInstanceMethod:@"hasPhoto" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNContactPhotoView" hasInstanceMethod:@"avatarView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNContact" hasInstanceVariable:@"_displayNameOrder" withType:"NSInteger"];
  [validationsCopy validateClass:@"CNContactPhotoView" hasInstanceVariable:@"_editPhotoButton" withType:"UIButton"];
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

  givenName = [v4 givenName];
  familyName = [v4 familyName];
  if (!(givenName | familyName))
  {
    if (v7)
    {
      v9 = @"photo.for.text.no.name";
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (givenName)
  {
    v14 = givenName;
  }

  else
  {
    v14 = &stru_2A2173908;
  }

  if (familyName)
  {
    v15 = familyName;
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
    accessibilityLabel = [v17 accessibilityLabel];
  }

  else
  {
    v17 = accessibilityLocalizedString(@"missing.photo.for.text");
    whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
    v20 = [v16 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v21 = [v20 length];

    if (!v21)
    {
      phoneNumbers = [v4 phoneNumbers];
      firstObject = [phoneNumbers firstObject];
      value = [firstObject value];
      stringValue = [value stringValue];

      v16 = stringValue;
    }

    accessibilityLabel = [MEMORY[0x29EDBA0F8] stringWithFormat:v17, v16];
  }

  v12 = accessibilityLabel;

LABEL_11:

  return v12;
}

- (id)accessibilityValue
{
  v3 = [(CNContactPhotoViewAccessibility *)self safeValueForKey:@"_editPhotoButton"];
  _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
    v5 = [(CNContactPhotoViewAccessibility *)self safeValueForKey:@"_editPhotoButton"];
    accessibilityValue = [v5 accessibilityValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNContactPhotoViewAccessibility;
    accessibilityValue = [(CNContactPhotoViewAccessibility *)&v8 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  if ([(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"hasPhoto"]&& [(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"isEditing"])
  {
    accessibilityHint = accessibilityLocalizedString(@"edit.photo.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CNContactPhotoViewAccessibility;
    accessibilityHint = [(CNContactPhotoViewAccessibility *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CNContactPhotoViewAccessibility;
  accessibilityTraits = [(CNContactPhotoViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(CNContactPhotoViewAccessibility *)self safeBoolForKey:@"isEditing"];
  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits | *MEMORY[0x29EDC7F88];
}

@end