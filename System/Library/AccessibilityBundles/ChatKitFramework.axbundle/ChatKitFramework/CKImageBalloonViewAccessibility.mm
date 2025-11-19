@interface CKImageBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsJellyfishVideo;
- (BOOL)_axIsLocating;
- (BOOL)_axIsLocation;
- (BOOL)_axIsPhoto;
- (BOOL)_axIsSensitive;
- (BOOL)_axIsVideo;
- (BOOL)accessibilityActivate;
- (id)_axMediaObject;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilityMediaAnalysisOptions;
- (void)_axWarmLocationCoordinatePlacemarkIfNeededForMediaObject:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
@end

@implementation CKImageBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKLocationMediaObject"];
  [v3 validateClass:@"CKContactMediaObject" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKLocationMediaObject" isKindOfClass:@"CKContactMediaObject"];
  [v3 validateClass:@"CKImageBalloonView" hasInstanceMethod:@"configureForMediaObject:previewWidth:orientation:hasInvisibleInkEffect:" withFullSignature:{"v", "@", "d", "c", "B", 0}];
  [v3 validateClass:@"CKChatItem" hasInstanceMethod:@"isCommSafetySensitive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKBalloonView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKImageBalloonView" isKindOfClass:@"CKObscurableBalloonView"];
  [v3 validateClass:@"CKObscurableBalloonView" hasInstanceMethod:@"isObscured" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKObscurableBalloonView" hasInstanceMethod:@"warningButton" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"CKBalloonViewDelegate" hasRequiredInstanceMethod:@"balloonViewTapped:withModifierFlags:selectedText:"];
  [v3 validateClass:@"CKChatController" hasInstanceMethod:@"actionMoreIsTappedForChatItem:" withFullSignature:{"v", "@", 0}];
}

- (id)_axMediaObject
{
  v2 = [(CKImageBalloonViewAccessibility *)self safeValueForKey:@"_axChatItemForBalloon"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 safeValueForKey:@"mediaObject"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_axIsVideo
{
  v2 = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  v3 = [v2 safeIntForKey:@"mediaType"] == 2;

  return v3;
}

- (BOOL)_axIsPhoto
{
  v2 = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  v3 = [v2 safeIntForKey:@"mediaType"] == 3;

  return v3;
}

- (BOOL)_axIsLocation
{
  v2 = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  v3 = [v2 safeIntForKey:@"mediaType"] == 5;

  return v3;
}

- (BOOL)_axIsLocating
{
  v2 = [(CKImageBalloonViewAccessibility *)self safeValueForKey:@"_axChatItemForBalloon"];
  NSClassFromString(&cfstr_Cklocatingchat.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsJellyfishVideo
{
  v3 = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  NSClassFromString(&cfstr_Ckmoviemediaob.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  v6 = [v5 safeBoolForKey:@"isJellyfishVideo"];

  return v6;
}

- (BOOL)_axIsSensitive
{
  v2 = [(CKImageBalloonViewAccessibility *)self _axChatItemForBalloon];
  v3 = [v2 safeBoolForKey:@"isCommSafetySensitive"];

  return v3;
}

- (BOOL)accessibilityActivate
{
  v2 = [(CKImageBalloonViewAccessibility *)self safeValueForKey:@"delegate"];
  __UIAccessibilitySafeClass();
  v7 = v6 = v2;
  v3 = v7;
  v4 = v2;
  AXPerformSafeBlock();

  return 1;
}

- (id)accessibilityLabel
{
  v3 = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  if ([(CKImageBalloonViewAccessibility *)self _axIsPhoto])
  {
    v4 = [v3 _accessibilityValueForKey:@"AXCachedPhotoDescription"];
    if (v4)
    {
      goto LABEL_24;
    }

    v5 = accessibilityLocalizedString(@"includes.picture");
    v6 = [v3 safeValueForKey:@"fileURL"];
    v7 = UIAccessibilityMetadataDescriptionForImage();
    v8 = UIAccessibilityEmojiDescription();
    if ([v8 length])
    {
      v9 = accessibilityUIKitLocalizedString();
      v24 = v8;
      v22 = v9;
    }

    else
    {
      if (UIAccessibilityIsImageScreenshot())
      {
        v9 = accessibilityUIKitLocalizedString();
      }

      else
      {
        v9 = 0;
      }

      v24 = v7;
      v22 = v9;
    }

    v4 = __UIAXStringForVariables();
    [v3 _accessibilitySetRetainedValue:v4 forKey:{@"AXCachedPhotoDescription", v22, v24, @"__AXStringForVariablesSentinel"}];

    goto LABEL_22;
  }

  if ([(CKImageBalloonViewAccessibility *)self _axIsVideo])
  {
    v5 = [v3 safeValueForKey:@"fileURL"];
    v6 = UIAccessibilityMetadataDescriptionForVideo();
    if ([(CKImageBalloonViewAccessibility *)self _axIsJellyfishVideo])
    {
      v10 = v6;
LABEL_8:
      v4 = v10;
LABEL_23:

      goto LABEL_24;
    }

    v7 = accessibilityLocalizedString(@"includes.video");
    v21 = v7;
    v23 = @"__AXStringForVariablesSentinel";
LABEL_12:
    v4 = __UIAXStringForVariables();
LABEL_22:

    goto LABEL_23;
  }

  if ([(CKImageBalloonViewAccessibility *)self _axIsLocation])
  {
    v5 = [(CKImageBalloonViewAccessibility *)self _axLocationPlacemark];
    v11 = [v5 formattedAddressLines];
    v6 = [v11 componentsJoinedByString:@" "];

    v7 = [v3 safeStringForKey:@"title"];
    v21 = v6;
    v23 = @"__AXStringForVariablesSentinel";
    goto LABEL_12;
  }

  if ([(CKImageBalloonViewAccessibility *)self _axIsLocating])
  {
    v4 = accessibilityLocalizedString(@"locating.label");
    goto LABEL_24;
  }

  if ([(CKImageBalloonViewAccessibility *)self _axIsDigitalTouch])
  {
    v5 = accessibilityLocalizedString(@"digital.touch.label");
    v6 = [(CKImageBalloonViewAccessibility *)self _axDigitalTouchDescription];
    v21 = v6;
    v23 = @"__AXStringForVariablesSentinel";
    v10 = __UIAXStringForVariables();
    goto LABEL_8;
  }

  v4 = 0;
LABEL_24:
  objc_opt_class();
  v12 = __UIAccessibilityCastAsSafeCategory();
  v13 = [v12 _axMessageSender];
  v14 = [(CKImageBalloonViewAccessibility *)self _axIsObscured];
  v15 = 0;
  if (v14)
  {
    v15 = accessibilityLocalizedString(@"media.may.be.sensitive");
  }

  v16 = [v12 _axReplyDescription];
  v17 = [v12 _axStickerDescription];
  v18 = [v12 _axAcknowledgmentDescription];
  v25 = [v12 _axMessageTime];
  v19 = __UIAXStringForVariables();

  return v19;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CKImageBalloonViewAccessibility;
  v3 = [(CKImageBalloonViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(CKImageBalloonViewAccessibility *)self _axIsPhoto];
  v5 = *MEMORY[0x29EDC7F88];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3 | *MEMORY[0x29EDC7F70];
}

- (unsigned)_accessibilityMediaAnalysisOptions
{
  if ([(CKImageBalloonViewAccessibility *)self _axIsSensitive])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CKImageBalloonViewAccessibility;
  return [(CKImageBalloonViewAccessibility *)&v4 _accessibilityMediaAnalysisOptions];
}

- (id)accessibilityCustomActions
{
  if ([(CKImageBalloonViewAccessibility *)self _axIsSensitive])
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = [(CKImageBalloonViewAccessibility *)self safeValueForKey:@"delegate"];
    v5 = [v4 safeValueForKey:@"delegate"];
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"delete.button.label");
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __61__CKImageBalloonViewAccessibility_accessibilityCustomActions__block_invoke;
    v21[3] = &unk_29F2B09D0;
    v8 = v5;
    v22 = v8;
    v23 = self;
    v9 = [v6 initWithName:v7 actionHandler:v21];

    [v3 axSafelyAddObject:v9];
    if ([(CKImageBalloonViewAccessibility *)self _axIsObscured])
    {
      v10 = objc_alloc(MEMORY[0x29EDC78E0]);
      v11 = accessibilityLocalizedString(@"sensitive.media.show.button");
      v19[0] = MEMORY[0x29EDCA5F8];
      v19[1] = 3221225472;
      v19[2] = __61__CKImageBalloonViewAccessibility_accessibilityCustomActions__block_invoke_3;
      v19[3] = &unk_29F2B09D0;
      v19[4] = self;
      v20 = v4;
      v12 = [v10 initWithName:v11 actionHandler:v19];

      [v3 axSafelyAddObject:v12];
    }

    objc_opt_class();
    v13 = [(CKImageBalloonViewAccessibility *)self safeValueForKey:@"warningButton"];
    v14 = __UIAccessibilityCastAsClass();

    v15 = [v14 menu];
    v16 = [v15 children];
    v17 = _AXCustomActionsForActions(v16);

    [v3 axSafelyAddObjectsFromArray:v17];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = CKImageBalloonViewAccessibility;
    v3 = [(CKImageBalloonViewAccessibility *)&v24 accessibilityCustomActions];
  }

  return v3;
}

uint64_t __61__CKImageBalloonViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

void __61__CKImageBalloonViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _axChatItemForBalloon];
  [v1 actionMoreIsTappedForChatItem:v2];
}

uint64_t __61__CKImageBalloonViewAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

void __61__CKImageBalloonViewAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  v2 = __UIAccessibilitySafeClass();
  [*(a1 + 40) balloonViewTapped:v2 withModifierFlags:0 selectedText:0];
}

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11.receiver = self;
  v11.super_class = CKImageBalloonViewAccessibility;
  v10 = a3;
  [(CKImageBalloonViewAccessibility *)&v11 configureForMediaObject:v10 previewWidth:v7 orientation:v6 hasInvisibleInkEffect:a4];
  [(CKImageBalloonViewAccessibility *)self _axWarmLocationCoordinatePlacemarkIfNeededForMediaObject:v10, v11.receiver, v11.super_class];
}

- (void)_axWarmLocationCoordinatePlacemarkIfNeededForMediaObject:(id)a3
{
  v4 = a3;
  if ([v4 safeIntForKey:@"mediaType"] == 5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3010000000;
    v21 = "";
    v22 = 0;
    v23 = 0;
    v15[5] = MEMORY[0x29EDCA5F8];
    v15[6] = 3221225472;
    v15[7] = __92__CKImageBalloonViewAccessibility__axWarmLocationCoordinatePlacemarkIfNeededForMediaObject___block_invoke;
    v15[8] = &unk_29F2B06F8;
    v17 = &v18;
    v16 = v4;
    AXPerformSafeBlock();
    v5 = v19[4];
    v6 = v19[5];

    _Block_object_dispose(&v18, 8);
    v7 = [(CKImageBalloonViewAccessibility *)self _axLocationPlacemark];
    v8 = [v7 location];
    [v8 coordinate];
    if (v9 == v5)
    {
      v10 = [v7 location];
      [v10 coordinate];
      v12 = v11;

      if (v12 == v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    [(CKImageBalloonViewAccessibility *)self _axSetLocationPlacemark:0];
    v13 = [objc_alloc(MEMORY[0x29EDBD238]) initWithLatitude:v5 longitude:v6];
    v14 = objc_opt_new();
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __92__CKImageBalloonViewAccessibility__axWarmLocationCoordinatePlacemarkIfNeededForMediaObject___block_invoke_2;
    v15[3] = &unk_29F2B0B38;
    v15[4] = self;
    [v14 reverseGeocodeLocation:v13 completionHandler:v15];

LABEL_7:
  }
}

uint64_t __92__CKImageBalloonViewAccessibility__axWarmLocationCoordinatePlacemarkIfNeededForMediaObject___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) coordinate];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

void __92__CKImageBalloonViewAccessibility__axWarmLocationCoordinatePlacemarkIfNeededForMediaObject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = v4;
  if (!a3 && [v4 count])
  {
    v6 = v5;
    AXPerformBlockOnMainThread();
  }
}

void __92__CKImageBalloonViewAccessibility__axWarmLocationCoordinatePlacemarkIfNeededForMediaObject___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) firstObject];
  [v1 _axSetLocationPlacemark:v2];
}

@end