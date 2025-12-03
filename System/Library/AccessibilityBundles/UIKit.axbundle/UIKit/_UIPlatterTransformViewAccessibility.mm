@interface _UIPlatterTransformViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_axCachedPlatterElements;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
- (uint64_t)_accessibilityIsExpandedTransformView;
- (uint64_t)_accessibilitySetIsExpandedTransformView:(uint64_t)result;
- (uint64_t)_axShowsSourceViewDirectly;
- (void)_axSetCachedPlatterElements:(uint64_t)elements;
@end

@implementation _UIPlatterTransformViewAccessibility

- (uint64_t)_accessibilityIsExpandedTransformView
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_accessibilitySetIsExpandedTransformView:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIPlatterTransformView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"shouldTakeOwnershipOfSourceView" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (id)_axCachedPlatterElements
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIPlatterTransformViewAccessibility___axCachedPlatterElements);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetCachedPlatterElements:(uint64_t)elements
{
  elementsCopy = elements;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementsCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (int64_t)accessibilityContainerType
{
  selfCopy = self;
  v4 = a2;
  if (([(_UIPlatterTransformViewAccessibility *)self _accessibilityIsExpandedTransformView]& 1) != 0)
  {
    return 4;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIPlatterTransformViewAccessibility;
  return [(_UIPlatterTransformViewAccessibility *)&v3 accessibilityContainerType];
}

- (uint64_t)_axShowsSourceViewDirectly
{
  if (self)
  {
    v2 = [self safeBoolForKey:@"shouldTakeOwnershipOfSourceView"] & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v7 = a2;
  v5 = 0;
  LOBYTE(v3) = 0;
  if (AXRequestingClient() == 4)
  {
    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    v5 = 1;
    LOBYTE(v3) = 0;
    if (([mEMORY[0x29EDBDFA0] assistiveTouchScannerSpeechEnabled] & 1) == 0)
    {
      LOBYTE(v3) = 0;
      if (([(_UIPlatterTransformViewAccessibility *)selfCopy _accessibilityIsExpandedTransformView]& 1) != 0)
      {
        v3 = [(_UIPlatterTransformViewAccessibility *)selfCopy _axShowsSourceViewDirectly]^ 1;
      }
    }
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](mEMORY[0x29EDBDFA0]);
  }

  if (v3)
  {
    return 1;
  }

  v4.receiver = selfCopy;
  v4.super_class = _UIPlatterTransformViewAccessibility;
  return [(_UIPlatterTransformViewAccessibility *)&v4 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v5 = a2;
  if (([(_UIPlatterTransformViewAccessibility *)self _accessibilityIsExpandedTransformView]& 1) != 0)
  {
    accessibilityLabel = accessibilityLocalizedString(@"context.menu.preview");
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UIPlatterTransformViewAccessibility;
    accessibilityLabel = [(_UIPlatterTransformViewAccessibility *)&v4 accessibilityLabel];
  }

  v2 = accessibilityLabel;

  return v2;
}

- (id)accessibilityElements
{
  v58 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v54[1] = a2;
  if (([(_UIPlatterTransformViewAccessibility *)self _accessibilityIsExpandedTransformView]& 1) == 0 || ([(_UIPlatterTransformViewAccessibility *)selfCopy _axShowsSourceViewDirectly]& 1) != 0)
  {
    v25.receiver = selfCopy;
    v25.super_class = _UIPlatterTransformViewAccessibility;
    accessibilityElements = [(_UIPlatterTransformViewAccessibility *)&v25 accessibilityElements];
  }

  else
  {
    v54[0] = [(_UIPlatterTransformViewAccessibility *)selfCopy safeUIViewForKey:@"sourceView"];
    selfCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-sourceViewElements", selfCopy];
    v52 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:selfCopy];
    if (!v52)
    {
      array = [MEMORY[0x29EDB8DE8] array];
      options = [MEMORY[0x29EDC7328] options];
      v44 = MEMORY[0x29EDCA5F8];
      v45 = -1073741824;
      v46 = 0;
      v47 = __61___UIPlatterTransformViewAccessibility_accessibilityElements__block_invoke;
      v48 = &unk_29F30C818;
      v49 = MEMORY[0x29EDC9748](v54[0]);
      [options setLeafNodePredicate:&v44];
      v22 = MEMORY[0x29EDC8008];
      _accessibilityContainerToStopVisibilityCheck = [*MEMORY[0x29EDC8008] _accessibilityContainerToStopVisibilityCheck];
      _accessibilityShouldIgnoreOpaqueElementProviders = [*v22 _accessibilityShouldIgnoreOpaqueElementProviders];
      [*v22 _accessibilitySetShouldIgnoreOpaqueElementProviders:1];
      [*v22 _accessibilitySetContainerToStopVisibilityCheck:v54[0]];
      v41 = [v54[0] _accessibilityLeafDescendantsWithOptions:options];
      [*v22 _accessibilitySetShouldIgnoreOpaqueElementProviders:_accessibilityShouldIgnoreOpaqueElementProviders & 1];
      [*v22 _accessibilitySetContainerToStopVisibilityCheck:_accessibilityContainerToStopVisibilityCheck];
      _axCachedPlatterElements = [(_UIPlatterTransformViewAccessibility *)selfCopy _axCachedPlatterElements];
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v41);
      v24 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
      if (v24)
      {
        v19 = *__b[2];
        v20 = 0;
        v21 = v24;
        while (1)
        {
          v18 = v20;
          if (*__b[2] != v19)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(__b[1] + 8 * v20);
          v36 = [MEMORY[0x29EDBA168] valueWithPointer:v38];
          location = [_axCachedPlatterElements objectForKeyedSubscript:v36];
          if (!location)
          {
            if ([v38 _accessibilityIsRemoteElement])
            {
              v2 = objc_alloc(MEMORY[0x29EDC78F8]);
              v3 = [v2 initWithAccessibilityContainer:selfCopy];
              v4 = location;
              location = v3;
              *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
              [v38 accessibilityFrame];
              v29 = v6;
              v30 = v7;
              v31 = v8;
              v32 = v9;
              UIAccessibilityFrameToBounds();
              *&v33 = v10;
              *(&v33 + 1) = v11;
              *&v34 = v12;
              *(&v34 + 1) = v13;
              v27 = v33;
              v28 = v34;
              [location setAccessibilityFrameInContainerSpace:{v10, v11, v12, v13}];
              [location setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
              v17 = accessibilityLocalizedString(@"context.menu.preview");
              [location setAccessibilityLabel:?];
              MEMORY[0x29EDC9740](v17);
            }

            else
            {
              v14 = [AXPlatterContentMockElement alloc];
              v26 = [(AXPlatterContentMockElement *)v14 initWithAccessibilityContainer:selfCopy];
              [(AXPlatterContentMockElement *)v26 setSourceElement:v38];
              [(AXPlatterContentMockElement *)v26 setSourceView:?];
              objc_storeStrong(&location, v26);
              objc_storeStrong(&v26, 0);
            }
          }

          [array addObject:location];
          [dictionary setObject:location forKeyedSubscript:v36];
          objc_storeStrong(&location, 0);
          objc_storeStrong(&v36, 0);
          ++v20;
          if (v18 + 1 >= v21)
          {
            v20 = 0;
            v21 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
            if (!v21)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      [(_UIPlatterTransformViewAccessibility *)selfCopy _axSetCachedPlatterElements:dictionary];
      objc_storeStrong(&v52, array);
      [*MEMORY[0x29EDC7300] setObject:v52 forKeyedSubscript:selfCopy];
      objc_storeStrong(&dictionary, 0);
      objc_storeStrong(&_axCachedPlatterElements, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&_accessibilityContainerToStopVisibilityCheck, 0);
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&options, 0);
      objc_storeStrong(&array, 0);
    }

    accessibilityElements = MEMORY[0x29EDC9748](v52);
    objc_storeStrong(&v52, 0);
    objc_storeStrong(&selfCopy, 0);
    objc_storeStrong(v54, 0);
  }

  v15 = accessibilityElements;

  return v15;
}

@end