@interface _UIFindNavigatorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnounceCurrentSearchResult;
- (void)_axAnnounceReplacementWithPreviousResultCount:(int64_t)count previousIndex:(int64_t)index;
- (void)_axReloadElementRelations:(BOOL)relations;
- (void)_didEnterReplacementString:(id)string;
- (void)_handleDone:(id)done;
- (void)_handleHighlightPreviousResult:(id)result;
- (void)_handleSearchReturn:(id)return;
- (void)_performSearchWithQuery:(id)query options:(id)options;
@end

@implementation _UIFindNavigatorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIFindNavigatorViewController";
  [location[0] validateClass:? isKindOfClass:?];
  v5 = "@";
  v4 = "v";
  [location[0] validateClass:@"_UIFindNavigatorViewController" hasInstanceMethod:@"_handleSearchReturn:" withFullSignature:{"@", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_handleHighlightPreviousResult:" withFullSignature:{v4, v5, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_performSearchWithQuery:options:" withFullSignature:{v4, v5, v5, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_handleDone:" withFullSignature:{v4, v5, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"findSession" withFullSignature:{v5, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"findNavigatorView" withFullSignature:{v5, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_didEnterReplacementString:" withFullSignature:{v4, v5, 0}];
  [location[0] validateClass:@"_UIFindNavigatorView" hasInstanceMethod:@"searchTextField" withFullSignature:{v5, 0}];
  v6 = @"UITextInput_Internal";
  v7 = 1;
  [location[0] validateProtocol:? hasMethod:? isInstanceMethod:? isRequired:?];
  [location[0] validateProtocol:v6 hasMethod:@"_rangeOfSentenceEnclosingPosition:" isInstanceMethod:v7 & 1 isRequired:v7 & 1];
  objc_storeStrong(v9, v8);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIFindNavigatorViewControllerAccessibility;
  [(_UIFindNavigatorViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UIFindNavigatorViewControllerAccessibility *)selfCopy _axReloadElementRelations:1];
}

- (void)_handleSearchReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  v3.receiver = selfCopy;
  v3.super_class = _UIFindNavigatorViewControllerAccessibility;
  [(_UIFindNavigatorViewControllerAccessibility *)&v3 _handleSearchReturn:location[0]];
  [(_UIFindNavigatorViewControllerAccessibility *)selfCopy _axReloadElementRelations:1];
  [(_UIFindNavigatorViewControllerAccessibility *)selfCopy _axAnnounceCurrentSearchResult];
  objc_storeStrong(location, 0);
}

- (void)_handleHighlightPreviousResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v3.receiver = selfCopy;
  v3.super_class = _UIFindNavigatorViewControllerAccessibility;
  [(_UIFindNavigatorViewControllerAccessibility *)&v3 _handleHighlightPreviousResult:location[0]];
  [(_UIFindNavigatorViewControllerAccessibility *)selfCopy _axReloadElementRelations:1];
  [(_UIFindNavigatorViewControllerAccessibility *)selfCopy _axAnnounceCurrentSearchResult];
  objc_storeStrong(location, 0);
}

- (void)_performSearchWithQuery:(id)query options:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  v6 = 0;
  objc_storeStrong(&v6, options);
  v5.receiver = selfCopy;
  v5.super_class = _UIFindNavigatorViewControllerAccessibility;
  [(_UIFindNavigatorViewControllerAccessibility *)&v5 _performSearchWithQuery:location[0] options:v6];
  [(_UIFindNavigatorViewControllerAccessibility *)selfCopy _axReloadElementRelations:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleDone:(id)done
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v3.receiver = selfCopy;
  v3.super_class = _UIFindNavigatorViewControllerAccessibility;
  [(_UIFindNavigatorViewControllerAccessibility *)&v3 _handleDone:location[0]];
  [(_UIFindNavigatorViewControllerAccessibility *)selfCopy _axReloadElementRelations:0];
  objc_storeStrong(location, 0);
}

