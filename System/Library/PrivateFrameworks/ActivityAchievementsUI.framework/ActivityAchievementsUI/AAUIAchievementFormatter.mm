@interface AAUIAchievementFormatter
- (AAUIAchievementFormatter)initWithStyle:(int64_t)style achievement:(id)achievement achLocalizationProvider:(id)provider;
- (BOOL)shouldShowEarnedShortDescription;
- (id)achBacksideAttributesWithSizeVariant:(int64_t)variant;
- (id)achLocalizedAttributedBacksideStringWithDateSizeVariant:(int64_t)variant;
- (id)backsideAttributesWithSizeVariant:(int64_t)variant;
- (id)descriptionAttributes;
- (id)localizedAttributedBacksideString;
- (id)localizedAttributedBacksideStringWithDateSizeVariant:(int64_t)variant;
- (id)localizedAttributedCombinedStringShowingProgress:(BOOL)progress;
- (id)localizedAttributedDescriptionString;
- (id)localizedAttributedShortDescriptionString;
- (id)localizedAttributedShortenedBacksideString;
- (id)localizedAttributedTitleString;
- (id)titleAttributes;
@end

@implementation AAUIAchievementFormatter

- (AAUIAchievementFormatter)initWithStyle:(int64_t)style achievement:(id)achievement achLocalizationProvider:(id)provider
{
  achievementCopy = achievement;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = AAUIAchievementFormatter;
  v11 = [(AAUIAchievementFormatter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_achievement, achievement);
    objc_storeStrong(&v12->_achLocProvider, provider);
    v12->_style = style;
  }

  return v12;
}

- (id)titleAttributes
{
  v26[1] = *MEMORY[0x277D85DE8];
  style = [(AAUIAchievementFormatter *)self style];
  if (style == 2)
  {
    v3 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74420]];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v17 = [defaultParagraphStyle mutableCopy];

    [v17 setAlignment:1];
    defaultParagraphStyle3 = [v17 copy];
  }

  else if (style == 1)
  {
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968]];
    [v6 pointSize];
    v8 = v7;
    symbolicTraits = [v6 symbolicTraits];
    v25 = *MEMORY[0x277D74380];
    v23 = *MEMORY[0x277D743B0];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:symbolicTraits | 2u];
    v24 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v13 = [v6 fontDescriptorByAddingAttributes:v12];

    v3 = [MEMORY[0x277D74300] fontWithDescriptor:v13 size:v8];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    defaultParagraphStyle2 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v15 = [defaultParagraphStyle2 mutableCopy];

    [v15 setAlignment:1];
    defaultParagraphStyle3 = [v15 copy];
  }

  else if (style)
  {
    defaultParagraphStyle3 = 0;
    whiteColor = 0;
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    defaultParagraphStyle3 = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v18 = *MEMORY[0x277D740C0];
  v21[0] = *MEMORY[0x277D740A8];
  v21[1] = v18;
  v22[0] = v3;
  v22[1] = whiteColor;
  v21[2] = *MEMORY[0x277D74118];
  v22[2] = defaultParagraphStyle3;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  return v19;
}

