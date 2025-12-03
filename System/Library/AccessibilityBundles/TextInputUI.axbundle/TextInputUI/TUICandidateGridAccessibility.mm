@interface TUICandidateGridAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityScannerGroupElements;
@end

@implementation TUICandidateGridAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUICandidateGrid" hasInstanceMethod:@"setSelectedIndexPath:animated:scrollPosition:" withFullSignature:{"v", "@", "B", "Q", 0}];
  [validationsCopy validateClass:@"TUICandidateGrid" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"indexPathForSupplementaryView:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"TUICandidateGrid" hasInstanceVariable:@"_selectedIndexPath" withType:"NSIndexPath"];
}

- (id)_accessibilityScannerGroupElements
{
  v84 = *MEMORY[0x29EDCA608];
  defaultSwitchControlOptions = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
  [defaultSwitchControlOptions setSorted:0];
  [defaultSwitchControlOptions setShouldReturnScannerGroups:0];
  v3 = [(TUICandidateGridAccessibility *)self _accessibilityLeafDescendantsWithOptions:defaultSwitchControlOptions];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
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
          section = [v11 section];
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
        section = -1;
LABEL_18:
        v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:section];
        dictionary2 = [dictionary objectForKeyedSubscript:v15];

        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
          v17 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:section];
          [dictionary setObject:dictionary2 forKeyedSubscript:v17];
        }

        v18 = round(v10);
        v19 = [MEMORY[0x29EDBA070] numberWithDouble:v18];
        array = [dictionary2 objectForKeyedSubscript:v19];

        if (!array)
        {
          array = [MEMORY[0x29EDB8DE8] array];
          v21 = [MEMORY[0x29EDBA070] numberWithDouble:v18];
          [dictionary2 setObject:array forKeyedSubscript:v21];
        }

        [array addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v68 objects:v83 count:16];
    }

    while (v5);
  }

  array2 = [MEMORY[0x29EDB8DE8] array];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  allKeys = [dictionary allKeys];
  v42 = [allKeys sortedArrayUsingSelector:?];

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
        v25 = [dictionary objectForKeyedSubscript:*(*(&v57 + 1) + 8 * v23)];
        array3 = [MEMORY[0x29EDB8DE8] array];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        allKeys2 = [v25 allKeys];
        v28 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

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
              [array3 addObject:v34];
            }

            v29 = [v28 countByEnumeratingWithState:&v53 objects:v76 count:16];
          }

          while (v29);
        }

        v72[0] = @"GroupElements";
        v72[1] = @"GroupScanBehaviorTraits";
        v73[0] = array3;
        v73[1] = &unk_2A2349E40;
        v35 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
        [array2 addObject:v35];

        v23 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [v42 countByEnumeratingWithState:&v57 objects:v77 count:16];
    }

    while (v45);
  }

  if ([array2 count] == 1)
  {
    firstObject = [array2 firstObject];
    v37 = [firstObject objectForKeyedSubscript:@"GroupElements"];

    v38 = array2;
  }

  else
  {
    v38 = array2;
    v37 = array2;
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