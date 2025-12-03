@interface _UIMagicMorphTransformViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axCachedPlatterElements;
- (id)accessibilityElements;
- (uint64_t)_axSourcePreviewShouldHostSourceView;
- (void)_axSetCachedPlatterElements:(uint64_t)elements;
@end

@implementation _UIMagicMorphTransformViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIKit._UIMagicMorphTransformView" hasSwiftField:@"sourcePreview" withSwiftType:"Optional<UITargetedPreview>"];
  v3 = @"UITargetedPreview";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"_shouldHostSourceView" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (uint64_t)_axSourcePreviewShouldHostSourceView
{
  if (self)
  {
    v2 = [self safeSwiftValueForKey:@"sourcePreview"];
    v3 = [v2 safeBoolForKey:@"_shouldHostSourceView"] & 1;
    MEMORY[0x29EDC9740](v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_axCachedPlatterElements
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIMagicMorphTransformViewAccessibility___axCachedPlatterElements);
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

- (id)accessibilityElements
{
  v60 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v56[1] = a2;
  v25 = [(_UIMagicMorphTransformViewAccessibility *)self safeSwiftValueForKey:@"sourcePreview"];
  v56[0] = [v25 safeUIViewForKey:@"view"];
  MEMORY[0x29EDC9740](v25);
  if ((_UISolariumEnabled() & 1) != 0 && v56[0] && ([(_UIMagicMorphTransformViewAccessibility *)selfCopy _axSourcePreviewShouldHostSourceView]& 1) == 0)
  {
    selfCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-sourcePreviewElements", selfCopy];
    v54 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:selfCopy];
    if (!v54)
    {
      array = [MEMORY[0x29EDB8DE8] array];
      options = [MEMORY[0x29EDC7328] options];
      v46 = MEMORY[0x29EDCA5F8];
      v47 = -1073741824;
      v48 = 0;
      v49 = __64___UIMagicMorphTransformViewAccessibility_accessibilityElements__block_invoke;
      v50 = &unk_29F30C818;
      v51 = MEMORY[0x29EDC9748](v56[0]);
      [options setLeafNodePredicate:&v46];
      v22 = MEMORY[0x29EDC8008];
      _accessibilityContainerToStopVisibilityCheck = [*MEMORY[0x29EDC8008] _accessibilityContainerToStopVisibilityCheck];
      _accessibilityShouldIgnoreOpaqueElementProviders = [*v22 _accessibilityShouldIgnoreOpaqueElementProviders];
      [*v22 _accessibilitySetShouldIgnoreOpaqueElementProviders:1];
      [*v22 _accessibilitySetContainerToStopVisibilityCheck:v56[0]];
      v43 = [v56[0] _accessibilityLeafDescendantsWithOptions:options];
      [*v22 _accessibilitySetShouldIgnoreOpaqueElementProviders:_accessibilityShouldIgnoreOpaqueElementProviders & 1];
      [*v22 _accessibilitySetContainerToStopVisibilityCheck:_accessibilityContainerToStopVisibilityCheck];
      _axCachedPlatterElements = [(_UIMagicMorphTransformViewAccessibility *)selfCopy _axCachedPlatterElements];
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v43);
      v24 = [obj countByEnumeratingWithState:__b objects:v59 count:16];
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

          v40 = *(__b[1] + 8 * v20);
          v38 = [MEMORY[0x29EDBA168] valueWithPointer:v40];
          location = [_axCachedPlatterElements objectForKeyedSubscript:v38];
          if (!location)
          {
            if ([v40 _accessibilityIsRemoteElement])
            {
              v2 = objc_alloc(MEMORY[0x29EDC78F8]);
              v3 = [v2 initWithAccessibilityContainer:selfCopy];
              v4 = location;
              location = v3;
              *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
              [v40 accessibilityFrame];
              v31 = v6;
              v32 = v7;
              v33 = v8;
              v34 = v9;
              UIAccessibilityFrameToBounds();
              *&v35 = v10;
              *(&v35 + 1) = v11;
              *&v36 = v12;
              *(&v36 + 1) = v13;
              v29 = v35;
              v30 = v36;
              [location setAccessibilityFrameInContainerSpace:{v10, v11, v12, v13}];
              [location setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
              v17 = accessibilityLocalizedString(@"context.menu.preview");
              [location setAccessibilityLabel:?];
              MEMORY[0x29EDC9740](v17);
            }

            else
            {
              v14 = [AXPlatterContentMockElement alloc];
              v28 = [(AXPlatterContentMockElement *)v14 initWithAccessibilityContainer:selfCopy];
              [(AXPlatterContentMockElement *)v28 setSourceElement:v40];
              [(AXPlatterContentMockElement *)v28 setSourceView:?];
              objc_storeStrong(&location, v28);
              objc_storeStrong(&v28, 0);
            }
          }

          [array addObject:location];
          [dictionary setObject:location forKeyedSubscript:v38];
          objc_storeStrong(&location, 0);
          objc_storeStrong(&v38, 0);
          ++v20;
          if (v18 + 1 >= v21)
          {
            v20 = 0;
            v21 = [obj countByEnumeratingWithState:__b objects:v59 count:16];
            if (!v21)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      [(_UIMagicMorphTransformViewAccessibility *)selfCopy _axSetCachedPlatterElements:dictionary];
      objc_storeStrong(&v54, array);
      [*MEMORY[0x29EDC7300] setObject:v54 forKeyedSubscript:selfCopy];
      objc_storeStrong(&dictionary, 0);
      objc_storeStrong(&_axCachedPlatterElements, 0);
      objc_storeStrong(&v43, 0);
      objc_storeStrong(&_accessibilityContainerToStopVisibilityCheck, 0);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&options, 0);
      objc_storeStrong(&array, 0);
    }

    accessibilityElements = MEMORY[0x29EDC9748](v54);
    v27 = 1;
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&selfCopy, 0);
  }

  else
  {
    v26.receiver = selfCopy;
    v26.super_class = _UIMagicMorphTransformViewAccessibility;
    accessibilityElements = [(_UIMagicMorphTransformViewAccessibility *)&v26 accessibilityElements];
    v27 = 1;
  }

  objc_storeStrong(v56, 0);
  v15 = accessibilityElements;

  return v15;
}

@end