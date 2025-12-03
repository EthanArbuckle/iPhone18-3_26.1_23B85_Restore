@interface CKTranscriptPluginBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsAppClip;
- (BOOL)_axIsAttachedHandwritingPlugin;
- (BOOL)_axIsAttachedPlugin;
- (BOOL)_axIsAttachedRichLinkPlugin;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (CGRect)_accessibilityMediaAnalysisFrame;
- (id)_axAppClipDescriptionForMetadata:(id)metadata;
- (id)_axBalloonViewCustomActions;
- (id)_axHandwritingDescriptionForDataSource:(id)source;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilityMediaAnalysisOptions;
- (void)_axAppClipOpenInSafari;
- (void)_axClear;
@end

@implementation CKTranscriptPluginBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTranscriptPluginBalloonView" isKindOfClass:@"CKBalloonView"];
  [validationsCopy validateClass:@"CKTranscriptPluginBalloonView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"LPCollaborationFooterView"];
  [validationsCopy validateClass:@"CKTranscriptPluginBalloonView" hasInstanceMethod:@"pluginView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKBrowserItemPayload" isKindOfClass:@"IMPluginPayload"];
  if (NSClassFromString(&cfstr_Richlinkplugin.isa))
  {
    [validationsCopy validateClass:@"RichLinkPluginDataSource"];
  }

  [validationsCopy validateClass:@"IMPluginPayload" hasInstanceMethod:@"pluginBundleID" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMTranscriptPluginChatItem" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptPluginBalloonView" hasInstanceMethod:@"pluginView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPLinkMetadata" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPLinkMetadata" hasInstanceMethod:@"associatedApplication" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPAssociatedApplicationMetadata" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPAssociatedApplicationMetadata" hasInstanceMethod:@"caption" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LPAssociatedApplicationMetadata" hasInstanceMethod:@"clipAction" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"LPLinkView" hasInstanceMethod:@"_captionTapRecognized:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"LPLinkView" hasInstanceMethod:@"_mediaTapRecognized:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
  v4 = [v3 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1203];
  if (NSClassFromString(&cfstr_Richlinkview.isa) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [v3 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1208];
    v6 = v5 == 0;

    goto LABEL_16;
  }

  if (!NSClassFromString(&cfstr_Msmessageexten_1.isa))
  {
    if (!NSClassFromString(&cfstr_Msmessageexten_0.isa))
    {
      goto LABEL_11;
    }

    isKindOfClass = 0;
LABEL_9:
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (NSClassFromString(&cfstr_Msmessageexten_0.isa))
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((isKindOfClass & 1) == 0)
  {
LABEL_11:
    if (v4)
    {
      v6 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v6 = 1;
    goto LABEL_16;
  }

LABEL_13:
  _axIsAttachedPlugin = [(CKTranscriptPluginBalloonViewAccessibility *)self _axIsAttachedPlugin];
  v6 = 0;
  if (_axIsAttachedPlugin && !v4)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v6;
}

uint64_t __68__CKTranscriptPluginBalloonViewAccessibility_isAccessibilityElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Lpcollaboratio.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t __68__CKTranscriptPluginBalloonViewAccessibility_isAccessibilityElement__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Lpcaptionbarbu.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

- (id)accessibilityValue
{
  v8.receiver = self;
  v8.super_class = CKTranscriptPluginBalloonViewAccessibility;
  accessibilityValue = [(CKTranscriptPluginBalloonViewAccessibility *)&v8 accessibilityValue];
  if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsURL]|| [(CKTranscriptPluginBalloonViewAccessibility *)self _axIsAttachedPlugin])
  {
    v4 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    accessibilityValue2 = [v4 accessibilityValue];
    v5 = __UIAXStringForVariables();

    accessibilityValue = v5;
  }

  return accessibilityValue;
}

- (id)accessibilityLabel
{
  if (![(CKTranscriptPluginBalloonViewAccessibility *)self _axIsAttachedPlugin])
  {
    if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsHandwriting])
    {
      _axChatItemForBalloon = [(CKTranscriptPluginBalloonViewAccessibility *)self _axChatItemForBalloon];
      v8 = __UIAccessibilitySafeClass();

      _axDigitalTouchDescription = [v8 safeValueForKeyPath:@"IMChatItem.dataSource"];
      v10 = [(CKTranscriptPluginBalloonViewAccessibility *)self _axHandwritingDescriptionForDataSource:_axDigitalTouchDescription];
LABEL_9:
      accessibilityLabel2 = v10;

LABEL_21:
LABEL_22:
      objc_opt_class();
      v4 = __UIAccessibilityCastAsSafeCategory();
      _axMessageSender = [v4 _axMessageSender];
      _axHighlightedDescription = [v4 _axHighlightedDescription];
      _axReplyDescription = [v4 _axReplyDescription];
      _axStickerDescription = [v4 _axStickerDescription];
      _axAcknowledgmentDescription = [v4 _axAcknowledgmentDescription];
      _axMessageTime = [v4 _axMessageTime];
      v24 = __UIAXStringForVariables();

      goto LABEL_30;
    }

    if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsAppClip])
    {
      v8 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKeyPath:@"pluginView._metadata"];
      accessibilityLabel = [(CKTranscriptPluginBalloonViewAccessibility *)self _axAppClipDescriptionForMetadata:v8];
    }

    else
    {
      if (![(CKTranscriptPluginBalloonViewAccessibility *)self _axIsURL])
      {
        if (![(CKTranscriptPluginBalloonViewAccessibility *)self _axIsDigitalTouch])
        {
          accessibilityLabel2 = 0;
          goto LABEL_22;
        }

        v8 = accessibilityLocalizedString(@"digital.touch.label");
        _axDigitalTouchDescription = [(CKTranscriptPluginBalloonViewAccessibility *)self _axDigitalTouchDescription];
        v10 = __UIAXStringForVariables();
        goto LABEL_9;
      }

      v8 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
      accessibilityLabel = [v8 accessibilityLabel];
    }

    accessibilityLabel2 = accessibilityLabel;
    goto LABEL_21;
  }

  if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsAttachedRichLinkPlugin])
  {
    v3 = @"attached.plugin.rich.link.label";
  }

  else
  {
    v3 = @"attached.plugin.label";
  }

  v4 = accessibilityLocalizedString(v3);
  if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsAttachedHandwritingPlugin])
  {
    v5 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"dataSource"];
    accessibilityLabel2 = [(CKTranscriptPluginBalloonViewAccessibility *)self _axHandwritingDescriptionForDataSource:v5];
  }

  else
  {
    v11 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    accessibilityLabel2 = [v11 accessibilityLabel];
    v12 = NSClassFromString(&cfstr_Msmessageexten_1.isa);
    if (![accessibilityLabel2 length])
    {
      if (v12)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = NSClassFromString(&cfstr_Msmessageexten_2.isa);
          if (objc_opt_respondsToSelector())
          {
            v14 = [v11 safeValueForKey:@"payload"];
            v15 = [(objc_class *)v13 messagePayloadFromPluginPayload:v14];
            v16 = __UIAccessibilitySafeClass();

            accessibilityLabel3 = [v16 accessibilityLabel];
            if (accessibilityLabel3)
            {
              [v16 accessibilityLabel];
            }

            else
            {
              [v16 summaryText];
            }
            v25 = ;

            accessibilityLabel2 = v25;
          }
        }
      }
    }
  }

  v24 = __AXStringForVariables();
