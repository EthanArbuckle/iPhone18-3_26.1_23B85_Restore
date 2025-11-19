@interface CNContactGeminiIconProvider
- (BOOL)_checkAvailableGeminiChannelsUpdatedForGeminiResult:(id)a3;
- (id)_simLabelImageWithLocalizedBadgeLabel:(id)a3;
- (void)setGeminiResult:(id)a3;
- (void)updateGeminiIcons;
@end

@implementation CNContactGeminiIconProvider

- (id)_simLabelImageWithLocalizedBadgeLabel:(id)a3
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = a3;
  v6 = [v3 preferredFontForTextStyle:v4];
  v7 = [MEMORY[0x1E69DCA40] defaultMetrics];
  [v7 scaledValueForValue:2.20000005];
  v9 = v8;

  v10 = objc_alloc(MEMORY[0x1E69DCC10]);
  [v6 capHeight];
  v12 = v11;
  [v6 capHeight];
  v14 = [v10 initWithFrame:{0.0, 0.0, v12, v13}];
  v15 = MEMORY[0x1E69DB878];
  [v6 capHeight];
  v17 = [v15 boldSystemFontOfSize:v16 / 1.375];
  [v14 setFont:v17];

  [v14 setText:v5];
  v18 = [MEMORY[0x1E69DC888] labelColor];
  [v14 setTextColor:v18];

  [v14 setTextAlignment:1];
  v19 = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:v19];

  v20 = [MEMORY[0x1E69DC888] labelColor];
  v21 = [v20 CGColor];
  v22 = [v14 layer];
  [v22 setBorderColor:v21];

  v23 = [MEMORY[0x1E69DCA40] defaultMetrics];
  [v23 scaledValueForValue:1.20000005];
  v25 = v24;
  v26 = [v14 layer];
  [v26 setBorderWidth:v25];

  v27 = [v14 layer];
  [v27 setMasksToBounds:1];

  v28 = [v14 layer];
  [v28 setCornerRadius:v9];

  [v6 capHeight];
  v30 = v29;
  v31 = [MEMORY[0x1E69DCA40] defaultMetrics];
  [v31 scaledValueForValue:6.0];
  v33 = v32;

  [v14 intrinsicContentSize];
  v35 = v33 + v34;
  if (v35 >= v30)
  {
    v30 = v35;
  }

  [v6 capHeight];
  [v14 setFrame:{0.0, 0.0, v30, v36}];
  [v14 bounds];
  v43.width = v37;
  v43.height = v38;
  UIGraphicsBeginImageContextWithOptions(v43, 0, 0.0);
  v39 = [v14 layer];
  [v39 renderInContext:UIGraphicsGetCurrentContext()];

  v40 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v40;
}

- (BOOL)_checkAvailableGeminiChannelsUpdatedForGeminiResult:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [(CNContactGeminiIconProvider *)self geminiResult];
  v8 = [v7 availableChannels];

  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * v12) localizedBadgeLabel];
        [v5 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v4 availableChannels];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * v18) localizedBadgeLabel];
        [v6 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];
  v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
  v22 = [v20 isEqualToSet:v21];

  return v22 ^ 1;
}

- (void)updateGeminiIcons
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactGeminiIconProvider *)self geminiResult];
  v4 = [v3 availableChannels];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 localizedBadgeLabel];
        v13 = [(CNContactGeminiIconProvider *)self _simLabelImageWithLocalizedBadgeLabel:v12];

        v14 = [v11 channelIdentifier];
        [v5 setObject:v13 forKey:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  geminiIconDictionary = self->_geminiIconDictionary;
  self->_geminiIconDictionary = v15;
}

- (void)setGeminiResult:(id)a3
{
  v4 = a3;
  v5 = [(CNContactGeminiIconProvider *)self _checkAvailableGeminiChannelsUpdatedForGeminiResult:v4];
  geminiResult = self->_geminiResult;
  self->_geminiResult = v4;

  if (v5)
  {

    [(CNContactGeminiIconProvider *)self updateGeminiIcons];
  }
}

@end