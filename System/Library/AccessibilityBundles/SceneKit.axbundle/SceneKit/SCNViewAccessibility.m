@interface SCNViewAccessibility
- (id)accessibilityElements;
- (id)accessibilityProjectSCNVector3Points:(id)a3;
@end

@implementation SCNViewAccessibility

- (id)accessibilityProjectSCNVector3Points:(id)a3
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = objc_opt_new();
  LOBYTE(v21) = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v21 = 0;
        v22 = &v21;
        v23 = 0x3010000000;
        v24 = &unk_29C22BAF1;
        v25 = 0;
        v26 = 0;
        v20 = v5;
        AXPerformSafeBlock();
        v10 = *(v22 + 8);
        v11 = *(v22 + 9);
        v12 = *(v22 + 10);

        _Block_object_dispose(&v21, 8);
        LODWORD(v13) = v10;
        LODWORD(v14) = v11;
        LODWORD(v15) = v12;
        v16 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v13, v14, v15}];
        [v4 addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x29EDCA608];

  return v4;
}

uint64_t __61__SCNViewAccessibility_accessibilityProjectSCNVector3Points___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) SCNVector3Value];
  result = [v2 projectPoint:?];
  v4 = *(*(a1 + 48) + 8);
  v4[8] = v5;
  v4[9] = v6;
  v4[10] = v7;
  return result;
}

- (id)accessibilityElements
{
  v3 = [(SCNViewAccessibility *)self _accessibilitySceneKitScene];
  v12 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();
  v5 = [v4 accessibilityContainerIsSet];

  if ((v5 & 1) == 0)
  {
    [v3 setAccessibilityContainer:self];
  }

  v11.receiver = self;
  v11.super_class = SCNViewAccessibility;
  v6 = [(SCNViewAccessibility *)&v11 accessibilityElements];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x29EDB8DE8] axArrayByIgnoringNilElementsWithCount:{1, v3}];
    v9 = [(SCNViewAccessibility *)self _accessibilitySortedElementsWithin];
    if (v9)
    {
      [v8 addObjectsFromArray:v9];
    }
  }

  return v8;
}

@end