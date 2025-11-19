@interface AXElement
- (BOOL)isHandUI;
- (BOOL)isVisible;
- (BOOL)scatCanStartContinuousPathGesture;
- (BOOL)scatIsAuxiliaryElement;
- (BOOL)scatIsMemberOfGroup;
- (BOOL)scatIsOnScreen;
- (BOOL)scatShouldActivateDirectly;
- (BOOL)scatSupportsAction:(int)a3;
- (BOOL)scatUpdatesMenu;
- (CGPoint)scatScreenPointForOperations;
- (CGRect)scatTextCursorFrame;
- (NSArray)scatCustomHardwareActions;
- (NSString)scatSpeakableDescription;
- (id)elemLog;
- (id)windowSceneIdentifier;
- (int64_t)scatActivateBehavior;
- (void)scatUpdateValue;
- (void)setScatAutoscrollTarget:(id)a3;
@end

@implementation AXElement

- (id)elemLog
{
  v3 = [(AXElement *)self label];
  v4 = [(AXElement *)self uiElement];
  v5 = [v4 stringWithAXAttribute:2072];
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (CGPoint)scatScreenPointForOperations
{
  [(AXElement *)self centerPoint];
  v4 = v3;
  v6 = v5;
  v7 = +[AXElement systemWideElement];
  [v7 convertPoint:-[AXElement windowContextId](self fromContextId:{"windowContextId"), v4, v6}];
  v9 = v8;
  v11 = v10;

  [(AXElement *)self scatFrame];
  v21.origin.x = sub_1000427AC(v12, v13, v14, v15);
  v20.x = v9;
  v20.y = v11;
  if (CGRectContainsPoint(v21, v20))
  {
    v16 = v9;
    v17 = v11;
  }

  else
  {

    AX_CGRectGetCenter();
  }

  result.y = v17;
  result.x = v16;
  return result;
}

- (CGRect)scatTextCursorFrame
{
  [(AXElement *)self textCursorFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)scatShouldActivateDirectly
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 switchControlShouldAlwaysActivateKeyboardKeys] && objc_msgSend(v3, "switchControlTapBehavior") != 2 && (-[AXElement scatIsKeyboardKey](self, "scatIsKeyboardKey") || (-[AXElement keyboardContainer](self, "keyboardContainer"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, v8 = -[AXElement hasAnyTraits:](self, "hasAnyTraits:", kAXAdjustableTrait), v7, (v8 & 1) == 0)))
  {
    if ([(AXElement *)self scatIsAXElement])
    {
      v9 = [(AXElement *)self uiElement];
      v10 = [v9 BOOLWithAXAttribute:12006];

      v4 = v10 ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)scatActivateBehavior
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlScanAfterTapLocation];

  if (v4 == 1)
  {
    return 1;
  }

  return [(AXElement *)self scannerActivateBehavior];
}

- (NSString)scatSpeakableDescription
{
  v3 = [(AXElement *)self label];
  v4 = [(AXElement *)self traits];
  v5 = kAXToggleTrait & ~v4;
  v6 = [(AXElement *)self value];
  v7 = v6;
  if (!v5)
  {
    if ([v6 isEqualToString:@"1"])
    {
      v8 = @"element.on.state";
    }

    else if ([v7 isEqualToString:@"0"])
    {
      v8 = @"element.off.state";
    }

    else
    {
      if (![v7 isEqualToString:@"2"])
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = @"element.mixed.state";
    }

    v10 = sub_100042B24(v8);
LABEL_10:
    v41 = v10;
    v9 = __AXStringForVariables();

    v3 = v7;
    v7 = v10;
    goto LABEL_11;
  }

  v41 = v6;
  v9 = __AXStringForVariables();
LABEL_11:

  if (![v9 length] && -[AXElement eligibleForIconVision](self, "eligibleForIconVision"))
  {
    v11 = [(AXElement *)self uiElement];
    v12 = [v11 arrayWithAXAttribute:2315];

    v13 = +[AXMIconVisionEngine sharedInstance];
    v14 = [v13 classifyImages:v12 withTimeout:0.5];

    if ([v14 length])
    {
      v15 = v14;

      v9 = v15;
    }
  }

  v16 = [(AXElement *)self customContent];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v58;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v58 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v57 + 1) + 8 * i);
        if ([v21 importance] == 1)
        {
          v42 = [v21 value];
          v50 = @"__AXStringForVariablesSentinel";
          v22 = __AXStringForVariables();

          v9 = v22;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v18);
  }

  v23 = [AXSettings sharedInstance:v42];
  v24 = [v23 assistiveTouchScannerSpeechShouldSpeakTraits];

  if (v24)
  {
    v25 = [(AXElement *)self traits];
    if ((kAXSelectedTrait & ~v25) == 0)
    {
      v43 = sub_100042B24(@"element.selected");
      v51 = @"__AXStringForVariablesSentinel";
      v26 = __AXStringForVariables();

      v9 = v26;
    }

    v27 = [(AXElement *)self traits:v43];
    if ((kAXHeaderTrait & ~v27) == 0)
    {
      v44 = sub_100042B24(@"element.heading");
      v52 = @"__AXStringForVariablesSentinel";
      v28 = __AXStringForVariables();

      v9 = v28;
    }

    v29 = [(AXElement *)self traits:v44];
    if ((kAXButtonTrait & ~v29) == 0)
    {
      v30 = [(AXElement *)self traits];
      if ((kAXKeyboardKeyTrait & ~v30) != 0)
      {
        v45 = sub_100042B24(@"element.button");
        v53 = @"__AXStringForVariablesSentinel";
        v31 = __AXStringForVariables();

        v9 = v31;
      }
    }

    v32 = [(AXElement *)self traits:v45];
    if ((kAXLinkTrait & ~v32) == 0)
    {
      v46 = sub_100042B24(@"element.link");
      v54 = @"__AXStringForVariablesSentinel";
      v33 = __AXStringForVariables();

      v9 = v33;
    }

    v34 = [(AXElement *)self traits:v46];
    if ((kAXImageTrait & ~v34) == 0)
    {
      v47 = sub_100042B24(@"element.image");
      v55 = @"__AXStringForVariablesSentinel";
      v35 = __AXStringForVariables();

      v9 = v35;
    }

    v36 = [(AXElement *)self traits:v47];
    if ((kAXNotEnabledTrait & ~v36) == 0)
    {
      v48 = sub_100042B24(@"element.dimmed");
      v56 = @"__AXStringForVariablesSentinel";
      v37 = __AXStringForVariables();

      v9 = v37;
    }

    v38 = [(AXElement *)self traits:v48];
    if ((kAXAdjustableTrait & ~v38) == 0)
    {
      v49 = sub_100042B24(@"element.adjustable");
      v39 = __AXStringForVariables();

      v9 = v39;
    }
  }

  return v9;
}

