@interface CNContactGeminiIconProvider
- (BOOL)_checkAvailableGeminiChannelsUpdatedForGeminiResult:(id)result;
- (id)_simLabelImageWithLocalizedBadgeLabel:(id)label;
- (void)setGeminiResult:(id)result;
- (void)updateGeminiIcons;
@end

@implementation CNContactGeminiIconProvider

- (id)_simLabelImageWithLocalizedBadgeLabel:(id)label
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDCF8];
  labelCopy = label;
  v6 = [v3 preferredFontForTextStyle:v4];
  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  [defaultMetrics scaledValueForValue:2.20000005];
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

  [v14 setText:labelCopy];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v14 setTextColor:labelColor];

  [v14 setTextAlignment:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:clearColor];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  cGColor = [labelColor2 CGColor];
  layer = [v14 layer];
  [layer setBorderColor:cGColor];

  defaultMetrics2 = [MEMORY[0x1E69DCA40] defaultMetrics];
  [defaultMetrics2 scaledValueForValue:1.20000005];
  v25 = v24;
  layer2 = [v14 layer];
  [layer2 setBorderWidth:v25];

  layer3 = [v14 layer];
  [layer3 setMasksToBounds:1];

  layer4 = [v14 layer];
  [layer4 setCornerRadius:v9];

  [v6 capHeight];
  v30 = v29;
  defaultMetrics3 = [MEMORY[0x1E69DCA40] defaultMetrics];
  [defaultMetrics3 scaledValueForValue:6.0];
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
  layer5 = [v14 layer];
  [layer5 renderInContext:UIGraphicsGetCurrentContext()];

  v40 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v40;
}

- (BOOL)_checkAvailableGeminiChannelsUpdatedForGeminiResult:(id)result
{
  v34 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  geminiResult = [(CNContactGeminiIconProvider *)self geminiResult];
  availableChannels = [geminiResult availableChannels];

  v9 = [availableChannels countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(availableChannels);
        }

        localizedBadgeLabel = [*(*(&v28 + 1) + 8 * v12) localizedBadgeLabel];
        [v5 addObject:localizedBadgeLabel];

        ++v12;
      }

      while (v10 != v12);
      v10 = [availableChannels countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  availableChannels2 = [resultCopy availableChannels];
  v15 = [availableChannels2 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(availableChannels2);
        }

        localizedBadgeLabel2 = [*(*(&v24 + 1) + 8 * v18) localizedBadgeLabel];
        [v6 addObject:localizedBadgeLabel2];

        ++v18;
      }

      while (v16 != v18);
      v16 = [availableChannels2 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
  geminiResult = [(CNContactGeminiIconProvider *)self geminiResult];
  availableChannels = [geminiResult availableChannels];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = availableChannels;
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
        localizedBadgeLabel = [v11 localizedBadgeLabel];
        v13 = [(CNContactGeminiIconProvider *)self _simLabelImageWithLocalizedBadgeLabel:localizedBadgeLabel];

        channelIdentifier = [v11 channelIdentifier];
        [v5 setObject:v13 forKey:channelIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  geminiIconDictionary = self->_geminiIconDictionary;
  self->_geminiIconDictionary = v15;
}

- (void)setGeminiResult:(id)result
{
  resultCopy = result;
  v5 = [(CNContactGeminiIconProvider *)self _checkAvailableGeminiChannelsUpdatedForGeminiResult:resultCopy];
  geminiResult = self->_geminiResult;
  self->_geminiResult = resultCopy;

  if (v5)
  {

    [(CNContactGeminiIconProvider *)self updateGeminiIcons];
  }
}

@end