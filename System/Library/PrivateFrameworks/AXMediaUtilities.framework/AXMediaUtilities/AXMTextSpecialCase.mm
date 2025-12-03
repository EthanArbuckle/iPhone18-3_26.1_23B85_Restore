@interface AXMTextSpecialCase
- (BOOL)detectNutritionLabel:(id)label;
- (id)detectSpecialCase:(id)case preferredLocales:(id)locales;
- (id)nutritionLabelKeywords;
@end

@implementation AXMTextSpecialCase

- (id)nutritionLabelKeywords
{
  v18 = MEMORY[0x1E695DEC8];
  v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v16 = [v22 localizedStringForKey:@"image.text.nutrition" value:&stru_1F23EA908 table:@"Accessibility"];
  v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v14 = [v21 localizedStringForKey:@"image.text.calories" value:&stru_1F23EA908 table:@"Accessibility"];
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v13 = [v20 localizedStringForKey:@"image.text.fat" value:&stru_1F23EA908 table:@"Accessibility"];
  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v10 = [v17 localizedStringForKey:@"image.text.carbohydrate" value:&stru_1F23EA908 table:@"Accessibility"];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v2 = [v15 localizedStringForKey:@"image.text.protein" value:&stru_1F23EA908 table:@"Accessibility"];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v12 localizedStringForKey:@"image.text.sodium" value:&stru_1F23EA908 table:@"Accessibility"];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v4 = [v11 localizedStringForKey:@"image.text.potassium" value:&stru_1F23EA908 table:@"Accessibility"];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v6 = [v5 localizedStringForKey:@"image.text.calcium" value:&stru_1F23EA908 table:@"Accessibility"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v8 = [v7 localizedStringForKey:@"image.text.fiber" value:&stru_1F23EA908 table:@"Accessibility"];
  v19 = [v18 arrayWithObjects:{v16, v14, v13, v10, v2, v3, v4, v6, v8, 0}];

  return v19;
}

- (id)detectSpecialCase:(id)case preferredLocales:(id)locales
{
  if ([(AXMTextSpecialCase *)self detectNutritionLabel:case, locales])
  {
    return @"NutritionLabel";
  }

  else
  {
    return 0;
  }
}

- (BOOL)detectNutritionLabel:(id)label
{
  v21 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  if ([labelCopy count])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [labelCopy componentsJoinedByString:@" "];
    lowercaseString = [v6 lowercaseString];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    nutritionLabelKeywords = [(AXMTextSpecialCase *)self nutritionLabelKeywords];
    v9 = [nutritionLabelKeywords countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(nutritionLabelKeywords);
          }

          v11 += [lowercaseString containsString:*(*(&v16 + 1) + 8 * i)];
        }

        v10 = [nutritionLabelKeywords countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v14 = v11 > [(AXMTextSpecialCase *)self nutritionLabelKeywordCountMinimum];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end