@interface CKImageBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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
- (void)_axWarmLocationCoordinatePlacemarkIfNeededForMediaObject:(id)object;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
@end

@implementation CKImageBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKLocationMediaObject"];
  [validationsCopy validateClass:@"CKContactMediaObject" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKLocationMediaObject" isKindOfClass:@"CKContactMediaObject"];
  [validationsCopy validateClass:@"CKImageBalloonView" hasInstanceMethod:@"configureForMediaObject:previewWidth:orientation:hasInvisibleInkEffect:" withFullSignature:{"v", "@", "d", "c", "B", 0}];
  [validationsCopy validateClass:@"CKChatItem" hasInstanceMethod:@"isCommSafetySensitive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKBalloonView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKImageBalloonView" isKindOfClass:@"CKObscurableBalloonView"];
  [validationsCopy validateClass:@"CKObscurableBalloonView" hasInstanceMethod:@"isObscured" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKObscurableBalloonView" hasInstanceMethod:@"warningButton" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"CKBalloonViewDelegate" hasRequiredInstanceMethod:@"balloonViewTapped:withModifierFlags:selectedText:"];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"actionMoreIsTappedForChatItem:" withFullSignature:{"v", "@", 0}];
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
  _axMediaObject = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  v3 = [_axMediaObject safeIntForKey:@"mediaType"] == 2;

  return v3;
}

- (BOOL)_axIsPhoto
{
  _axMediaObject = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  v3 = [_axMediaObject safeIntForKey:@"mediaType"] == 3;

  return v3;
}

- (BOOL)_axIsLocation
{
  _axMediaObject = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  v3 = [_axMediaObject safeIntForKey:@"mediaType"] == 5;

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
  _axMediaObject = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  NSClassFromString(&cfstr_Ckmoviemediaob.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  _axMediaObject2 = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  v6 = [_axMediaObject2 safeBoolForKey:@"isJellyfishVideo"];

  return v6;
}

- (BOOL)_axIsSensitive
{
  _axChatItemForBalloon = [(CKImageBalloonViewAccessibility *)self _axChatItemForBalloon];
  v3 = [_axChatItemForBalloon safeBoolForKey:@"isCommSafetySensitive"];

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
  _axMediaObject = [(CKImageBalloonViewAccessibility *)self _axMediaObject];
  if ([(CKImageBalloonViewAccessibility *)self _axIsPhoto])
  {
    v4 = [_axMediaObject _accessibilityValueForKey:@"AXCachedPhotoDescription"];
    if (v4)
    {
      goto LABEL_24;
    }

    _axLocationPlacemark = accessibilityLocalizedString(@"includes.picture");
    _axDigitalTouchDescription = [_axMediaObject safeValueForKey:@"fileURL"];
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
    [_axMediaObject _accessibilitySetRetainedValue:v4 forKey:{@"AXCachedPhotoDescription", v22, v24, @"__AXStringForVariablesSentinel"}];

    goto LABEL_22;
  }

  if ([(CKImageBalloonViewAccessibility *)self _axIsVideo])
  {
    _axLocationPlacemark = [_axMediaObject safeValueForKey:@"fileURL"];
    _axDigitalTouchDescription = UIAccessibilityMetadataDescriptionForVideo();
    if ([(CKImageBalloonViewAccessibility *)self _axIsJellyfishVideo])
    {
      v10 = _axDigitalTouchDescription;
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
    _axLocationPlacemark = [(CKImageBalloonViewAccessibility *)self _axLocationPlacemark];
    formattedAddressLines = [_axLocationPlacemark formattedAddressLines];
    _axDigitalTouchDescription = [formattedAddressLines componentsJoinedByString:@" "];

    v7 = [_axMediaObject safeStringForKey:@"title"];
    v21 = _axDigitalTouchDescription;
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
    _axLocationPlacemark = accessibilityLocalizedString(@"digital.touch.label");
    _axDigitalTouchDescription = [(CKImageBalloonViewAccessibility *)self _axDigitalTouchDescription];
    v21 = _axDigitalTouchDescription;
    v23 = @"__AXStringForVariablesSentinel";
    v10 = __UIAXStringForVariables();
    goto LABEL_8;
  }

  v4 = 0;
LABEL_24:
  objc_opt_class();
  v12 = __UIAccessibilityCastAsSafeCategory();
  _axMessageSender = [v12 _axMessageSender];
  _axIsObscured = [(CKImageBalloonViewAccessibility *)self _axIsObscured];
  v15 = 0;
  if (_axIsObscured)
  {
    v15 = accessibilityLocalizedString(@"media.may.be.sensitive");
  }

  _axReplyDescription = [v12 _axReplyDescription];
  _axStickerDescription = [v12 _axStickerDescription];
  _axAcknowledgmentDescription = [v12 _axAcknowledgmentDescription];
  _axMessageTime = [v12 _axMessageTime];
  v19 = __UIAXStringForVariables();

  return v19;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CKImageBalloonViewAccessibility;
  accessibilityTraits = [(CKImageBalloonViewAccessibility *)&v7 accessibilityTraits];
  _axIsPhoto = [(CKImageBalloonViewAccessibility *)self _axIsPhoto];
  v5 = *MEMORY[0x29EDC7F88];
  if (!_axIsPhoto)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits | *MEMORY[0x29EDC7F70];
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
    array = [MEMORY[0x29EDB8DE8] array];
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
    selfCopy = self;
    v9 = [v6 initWithName:v7 actionHandler:v21];

    [array axSafelyAddObject:v9];
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

      [array axSafelyAddObject:v12];
    }

    objc_opt_class();
    v13 = [(CKImageBalloonViewAccessibility *)self safeValueForKey:@"warningButton"];
    v14 = __UIAccessibilityCastAsClass();

    menu = [v14 menu];
    children = [menu children];
    v17 = _AXCustomActionsForActions(children);

    [array axSafelyAddObjectsFromArray:v17];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = CKImageBalloonViewAccessibility;
    array = [(CKImageBalloonViewAccessibility *)&v24 accessibilityCustomActions];
  }

  return array;
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

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  effectCopy = effect;
  orientationCopy = orientation;
  v11.receiver = self;
  v11.super_class = CKImageBalloonViewAccessibility;
  objectCopy = object;
  [(CKImageBalloonViewAccessibility *)&v11 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:effectCopy hasInvisibleInkEffect:width];
  [(CKImageBalloonViewAccessibility *)self _axWarmLocationCoordinatePlacemarkIfNeededForMediaObject:objectCopy, v11.receiver, v11.super_class];
}

- (void)_axWarmLocationCoordinatePlacemarkIfNeededForMediaObject:(id)object
{
  objectCopy = object;
  if ([objectCopy safeIntForKey:@"mediaType"] == 5)
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
    v16 = objectCopy;
    AXPerformSafeBlock();
    v5 = v19[4];
    v6 = v19[5];

    _Block_object_dispose(&v18, 8);
    _axLocationPlacemark = [(CKImageBalloonViewAccessibility *)self _axLocationPlacemark];
    location = [_axLocationPlacemark location];
    [location coordinate];
    if (v9 == v5)
    {
      location2 = [_axLocationPlacemark location];
      [location2 coordinate];
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