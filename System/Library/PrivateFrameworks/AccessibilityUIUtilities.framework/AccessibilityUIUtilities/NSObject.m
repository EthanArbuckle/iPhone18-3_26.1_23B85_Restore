@interface NSObject
@end

@implementation NSObject

uint64_t __90__NSObject_NSObjectAccessibilityUI___accessibilityUIFindAnyAXDescendant_byAddingElements___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (a3)
  {
    if (result)
    {
      *a3 = 1;
    }
  }

  return result;
}

void __75__NSObject_NSObjectAccessibilityUI___accessibilityUIFindSubviewDescendant___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 subviews];
    v7 = [v6 reverseObjectEnumerator];
    v8 = [v7 allObjects];

    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v4 addObject:*(*(&v13 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

uint64_t __53__NSObject_QSSupport__accessibilityQuickSpeakContent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendString:a2];
  result = [*(a1 + 40) count];
  if (result - 1 != a3)
  {
    v6 = *(a1 + 32);

    return [v6 appendString:{@", "}];
  }

  return result;
}

BOOL __58__NSObject_QSSupport__accessibilitySentenceRectsForRange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 end];
  v6 = [v2 comparePosition:v4 toPosition:v5];

  return v6 > 1;
}

@end