@interface TUICandidateGridAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityScannerGroupElements;
@end

@implementation TUICandidateGridAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TUICandidateGrid" hasInstanceMethod:@"setSelectedIndexPath:animated:scrollPosition:" withFullSignature:{"v", "@", "B", "Q", 0}];
  [v3 validateClass:@"TUICandidateGrid" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UICollectionView" hasInstanceMethod:@"indexPathForSupplementaryView:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"TUICandidateGrid" hasInstanceVariable:@"_selectedIndexPath" withType:"NSIndexPath"];
}

- (id)_accessibilityScannerGroupElements
{
  v84 = *MEMORY[0x29EDCA608];
  v41 = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
  [v41 setSorted:0];
  [v41 setShouldReturnScannerGroups:0];
  v3 = [(TUICandidateGridAccessibility *)self _accessibilityLeafDescendantsWithOptions:v41];
  v49 = [MEMORY[0x29EDB8E00] dictionary];
  objc_opt_class();
  v50 = __UIAccessibilityCastAsClass();
  LOBYTE(buf) = 0;
  objc_opt_class();
  v4 = [(TUICandidateGridAccessibility *)self safeValueForKey:@"collectionView"];
  v48 = __UIAccessibilityCastAsClass();

  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
  if (v5)
  {
    v6 = *v69;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v69 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v68 + 1) + 8 * i);
        [v8 accessibilityFrame];
        UIAccessibilityFrameToBounds();
        v10 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v48 indexPathForCell:v8];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = AXLogAppAccessibility();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v8;
              _os_log_error_impl(&dword_29C4B7000, v13, OS_LOG_TYPE_ERROR, "Unexpected element in candidate grid: %@", &buf, 0xCu);
            }

            goto LABEL_15;
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v79 = 0x3032000000;
          v80 = __Block_byref_object_copy_;
          v81 = __Block_byref_object_dispose_;
          v82 = 0;
          v61 = MEMORY[0x29EDCA5F8];
          v62 = 3221225472;
          v63 = __67__TUICandidateGridAccessibility__accessibilityScannerGroupElements__block_invoke;
          v64 = &unk_29F30A0A8;
          p_buf = &buf;
          v65 = v48;
          v66 = v8;
          AXPerformSafeBlock();
          v11 = *(*(&buf + 1) + 40);

          _Block_object_dispose(&buf, 8);
        }

        if (v11)
        {
          v12 = [v11 section];
          goto LABEL_18;
        }

LABEL_15:
        v14 = AXLogAppAccessibility();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_error_impl(&dword_29C4B7000, v14, OS_LOG_TYPE_ERROR, "Unable to get index path from element in candidate grid: %@", &buf, 0xCu);
        }

        v11 = 0;
        v12 = -1;
LABEL_18:
        v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v12];
        v16 = [v49 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v16 = [MEMORY[0x29EDB8E00] dictionary];
          v17 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v12];
          [v49 setObject:v16 forKeyedSubscript:v17];
        }

        v18 = round(v10);
        v19 = [MEMORY[0x29EDBA070] numberWithDouble:v18];
        v20 = [v16 objectForKeyedSubscript:v19];

        if (!v20)
        {
          v20 = [MEMORY[0x29EDB8DE8] array];
          v21 = [MEMORY[0x29EDBA070] numberWithDouble:v18];
          [v16 setObject:v20 forKeyedSubscript:v21];
        }

        [v20 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
    }

    while (v5);
  }

  v44 = [MEMORY[0x29EDB8DE8] array];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v22 = [v49 allKeys];
  v42 = [v22 sortedArrayUsingSelector:?];

  v45 = [v42 countByEnumeratingWithState:&v57 objects:v77 count:16];
  if (v45)
  {
    v43 = *v58;
    do
    {
      v23 = 0;
      do
      {
        if (*v58 != v43)
        {
          v24 = v23;
          objc_enumerationMutation(v42);
          v23 = v24;
        }

        v46 = v23;
        v25 = [v49 objectForKeyedSubscript:*(*(&v57 + 1) + 8 * v23)];
        v26 = [MEMORY[0x29EDB8DE8] array];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v27 = [v25 allKeys];
        v28 = [v27 sortedArrayUsingSelector:sel_compare_];

        v29 = [v28 countByEnumeratingWithState:&v53 objects:v76 count:16];
        if (v29)
        {
          v30 = *v54;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v54 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = [v25 objectForKeyedSubscript:*(*(&v53 + 1) + 8 * j)];
              v51[0] = MEMORY[0x29EDCA5F8];
              v51[1] = 3221225472;
              v51[2] = __67__TUICandidateGridAccessibility__accessibilityScannerGroupElements__block_invoke_316;
              v51[3] = &unk_29F30A0D0;
              v52 = v50;
              v33 = [v32 sortedArrayUsingComparator:v51];

              v74[0] = @"GroupElements";
              v74[1] = @"GroupTraits";
              v75[0] = v33;
              v75[1] = &unk_2A2349E28;
              v74[2] = @"GroupScanBehaviorTraits";
              v75[2] = &unk_2A2349E40;
              v34 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
              [v26 addObject:v34];
            }

            v29 = [v28 countByEnumeratingWithState:&v53 objects:v76 count:16];
          }

          while (v29);
        }

        v72[0] = @"GroupElements";
        v72[1] = @"GroupScanBehaviorTraits";
        v73[0] = v26;
        v73[1] = &unk_2A2349E40;
        v35 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
        [v44 addObject:v35];

        v23 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [v42 countByEnumeratingWithState:&v57 objects:v77 count:16];
    }

    while (v45);
  }

  if ([v44 count] == 1)
  {
    v36 = [v44 firstObject];
    v37 = [v36 objectForKeyedSubscript:@"GroupElements"];

    v38 = v44;
  }

  else
  {
    v38 = v44;
    v37 = v44;
  }

  v39 = *MEMORY[0x29EDCA608];

  return v37;
}

uint64_t __67__TUICandidateGridAccessibility__accessibilityScannerGroupElements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexPathForSupplementaryView:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __67__TUICandidateGridAccessibility__accessibilityScannerGroupElements__block_invoke_316(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 accessibilityFrame];
  UIAccessibilityFrameToBounds();
  v8 = v7;
  v9 = *(a1 + 32);
  [v6 accessibilityFrame];

  UIAccessibilityFrameToBounds();
  v11 = -1;
  if (v8 >= v10)
  {
    v11 = 1;
  }

  if (v8 == v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

@end