LABEL_30:

  return v24;
}

- (id)accessibilityHint
{
  if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsURL])
  {
    v3 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    accessibilityHint = [v3 accessibilityHint];
  }

  else
  {
    accessibilityHint = 0;
  }

  return accessibilityHint;
}

- (int64_t)accessibilityContainerType
{
  if (![(CKTranscriptPluginBalloonViewAccessibility *)self isAccessibilityElement])
  {
    return 4;
  }

  v4.receiver = self;
  v4.super_class = CKTranscriptPluginBalloonViewAccessibility;
  return [(CKTranscriptPluginBalloonViewAccessibility *)&v4 accessibilityContainerType];
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = CKTranscriptPluginBalloonViewAccessibility;
  accessibilityTraits = [(CKTranscriptPluginBalloonViewAccessibility *)&v6 accessibilityTraits];
  if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsURL])
  {
    v4 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    accessibilityTraits |= [v4 accessibilityTraits];
  }

  return accessibilityTraits;
}

- (id)_axBalloonViewCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v11.receiver = self;
  v11.super_class = CKTranscriptPluginBalloonViewAccessibility;
  _axBalloonViewCustomActions = [(CKTranscriptPluginBalloonViewAccessibility *)&v11 _axBalloonViewCustomActions];
  [array axSafelyAddObjectsFromArray:_axBalloonViewCustomActions];

  v5 = [(CKTranscriptPluginBalloonViewAccessibility *)self _accessibilityValueForKey:@"AXPluginClearActionProvider"];
  if (v5)
  {
    v6 = accessibilityLocalizedString(@"plugin.clear.action.title");
    accessibilityCustomActions2 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v6 target:self selector:sel__axClear];
    [array addObject:accessibilityCustomActions2];
  }

  else if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsAppClip])
  {
    v6 = accessibilityLocalizedString(@"plugin.appClip.OpenInSafari.title");
    accessibilityCustomActions2 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    accessibilityCustomActions = [accessibilityCustomActions2 accessibilityCustomActions];
    [array addObjectsFromArray:accessibilityCustomActions];

    v9 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v6 target:self selector:sel__axAppClipOpenInSafari];
    [array addObject:v9];
  }

  else
  {
    if (![(CKTranscriptPluginBalloonViewAccessibility *)self _axIsURL])
    {
      goto LABEL_8;
    }

    v6 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    accessibilityCustomActions2 = [v6 accessibilityCustomActions];
    [array addObjectsFromArray:accessibilityCustomActions2];
  }

