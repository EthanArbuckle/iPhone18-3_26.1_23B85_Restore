@interface CNImageDerivedColorBackgroundUtilities
+ (BOOL)backgroundColorPrefersWhiteForegroundText:(id)a3;
+ (BOOL)backgroundColorsPreferWhiteForegroundText:(id)a3;
+ (id)averageColorForBackgroundColors:(id)a3;
@end

@implementation CNImageDerivedColorBackgroundUtilities

+ (id)averageColorForBackgroundColors:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v18 = 0.0;
        v19 = 0.0;
        v16 = 0.0;
        v17 = 0.0;
        [v12 getRed:&v19 green:&v18 blue:&v17 alpha:&v16];
        v10 = v10 + v19;
        v9 = v9 + v18;
        v8 = v8 + v17;
        v7 = v7 + v16;
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
  }

  v13 = [v3 count];
  v14 = [MEMORY[0x1E69DC888] colorWithRed:v10 / v13 green:v9 / v13 blue:v8 / v13 alpha:v7 / v13];

  return v14;
}

+ (BOOL)backgroundColorPrefersWhiteForegroundText:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CNUILogContactCard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [v3 _colorDifferenceFromColor:v9];
    v11 = 134218240;
    v12 = v10;
    v13 = 2048;
    v14 = 0x3FDCCCCCCCCCCCCDLL;
    _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "colorDifference %.2f > %.2f", &v11, 0x16u);
  }

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v3 _colorDifferenceFromColor:v5];
  v7 = v6 > 0.45;

  return v7;
}

+ (BOOL)backgroundColorsPreferWhiteForegroundText:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() averageColorForBackgroundColors:v3];

  v5 = [objc_opt_class() backgroundColorPrefersWhiteForegroundText:v4];
  return v5;
}

@end