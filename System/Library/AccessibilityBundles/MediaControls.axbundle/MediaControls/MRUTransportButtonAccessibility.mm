@interface MRUTransportButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)accessibilityLabel;
@end

@implementation MRUTransportButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUTransportButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"MRUTransportButton" hasInstanceMethod:@"packageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUTransportButton" hasInstanceMethod:@"transportControlItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUCAPackageView" hasInstanceMethod:@"glyphState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUCAPackageView" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUCAPackageAsset" hasInstanceMethod:@"packageName" withFullSignature:{"@", 0}];
}

- (id)accessibilityCustomActions
{
  v3 = [(MRUTransportButtonAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  if (v3)
  {
    v7.receiver = self;
    v7.super_class = MRUTransportButtonAccessibility;
    accessibilityCustomActions = [(MRUTransportButtonAccessibility *)&v7 accessibilityCustomActions];
    v5 = AXGuaranteedMutableArray();

    UIAccessibilityControlCenterAttachOpenCloseCustomActionsIfNeeded();
  }

  else
  {
    v5 = MEMORY[0x29EDB8E90];
  }

  return v5;
}

uint64_t __61__MRUTransportButtonAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mrucontrolcent.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(MRUTransportButtonAccessibility *)self imageForState:0];
    imageAsset = [v3 imageAsset];
    v5 = [imageAsset safeStringForKey:@"assetName"];

    v6 = [(MRUTransportButtonAccessibility *)self safeUIViewForKey:@"packageView"];
    accessibilityIdentifier = [v6 accessibilityIdentifier];

    LOBYTE(v22) = 0;
    v8 = [(MRUTransportButtonAccessibility *)self safeValueForKey:@"transportControlItem"];
    v9 = __UIAccessibilitySafeClass();

    asset = [v9 asset];
    symbolName = [asset symbolName];

    if ([v5 isEqualToString:@"airplayaudio"])
    {
      v12 = @"airplay.audio.label";
LABEL_9:
      accessibilityLabel = accessibilityLocalizedString(v12);
      goto LABEL_10;
    }

    if ([v5 isEqualToString:@"airplayvideo"])
    {
      v12 = @"airplay.video.label";
      goto LABEL_9;
    }

    if (([v5 isEqualToString:@"play.fill"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"play"))
    {
      v12 = @"play.button.label";
      goto LABEL_9;
    }

    if (([v5 isEqualToString:@"pause.fill"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"pause"))
    {
      v12 = @"pause.button.label";
      goto LABEL_9;
    }

    if (([v5 isEqualToString:@"stop.fill"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"stop"))
    {
      v12 = @"stop.button.label";
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"appletvremote"] || objc_msgSend(v5, "isEqualToString:", @"appletvremote-b519"))
    {
      v12 = @"tv.remote.button.label";
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"captions.bubble"])
    {
      v12 = @"language.options.button.label";
      goto LABEL_9;
    }

    if (([v5 isEqualToString:@"backward.fill"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"backward"))
    {
      v12 = @"previous.track.button.label";
      goto LABEL_9;
    }

    if (([v5 isEqualToString:@"forward.fill"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"forward"))
    {
      v12 = @"next.track.button.label";
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"line.horizontal.3"])
    {
      v12 = @"menu.label";
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"hand.thumbsup"])
    {
      v12 = @"like.label";
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"hand.thumbsdown"])
    {
      v12 = @"dislike.label";
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"plus"])
    {
      v12 = @"wishlist.label";
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"speaker.wave.2.fill"])
    {
      v12 = @"playback.destination.button.label";
      goto LABEL_9;
    }

    if ([symbolName hasPrefix:@"goforward"])
    {
      v15 = [MEMORY[0x29EDBA0E0] scannerWithString:symbolName];
      [v15 scanUpToString:@"." intoString:0];
      [v15 scanString:@"." intoString:0];
      v22 = 0;
      [v15 scanInteger:&v22];
      if (v22 >= 1)
      {
        v16 = @"fast.forward.button.label.with.seconds";
LABEL_48:
        v17 = accessibilityLocalizedString(v16);
        v20 = v22;
        accessibilityLabel = AXCFormattedString();

LABEL_56:
        goto LABEL_10;
      }

      v18 = @"fast.forward.button.label";
    }

    else
    {
      if (![symbolName hasPrefix:@"gobackward"])
      {
        if ([v5 isEqualToString:@"gobackward.minus"])
        {
          v12 = @"gobackward.minus.label";
          goto LABEL_9;
        }

        if ([v5 isEqualToString:@"goforward.plus"])
        {
          v12 = @"goforward.plus.label";
          goto LABEL_9;
        }

        if ([accessibilityIdentifier isEqualToString:@"favorite"])
        {
          v12 = @"favorite.button.label";
          goto LABEL_9;
        }

        if (v5)
        {
          v19 = AXLogAppAccessibility();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(MRUTransportButtonAccessibility *)v5 accessibilityLabel];
          }
        }

        accessibilityLabel = 0;
LABEL_10:

        if (accessibilityLabel)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v15 = [MEMORY[0x29EDBA0E0] scannerWithString:symbolName];
      [v15 scanUpToString:@"." intoString:0];
      [v15 scanString:@"." intoString:0];
      v22 = 0;
      [v15 scanInteger:&v22];
      if (v22 >= 1)
      {
        v16 = @"rewind.button.label.with.seconds";
        goto LABEL_48;
      }

      v18 = @"rewind.button.label";
    }

    accessibilityLabel = accessibilityLocalizedString(v18);
    goto LABEL_56;
  }

LABEL_11:
  v21.receiver = self;
  v21.super_class = MRUTransportButtonAccessibility;
  accessibilityLabel = [(MRUTransportButtonAccessibility *)&v21 accessibilityLabel];
LABEL_12:

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = MRUTransportButtonAccessibility;
  accessibilityTraits = [(MRUTransportButtonAccessibility *)&v10 accessibilityTraits];
  v4 = [(MRUTransportButtonAccessibility *)self safeUIViewForKey:@"packageView"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeStringForKey:@"glyphState"];
    v7 = [v6 isEqualToString:@"On"];
    v8 = *MEMORY[0x29EDC7FC0];
    if (!v7)
    {
      v8 = 0;
    }

    accessibilityTraits |= v8;
  }

  return accessibilityTraits;
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  v3 = [(MRUTransportButtonAccessibility *)self imageForState:0];
  v4 = [(MRUTransportButtonAccessibility *)self safeUIViewForKey:@"packageView"];
  v5 = [v4 safeValueForKey:@"asset"];
  v6 = [v5 safeStringForKey:@"packageName"];
  v7 = v3 | v6;

  v8 = [v4 safeValueForKey:@"asset"];
  v9 = [v8 safeStringForKey:@"packageName"];

  v10 = (v7 | v9) != 0;
  return v10;
}

- (void)accessibilityLabel
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_29BF3C000, a2, OS_LOG_TYPE_ERROR, "Unhandled asset name for media control button: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end