- (id)descriptionAttributes
{
  v15[3] = *MEMORY[0x277D85DE8];
  style = [(AAUIAchievementFormatter *)self style];
  switch(style)
  {
    case 2:
      v3 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      goto LABEL_7;
    case 1:
      v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      whiteColor = [MEMORY[0x277D75348] fu_systemTextGreyColor];
LABEL_7:
      _vibrantLightFillBurnColor = whiteColor;
      defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
      v6 = [defaultParagraphStyle mutableCopy];

      [v6 setAlignment:1];
      goto LABEL_8;
    case 0:
      v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      _vibrantLightFillBurnColor = [MEMORY[0x277D75348] _vibrantLightFillBurnColor];
      defaultParagraphStyle2 = [MEMORY[0x277D74248] defaultParagraphStyle];
      v6 = [defaultParagraphStyle2 mutableCopy];

      LODWORD(v7) = 1057803469;
      [v6 setHyphenationFactor:v7];
LABEL_8:
      v10 = [v6 copy];

      goto LABEL_10;
  }

  v10 = 0;
  _vibrantLightFillBurnColor = 0;
  v3 = 0;
LABEL_10:
  v11 = *MEMORY[0x277D740C0];
  v14[0] = *MEMORY[0x277D740A8];
  v14[1] = v11;
  v15[0] = v3;
  v15[1] = _vibrantLightFillBurnColor;
  v14[2] = *MEMORY[0x277D74118];
  v15[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (id)backsideAttributesWithSizeVariant:(int64_t)variant
{
  v14[4] = *MEMORY[0x277D85DE8];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v5 = [defaultParagraphStyle mutableCopy];

  [v5 setAlignment:1];
  [v5 setLineHeightMultiple:0.95];
  v6 = 0.0;
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  if (variant <= 2)
  {
    v6 = dbl_23E4DFB60[variant];
  }

  v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:v6];
  v9 = *MEMORY[0x277D74118];
  v13[0] = *MEMORY[0x277D740C0];
  v13[1] = v9;
  v14[0] = v7;
  v14[1] = v5;
  v10 = *MEMORY[0x277D740D0];
  v13[2] = *MEMORY[0x277D740A8];
  v13[3] = v10;
  v14[2] = v8;
  v14[3] = &unk_2850D0010;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

- (id)achBacksideAttributesWithSizeVariant:(int64_t)variant
{
  v14[4] = *MEMORY[0x277D85DE8];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v5 = [defaultParagraphStyle mutableCopy];

  [v5 setAlignment:1];
  [v5 setLineHeightMultiple:0.95];
  v6 = 0.0;
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  if (variant <= 2)
  {
    v6 = dbl_23E4DFB60[variant];
  }

  v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:v6];
  v9 = *MEMORY[0x277D74118];
  v13[0] = *MEMORY[0x277D740C0];
  v13[1] = v9;
  v14[0] = v7;
  v14[1] = v5;
  v10 = *MEMORY[0x277D740D0];
  v13[2] = *MEMORY[0x277D740A8];
  v13[3] = v10;
  v14[2] = v8;
  v14[3] = &unk_2850D0010;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

- (id)localizedAttributedCombinedStringShowingProgress:(BOOL)progress
{
  progressCopy = progress;
  if ([(AAUIAchievementFormatter *)self formatsForFriend])
  {
    achLocProvider = [(AAUIAchievementFormatter *)self achLocProvider];

    if (!achLocProvider)
    {
      goto LABEL_18;
    }

    achievement = [(AAUIAchievementFormatter *)self achievement];
    unearned = [achievement unearned];
    achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];
    achievement2 = [(AAUIAchievementFormatter *)self achievement];
    if (unearned)
    {
      [achLocProvider2 unachievedDescriptionForAchievement:achievement2];
    }

    else
    {
      [achLocProvider2 friendAchievedDescriptionForAchievement:achievement2];
    }
    achLocProvider = ;

    goto LABEL_16;
  }

  achievement3 = [(AAUIAchievementFormatter *)self achievement];
  unearned2 = [achievement3 unearned];

  achLocProvider3 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (unearned2)
  {
    if (achLocProvider3)
    {
      achievement = [(AAUIAchievementFormatter *)self achLocProvider];
      achLocProvider2 = [(AAUIAchievementFormatter *)self achievement];
      v13 = [achievement unachievedDescriptionForAchievement:achLocProvider2];
LABEL_15:
      achLocProvider = v13;
LABEL_16:

      goto LABEL_18;
    }
  }

  else if (progressCopy)
  {
    if (achLocProvider3)
    {
      achievement = [(AAUIAchievementFormatter *)self achLocProvider];
      achLocProvider2 = [(AAUIAchievementFormatter *)self achievement];
      v13 = [achievement achievedDescriptionForAchievement:achLocProvider2];
      goto LABEL_15;
    }
  }

  else if (achLocProvider3)
  {
    achievement = [(AAUIAchievementFormatter *)self achLocProvider];
    achLocProvider2 = [(AAUIAchievementFormatter *)self achievement];
    v13 = [achievement achievedAlertDescriptionForAchievement:achLocProvider2 fitnessExperienceType:1];
    goto LABEL_15;
  }

  achLocProvider = 0;
LABEL_18:
  formatsForFriend = [(AAUIAchievementFormatter *)self formatsForFriend];
  achLocProvider4 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (formatsForFriend)
  {
    if (achLocProvider4)
    {
      achLocProvider5 = [(AAUIAchievementFormatter *)self achLocProvider];
      achievement4 = [(AAUIAchievementFormatter *)self achievement];
      v18 = [achLocProvider5 friendAchievedTitleForAchievement:achievement4];
      goto LABEL_23;
    }
  }

  else if (achLocProvider4)
  {
    achLocProvider5 = [(AAUIAchievementFormatter *)self achLocProvider];
    achievement4 = [(AAUIAchievementFormatter *)self achievement];
    v18 = [achLocProvider5 titleForAchievement:achievement4];
LABEL_23:
    v19 = v18;

    if (v19)
    {
      goto LABEL_27;
    }
  }

  v20 = ACHLogDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(AAUIAchievementFormatter *)self localizedAttributedCombinedStringShowingProgress:v20];
  }

  v19 = &stru_2850CB9E8;
