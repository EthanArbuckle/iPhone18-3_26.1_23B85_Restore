@interface SKUIImageViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SKUIImageViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(SKUIImageViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"Badge_CC"])
  {
    v4 = @"video.cc";
LABEL_11:
    v5 = accessibilitySKUILocalizedString(v4);
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"Badge_HD"])
  {
    v4 = @"video.hd";
    goto LABEL_11;
  }

  if (([v3 isEqualToString:@"Badge_MPAA_G"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Badge_MPAA_PG") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Badge_MPAA_PG13") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Badge_MPAA_R") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Badge_MPAA_NR"))
  {
    v4 = @"mpaa.rating";
    goto LABEL_11;
  }

  if (([v3 isEqualToString:@"Badge_TV_Y"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Badge_TV_Y7") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Badge_TV_Y7FV") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Badge_TV_G") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Badge_TV_PG") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Badge_TV_14") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Badge_TV_MA"))
  {
    v4 = @"tv.rating";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"parental.advisory"])
  {
    v4 = @"parental.advisory";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"itunes-mastered"])
  {
    v4 = @"itunes-mastered";
    goto LABEL_11;
  }

  v8.receiver = self;
  v8.super_class = SKUIImageViewAccessibility;
  v5 = [(SKUIImageViewAccessibility *)&v8 accessibilityLabel];
LABEL_12:
  v6 = v5;

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(SKUIImageViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"Badge_MPAA_G"])
  {
    v4 = @"movie.rating.g";
LABEL_25:
    v5 = accessibilitySKUILocalizedString(v4);
    goto LABEL_26;
  }

  if ([v3 isEqualToString:@"Badge_MPAA_PG"])
  {
    v4 = @"movie.rating.pg";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_MPAA_PG13"])
  {
    v4 = @"movie.rating.pg13";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_MPAA_R"])
  {
    v4 = @"movie.rating.r";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_MPAA_NR"])
  {
    v4 = @"movie.rating.nr";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_TV_Y"])
  {
    v4 = @"tv.y";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_TV_Y7"])
  {
    v4 = @"tv.y7";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_TV_Y7FV"])
  {
    v4 = @"tv.y7fv";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_TV_G"])
  {
    v4 = @"tv.g";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_TV_PG"])
  {
    v4 = @"tv.pg";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_TV_14"])
  {
    v4 = @"tv.14";
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"Badge_TV_MA"])
  {
    v4 = @"tv.ma";
    goto LABEL_25;
  }

  v8.receiver = self;
  v8.super_class = SKUIImageViewAccessibility;
  v5 = [(SKUIImageViewAccessibility *)&v8 accessibilityValue];
LABEL_26:
  v6 = v5;

  return v6;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SKUIImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 hasPrefix:@"Badge_offers"];

  if (v4)
  {
    return 0;
  }

  v6 = [(SKUIImageViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!v6)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = SKUIImageViewAccessibility;
  return [(SKUIImageViewAccessibility *)&v7 isAccessibilityElement];
}

@end