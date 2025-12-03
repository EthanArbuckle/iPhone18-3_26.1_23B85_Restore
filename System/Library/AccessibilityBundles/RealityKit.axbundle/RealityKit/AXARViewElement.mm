@interface AXARViewElement
- (AXARViewElement)initWithAccessibilityContainer:(id)container entityWrapper:(id)wrapper;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (CGRect)_boundingRect;
- (CGRect)accessibilityFrame;
- (id)_accessibilityScrollStatus;
- (id)_arView;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityCustomRotors;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AXARViewElement

- (AXARViewElement)initWithAccessibilityContainer:(id)container entityWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v11.receiver = self;
  v11.super_class = AXARViewElement;
  v8 = [(AXARViewElement *)&v11 initWithAccessibilityContainer:container];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_entityWrapper, wrapper);
  }

  return v9;
}

- (id)_arView
{
  v3 = MEMORY[0x29C2EA520](@"RealityKit.ARView", a2);

  return [(AXARViewElement *)self _accessibilityAncestorIsKindOf:v3];
}

- (BOOL)isAccessibilityElement
{
  entityWrapper = [(AXARViewElement *)self entityWrapper];
  if ([entityWrapper safeBoolForKey:@"isEntityAccessible"])
  {
    entityWrapper2 = [(AXARViewElement *)self entityWrapper];
    v5 = [entityWrapper2 safeBoolForKey:@"isEntityActive"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)_boundingRect
{
  _arView = [(AXARViewElement *)self _arView];
  v3 = _arView;
  if (_arView)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x4010000000;
    v16 = &unk_29C200CD1;
    v17 = 0u;
    v18 = 0u;
    v12 = _arView;
    AXPerformSafeBlock();
    v4 = v14[4];
    v5 = v14[5];
    v6 = v14[6];
    v7 = v14[7];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v4 = *MEMORY[0x29EDB90E0];
    v5 = *(MEMORY[0x29EDB90E0] + 8);
    v6 = *(MEMORY[0x29EDB90E0] + 16);
    v7 = *(MEMORY[0x29EDB90E0] + 24);
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

void __32__AXARViewElement__boundingRect__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) entityWrapper];
  [v7 calculateScreenBoundingRectIn:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
}

- (CGRect)accessibilityFrame
{
  [(AXARViewElement *)self _boundingRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  _arView = [(AXARViewElement *)self _arView];
  v12 = __UIAccessibilityCastAsClass();

  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  v36.origin.x = v14;
  v36.origin.y = v16;
  v36.size.width = v18;
  v36.size.height = v20;
  v34 = CGRectIntersection(v33, v36);
  CGRectIsNull(v34);
  UIAccessibilityFrameForBounds();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(AXARViewElement *)self _accessibilityGetBlockForAttribute:1];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    entityWrapper = [(AXARViewElement *)self entityWrapper];
    v5 = [entityWrapper safeValueForKey:@"entityLabel"];

    [(AXARViewElement *)self _boundingRect];
    if (CGRectIsNull(v11))
    {
      v9 = accessibilityLocalizedString(@"OFF_SCREEN");
      v7 = __UIAXStringForVariables();

      v5 = v7;
    }
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  if (v2 == *MEMORY[0x29EDC7FA0])
  {
    return *MEMORY[0x29EDC7FC8];
  }

  else
  {
    return v2;
  }
}

void __38__AXARViewElement_accessibilityTraits__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entityWrapper];
  *(*(*(a1 + 40) + 8) + 24) = [v2 entityAccessibilityTraits];
}

