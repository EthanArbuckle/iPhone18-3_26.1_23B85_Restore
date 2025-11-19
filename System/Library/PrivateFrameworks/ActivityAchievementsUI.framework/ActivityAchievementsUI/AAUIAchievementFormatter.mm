@interface AAUIAchievementFormatter
- (AAUIAchievementFormatter)initWithStyle:(int64_t)a3 achievement:(id)a4 achLocalizationProvider:(id)a5;
- (BOOL)shouldShowEarnedShortDescription;
- (id)achBacksideAttributesWithSizeVariant:(int64_t)a3;
- (id)achLocalizedAttributedBacksideStringWithDateSizeVariant:(int64_t)a3;
- (id)backsideAttributesWithSizeVariant:(int64_t)a3;
- (id)descriptionAttributes;
- (id)localizedAttributedBacksideString;
- (id)localizedAttributedBacksideStringWithDateSizeVariant:(int64_t)a3;
- (id)localizedAttributedCombinedStringShowingProgress:(BOOL)a3;
- (id)localizedAttributedDescriptionString;
- (id)localizedAttributedShortDescriptionString;
- (id)localizedAttributedShortenedBacksideString;
- (id)localizedAttributedTitleString;
- (id)titleAttributes;
@end

@implementation AAUIAchievementFormatter

- (AAUIAchievementFormatter)initWithStyle:(int64_t)a3 achievement:(id)a4 achLocalizationProvider:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AAUIAchievementFormatter;
  v11 = [(AAUIAchievementFormatter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_achievement, a4);
    objc_storeStrong(&v12->_achLocProvider, a5);
    v12->_style = a3;
  }

  return v12;
}

- (id)titleAttributes
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = [(AAUIAchievementFormatter *)self style];
  if (v2 == 2)
  {
    v3 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74420]];
    v4 = [MEMORY[0x277D75348] whiteColor];
    v16 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v17 = [v16 mutableCopy];

    [v17 setAlignment:1];
    v5 = [v17 copy];
  }

  else if (v2 == 1)
  {
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968]];
    [v6 pointSize];
    v8 = v7;
    v9 = [v6 symbolicTraits];
    v25 = *MEMORY[0x277D74380];
    v23 = *MEMORY[0x277D743B0];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9 | 2u];
    v24 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v13 = [v6 fontDescriptorByAddingAttributes:v12];

    v3 = [MEMORY[0x277D74300] fontWithDescriptor:v13 size:v8];
    v4 = [MEMORY[0x277D75348] whiteColor];
    v14 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v15 = [v14 mutableCopy];

    [v15 setAlignment:1];
    v5 = [v15 copy];
  }

  else if (v2)
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    v4 = [MEMORY[0x277D75348] whiteColor];
    v5 = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v18 = *MEMORY[0x277D740C0];
  v21[0] = *MEMORY[0x277D740A8];
  v21[1] = v18;
  v22[0] = v3;
  v22[1] = v4;
  v21[2] = *MEMORY[0x277D74118];
  v22[2] = v5;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  return v19;
}

- (id)descriptionAttributes
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [(AAUIAchievementFormatter *)self style];
  switch(v2)
  {
    case 2:
      v3 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
      v8 = [MEMORY[0x277D75348] whiteColor];
      goto LABEL_7;
    case 1:
      v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      v8 = [MEMORY[0x277D75348] fu_systemTextGreyColor];
LABEL_7:
      v4 = v8;
      v9 = [MEMORY[0x277D74248] defaultParagraphStyle];
      v6 = [v9 mutableCopy];

      [v6 setAlignment:1];
      goto LABEL_8;
    case 0:
      v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v4 = [MEMORY[0x277D75348] _vibrantLightFillBurnColor];
      v5 = [MEMORY[0x277D74248] defaultParagraphStyle];
      v6 = [v5 mutableCopy];

      LODWORD(v7) = 1057803469;
      [v6 setHyphenationFactor:v7];
LABEL_8:
      v10 = [v6 copy];

      goto LABEL_10;
  }

  v10 = 0;
  v4 = 0;
  v3 = 0;
