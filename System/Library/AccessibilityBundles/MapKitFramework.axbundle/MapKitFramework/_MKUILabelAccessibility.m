@interface _MKUILabelAccessibility
- (id)accessibilityLabel;
@end

@implementation _MKUILabelAccessibility

- (id)accessibilityLabel
{
  v19.receiver = self;
  v19.super_class = _MKUILabelAccessibility;
  v3 = [(_MKUILabelAccessibility *)&v19 accessibilityLabel];
  if ([v3 length])
  {
    v4 = v3;
    goto LABEL_9;
  }

  v18 = 0;
  objc_opt_class();
  v5 = [(_MKUILabelAccessibility *)self safeValueForKey:@"attributedText"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 string];
  v8 = [v6 accessibilityLabel];
  v9 = [v8 length];

  if (v9)
  {
    v10 = MEMORY[0x29EDBD7E8];
    v11 = [v6 accessibilityLabel];
    v12 = v10;
  }

  else
  {
    v14 = [v7 length];
    v15 = MEMORY[0x29EDBD7E8];
    if (v14)
    {
      v13 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithStringOrAttributedString:v6];
      goto LABEL_8;
    }

    v17.receiver = self;
    v17.super_class = _MKUILabelAccessibility;
    v11 = [(_MKUILabelAccessibility *)&v17 accessibilityLabel];
    v12 = v15;
  }

  v13 = [v12 axAttributedStringWithString:v11];

LABEL_8:
  v4 = [v13 stringByReplacingOccurrencesOfString:@"·" withString:{@", "}];

LABEL_9:

  return v4;
}

@end