@interface VoiceOverKeyboardPhoneticFeedbackController
+ (id)phoneticFeedbackShortStringDescription:(int64_t)a3;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation VoiceOverKeyboardPhoneticFeedbackController

- (id)actionDetailControllerDelegate
{
  v2 = [(VoiceOverKeyboardPhoneticFeedbackController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"VoiceOverKeyboardPhoneticFeedbackDelegateKey"];

  return v4;
}

- (id)specifiers
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v23 = *MEMORY[0x277D3FC48];
    v22 = [MEMORY[0x277CBEB18] array];
    v4 = [(VoiceOverKeyboardPhoneticFeedbackController *)self actionDetailControllerDelegate];
    v5 = [v4 selectedPhoneticFeedback];

    v6 = [MEMORY[0x277CBEB18] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = self;
    obj = [(VoiceOverKeyboardPhoneticFeedbackController *)self _phoneticFeedbackArray];
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v27;
      v11 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = +[VoiceOverKeyboardPhoneticFeedbackController phoneticFeedbackShortStringDescription:](VoiceOverKeyboardPhoneticFeedbackController, "phoneticFeedbackShortStringDescription:", [v13 integerValue]);
          v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          [v15 setProperty:v13 forKey:v11];
          if ([v13 isEqualToNumber:v5])
          {
            v16 = v15;

            v9 = v16;
          }

          [v6 addObject:v15];
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if ([v6 count])
    {
      v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v24 set:0 get:0 detail:0 cell:0 edit:0];
      [v17 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [v22 addObject:v17];
      if (v9)
      {
        [v17 setProperty:v9 forKey:*MEMORY[0x277D40090]];
      }

      [v22 addObjectsFromArray:v6];
    }

    v18 = [v22 copy];
    v19 = *(&v24->super.super.super.super.super.super.isa + v23);
    *(&v24->super.super.super.super.super.super.isa + v23) = v18;

    v3 = *(&v24->super.super.super.super.super.super.isa + v23);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = VoiceOverKeyboardPhoneticFeedbackController;
  v6 = a4;
  [(VoiceOverKeyboardPhoneticFeedbackController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(VoiceOverKeyboardPhoneticFeedbackController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];
  v8 = [(VoiceOverKeyboardPhoneticFeedbackController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(VoiceOverKeyboardPhoneticFeedbackController *)self specifierAtIndex:[(VoiceOverKeyboardPhoneticFeedbackController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [(VoiceOverKeyboardPhoneticFeedbackController *)self actionDetailControllerDelegate];
      [v15 setPhoneticFeedback:v14];

      [(VoiceOverKeyboardPhoneticFeedbackController *)self reloadSpecifiers];
    }
  }
}

+ (id)phoneticFeedbackShortStringDescription:(int64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_278B90C10[a3], @"VoiceOverSettings");
  }

  return v4;
}

@end