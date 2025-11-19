@interface AMSUIMessageMarkdownGenerator
- (AMSUIMessageMarkdownGenerator)initWithMarkdownString:(id)a3 configuration:(id)a4;
- (id)currentFont;
- (id)currentFontAddingFontAttributes:(id)a3;
- (id)fontWithTraits:(unsigned int)a3;
- (id)generate;
- (id)reconcileElementAttributes:(id)a3 withFont:(id)a4;
- (void)appendStyledString:(id)a3;
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didFindArtworkWithIdentifier:(id)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidStartDocument:(id)a3;
- (void)popAttributes;
- (void)pushAttributes:(id)a3;
@end

@implementation AMSUIMessageMarkdownGenerator

- (AMSUIMessageMarkdownGenerator)initWithMarkdownString:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = AMSUIMessageMarkdownGenerator;
  v8 = [(AMSUIMessageMarkdownGenerator *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
    accumulator = v8->_accumulator;
    v8->_accumulator = v9;

    objc_storeStrong(&v8->_configuration, a4);
    v8->_didParseEverything = 1;
    v11 = [[AMSUIMarkdownParser alloc] initWithString:v6];
    parser = v8->_parser;
    v8->_parser = v11;

    [(AMSUIMarkdownParser *)v8->_parser setDelegate:v8];
    v13 = [MEMORY[0x1E695DF70] array];
    attributeStack = v8->_attributeStack;
    v8->_attributeStack = v13;
  }

  return v8;
}

- (id)generate
{
  v3 = [(AMSUIMessageMarkdownGenerator *)self parser];
  [v3 parse];

  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [(AMSUIMessageMarkdownGenerator *)self accumulator];
  v6 = [v4 initWithAttributedString:v5];

  return v6;
}

- (void)popAttributes
{
  v2 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
  [v2 removeLastObject];
}

- (void)pushAttributes:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = MEMORY[0x1E695DF90];
    v8 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
    v9 = [v8 lastObject];
    v12 = [v7 dictionaryWithDictionary:v9];

    [v12 addEntriesFromDictionary:v4];
    v10 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
    v4 = v10;
    v11 = v12;
  }

  else
  {
    v10 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
    v12 = v10;
    v11 = v4;
  }

  [v10 addObject:v11];
}

- (void)appendStyledString:(id)a3
{
  v9 = a3;
  v4 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
  v5 = [v4 lastObject];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"AMSUISymbol"];

    if (v6)
    {
      [(AMSUIMessageMarkdownGenerator *)self setSymbol:v9];
    }

    else
    {
      v7 = [(AMSUIMessageMarkdownGenerator *)self accumulator];
      v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v5];
      [v7 appendAttributedString:v8];
    }
  }
}

- (id)currentFont
{
  v3 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
  v4 = [v3 lastObject];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DB648]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = [(AMSUIMessageMarkdownGenerator *)self configuration];
    v6 = [v7 font];
  }

  return v6;
}

- (id)currentFontAddingFontAttributes:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIMessageMarkdownGenerator *)self currentFont];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorByAddingAttributes:v4];

  v8 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v9 = [v8 fontWithDescriptor:v7 size:?];

  return v9;
}