- (id)_accessibilityScrollStatus
{
  [(AXARViewElement *)self _boundingRect];
  if (CGRectIsNull(v42))
  {
    v3 = 0;
  }

  else
  {
    [(AXARViewElement *)self entityWrapper];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v4 = v40 = 0;
    AXPerformSafeBlock();
    v5 = *(v38 + 6);

    _Block_object_dispose(&v37, 8);
    v6 = MEMORY[0x29EDBDF28];
    [(AXARViewElement *)self _boundingRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _arView = [(AXARViewElement *)self _arView];
    [_arView accessibilityFrame];
    v31 = v16;
    LODWORD(v16) = v5;
    v32 = [v6 descriptionForDistance:v16 objectFrame:v8 viewBounds:{v10, v12, v14, *&v31, v17, v18, v19}];
    v20 = __UIAXStringForVariables();

    v33 = [v4 safeValueForKey:{@"entityDescription", v32, @"__AXStringForVariablesSentinel"}];
    v3 = __UIAXStringForVariables();

    v21 = [v4 safeValueForKey:{@"rootEntityWrapper", v33, @"__AXStringForVariablesSentinel"}];
    v22 = [v21 safeValueForKey:@"entityLabel"];
    if ([v22 length])
    {
      v23 = MEMORY[0x29EDBA0F8];
      v24 = accessibilityLocalizedString(@"SCENE_LABEL");
      v34 = [v23 localizedStringWithFormat:v24, v22];
      v36 = @"__AXStringForVariablesSentinel";
      v25 = __UIAXStringForVariables();

      v3 = v25;
    }

    v26 = [v21 safeValueForKey:{@"entityDescription", v34, v36}];
    if ([v26 length])
    {
      v27 = MEMORY[0x29EDBA0F8];
      v28 = accessibilityLocalizedString(@"SCENE_DESCRIPTION");
      v35 = [v27 localizedStringWithFormat:v28, v26];
      v29 = __UIAXStringForVariables();

      v3 = v29;
    }
  }

  return v3;
}

void __45__AXARViewElement__accessibilityScrollStatus__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _arView];
  [v3 distanceInMetersFromEntityAccessibilityWrapper:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2;
}

- (BOOL)accessibilityActivate
{
  entityWrapper = [(AXARViewElement *)self entityWrapper];
  v4 = [entityWrapper safeBoolForKey:@"entitySupportsAccessibilityActivateAction"];

  if (v4)
  {
    v18 = MEMORY[0x29EDCA5F8];
    v19 = 3221225472;
    v20 = __40__AXARViewElement_accessibilityActivate__block_invoke;
    v21 = &unk_29F2F1600;
    selfCopy = self;
    AXPerformSafeBlock();
    return 1;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __40__AXARViewElement_accessibilityActivate__block_invoke_2;
  v11 = &unk_29F2F15D8;
  selfCopy2 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v5 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  if (v5)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = AXARViewElement;
  return [(AXARViewElement *)&v7 accessibilityActivate];
}

void __40__AXARViewElement_accessibilityActivate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) entityWrapper];
  [v1 entityPerformAccessibilityActivate];
}

void __40__AXARViewElement_accessibilityActivate__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _arView];
  v2 = [*(a1 + 32) entityWrapper];
  *(*(*(a1 + 40) + 8) + 24) = [v3 handleTapForEntityAccessibilityWrapper:v2];
}

- (id)accessibilityCustomContent
{
  entityWrapper = [(AXARViewElement *)self entityWrapper];
  v3 = [entityWrapper safeValueForKey:@"entityAccessibilityCustomContent"];

  return v3;
}

- (id)accessibilityCustomActions
{
  entityWrapper = [(AXARViewElement *)self entityWrapper];
  v3 = [entityWrapper safeValueForKey:@"entityAccessibilityCustomActions"];

  return v3;
}

- (id)accessibilityCustomRotors
{
  entityWrapper = [(AXARViewElement *)self entityWrapper];
  v3 = [entityWrapper safeValueForKey:@"entityAccessibilityCustomRotors"];

  return v3;
}

void __41__AXARViewElement_accessibilityIncrement__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) entityWrapper];
  [v1 entityPerformAccessibilityIncrement];
}

void __41__AXARViewElement_accessibilityDecrement__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) entityWrapper];
  [v1 entityPerformAccessibilityDecrement];
}

@end