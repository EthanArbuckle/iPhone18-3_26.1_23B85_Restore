@interface SUUIBadgeTextAttachmentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SUUIBadgeTextAttachmentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NSTextAttachment" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIBadgeTextAttachment" isKindOfClass:@"NSTextAttachment"];
}

- (id)accessibilityLabel
{
  v11 = 0;
  objc_opt_class();
  v3 = [(SUUIBadgeTextAttachmentAccessibility *)self safeValueForKey:@"image"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityIdentifier = [v4 accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"Badge_CC"])
  {
    v6 = @"video.cc";
LABEL_11:
    accessibilityLabel = accessibilityLocalizedString(v6);
    goto LABEL_12;
  }

  if ([accessibilityIdentifier isEqualToString:@"Badge_HD"])
  {
    v6 = @"video.hd";
    goto LABEL_11;
  }

  if (([accessibilityIdentifier isEqualToString:@"Badge_MPAA_G"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_MPAA_PG") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_MPAA_PG13") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_MPAA_R") & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_MPAA_NR"))
  {
    v6 = @"mpaa.rating";
    goto LABEL_11;
  }

  if (([accessibilityIdentifier isEqualToString:@"Badge_TV_Y"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_Y7") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_Y7FV") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_G") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_PG") & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_14") & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"Badge_TV_MA"))
  {
    v6 = @"tv.rating";
    goto LABEL_11;
  }

  if ([accessibilityIdentifier isEqualToString:@"BadgeExplicit"])
  {
    v6 = @"explicit";
    goto LABEL_11;
  }

  if ([accessibilityIdentifier isEqualToString:@"BadgeClean"])
  {
    v6 = @"clean";
    goto LABEL_11;
  }

  if (([accessibilityIdentifier isEqualToString:@"rottenTomatoesCertified"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"rottenTomatoesCertifiedGiant") & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"rottenTomatoesCertifiedLarge"))
  {
    v6 = @"rotten.tomatoes.certified";
    goto LABEL_11;
  }

  if (([accessibilityIdentifier isEqualToString:@"rottenTomatoesFresh"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"rottenTomatoesFreshGiant") & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"rottenTomatoesFreshLarge"))
  {
    v6 = @"rotten.tomatoes.fresh";
    goto LABEL_11;
  }

  if (([accessibilityIdentifier isEqualToString:@"rottenTomatoesRotten"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"rottenTomatoesRottenGiant") & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"rottenTomatoesRottenLarge"))
  {
    v6 = @"rotten.tomatoes.rotten";
    goto LABEL_11;
  }

  v10.receiver = self;
  v10.super_class = SUUIBadgeTextAttachmentAccessibility;
  accessibilityLabel = [(SUUIBadgeTextAttachmentAccessibility *)&v10 accessibilityLabel];
LABEL_12:
  v8 = accessibilityLabel;

  return v8;
}

@end