LABEL_8:

  return array;
}

- (BOOL)accessibilityActivate
{
  if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsAppClip])
  {
    v3 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    if (v3)
    {
      v4 = v3;
      [v3 _captionTapRecognized:0];

      return 1;
    }
  }

  else if ([(CKTranscriptPluginBalloonViewAccessibility *)self _axIsURL])
  {
    v6 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    accessibilityActivate = [v6 accessibilityActivate];

    return accessibilityActivate;
  }

  v8.receiver = self;
  v8.super_class = CKTranscriptPluginBalloonViewAccessibility;
  return [(CKTranscriptPluginBalloonViewAccessibility *)&v8 accessibilityActivate];
}

- (unsigned)_accessibilityMediaAnalysisOptions
{
  result = [(CKTranscriptPluginBalloonViewAccessibility *)self _axIsURL];
  if (result)
  {
    v4.receiver = self;
    v4.super_class = CKTranscriptPluginBalloonViewAccessibility;
    return [(CKTranscriptPluginBalloonViewAccessibility *)&v4 _accessibilityMediaAnalysisOptions]| 0x10000;
  }

  return result;
}

- (CGRect)_accessibilityMediaAnalysisFrame
{
  v2 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
  v3 = [v2 safeArrayForKey:@"_axMediaViews"];
  if ([v3 count] == 1)
  {
    firstObject = [v3 firstObject];
    [firstObject _accessibilityVisibleFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [v2 _accessibilityVisibleFrame];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)automationElements
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  subviews = [v3 subviews];

  if (subviews)
  {
    automationElements = subviews;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKTranscriptPluginBalloonViewAccessibility;
    automationElements = [(CKTranscriptPluginBalloonViewAccessibility *)&v8 automationElements];
  }

  v6 = automationElements;

  return v6;
}

- (BOOL)_axIsAttachedPlugin
{
  _axChatItemForBalloon = [(CKTranscriptPluginBalloonViewAccessibility *)self _axChatItemForBalloon];
  if (_axChatItemForBalloon)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)_axIsAppClip
{
  v3 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
  NSClassFromString(&cfstr_Lplinkview.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSClassFromString(&cfstr_Cpsclipurl.isa) safeBoolForKey:@"isSupported"];
    v5 = [v3 safeValueForKeyPath:@"_metadata.associatedApplication"];
    v6 = [v5 safeValueForKey:@"bundleIdentifier"];

    _axIsURL = [(CKTranscriptPluginBalloonViewAccessibility *)self _axIsURL];
    if (v6)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    v9 = _axIsURL && v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_axAppClipDescriptionForMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy safeValueForKey:@"associatedApplication"];
  v5 = [metadataCopy safeStringForKey:@"title"];

  v6 = [v4 safeStringForKey:@"_caption"];
  v7 = [v4 safeIntegerForKey:@"clipAction"];
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = accessibilityLocalizedString(off_29F2B0B98[v7]);
  }

  v9 = __UIAXStringForVariables();

  return v9;
}

- (BOOL)_axIsAttachedHandwritingPlugin
{
  v2 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKeyPath:@"pluginView.dataSource"];
  NSClassFromString(&cfstr_Hwballoondatas.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsAttachedRichLinkPlugin
{
  v2 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKeyPath:@"pluginView.dataSource"];
  NSClassFromString(&cfstr_Richlinkplugin.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axHandwritingDescriptionForDataSource:(id)source
{
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v4 = [sourceCopy safeValueForKeyPath:@"handwritingFromPayload.drawing"];
    objc_opt_class();
    v5 = [v4 safeValueForKey:@"strokes"];
    v6 = __UIAccessibilityCastAsClass();

    if (v6)
    {
      v7 = MEMORY[0x29EDBA0F8];
      v8 = accessibilityLocalizedString(@"handwriting.stroke.description");
      v9 = [v7 localizedStringWithFormat:v8, objc_msgSend(v6, "count")];

      v10 = accessibilityLocalizedString(@"handwriting.label");
      v11 = __UIAXStringForVariables();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_axAppClipOpenInSafari
{
  v2 = [(CKTranscriptPluginBalloonViewAccessibility *)self safeValueForKey:@"pluginView"];
  [v2 _mediaTapRecognized:0];
}

- (void)_axClear
{
  v3 = [(CKTranscriptPluginBalloonViewAccessibility *)self _accessibilityValueForKey:@"AXPluginClearActionProvider"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v3 safeValueForKey:@"_accessibilityClearPlugin"];
  }
}

@end