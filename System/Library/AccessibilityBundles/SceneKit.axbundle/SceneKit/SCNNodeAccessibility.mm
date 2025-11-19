@interface SCNNodeAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGRect)_accessibilityConvertRect:(CGRect)a3 toNode:(id)a4;
- (CGRect)accessibilityFrame;
- (id)_accessibilityConvertSCNVector3Points:(id)a3 toNode:(id)a4;
- (id)_accessibilitySCNVector3BoundingBoxPoints;
- (id)accessibilityContainer;
- (id)accessibilityElements;
- (id)accessibilityPath;
- (void)dealloc;
@end

@implementation SCNNodeAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SCNNode" hasInstanceMethod:@"childNodes" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SCNNode" hasInstanceMethod:@"parentNode" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SCNNode" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (void)dealloc
{
  [(SCNNodeAccessibility *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SCNNodeAccessibility;
  [(SCNNodeAccessibility *)&v3 dealloc];
}

- (id)accessibilityElements
{
  v8.receiver = self;
  v8.super_class = SCNNodeAccessibility;
  v3 = [(SCNNodeAccessibility *)&v8 accessibilityElements];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SCNNodeAccessibility *)self safeArrayForKey:@"childNodes"];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityContainer
{
  v8.receiver = self;
  v8.super_class = SCNNodeAccessibility;
  v3 = [(SCNNodeAccessibility *)&v8 accessibilityContainer];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SCNNodeAccessibility *)self safeValueForKey:@"parentNode"];
  }

  v6 = v5;

  return v6;
}

- (CGRect)_accessibilityConvertRect:(CGRect)a3 toNode:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  [(SCNNodeAccessibility *)self convertPoint:a4 toNode:a3.origin.x, a3.origin.y];
  v8 = width;
  v9 = height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)accessibilityPath
{
  v6.receiver = self;
  v6.super_class = SCNNodeAccessibility;
  v2 = [(SCNNodeAccessibility *)&v6 accessibilityPath];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if (([(SCNNodeAccessibility *)self safeBoolForKey:@"isHidden"]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SCNNodeAccessibility;
  return [(SCNNodeAccessibility *)&v4 isAccessibilityElement];
}

- (CGRect)accessibilityFrame
{
  v3 = [(SCNNodeAccessibility *)self accessibilityUserDefinedFrame];
  v4 = v3;
  if (v3)
  {
    [v3 CGRectValue];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [(SCNNodeAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
    v14 = [(SCNNodeAccessibility *)self _accessibilitySCNVector3BoundingBoxPoints];
    v15 = [(SCNNodeAccessibility *)self _accessibilityConvertSCNVector3Points:v14 toNode:0];
    objc_opt_class();
    v16 = __UIAccessibilityCastAsSafeCategory();
    v17 = [v16 accessibilityProjectSCNVector3Points:v15];

    if ([v17 count])
    {
      v18 = [MEMORY[0x29EDC7948] accessibilityBezierPathWithSCNVector3Points:v17];
      v19 = UIAccessibilityConvertPathToScreenCoordinates(v18, v13);
      [v19 bounds];
      v6 = v20;
      v8 = v21;
      v10 = v22;
      v12 = v23;
    }

    else
    {
      v18 = [(SCNNodeAccessibility *)self accessibilityContainer];
      [(UIBezierPath *)v18 accessibilityFrame];
      v6 = v24;
      v8 = v25;
      v10 = v26;
      v12 = v27;
    }
  }

  v28 = v6;
  v29 = v8;
  v30 = v10;
  v31 = v12;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)_accessibilitySCNVector3BoundingBoxPoints
{
  v2 = objc_opt_new();
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v50 = 0;
  v51 = &v50;
  v52 = 0x3010000000;
  v53 = &unk_29C22BAF1;
  v54 = 0;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3010000000;
  v47 = &unk_29C22BAF1;
  v48 = 0;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v39 = MEMORY[0x29EDCA5F8];
  v4 = v3;
  AXPerformSafeBlock();
  v5 = *(v41 + 24);

  _Block_object_dispose(&v40, 8);
  if (v5 == 1)
  {
    LODWORD(v6) = *(v45 + 8);
    LODWORD(v7) = *(v45 + 9);
    LODWORD(v8) = *(v45 + 10);
    v9 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v6, v7, v8, v39, 3221225472, __65__SCNNodeAccessibility__accessibilitySCNVector3BoundingBoxPoints__block_invoke, &unk_29F2F3478}];
    [v2 addObject:v9];

    LODWORD(v10) = *(v51 + 8);
    LODWORD(v11) = *(v45 + 9);
    LODWORD(v12) = *(v45 + 10);
    v13 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v10, v11, v12}];
    [v2 addObject:v13];

    LODWORD(v14) = *(v51 + 8);
    LODWORD(v15) = *(v45 + 9);
    LODWORD(v16) = *(v51 + 10);
    v17 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v14, v15, v16}];
    [v2 addObject:v17];

    LODWORD(v18) = *(v45 + 8);
    LODWORD(v19) = *(v45 + 9);
    LODWORD(v20) = *(v51 + 10);
    v21 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v18, v19, v20}];
    [v2 addObject:v21];

    LODWORD(v22) = *(v51 + 8);
    LODWORD(v23) = *(v51 + 9);
    LODWORD(v24) = *(v51 + 10);
    v25 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v22, v23, v24}];
    [v2 addObject:v25];

    LODWORD(v26) = *(v51 + 8);
    LODWORD(v27) = *(v51 + 9);
    LODWORD(v28) = *(v45 + 10);
    v29 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v26, v27, v28}];
    [v2 addObject:v29];

    LODWORD(v30) = *(v45 + 8);
    LODWORD(v31) = *(v51 + 9);
    LODWORD(v32) = *(v45 + 10);
    v33 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v30, v31, v32}];
    [v2 addObject:v33];

    LODWORD(v34) = *(v45 + 8);
    LODWORD(v35) = *(v51 + 9);
    LODWORD(v36) = *(v51 + 10);
    v37 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v34, v35, v36}];
    [v2 addObject:v37];
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  return v2;
}

uint64_t __65__SCNNodeAccessibility__accessibilitySCNVector3BoundingBoxPoints__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getBoundingBoxMin:*(*(a1 + 48) + 8) + 32 max:*(*(a1 + 56) + 8) + 32];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_accessibilityConvertSCNVector3Points:(id)a3 toNode:(id)a4
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  LOBYTE(v25) = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v25 = 0;
        v26 = &v25;
        v27 = 0x3010000000;
        v28 = &unk_29C22BAF1;
        v29 = 0;
        v30 = 0;
        v23 = v8;
        v24 = v6;
        AXPerformSafeBlock();
        v13 = *(v26 + 8);
        v14 = *(v26 + 9);
        v15 = *(v26 + 10);

        _Block_object_dispose(&v25, 8);
        LODWORD(v16) = v13;
        LODWORD(v17) = v14;
        LODWORD(v18) = v15;
        v19 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v16, v17, v18}];
        [v7 addObject:v19];
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x29EDCA608];

  return v7;
}

uint64_t __69__SCNNodeAccessibility__accessibilityConvertSCNVector3Points_toNode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) SCNVector3Value];
  result = [v2 convertPosition:*(a1 + 48) toNode:?];
  v4 = *(*(a1 + 56) + 8);
  v4[8] = v5;
  v4[9] = v6;
  v4[10] = v7;
  return result;
}

@end