- (void)_didEnterReplacementString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v9 = 0;
  objc_opt_class();
  v3 = [(_UIFindNavigatorViewControllerAccessibility *)selfCopy safeValueForKey:@"findSession"];
  v8 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v3);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10 = v7;
  resultCount = [v7 resultCount];
  highlightedResultIndex = [v10 highlightedResultIndex];
  v4.receiver = selfCopy;
  v4.super_class = _UIFindNavigatorViewControllerAccessibility;
  [(_UIFindNavigatorViewControllerAccessibility *)&v4 _didEnterReplacementString:location[0]];
  [(_UIFindNavigatorViewControllerAccessibility *)selfCopy _axAnnounceReplacementWithPreviousResultCount:resultCount previousIndex:highlightedResultIndex];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_axAnnounceReplacementWithPreviousResultCount:(int64_t)count previousIndex:(int64_t)index
{
  selfCopy = self;
  v30 = a2;
  countCopy = count;
  indexCopy = index;
  v26 = 0;
  objc_opt_class();
  v17 = [(_UIFindNavigatorViewControllerAccessibility *)selfCopy safeValueForKey:@"findSession"];
  v25 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v17);
  v24 = MEMORY[0x29EDC9748](v25);
  objc_storeStrong(&v25, 0);
  v27 = v24;
  replacementText = [v24 replacementText];
  searchText = [v27 searchText];
  resultCount = [v27 resultCount];
  if ([replacementText length] && objc_msgSend(searchText, "length"))
  {
    v20 = 0;
    if (countCopy <= 0 || resultCount != countCopy - 1 || indexCopy < 0)
    {
      if (countCopy > 0 && !resultCount)
      {
        v7 = accessibilityUIKitLocalizedString();
        v8 = v20;
        v20 = v7;
        v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
      }
    }

    else
    {
      v16 = accessibilityUIKitLocalizedString();
      v12 = indexCopy + 1;
      v14 = countCopy;
      v5 = AXCFormattedString();
      v6 = v20;
      v20 = v5;
      MEMORY[0x29EDC9740](v6);
      v4 = MEMORY[0x29EDC9740](v16).n128_u64[0];
    }

    if ([v20 length])
    {
      v15 = accessibilityUIKitLocalizedString();
      v19 = AXCFormattedString();
      MEMORY[0x29EDC9740](v15);
      v13 = v19;
      v9 = __UIAXStringForVariables();
      v10 = v20;
      v20 = v9;
      MEMORY[0x29EDC9740](v10);
      v11 = objc_alloc(MEMORY[0x29EDBD7E8]);
      argument = [v11 initWithStringOrAttributedString:{v20, v13, @"__AXStringForVariablesSentinel"}];
      [argument setAttribute:&unk_2A238E930 forKey:*MEMORY[0x29EDBD860]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
      objc_storeStrong(&argument, 0);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&searchText, 0);
  objc_storeStrong(&replacementText, 0);
  objc_storeStrong(&v27, 0);
}

- (void)_axAnnounceCurrentSearchResult
{
  selfCopy = self;
  v80[1] = a2;
  v79 = 0;
  objc_opt_class();
  v18 = [(_UIFindNavigatorViewControllerAccessibility *)selfCopy safeValueForKey:@"findSession"];
  v78 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v18);
  v77 = MEMORY[0x29EDC9748](v78);
  objc_storeStrong(&v78, 0);
  v80[0] = v77;
  searchText = [v77 searchText];
  resultCount = [v80[0] resultCount];
  highlightedResultIndex = [v80[0] highlightedResultIndex];
  if ([searchText length] && resultCount > 0 && (highlightedResultIndex & 0x8000000000000000) == 0)
  {
    _accessibilityElementForFindSessionResult = [v80[0] _accessibilityElementForFindSessionResult];
    v72 = 0;
    v16 = MEMORY[0x29ED3D4A0](@"UITextInput_Internal");
    v17 = 0;
    if ([_accessibilityElementForFindSessionResult conformsToProtocol:?])
    {
      v17 = [_accessibilityElementForFindSessionResult conformsToProtocol:&unk_2A23BD4B8];
    }

    *&v2 = MEMORY[0x29EDC9740](v16).n128_u64[0];
    if (v17)
    {
      v71 = MEMORY[0x29EDC9748](_accessibilityElementForFindSessionResult);
      selectedTextRange = [v71 selectedTextRange];
      if (selectedTextRange && ([selectedTextRange isEmpty] & 1) == 0)
      {
        start = [selectedTextRange start];
        v67 = 0;
        objc_opt_class();
        v59 = 0;
        v60 = &v59;
        v61 = 838860800;
        v62 = 48;
        v63 = __Block_byref_object_copy__30;
        v64 = __Block_byref_object_dispose__30;
        v65 = 0;
        v52 = MEMORY[0x29EDCA5F8];
        v53 = -1073741824;
        v54 = 0;
        v55 = __77___UIFindNavigatorViewControllerAccessibility__axAnnounceCurrentSearchResult__block_invoke;
        v56 = &unk_29F30C860;
        v58[1] = &v59;
        v57 = MEMORY[0x29EDC9748](_accessibilityElementForFindSessionResult);
        v58[0] = MEMORY[0x29EDC9748](start);
        AXPerformSafeBlock();
        v51 = MEMORY[0x29EDC9748](v60[5]);
        objc_storeStrong(v58, 0);
        objc_storeStrong(&v57, 0);
        _Block_object_dispose(&v59, 8);
        objc_storeStrong(&v65, 0);
        v66 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v51);
        if (v67)
        {
          abort();
        }

        v50 = MEMORY[0x29EDC9748](v66);
        objc_storeStrong(&v66, 0);
        v68 = v50;
        v49 = [v71 textInRange:v50];
        v47 = 0;
        v45 = 0;
        LOBYTE(v15) = 0;
        if ([v49 length])
        {
          lowercaseString = [v49 lowercaseString];
          v47 = 1;
          lowercaseString2 = [searchText lowercaseString];
          v45 = 1;
          v15 = [lowercaseString isEqualToString:?] ^ 1;
        }

        if (v45)
        {
          MEMORY[0x29EDC9740](lowercaseString2);
        }

        if (v47)
        {
          MEMORY[0x29EDC9740](lowercaseString);
        }

        if (v15)
        {
          objc_storeStrong(&v72, v49);
        }

        else
        {
          v43 = 0;
          objc_opt_class();
          v35 = 0;
          v36 = &v35;
          v37 = 838860800;
          v38 = 48;
          v39 = __Block_byref_object_copy__30;
          v40 = __Block_byref_object_dispose__30;
          v41 = 0;
          v28 = MEMORY[0x29EDCA5F8];
          v29 = -1073741824;
          v30 = 0;
          v31 = __77___UIFindNavigatorViewControllerAccessibility__axAnnounceCurrentSearchResult__block_invoke_2;
          v32 = &unk_29F30C860;
          v34[1] = &v35;
          v33 = MEMORY[0x29EDC9748](_accessibilityElementForFindSessionResult);
          v34[0] = MEMORY[0x29EDC9748](start);
          AXPerformSafeBlock();
          v27 = MEMORY[0x29EDC9748](v36[5]);
          objc_storeStrong(v34, 0);
          objc_storeStrong(&v33, 0);
          _Block_object_dispose(&v35, 8);
          objc_storeStrong(&v41, 0);
          v42 = __UIAccessibilityCastAsClass();
          MEMORY[0x29EDC9740](v27);
          if (v43)
          {
            abort();
          }

          v26 = MEMORY[0x29EDC9748](v42);
          objc_storeStrong(&v42, 0);
          v44 = v26;
          v25 = [v71 textInRange:v26];
          if ([v25 length])
          {
            objc_storeStrong(&v72, v25);
          }

          objc_storeStrong(&v25, 0);
          objc_storeStrong(&v44, 0);
        }

        objc_storeStrong(&v49, 0);
        objc_storeStrong(&v68, 0);
        objc_storeStrong(&start, 0);
      }

      objc_storeStrong(&selectedTextRange, 0);
      objc_storeStrong(&v71, 0);
    }

    if (!v72)
    {
      _accessibilitySelectedTextRange = [_accessibilityElementForFindSessionResult _accessibilitySelectedTextRange];
      v24 = v3;
      v95 = 0x7FFFFFFFLL;
      v94 = 0;
      v96 = 0x7FFFFFFFLL;
      v97 = 0;
      v22[2] = 0x7FFFFFFFLL;
      v22[3] = 0;
      v88 = 0x7FFFFFFFLL;
      v89 = 0;
      v86 = _accessibilitySelectedTextRange;
      v87 = v3;
      v14 = 0;
      if (0x7FFFFFFF == _accessibilitySelectedTextRange)
      {
        v14 = v89 == v87;
      }

      if (!v14 && v24)
      {
        v22[0] = [_accessibilityElementForFindSessionResult _accessibilityLineRangeForPosition:_accessibilitySelectedTextRange];
        v22[1] = v4;
        v91 = 0x7FFFFFFFLL;
        v90 = 0;
        v92 = 0x7FFFFFFFLL;
        v93 = 0;
        v21[1] = 0x7FFFFFFF;
        v21[2] = 0;
        v84 = 0x7FFFFFFFLL;
        v85 = 0;
        v82 = v22[0];
        v83 = v4;
        v13 = 0;
        if (0x7FFFFFFFLL == v22[0])
        {
          v13 = v85 == v83;
        }

        if (!v13)
        {
          v21[0] = [_accessibilityElementForFindSessionResult _accessibilityAttributedValueForRange:v22];
          if ([v21[0] length])
          {
            string = [v21[0] string];
            v6 = v72;
            v72 = string;
            MEMORY[0x29EDC9740](v6);
          }

          objc_storeStrong(v21, 0);
        }
      }
    }

    v12 = accessibilityUIKitLocalizedString();
    v20 = AXCFormattedString();
    MEMORY[0x29EDC9740](v12);
    v11 = v72;
    v7 = __UIAXStringForVariables();
    v8 = v72;
    v72 = v7;
    *&v9 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    if ([v72 length])
    {
      v10 = objc_alloc(MEMORY[0x29EDBD7E8]);
      argument = [v10 initWithStringOrAttributedString:v72];
      [argument setAttribute:&unk_2A238E930 forKey:*MEMORY[0x29EDBD860]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
      objc_storeStrong(&argument, 0);
    }

    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&_accessibilityElementForFindSessionResult, 0);
  }

  objc_storeStrong(&searchText, 0);
  objc_storeStrong(v80, 0);
}

- (void)_axReloadElementRelations:(BOOL)relations
{
  selfCopy = self;
  v7 = a2;
  relationsCopy = relations;
  v5 = [(_UIFindNavigatorViewControllerAccessibility *)self safeValueForKeyPath:@"findNavigatorView.searchTextField"];
  if (v5)
  {
    UIAccessibilityUnrelateAllElements();
    if (relationsCopy)
    {
      v3 = [(_UIFindNavigatorViewControllerAccessibility *)selfCopy safeValueForKey:@"findSession"];
      location = [v3 _accessibilityElementForFindSessionResult];
      MEMORY[0x29EDC9740](v3);
      if (location)
      {
        UIAccessibilityRelateElements();
      }

      objc_storeStrong(&location, 0);
    }
  }

  objc_storeStrong(&v5, 0);
}

@end