- (id)fontWithTraits:(unsigned int)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(AMSUIMessageMarkdownGenerator *)self currentFont];
  v5 = [v4 fontDescriptor];
  v6 = [v5 symbolicTraits] | a3;
  v7 = [v5 fontDescriptorWithSymbolicTraits:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E69DB878];
    [v4 pointSize];
    v9 = [v8 fontWithDescriptor:v7 size:?];
  }

  else
  {
    v10 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v17 = 138544130;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v4;
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Font %{public}@, does not support traits %u", &v17, 0x26u);
    }

    v9 = v4;
  }

  v14 = v9;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)reconcileElementAttributes:(id)a3 withFont:(id)a4
{
  v53[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 objectForKeyedSubscript:@"font-family"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v6 familyName];
    }

    v11 = v9;

    v12 = [v5 objectForKeyedSubscript:@"font-name"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v6 fontName];
    }

    v15 = v14;
    v47 = v11;

    [v6 pointSize];
    v17 = v16;
    v18 = [v5 objectForKeyedSubscript:@"font-size"];

    v46 = v15;
    if (v18)
    {
      v19 = [v5 objectForKeyedSubscript:@"font-size"];
      [v19 doubleValue];
      v17 = v20;
    }

    v21 = MEMORY[0x1E69DB978];
    v22 = [v6 fontDescriptor];
    v23 = *MEMORY[0x1E69DB8F0];
    v24 = [v22 objectForKey:*MEMORY[0x1E69DB8F0]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = *v21;

    v27 = MEMORY[0x1E69DB990];
    if (v25)
    {
      v28 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
      [v28 doubleValue];
      if (v29 != 0.0)
      {
        v26 = v29;
      }
    }

    v30 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698C4F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v32 = [AMSUIFontParser weightForString:v31];
      v33 = v32;
      if (!v32)
      {
        [v31 doubleValue];
        v32 = v31;
      }

      [v32 doubleValue];
      v26 = v34;
    }

    v35 = [v5 objectForKeyedSubscript:@"font-weight"];

    v36 = MEMORY[0x1E69DB880];
    if (v35)
    {
      v37 = *MEMORY[0x1E69DB8A8];
      v38 = v47;
      v52[1] = v23;
      v53[0] = v47;
      v52[0] = v37;
      v50 = *v27;
      v39 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
      v51 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v53[1] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
      v42 = [v36 fontDescriptorWithFontAttributes:v41];

      v43 = v46;
    }

    else
    {
      v43 = v46;
      v48 = *MEMORY[0x1E69DB8B8];
      v49 = v46;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v42 = [v36 fontDescriptorWithFontAttributes:v39];
      v38 = v47;
    }

    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v42 size:v17];
  }

  else
  {
    v10 = v6;
  }

  v44 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)parserDidStartDocument:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v4 setAlignment:4];
  v5 = MEMORY[0x1E695DF90];
  v9 = *MEMORY[0x1E69DB688];
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 dictionaryWithDictionary:v6];
  [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to parse with error: %{public}@", &v11, 0x20u);
  }

  [(AMSUIMessageMarkdownGenerator *)self setDidParseEverything:0];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  v75[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(AMSUIMessageMarkdownGenerator *)self accumulator];
  [v9 beginEditing];

  if (a4 > 4)
  {
    if (a4 - 6 < 2)
    {
      v23 = [(AMSUIMessageMarkdownGenerator *)self currentFont];
      v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:v8 withFont:v23];

      v24 = MEMORY[0x1E695DF90];
      v58[0] = *MEMORY[0x1E69DB688];
      v25 = [(AMSUIMessageMarkdownGenerator *)self configuration];
      v26 = [v25 paragraphStyle];
      v27 = *MEMORY[0x1E69DB648];
      v59[0] = v26;
      v59[1] = v11;
      v28 = *MEMORY[0x1E69DB650];
      v58[1] = v27;
      v58[2] = v28;
      v5 = [(AMSUIMessageMarkdownGenerator *)self configuration];
      v29 = [v5 color];
      v59[2] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
      v31 = [v24 dictionaryWithDictionary:v30];
      [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v31];
    }

    else
    {
      if (a4 != 5)
      {
        if (a4 == 8)
        {
          v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
          [v11 setObject:MEMORY[0x1E695E118] forKey:@"AMSUISymbol"];
          [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v11];
LABEL_25:

          goto LABEL_26;
        }

        goto LABEL_26;
      }

      v32 = [(AMSUIMessageMarkdownGenerator *)self currentFont];
      v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:v8 withFont:v32];

      v33 = MEMORY[0x1E695DF90];
      v34 = *MEMORY[0x1E69DB648];
      v60[0] = *MEMORY[0x1E69DB6B8];
      v60[1] = v34;
      v61[0] = &unk_1F394A600;
      v61[1] = v11;
      v60[2] = *MEMORY[0x1E69DB650];
      v25 = [(AMSUIMessageMarkdownGenerator *)self configuration];
      v26 = [v25 strikeThroughColor];
      v29 = v26;
      if (!v26)
      {
        v5 = [(AMSUIMessageMarkdownGenerator *)self configuration];
        v29 = [v5 color];
      }

      v61[2] = v29;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
      v36 = [v33 dictionaryWithDictionary:v35];
      [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v36];

      if (v26)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
LABEL_24:

    goto LABEL_25;
  }

  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        v51 = MEMORY[0x1E695DF90];
        v68 = *MEMORY[0x1E69DB648];
        v52 = [(AMSUIMessageMarkdownGenerator *)self fontWithTraits:0];
        v69 = v52;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v54 = [v51 dictionaryWithDictionary:v53];
        [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v54];

        v55 = [v8 objectForKeyedSubscript:@"href"];

        if (!v55)
        {
          goto LABEL_26;
        }

        v56 = MEMORY[0x1E695DF90];
        v66 = *MEMORY[0x1E69DB670];
        v11 = [v8 objectForKeyedSubscript:@"href"];
        v67 = v11;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v57 = [v56 dictionaryWithDictionary:v14];
        [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v57];

        goto LABEL_22;
      }

      v10 = [(AMSUIMessageMarkdownGenerator *)self currentFont];
      v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:v8 withFont:v10];

      v12 = MEMORY[0x1E695DF90];
      v13 = *MEMORY[0x1E69DB648];
      v62[0] = *MEMORY[0x1E69DB758];
      v62[1] = v13;
      v63[0] = &unk_1F394A600;
      v63[1] = v11;
      v62[2] = *MEMORY[0x1E69DB650];
      v14 = [(AMSUIMessageMarkdownGenerator *)self configuration];
      v15 = [v14 color];
      v63[2] = v15;
      v16 = MEMORY[0x1E695DF20];
      v17 = v63;
      v18 = v62;
      v19 = 3;
