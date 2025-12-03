@interface _MKUILabelAccessibility
- (id)accessibilityLabel;
@end

@implementation _MKUILabelAccessibility

- (id)accessibilityLabel
{
  v19.receiver = self;
  v19.super_class = _MKUILabelAccessibility;
  accessibilityLabel = [(_MKUILabelAccessibility *)&v19 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    v4 = accessibilityLabel;
    goto LABEL_9;
  }

  v18 = 0;
  objc_opt_class();
  v5 = [(_MKUILabelAccessibility *)self safeValueForKey:@"attributedText"];
  v6 = __UIAccessibilityCastAsClass();

  string = [v6 string];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v9 = [accessibilityLabel2 length];

  if (v9)
  {
    v10 = MEMORY[0x29EDBD7E8];
    accessibilityLabel3 = [v6 accessibilityLabel];
    v12 = v10;
  }

  else
  {
    v14 = [string length];
    v15 = MEMORY[0x29EDBD7E8];
    if (v14)
    {
      v13 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithStringOrAttributedString:v6];
      goto LABEL_8;
    }

    v17.receiver = self;
    v17.super_class = _MKUILabelAccessibility;
    accessibilityLabel3 = [(_MKUILabelAccessibility *)&v17 accessibilityLabel];
    v12 = v15;
  }

  v13 = [v12 axAttributedStringWithString:accessibilityLabel3];

LABEL_8:
  v4 = [v13 stringByReplacingOccurrencesOfString:@"·" withString:{@", "}];

LABEL_9:

  return v4;
}

@end