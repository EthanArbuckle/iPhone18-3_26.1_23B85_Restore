@interface _UIMagicMorphTransformViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axCachedPlatterElements;
- (id)accessibilityElements;
- (uint64_t)_axSourcePreviewShouldHostSourceView;
- (void)_axSetCachedPlatterElements:(uint64_t)a1;
@end

@implementation _UIMagicMorphTransformViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIKit._UIMagicMorphTransformView" hasSwiftField:@"sourcePreview" withSwiftType:"Optional<UITargetedPreview>"];
  v3 = @"UITargetedPreview";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"_shouldHostSourceView" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (uint64_t)_axSourcePreviewShouldHostSourceView
{
  if (a1)
  {
    v2 = [a1 safeSwiftValueForKey:@"sourcePreview"];
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
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIMagicMorphTransformViewAccessibility___axCachedPlatterElements);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetCachedPlatterElements:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)accessibilityElements
{
  v60 = *MEMORY[0x29EDCA608];
  v57 = self;
  v56[1] = a2;
  v25 = [(_UIMagicMorphTransformViewAccessibility *)self safeSwiftValueForKey:@"sourcePreview"];
  v56[0] = [v25 safeUIViewForKey:@"view"];
  MEMORY[0x29EDC9740](v25);
  if ((_UISolariumEnabled() & 1) != 0 && v56[0] && ([(_UIMagicMorphTransformViewAccessibility *)v57 _axSourcePreviewShouldHostSourceView]& 1) == 0)
  {
    v55 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-sourcePreviewElements", v57];
    v54 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v55];
    if (!v54)
    {
      v53 = [MEMORY[0x29EDB8DE8] array];
      v52 = [MEMORY[0x29EDC7328] options];
      v46 = MEMORY[0x29EDCA5F8];
      v47 = -1073741824;
      v48 = 0;
      v49 = __64___UIMagicMorphTransformViewAccessibility_accessibilityElements__block_invoke;
      v50 = &unk_29F30C818;
      v51 = MEMORY[0x29EDC9748](v56[0]);
      [v52 setLeafNodePredicate:&v46];
      v22 = MEMORY[0x29EDC8008];
      v45 = [*MEMORY[0x29EDC8008] _accessibilityContainerToStopVisibilityCheck];
      v44 = [*v22 _accessibilityShouldIgnoreOpaqueElementProviders];
      [*v22 _accessibilitySetShouldIgnoreOpaqueElementProviders:1];
      [*v22 _accessibilitySetContainerToStopVisibilityCheck:v56[0]];
      v43 = [v56[0] _accessibilityLeafDescendantsWithOptions:v52];
      [*v22 _accessibilitySetShouldIgnoreOpaqueElementProviders:v44 & 1];
      [*v22 _accessibilitySetContainerToStopVisibilityCheck:v45];
      v42 = [(_UIMagicMorphTransformViewAccessibility *)v57 _axCachedPlatterElements];
      v41 = [MEMORY[0x29EDB8E00] dictionary];
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
          location = [v42 objectForKeyedSubscript:v38];
          if (!location)
          {
            if ([v40 _accessibilityIsRemoteElement])
            {
              v2 = objc_alloc(MEMORY[0x29EDC78F8]);
              v3 = [v2 initWithAccessibilityContainer:v57];
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
              v28 = [(AXPlatterContentMockElement *)v14 initWithAccessibilityContainer:v57];
              [(AXPlatterContentMockElement *)v28 setSourceElement:v40];
              [(AXPlatterContentMockElement *)v28 setSourceView:?];
              objc_storeStrong(&location, v28);
              objc_storeStrong(&v28, 0);
            }
          }

          [v53 addObject:location];
          [v41 setObject:location forKeyedSubscript:v38];
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
      [(_UIMagicMorphTransformViewAccessibility *)v57 _axSetCachedPlatterElements:v41];
      objc_storeStrong(&v54, v53);
      [*MEMORY[0x29EDC7300] setObject:v54 forKeyedSubscript:v55];
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
      objc_storeStrong(&v43, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&v52, 0);
      objc_storeStrong(&v53, 0);
    }

    v58 = MEMORY[0x29EDC9748](v54);
    v27 = 1;
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v55, 0);
  }

  else
  {
    v26.receiver = v57;
    v26.super_class = _UIMagicMorphTransformViewAccessibility;
    v58 = [(_UIMagicMorphTransformViewAccessibility *)&v26 accessibilityElements];
    v27 = 1;
  }

  objc_storeStrong(v56, 0);
  v15 = v58;

  return v15;
}

@end