LABEL_10:
  v11 = *MEMORY[0x277D740C0];
  v14[0] = *MEMORY[0x277D740A8];
  v14[1] = v11;
  v15[0] = v3;
  v15[1] = v4;
  v14[2] = *MEMORY[0x277D74118];
  v15[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (id)backsideAttributesWithSizeVariant:(int64_t)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v5 = [v4 mutableCopy];

  [v5 setAlignment:1];
  [v5 setLineHeightMultiple:0.95];
  v6 = 0.0;
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  if (a3 <= 2)
  {
    v6 = dbl_23E4DFB60[a3];
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

- (id)achBacksideAttributesWithSizeVariant:(int64_t)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v5 = [v4 mutableCopy];

  [v5 setAlignment:1];
  [v5 setLineHeightMultiple:0.95];
  v6 = 0.0;
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  if (a3 <= 2)
  {
    v6 = dbl_23E4DFB60[a3];
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

- (id)localizedAttributedCombinedStringShowingProgress:(BOOL)a3
{
  v3 = a3;
  if ([(AAUIAchievementFormatter *)self formatsForFriend])
  {
    v5 = [(AAUIAchievementFormatter *)self achLocProvider];

    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = [(AAUIAchievementFormatter *)self achievement];
    v7 = [v6 unearned];
    v8 = [(AAUIAchievementFormatter *)self achLocProvider];
    v9 = [(AAUIAchievementFormatter *)self achievement];
    if (v7)
    {
      [v8 unachievedDescriptionForAchievement:v9];
    }

    else
    {
      [v8 friendAchievedDescriptionForAchievement:v9];
    }
    v5 = ;

    goto LABEL_16;
  }

  v10 = [(AAUIAchievementFormatter *)self achievement];
  v11 = [v10 unearned];

  v12 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (v11)
  {
    if (v12)
    {
      v6 = [(AAUIAchievementFormatter *)self achLocProvider];
      v8 = [(AAUIAchievementFormatter *)self achievement];
      v13 = [v6 unachievedDescriptionForAchievement:v8];
LABEL_15:
      v5 = v13;
LABEL_16:

      goto LABEL_18;
    }
  }

  else if (v3)
  {
    if (v12)
    {
      v6 = [(AAUIAchievementFormatter *)self achLocProvider];
      v8 = [(AAUIAchievementFormatter *)self achievement];
      v13 = [v6 achievedDescriptionForAchievement:v8];
      goto LABEL_15;
    }
  }

  else if (v12)
  {
    v6 = [(AAUIAchievementFormatter *)self achLocProvider];
    v8 = [(AAUIAchievementFormatter *)self achievement];
    v13 = [v6 achievedAlertDescriptionForAchievement:v8 fitnessExperienceType:1];
    goto LABEL_15;
  }

  v5 = 0;
LABEL_18:
  v14 = [(AAUIAchievementFormatter *)self formatsForFriend];
  v15 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (v14)
  {
    if (v15)
    {
      v16 = [(AAUIAchievementFormatter *)self achLocProvider];
      v17 = [(AAUIAchievementFormatter *)self achievement];
      v18 = [v16 friendAchievedTitleForAchievement:v17];
      goto LABEL_23;
    }
  }

  else if (v15)
  {
    v16 = [(AAUIAchievementFormatter *)self achLocProvider];
    v17 = [(AAUIAchievementFormatter *)self achievement];
    v18 = [v16 titleForAchievement:v17];
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

    v22 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v19 = v21;
    v5 = v22;
  }

  if (v5)
  {
    v23 = [(__CFString *)v19 stringByAppendingString:@"\n"];

    v19 = v23;
  }

  v24 = objc_alloc(MEMORY[0x277CCAB48]);
  v25 = [(AAUIAchievementFormatter *)self titleAttributes];
  v26 = [v24 initWithString:v19 attributes:v25];

  if (v5)
  {
    v27 = objc_alloc(MEMORY[0x277CCA898]);
    v28 = [(AAUIAchievementFormatter *)self descriptionAttributes];
    v29 = [v27 initWithString:v5 attributes:v28];
    [v26 appendAttributedString:v29];
  }

  v30 = [v26 copy];

  return v30;
}

- (id)localizedAttributedTitleString
{
  v3 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (v3)
  {
    v4 = [(AAUIAchievementFormatter *)self achLocProvider];
    v5 = [(AAUIAchievementFormatter *)self achievement];
    v3 = [v4 titleForAchievement:v5];
  }

  v6 = objc_alloc(MEMORY[0x277CCA898]);
  v7 = [(AAUIAchievementFormatter *)self titleAttributes];
  v8 = [v6 initWithString:v3 attributes:v7];

  return v8;
}

- (id)localizedAttributedDescriptionString
{
  v3 = [(AAUIAchievementFormatter *)self formatsForFriend];
  v4 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (!v3)
  {
    if (v4)
    {
      v5 = [(AAUIAchievementFormatter *)self achievement];
      v10 = [v5 unearned];
      v7 = [(AAUIAchievementFormatter *)self achLocProvider];
      v8 = [(AAUIAchievementFormatter *)self achievement];
      if ((v10 & 1) == 0)
      {
        v9 = [v7 achievedDescriptionForAchievement:v8];
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [(AAUIAchievementFormatter *)self achievement];
  v6 = [v5 unearned];
  v7 = [(AAUIAchievementFormatter *)self achLocProvider];
  v8 = [(AAUIAchievementFormatter *)self achievement];
  if (v6)
  {
LABEL_7:
    v9 = [v7 unachievedDescriptionForAchievement:v8];
    goto LABEL_10;
  }

  v9 = [v7 friendAchievedDescriptionForAchievement:v8];
LABEL_10:
  v11 = v9;

LABEL_11:
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = [(AAUIAchievementFormatter *)self descriptionAttributes];
  v14 = [v12 initWithString:v11 attributes:v13];

  return v14;
}

- (BOOL)shouldShowEarnedShortDescription
{
  v2 = [(AAUIAchievementFormatter *)self achievement];
  v3 = [v2 relevantEarnedInstance];
  if (v3)
  {
    v4 = [v2 template];
    v5 = [v4 earnLimit];

    if (v5 != 1)
    {
      v6 = [MEMORY[0x277CBEA80] currentCalendar];
      v7 = [v3 earnedDateComponents];
      v8 = [v6 dateFromComponents:v7];

      v9 = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = [v9 isDateInToday:v8];

      v11 = [v2 progress];

      v12 = [v2 progress];
      v13 = [v2 goal];
      v14 = [v12 compare:v13];

      v16 = v14 != -1 || v11 == 0;
      LOBYTE(v5) = v16 | v10;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (id)localizedAttributedShortDescriptionString
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (![(AAUIAchievementFormatter *)self style])
  {
    v15 = 0;
    goto LABEL_18;
  }

  v3 = [(AAUIAchievementFormatter *)self achievement];
  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = [MEMORY[0x277D75348] fu_systemTextGreyColor];
  v6 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (!v6 || (-[AAUIAchievementFormatter achLocProvider](self, "achLocProvider"), v7 = objc_claimAutoreleasedReturnValue(), [v7 titleForAchievement:v3], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringByReplacingOccurrencesOfString:withString:", @"\n", @" "), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, !v9))
  {
    v10 = [v3 template];
    v9 = [v10 uniqueName];
  }

  v11 = [(AAUIAchievementFormatter *)self shouldShowEarnedShortDescription];
  v12 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (!v11)
  {
    if (v12)
    {
      v13 = [(AAUIAchievementFormatter *)self achLocProvider];
      v14 = [v13 unachievedShortDescriptionForAchievement:v3];
      goto LABEL_11;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = [(AAUIAchievementFormatter *)self achLocProvider];
  v14 = [v13 achievedShortDescriptionForAchievement:v3];
LABEL_11:
  v16 = v14;

LABEL_13:
  v27 = v3;
  if ([v16 length])
  {
    v17 = [v9 stringByAppendingString:{@"\n", v3}];

    v9 = v17;
  }

  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76940], v27}];
  v19 = objc_alloc(MEMORY[0x277CCAB48]);
  v20 = *MEMORY[0x277D740A8];
  v21 = *MEMORY[0x277D740C0];
  v31[0] = *MEMORY[0x277D740A8];
  v31[1] = v21;
  v32[0] = v18;
  v32[1] = v4;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v15 = [v19 initWithString:v9 attributes:v22];

  if ([v16 length])
  {
    v23 = objc_alloc(MEMORY[0x277CCA898]);
    v29[0] = v20;
    v29[1] = v21;
    v30[0] = v18;
    v30[1] = v5;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v25 = [v23 initWithString:v16 attributes:v24];
    [v15 appendAttributedString:v25];
  }

LABEL_18:

  return v15;
}

- (id)achLocalizedAttributedBacksideStringWithDateSizeVariant:(int64_t)a3
{
  v5 = [(AAUIAchievementFormatter *)self style];
  if (v5 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v5 != 1);
  }

  v7 = [(AAUIAchievementFormatter *)self achievement];
  v8 = [v7 unearned];

  v9 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (v8)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [(AAUIAchievementFormatter *)self achLocProvider];
    v11 = [(AAUIAchievementFormatter *)self achievement];
    v12 = [v10 unachievedAlertBackDescriptionForAchievement:v11];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [(AAUIAchievementFormatter *)self achLocProvider];
    v11 = [(AAUIAchievementFormatter *)self achievement];
    v12 = [v10 achievedAlertBackDescriptionForAchievement:v11 sizeVariant:v6 dateSizeVariant:a3];
  }

  v13 = v12;

  if (v13)
  {
    v14 = [v13 localizedUppercaseString];

    v15 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = [(AAUIAchievementFormatter *)self achBacksideAttributesWithSizeVariant:v6];
    v17 = [v15 initWithString:v14 attributes:v16];

    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:

  return v17;
}

- (id)localizedAttributedBacksideStringWithDateSizeVariant:(int64_t)a3
{
  v5 = [(AAUIAchievementFormatter *)self style];
  if (v5 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v5 != 1);
  }

  v7 = [(AAUIAchievementFormatter *)self achievement];
  v8 = [v7 unearned];

  v9 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (v8)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [(AAUIAchievementFormatter *)self achLocProvider];
    v11 = [(AAUIAchievementFormatter *)self achievement];
    v12 = [v10 unachievedAlertBackDescriptionForAchievement:v11];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [(AAUIAchievementFormatter *)self achLocProvider];
    v11 = [(AAUIAchievementFormatter *)self achievement];
    v12 = [v10 achievedAlertBackDescriptionForAchievement:v11 sizeVariant:v6 dateSizeVariant:a3];
  }

  v13 = v12;

  if (v13)
  {
    v14 = [v13 localizedUppercaseString];

    v15 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = [(AAUIAchievementFormatter *)self backsideAttributesWithSizeVariant:v6];
    v17 = [v15 initWithString:v14 attributes:v16];

    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:

  return v17;
}

- (id)localizedAttributedBacksideString
{
  v3 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (v3)
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
  v3 = [(AAUIAchievementFormatter *)self achLocProvider];

  if (v3)
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