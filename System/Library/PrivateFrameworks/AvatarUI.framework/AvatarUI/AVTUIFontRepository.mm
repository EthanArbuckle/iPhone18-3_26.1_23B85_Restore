@interface AVTUIFontRepository
+ (id)appropriateContentSizeCategoryForCategory:(id)category minCategory:(id)minCategory maxCategory:(id)maxCategory;
+ (id)attributeTitleButtonFont;
+ (id)attributeTitleFont;
+ (id)attributeViewLabelFont;
+ (id)avatarActionButtonTitleFont;
+ (id)funCamItemTitleFont;
+ (id)groupDialLabelFont;
+ (id)keyboardRecentsSplashContinueButtonFont;
+ (id)keyboardRecentsSplashSubtitleFont;
+ (id)keyboardRecentsSplashTitleFont;
+ (id)multicolorPickerLabelFont;
+ (id)splashContinueButtonFont;
+ (id)splashSubTitleFont;
+ (id)splashTitleFont;
+ (id)templateTitleLabelFont;
+ (id)userInfoLabelFont;
@end

@implementation AVTUIFontRepository

+ (id)appropriateContentSizeCategoryForCategory:(id)category minCategory:(id)minCategory maxCategory:(id)maxCategory
{
  v21[1] = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  minCategoryCopy = minCategory;
  maxCategoryCopy = maxCategory;
  v10 = categoryCopy;
  if (UIContentSizeCategoryCompareToCategory(minCategoryCopy, maxCategoryCopy) == NSOrderedDescending)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v20 = @"minCategory";
    v21[0] = minCategoryCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v11 exceptionWithName:v12 reason:@"Min content size category must be less than or equal to max content size category" userInfo:v13];
  }

  v15 = UIContentSizeCategoryCompareToCategory(minCategoryCopy, v10);
  v16 = minCategoryCopy;
  if (v15 == NSOrderedDescending || (v17 = UIContentSizeCategoryCompareToCategory(v10, maxCategoryCopy), v16 = maxCategoryCopy, v18 = v10, v17 == NSOrderedDescending))
  {
    v18 = v16;
  }

  return v18;
}

+ (id)splashTitleFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC68] maxCategory:*MEMORY[0x1E69DDC38]];

  [self largeTitleTextStyle];
  v6 = CTFontDescriptorCreateWithTextStyle();
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)splashSubTitleFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC68] maxCategory:*MEMORY[0x1E69DDC38]];

  v6 = CTFontDescriptorCreateWithTextStyle();
  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];

  return v7;
}

+ (id)splashContinueButtonFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC70] maxCategory:*MEMORY[0x1E69DDC38]];

  v6 = CTFontDescriptorCreateWithTextStyle();
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)attributeTitleFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC68] maxCategory:*MEMORY[0x1E69DDC38]];

  v6 = CTFontDescriptorCreateWithTextStyle();
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)attributeTitleButtonFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC68] maxCategory:*MEMORY[0x1E69DDC38]];

  v6 = CTFontDescriptorCreateWithTextStyle();
  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];

  return v7;
}

+ (id)templateTitleLabelFont
{
  v2 = MEMORY[0x1E69DB880];
  largeTitleTextStyle = [self largeTitleTextStyle];
  v4 = [v2 preferredFontDescriptorWithTextStyle:largeTitleTextStyle addingSymbolicTraits:2 options:0];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)avatarActionButtonTitleFont
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8] addingSymbolicTraits:0 options:0];
  fontAttributes = [v2 fontAttributes];
  v4 = [fontAttributes mutableCopy];

  v13 = *MEMORY[0x1E69DB990];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB8F0]];

  v7 = MEMORY[0x1E69DB878];
  v8 = MEMORY[0x1E69DB880];
  v9 = [v4 copy];
  v10 = [v8 fontDescriptorWithFontAttributes:v9];
  v11 = [v7 fontWithDescriptor:v10 size:0.0];

  return v11;
}

+ (id)userInfoLabelFont
{
  v15[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC70] maxCategory:*MEMORY[0x1E69DDC38]];

  v6 = CTFontDescriptorCreateWithTextStyle();
  v14 = *MEMORY[0x1E69DB8F0];
  v12 = *MEMORY[0x1E69DB918];
  v13 = &unk_1F39A5C38;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v9 = [v6 fontDescriptorByAddingAttributes:v8];

  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];

  return v10;
}

+ (id)groupDialLabelFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC68] maxCategory:*MEMORY[0x1E69DDC38]];

  v6 = CTFontDescriptorCreateWithTextStyle();
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)multicolorPickerLabelFont
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC68] maxCategory:*MEMORY[0x1E69DDC38]];

  v6 = CTFontDescriptorCreateWithTextStyle();
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)attributeViewLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (id)funCamItemTitleFont
{
  v15[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v5 = [self appropriateContentSizeCategoryForCategory:preferredContentSizeCategory minCategory:*MEMORY[0x1E69DDC68] maxCategory:*MEMORY[0x1E69DDC60]];

  v6 = CTFontDescriptorCreateWithTextStyle();
  v14 = *MEMORY[0x1E69DB8F0];
  v12 = *MEMORY[0x1E69DB918];
  v13 = &unk_1F39A5C38;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v9 = [v6 fontDescriptorByAddingAttributes:v8];

  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];

  return v10;
}

+ (id)keyboardRecentsSplashTitleFont
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = CTFontDescriptorCreateWithTextStyle();
  v10 = *MEMORY[0x1E69DB8F0];
  v8 = *MEMORY[0x1E69DB918];
  v9 = &unk_1F39A5C38;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v2 fontDescriptorByAddingAttributes:v4];

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)keyboardRecentsSplashSubtitleFont
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = CTFontDescriptorCreateWithTextStyle();
  v10 = *MEMORY[0x1E69DB8F0];
  v8 = *MEMORY[0x1E69DB918];
  v9 = &unk_1F39A5C50;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v2 fontDescriptorByAddingAttributes:v4];

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)keyboardRecentsSplashContinueButtonFont
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = CTFontDescriptorCreateWithTextStyle();
  v10 = *MEMORY[0x1E69DB8F0];
  v8 = *MEMORY[0x1E69DB918];
  v9 = &unk_1F39A5C38;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v2 fontDescriptorByAddingAttributes:v4];

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];

  return v6;
}

@end