@interface WADetailedSnippetViewControllerAccessibility
- (id)_accessibilityLabelForAnswerAtIndex:(unint64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)loadView;
@end

@implementation WADetailedSnippetViewControllerAccessibility

- (id)_accessibilityLabelForAnswerAtIndex:(unint64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v4 = [(WADetailedSnippetViewControllerAccessibility *)self safeValueForKey:@"snippet"];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v5 = [v4 safeValueForKey:@"answers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __84__WADetailedSnippetViewControllerAccessibility__accessibilityLabelForAnswerAtIndex___block_invoke;
    v8[3] = &unk_29F31E5B8;
    v8[4] = v9;
    v8[5] = &v10;
    v8[6] = a3;
    [v5 enumerateObjectsUsingBlock:v8];
  }

  v6 = v11[5];

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __84__WADetailedSnippetViewControllerAccessibility__accessibilityLabelForAnswerAtIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 24);
  if (a1[6] == v9)
  {
    v10 = [v6 safeValueForKey:@"title"];
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
    v8 = *(a1[4] + 8);
    v9 = *(v8 + 24);
  }

  *(v8 + 24) = v9 + 1;
  v13 = [v7 safeValueForKey:@"lines"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __84__WADetailedSnippetViewControllerAccessibility__accessibilityLabelForAnswerAtIndex___block_invoke_2;
    v15[3] = &unk_29F31E590;
    v14 = a1[6];
    v16 = *(a1 + 2);
    v17 = v14;
    v18 = a4;
    [v13 enumerateObjectsUsingBlock:v15];
  }
}

void __84__WADetailedSnippetViewControllerAccessibility__accessibilityLabelForAnswerAtIndex___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (*(a1 + 48) == v5)
  {
    v8 = [a2 safeValueForKey:@"text"];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
    **(a1 + 56) = 1;
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 + 1;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = WADetailedSnippetViewControllerAccessibility;
  [(WADetailedSnippetViewControllerAccessibility *)&v5 loadView];
  v3 = [(WADetailedSnippetViewControllerAccessibility *)self safeValueForKey:@"_answerViews"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __56__WADetailedSnippetViewControllerAccessibility_loadView__block_invoke;
  v4[3] = &unk_29F31E5E0;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __56__WADetailedSnippetViewControllerAccessibility_loadView__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setIsAccessibilityElement:1];
  v6 = [*(a1 + 32) _accessibilityLabelForAnswerAtIndex:a3];
  [v5 setAccessibilityLabel:v6];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = WADetailedSnippetViewControllerAccessibility;
  v6 = a4;
  v7 = [(WADetailedSnippetViewControllerAccessibility *)&v12 collectionView:a3 cellForItemAtIndexPath:v6];
  [v7 setIsAccessibilityElement:{1, v12.receiver, v12.super_class}];
  v8 = [v6 row];

  v9 = [(WADetailedSnippetViewControllerAccessibility *)self _accessibilityLabelForAnswerAtIndex:v8];
  [v7 setAccessibilityLabel:v9];
  NSClassFromString(&cfstr_Watextheadervi.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x29EDC7F80];
LABEL_3:
    [v7 setAccessibilityTraits:*v10];
    goto LABEL_6;
  }

  NSClassFromString(&cfstr_Waimageview.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v9 length])
  {
    v10 = MEMORY[0x29EDC7F88];
    goto LABEL_3;
  }

LABEL_6:

  return v7;
}

@end