- (BOOL)scatCanStartContinuousPathGesture
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2241];

  return v3;
}

- (BOOL)scatSupportsAction:(int)a3
{
  result = [(AXElement *)self supportsAction:?];
  if (a3 == 2010 && !result)
  {
    v6 = [(AXElement *)self traits];
    v7 = kAXAdjustableTrait;
    v8 = kAXAdjustableTrait & v6;
    if ((kAXIsEditingTrait & ~v6) != 0)
    {
      v12 = 1;
    }

    else if ((kAXWebContentTrait & ~v6) != 0)
    {
      v12 = 0;
    }

    else
    {
      v9 = [(AXElement *)self application];
      v10 = [v9 uiElement];
      v11 = [v10 BOOLWithAXAttribute:3005];

      v12 = v11 ^ 1;
    }

    return (v8 != v7) & v12;
  }

  return result;
}

- (NSArray)scatCustomHardwareActions
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 objectWithAXAttribute:95259 parameter:@"HardwareGestureActions"];

  v8 = 0;
  v4 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v3 error:&v8];
  v5 = v4;
  if (v8)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)scatIsMemberOfGroup
{
  v2 = [(AXElement *)self parentGroup];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)scatIsAuxiliaryElement
{
  v2 = [(AXElement *)self scatAuxiliaryElementManager];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)scatIsOnScreen
{
  [(AXElement *)self frame];
  MinX = CGRectGetMinX(v13);
  [(AXElement *)self frame];
  MaxX = CGRectGetMaxX(v14);
  [(AXElement *)self frame];
  MinY = CGRectGetMinY(v15);
  [(AXElement *)self frame];
  MaxY = CGRectGetMaxY(v16);
  [HNDHandManager screenFrame:]_0();
  v8 = v7;
  [HNDHandManager screenFrame:]_0();
  v9 = fmin(MinX, MinY);
  v10 = MaxX <= v8;
  if (MaxY > v11)
  {
    v10 = 0;
  }

  return v9 >= 0.0 && v10;
}

- (BOOL)scatUpdatesMenu
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2189];

  return v3;
}

- (id)windowSceneIdentifier
{
  v2 = [(AXElement *)self uiElement];
  v3 = [v2 stringWithAXAttribute:3056];

  return v3;
}

- (BOOL)isHandUI
{
  v2 = [(AXElement *)self windowSceneIdentifier];
  v3 = [v2 hasPrefix:@"com.apple.RealityHUD.HandScene"];

  return v3;
}

- (BOOL)isVisible
{
  v3 = [(AXElement *)self uiElement];
  [v3 updateCache:2025];

  v4 = [(AXElement *)self uiElement];
  LOBYTE(v3) = [v4 BOOLWithAXAttribute:2025];

  return v3;
}

- (void)setScatAutoscrollTarget:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(AXElement *)self setAutoscrollTarget:v4];
  }
}

- (void)scatUpdateValue
{
  [(AXElement *)self updateCache:2006];

  [(AXElement *)self updateCache:2004];
}

@end