LABEL_21:
      v40 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      v41 = [v12 dictionaryWithDictionary:v40];
      [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v41];

LABEL_22:
      goto LABEL_25;
    }

    v37 = [(AMSUIMessageMarkdownGenerator *)self fontWithTraits:1];
    v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:v8 withFont:v37];

    v12 = MEMORY[0x1E695DF90];
    v38 = *MEMORY[0x1E69DB648];
    v65[0] = v11;
    v39 = *MEMORY[0x1E69DB650];
    v64[0] = v38;
    v64[1] = v39;
    v14 = [(AMSUIMessageMarkdownGenerator *)self configuration];
    v15 = [v14 color];
    v65[1] = v15;
    v16 = MEMORY[0x1E695DF20];
    v17 = v65;
    v18 = v64;
LABEL_20:
    v19 = 2;
    goto LABEL_21;
  }

  if (!a4)
  {
    v72 = *MEMORY[0x1E69DB8B0];
    v73 = &unk_1F394AB90;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v42 = [(AMSUIMessageMarkdownGenerator *)self currentFontAddingFontAttributes:v11];
    v25 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:v8 withFont:v42];

    v43 = MEMORY[0x1E695DF90];
    v44 = *MEMORY[0x1E69DB648];
    v71[0] = v25;
    v45 = *MEMORY[0x1E69DB650];
    v70[0] = v44;
    v70[1] = v45;
    v46 = [(AMSUIMessageMarkdownGenerator *)self configuration];
    v47 = [v46 color];
    v71[1] = v47;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
    v49 = [v43 dictionaryWithDictionary:v48];
    [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v49];

    goto LABEL_24;
  }

  if (a4 == 1)
  {
    v20 = [(AMSUIMessageMarkdownGenerator *)self fontWithTraits:2];
    v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:v8 withFont:v20];

    v12 = MEMORY[0x1E695DF90];
    v21 = *MEMORY[0x1E69DB648];
    v75[0] = v11;
    v22 = *MEMORY[0x1E69DB650];
    v74[0] = v21;
    v74[1] = v22;
    v14 = [(AMSUIMessageMarkdownGenerator *)self configuration];
    v15 = [v14 color];
    v75[1] = v15;
    v16 = MEMORY[0x1E695DF20];
    v17 = v75;
    v18 = v74;
    goto LABEL_20;
  }

LABEL_26:

  v50 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (a4 == 8)
  {
    v5 = [(AMSUIMessageMarkdownGenerator *)self symbol];

    if (v5)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = [(AMSUIMessageMarkdownGenerator *)self symbol];
      v8 = [v6 ams_imageWithSystemSymbolName:v7];

      v9 = MEMORY[0x1E695DF90];
      v10 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
      v11 = [v10 lastObject];
      v12 = [v9 dictionaryWithDictionary:v11];

      v13 = MEMORY[0x1E69DCAD8];
      v14 = [(AMSUIMessageMarkdownGenerator *)self currentFont];
      v15 = [v13 configurationWithFont:v14];

      v16 = [MEMORY[0x1E69DCAD8] ams_imageSymbolConfigurationWithDictionary:v12];
      v17 = v16;
      if (v15)
      {
        v18 = [v15 configurationByApplyingConfiguration:v16];
      }

      else
      {
        v18 = v16;
      }

      v19 = [(AMSUIMessageMarkdownGenerator *)self configuration];
      v20 = [v19 color];

      if (v20)
      {
        v21 = MEMORY[0x1E69DCAD8];
        v22 = [(AMSUIMessageMarkdownGenerator *)self configuration];
        v23 = [v22 color];
        v33[0] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
        v25 = [v21 configurationWithPaletteColors:v24];

        v26 = [v25 configurationByApplyingConfiguration:v18];

        v18 = v26;
      }

      if (v18)
      {
        v27 = [v8 ams_imageWithSymbolConfiguration:v18];

        v8 = v27;
      }

      v28 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      [v28 setImage:v8];
      v29 = [(AMSUIMessageMarkdownGenerator *)self accumulator];
      v30 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v28];
      [v29 appendAttributedString:v30];
    }
  }

  [(AMSUIMessageMarkdownGenerator *)self popAttributes];
  v31 = [(AMSUIMessageMarkdownGenerator *)self accumulator];
  [v31 endEditing];

  [(AMSUIMessageMarkdownGenerator *)self setSymbol:0];
  v32 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)a3 didFindArtworkWithIdentifier:(id)a4
{
  v5 = MEMORY[0x1E69DB7F0];
  v6 = a4;
  v10 = objc_alloc_init(v5);
  v7 = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:v6];

  [v10 setImage:v7];
  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  v9 = [(AMSUIMessageMarkdownGenerator *)self accumulator];
  [v9 appendAttributedString:v8];
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  v5 = [MEMORY[0x1E696AD60] stringWithString:a4];
  [(AMSUIMessageMarkdownGenerator *)self appendStyledString:v5];
}

@end