LABEL_27:
  if ([(AAUIAchievementFormatter *)self style]== 1)
  {
    v21 = [(__CFString *)v19 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v22 = [achLocProvider stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v19 = v21;
    achLocProvider = v22;
  }

  if (achLocProvider)
  {
    v23 = [(__CFString *)v19 stringByAppendingString:@"\n"];

    v19 = v23;
  }

  v24 = objc_alloc(MEMORY[0x277CCAB48]);
  titleAttributes = [(AAUIAchievementFormatter *)self titleAttributes];
  v26 = [v24 initWithString:v19 attributes:titleAttributes];

  if (achLocProvider)
  {
    v27 = objc_alloc(MEMORY[0x277CCA898]);
    descriptionAttributes = [(AAUIAchievementFormatter *)self descriptionAttributes];
    v29 = [v27 initWithString:achLocProvider attributes:descriptionAttributes];
    [v26 appendAttributedString:v29];
  }

  v30 = [v26 copy];

  return v30;
}

- (id)localizedAttributedTitleString
{
  achLocProvider = [(AAUIAchievementFormatter *)self achLocProvider];

  if (achLocProvider)
  {
    achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];
    achievement = [(AAUIAchievementFormatter *)self achievement];
    achLocProvider = [achLocProvider2 titleForAchievement:achievement];
  }

  v6 = objc_alloc(MEMORY[0x277CCA898]);
  titleAttributes = [(AAUIAchievementFormatter *)self titleAttributes];
  v8 = [v6 initWithString:achLocProvider attributes:titleAttributes];

  return v8;
}

- (id)localizedAttributedDescriptionString
{
  formatsForFriend = [(AAUIAchievementFormatter *)self formatsForFriend];
  achLocProvider = [(AAUIAchievementFormatter *)self achLocProvider];

  if (!formatsForFriend)
  {
    if (achLocProvider)
    {
      achievement = [(AAUIAchievementFormatter *)self achievement];
      unearned = [achievement unearned];
      achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];
      achievement2 = [(AAUIAchievementFormatter *)self achievement];
      if ((unearned & 1) == 0)
      {
        v9 = [achLocProvider2 achievedDescriptionForAchievement:achievement2];
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_11;
  }

  if (!achLocProvider)
  {
    goto LABEL_8;
  }

  achievement = [(AAUIAchievementFormatter *)self achievement];
  unearned2 = [achievement unearned];
  achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];
  achievement2 = [(AAUIAchievementFormatter *)self achievement];
  if (unearned2)
  {
LABEL_7:
    v9 = [achLocProvider2 unachievedDescriptionForAchievement:achievement2];
    goto LABEL_10;
  }

  v9 = [achLocProvider2 friendAchievedDescriptionForAchievement:achievement2];
LABEL_10:
  v11 = v9;

LABEL_11:
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  descriptionAttributes = [(AAUIAchievementFormatter *)self descriptionAttributes];
  v14 = [v12 initWithString:v11 attributes:descriptionAttributes];

  return v14;
}

