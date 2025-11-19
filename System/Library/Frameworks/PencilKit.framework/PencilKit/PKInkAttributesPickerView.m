@interface PKInkAttributesPickerView
@end

@implementation PKInkAttributesPickerView

void __50___PKInkAttributesPickerView_angleWeightsToImages__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [PKToolConfiguration _assetNamesByAzimuthForToolWithIdentifier:@"com.apple.ink.reedcalligraphy"];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = MEMORY[0x1E69DCAB8];
        v10 = [v3 objectForKeyedSubscript:{v8, v14}];
        v11 = [v9 imageNamed:v10 inBundle:v0 compatibleWithTraitCollection:0];
        [v2 setObject:v11 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v2];
  v13 = _MergedGlobals_9;
  _MergedGlobals_9 = v12;
}

@end