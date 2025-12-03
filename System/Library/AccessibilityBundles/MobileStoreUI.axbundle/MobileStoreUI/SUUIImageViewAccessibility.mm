@interface SUUIImageViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SUUIImageViewAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(SUUIImageViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"Badge_CC"])
  {
    v4 = @"video.cc";
LABEL_11:
    accessibilityLabel = accessibilityLocalizedString(v4);
    goto LABEL_12;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_HD"])
  {
    v4 = @"video.hd";
    goto LABEL_11;
  }

  if (([accessibilityIdentifier isEqualToString:@"Badge_MPAA_G"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_MPAA_PG") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_MPAA_PG13") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_MPAA_R") & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_MPAA_NR"))
  {
    v4 = @"mpaa.rating";
    goto LABEL_11;
  }

  if (([accessibilityIdentifier isEqualToString:@"Badge_TV_Y"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_Y7") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_Y7FV") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_G") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_PG") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_14") & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_MA"))
  {
    v4 = @"tv.rating";
    goto LABEL_11;
  }

  if ([accessibilityIdentifier isEqualToString:@"parental.advisory"])
  {
    v4 = @"parental.advisory";
    goto LABEL_11;
  }

  if ([accessibilityIdentifier isEqualToString:@"itunes-mastered"])
  {
    v4 = @"itunes-mastered";
    goto LABEL_11;
  }

  v8.receiver = self;
  v8.super_class = SUUIImageViewAccessibility;
  accessibilityLabel = [(SUUIImageViewAccessibility *)&v8 accessibilityLabel];
LABEL_12:
  v6 = accessibilityLabel;

  return v6;
}

- (id)accessibilityValue
{
  accessibilityIdentifier = [(SUUIImageViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"Badge_MPAA_G"])
  {
    v4 = @"movie.rating.g";
LABEL_25:
    accessibilityValue = accessibilityLocalizedString(v4);
    goto LABEL_26;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_MPAA_PG"])
  {
    v4 = @"movie.rating.pg";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_MPAA_PG13"])
  {
    v4 = @"movie.rating.pg13";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_MPAA_R"])
  {
    v4 = @"movie.rating.r";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_MPAA_NR"])
  {
    v4 = @"movie.rating.nr";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_TV_Y"])
  {
    v4 = @"tv.y";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_TV_Y7"])
  {
    v4 = @"tv.y7";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_TV_Y7FV"])
  {
    v4 = @"tv.y7fv";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_TV_G"])
  {
    v4 = @"tv.g";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_TV_PG"])
  {
    v4 = @"tv.pg";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_TV_14"])
  {
    v4 = @"tv.14";
    goto LABEL_25;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_TV_MA"])
  {
    v4 = @"tv.ma";
    goto LABEL_25;
  }

  v8.receiver = self;
  v8.super_class = SUUIImageViewAccessibility;
  accessibilityValue = [(SUUIImageViewAccessibility *)&v8 accessibilityValue];
LABEL_26:
  v6 = accessibilityValue;

  return v6;
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(SUUIImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier hasPrefix:@"Badge_offers"];

  if (v4)
  {
    return 0;
  }

  isAccessibilityUserDefinedElement = [(SUUIImageViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = SUUIImageViewAccessibility;
  return [(SUUIImageViewAccessibility *)&v7 isAccessibilityElement];
}

@end