- (BOOL)shouldShowEarnedShortDescription
{
  achievement = [(AAUIAchievementFormatter *)self achievement];
  relevantEarnedInstance = [achievement relevantEarnedInstance];
  if (relevantEarnedInstance)
  {
    template = [achievement template];
    earnLimit = [template earnLimit];

    if (earnLimit != 1)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      earnedDateComponents = [relevantEarnedInstance earnedDateComponents];
      v8 = [currentCalendar dateFromComponents:earnedDateComponents];

      currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = [currentCalendar2 isDateInToday:v8];

      progress = [achievement progress];

      progress2 = [achievement progress];
      goal = [achievement goal];
      v14 = [progress2 compare:goal];

      v16 = v14 != -1 || progress == 0;
      LOBYTE(earnLimit) = v16 | v10;
    }
  }

  else
  {
    LOBYTE(earnLimit) = 0;
  }

  return earnLimit & 1;
}

- (id)localizedAttributedShortDescriptionString
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (![(AAUIAchievementFormatter *)self style])
  {
    v15 = 0;
    goto LABEL_18;
  }

  achievement = [(AAUIAchievementFormatter *)self achievement];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  fu_systemTextGreyColor = [MEMORY[0x277D75348] fu_systemTextGreyColor];
  achLocProvider = [(AAUIAchievementFormatter *)self achLocProvider];

  if (!achLocProvider || (-[AAUIAchievementFormatter achLocProvider](self, "achLocProvider"), v7 = objc_claimAutoreleasedReturnValue(), [v7 titleForAchievement:achievement], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringByReplacingOccurrencesOfString:withString:", @"\n", @" "), uniqueName = objc_claimAutoreleasedReturnValue(), v8, v7, !uniqueName))
  {
    template = [achievement template];
    uniqueName = [template uniqueName];
  }

  shouldShowEarnedShortDescription = [(AAUIAchievementFormatter *)self shouldShowEarnedShortDescription];
  achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (!shouldShowEarnedShortDescription)
  {
    if (achLocProvider2)
    {
      achLocProvider3 = [(AAUIAchievementFormatter *)self achLocProvider];
      v14 = [achLocProvider3 unachievedShortDescriptionForAchievement:achievement];
      goto LABEL_11;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  if (!achLocProvider2)
  {
    goto LABEL_12;
  }

  achLocProvider3 = [(AAUIAchievementFormatter *)self achLocProvider];
  v14 = [achLocProvider3 achievedShortDescriptionForAchievement:achievement];
LABEL_11:
  v16 = v14;

LABEL_13:
  v27 = achievement;
  if ([v16 length])
  {
    v17 = [uniqueName stringByAppendingString:{@"\n", achievement}];

    uniqueName = v17;
  }

  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76940], v27}];
  v19 = objc_alloc(MEMORY[0x277CCAB48]);
  v20 = *MEMORY[0x277D740A8];
  v21 = *MEMORY[0x277D740C0];
  v31[0] = *MEMORY[0x277D740A8];
  v31[1] = v21;
  v32[0] = v18;
  v32[1] = whiteColor;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v15 = [v19 initWithString:uniqueName attributes:v22];

  if ([v16 length])
  {
    v23 = objc_alloc(MEMORY[0x277CCA898]);
    v29[0] = v20;
    v29[1] = v21;
    v30[0] = v18;
    v30[1] = fu_systemTextGreyColor;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v25 = [v23 initWithString:v16 attributes:v24];
    [v15 appendAttributedString:v25];
  }

LABEL_18:

  return v15;
}

