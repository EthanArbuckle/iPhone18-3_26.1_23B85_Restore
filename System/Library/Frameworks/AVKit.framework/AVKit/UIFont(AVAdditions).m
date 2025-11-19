@interface UIFont(AVAdditions)
+ (id)avkit_monospacedDigitFontWithTextStyle:()AVAdditions fontWeight:traitCollection:;
+ (id)avkit_nonScalingFontWithTextStyle:()AVAdditions weight:;
+ (id)boldTimeFontOfSize:()AVAdditions;
+ (id)italicTimeFontOfSize:()AVAdditions;
+ (id)monospacedTimeFontOfSize:()AVAdditions;
+ (id)timeFontOfSize:()AVAdditions;
+ (id)timeFontWithFont:()AVAdditions;
+ (id)timeFontWithName:()AVAdditions size:;
@end

@implementation UIFont(AVAdditions)

+ (id)avkit_monospacedDigitFontWithTextStyle:()AVAdditions fontWeight:traitCollection:
{
  v17[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:? compatibleWithTraitCollection:?];
  [v0 pointSize];
  v2 = v1;
  v3 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:? weight:?];
  v4 = *MEMORY[0x1E69DB900];
  v16[0] = *MEMORY[0x1E69DB908];
  v16[1] = v4;
  v17[0] = &unk_1EFF12D88;
  v17[1] = &unk_1EFF12DA0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v7 = [v3 fontDescriptor];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:{v2, *MEMORY[0x1E69DB8B0], *MEMORY[0x1E69DB8C0], v6}];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:2];
  v10 = [v7 fontDescriptorByAddingAttributes:v9];

  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:v2];

  return v11;
}

+ (id)avkit_nonScalingFontWithTextStyle:()AVAdditions weight:
{
  v3 = MEMORY[0x1E69DB878];
  v4 = MEMORY[0x1E69DD1B8];
  v5 = *MEMORY[0x1E69DDC70];
  v6 = a3;
  v7 = [v4 traitCollectionWithPreferredContentSizeCategory:v5];
  v8 = [v3 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v7];

  v9 = MEMORY[0x1E69DB878];
  [v8 pointSize];
  v10 = [v9 systemFontOfSize:? weight:?];

  return v10;
}

+ (id)monospacedTimeFontOfSize:()AVAdditions
{
  v3 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:a2 weight:*MEMORY[0x1E69DB978]];
  v4 = [a1 timeFontWithFont:v3];

  return v4;
}

+ (id)italicTimeFontOfSize:()AVAdditions
{
  v2 = [MEMORY[0x1E69DB878] italicSystemFontOfSize:?];
  v3 = [a1 timeFontWithFont:v2];

  return v3;
}

+ (id)boldTimeFontOfSize:()AVAdditions
{
  v2 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:?];
  v3 = [a1 timeFontWithFont:v2];

  return v3;
}

+ (id)timeFontOfSize:()AVAdditions
{
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
  v3 = [a1 timeFontWithFont:v2];

  return v3;
}

+ (id)timeFontWithName:()AVAdditions size:
{
  v2 = [MEMORY[0x1E69DB878] fontWithName:? size:?];
  v3 = [a1 timeFontWithFont:v2];

  return v3;
}

+ (id)timeFontWithFont:()AVAdditions
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *MEMORY[0x1E69DB900];
    v19[0] = *MEMORY[0x1E69DB908];
    v19[1] = v3;
    v20[0] = &unk_1EFF12D88;
    v20[1] = &unk_1EFF12DA0;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v20 forKeys:v19 count:2];
    v21[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    v8 = [v5 fontDescriptor];
    v17 = *MEMORY[0x1E69DB8B0];
    v18 = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [v8 fontDescriptorByAddingAttributes:v9];

    v11 = MEMORY[0x1E69DB878];
    [v5 pointSize];
    v12 = [v10 fontDescriptorWithSize:?];
    [v5 pointSize];
    v14 = v13;

    v15 = [v11 fontWithDescriptor:v12 size:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end