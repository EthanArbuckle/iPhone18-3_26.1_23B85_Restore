@interface MUPlaceHeaderButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation MUPlaceHeaderButtonAccessibility

- (id)accessibilityLabel
{
  v19 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  configuration = [v3 configuration];
  v5 = configuration;
  if (!configuration)
  {
    v18.receiver = self;
    v18.super_class = MUPlaceHeaderButtonAccessibility;
    accessibilityLabel = [(MUPlaceHeaderButtonAccessibility *)&v18 accessibilityLabel];
LABEL_10:
    v12 = accessibilityLabel;
    goto LABEL_25;
  }

  image = [configuration image];
  if (image)
  {

    goto LABEL_4;
  }

  title = [v5 title];

  if (title)
  {
    accessibilityLabel = [v5 title];
    goto LABEL_10;
  }

LABEL_4:
  image2 = [v5 image];
  v8 = [image2 description];

  if ([v8 containsString:@"menu"])
  {
LABEL_21:
    title2 = [v5 title];
    goto LABEL_22;
  }

  if ([v8 containsString:@"car"])
  {
    v9 = @"travel.time.driving";
    goto LABEL_20;
  }

  if ([v8 containsString:@"walk"])
  {
    v9 = @"travel.time.walking";
    goto LABEL_20;
  }

  if ([v8 containsString:@"tram"])
  {
    v9 = @"travel.time.transit";
    goto LABEL_20;
  }

  if ([v8 containsString:@"bicycle"])
  {
    v9 = @"travel.time.bike";
    goto LABEL_20;
  }

  if (![v8 containsString:@"ellipsis"])
  {
    v9 = &stru_2A21F1AD0;
LABEL_20:
    if (![(__CFString *)v9 isEqualToString:&stru_2A21F1AD0])
    {
      v14 = MEMORY[0x29EDBA0F8];
      v15 = accessibilityLocalizedString(v9);
      title3 = [v5 title];
      v12 = [v14 localizedStringWithFormat:v15, title3];

      goto LABEL_24;
    }

    goto LABEL_21;
  }

  title2 = accessibilityLocalizedString(@"MORE");
LABEL_22:
  v12 = title2;
LABEL_24:

LABEL_25:

  return v12;
}

@end