- (id)achLocalizedAttributedBacksideStringWithDateSizeVariant:(int64_t)variant
{
  style = [(AAUIAchievementFormatter *)self style];
  if (style == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (style != 1);
  }

  achievement = [(AAUIAchievementFormatter *)self achievement];
  unearned = [achievement unearned];

  achLocProvider = [(AAUIAchievementFormatter *)self achLocProvider];

  if (unearned)
  {
    if (!achLocProvider)
    {
      goto LABEL_11;
    }

    achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];
    achievement2 = [(AAUIAchievementFormatter *)self achievement];
    v12 = [achLocProvider2 unachievedAlertBackDescriptionForAchievement:achievement2];
  }

  else
  {
    if (!achLocProvider)
    {
      goto LABEL_11;
    }

    achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];
    achievement2 = [(AAUIAchievementFormatter *)self achievement];
    v12 = [achLocProvider2 achievedAlertBackDescriptionForAchievement:achievement2 sizeVariant:v6 dateSizeVariant:variant];
  }

  v13 = v12;

  if (v13)
  {
    localizedUppercaseString = [v13 localizedUppercaseString];

    v15 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = [(AAUIAchievementFormatter *)self achBacksideAttributesWithSizeVariant:v6];
    v17 = [v15 initWithString:localizedUppercaseString attributes:v16];

    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:

  return v17;
}

- (id)localizedAttributedBacksideStringWithDateSizeVariant:(int64_t)variant
{
  style = [(AAUIAchievementFormatter *)self style];
  if (style == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (style != 1);
  }

  achievement = [(AAUIAchievementFormatter *)self achievement];
  unearned = [achievement unearned];

  achLocProvider = [(AAUIAchievementFormatter *)self achLocProvider];

  if (unearned)
  {
    if (!achLocProvider)
    {
      goto LABEL_11;
    }

    achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];
    achievement2 = [(AAUIAchievementFormatter *)self achievement];
    v12 = [achLocProvider2 unachievedAlertBackDescriptionForAchievement:achievement2];
  }

  else
  {
    if (!achLocProvider)
    {
      goto LABEL_11;
    }

    achLocProvider2 = [(AAUIAchievementFormatter *)self achLocProvider];
    achievement2 = [(AAUIAchievementFormatter *)self achievement];
    v12 = [achLocProvider2 achievedAlertBackDescriptionForAchievement:achievement2 sizeVariant:v6 dateSizeVariant:variant];
  }

  v13 = v12;

  if (v13)
  {
    localizedUppercaseString = [v13 localizedUppercaseString];

    v15 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = [(AAUIAchievementFormatter *)self backsideAttributesWithSizeVariant:v6];
    v17 = [v15 initWithString:localizedUppercaseString attributes:v16];

    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:

  return v17;
}

- (id)localizedAttributedBacksideString
{
  achLocProvider = [(AAUIAchievementFormatter *)self achLocProvider];

  if (achLocProvider)
  {
    v4 = [(AAUIAchievementFormatter *)self achLocalizedAttributedBacksideStringWithDateSizeVariant:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)localizedAttributedShortenedBacksideString
{
  achLocProvider = [(AAUIAchievementFormatter *)self achLocProvider];

  if (achLocProvider)
  {
    v4 = [(AAUIAchievementFormatter *)self achLocalizedAttributedBacksideStringWithDateSizeVariant:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)localizedAttributedCombinedStringShowingProgress:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 achievement];
  v4 = [v3 template];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_23E4A3000, a2, OS_LOG_TYPE_ERROR, "Unexpectedly found nil title string; falling back to empty string for achievement:\n%@", &v5, 0xCu);
}

@end