@interface AMSUIFontParser
+ (id)fontTextStyleForString:(id)string;
+ (id)fontWithDictionary:(id)dictionary compatibleWith:(id)with;
+ (id)systemDesignForString:(id)string;
+ (id)weightForString:(id)string;
@end

@implementation AMSUIFontParser

+ (id)fontWithDictionary:(id)dictionary compatibleWith:(id)with
{
  v43[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  withCopy = with;
  if (dictionaryCopy)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E698C4D8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E698C4E8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E698C4E0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E698C4F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = &unk_1F394A558;
    if (v9)
    {
      v17 = v9;
    }

    v18 = v17;

    v19 = [AMSUIFontParser fontTextStyleForString:v12];
    v20 = [AMSUIFontParser systemDesignForString:v14];
    if (v19)
    {
      v39 = v14;
      v21 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:withCopy];
      v22 = v21;
      if (v20)
      {
        v23 = [v21 fontDescriptorWithDesign:v20];

        v22 = v23;
      }

      v24 = [self weightForString:v16];
      v25 = v24;
      if (v16)
      {
        v26 = *MEMORY[0x1E69DB8F0];
        v41 = v24;
        v42 = v26;
        v40 = *MEMORY[0x1E69DB990];
        v38 = v18;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v43[0] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
        [v22 fontDescriptorByAddingAttributes:v28];
        v37 = v20;
        v29 = v16;
        v30 = v25;
        v31 = v12;
        v33 = v32 = withCopy;

        v18 = v38;
        v22 = v33;
        withCopy = v32;
        v12 = v31;
        v25 = v30;
        v16 = v29;
        v20 = v37;
      }

      v34 = MEMORY[0x1E69DB878];
      [v18 doubleValue];
      v10 = [v34 fontWithDescriptor:v22 size:?];

      v14 = v39;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)fontTextStyleForString:(id)string
{
  v19[11] = *MEMORY[0x1E69E9840];
  lowercaseString = [string lowercaseString];
  v4 = *MEMORY[0x1E69DDD58];
  v18[0] = @"largetitle";
  v18[1] = @"title1";
  v5 = *MEMORY[0x1E69DDDB8];
  v19[0] = v4;
  v19[1] = v5;
  v6 = *MEMORY[0x1E69DDDC0];
  v18[2] = @"title2";
  v18[3] = @"title3";
  v7 = *MEMORY[0x1E69DDDC8];
  v19[2] = v6;
  v19[3] = v7;
  v8 = *MEMORY[0x1E69DDD40];
  v18[4] = @"headline";
  v18[5] = @"subheadline";
  v9 = *MEMORY[0x1E69DDD80];
  v19[4] = v8;
  v19[5] = v9;
  v10 = *MEMORY[0x1E69DDCF8];
  v18[6] = @"body";
  v18[7] = @"callout";
  v11 = *MEMORY[0x1E69DDD00];
  v19[6] = v10;
  v19[7] = v11;
  v12 = *MEMORY[0x1E69DDD28];
  v18[8] = @"footnote";
  v18[9] = @"caption1";
  v13 = *MEMORY[0x1E69DDD08];
  v19[8] = v12;
  v19[9] = v13;
  v18[10] = @"caption2";
  v19[10] = *MEMORY[0x1E69DDD10];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:11];
  v15 = [v14 objectForKeyedSubscript:lowercaseString];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)systemDesignForString:(id)string
{
  v12[4] = *MEMORY[0x1E69E9840];
  lowercaseString = [string lowercaseString];
  v4 = *MEMORY[0x1E69DB8C8];
  v11[0] = @"default";
  v11[1] = @"rounded";
  v5 = *MEMORY[0x1E69DB8D8];
  v12[0] = v4;
  v12[1] = v5;
  v11[2] = @"serif";
  v11[3] = @"monospaced";
  v6 = *MEMORY[0x1E69DB8D0];
  v12[2] = *MEMORY[0x1E69DB8E0];
  v12[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v8 = [v7 objectForKeyedSubscript:lowercaseString];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)weightForString:(id)string
{
  v18[9] = *MEMORY[0x1E69E9840];
  lowercaseString = [string lowercaseString];
  v17[0] = @"ultralight";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB998]];
  v18[0] = v3;
  v17[1] = @"thin";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB988]];
  v18[1] = v4;
  v17[2] = @"light";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB968]];
  v18[2] = v5;
  v17[3] = @"regular";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
  v18[3] = v6;
  v17[4] = @"medium";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v18[4] = v7;
  v17[5] = @"semibold";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v18[5] = v8;
  v17[6] = @"bold";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
  v18[6] = v9;
  v17[7] = @"heavy";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB960]];
  v18[7] = v10;
  v17[8] = @"black";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB950]];
  v18[8] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:9];

  v13 = [v12 objectForKeyedSubscript:lowercaseString];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end