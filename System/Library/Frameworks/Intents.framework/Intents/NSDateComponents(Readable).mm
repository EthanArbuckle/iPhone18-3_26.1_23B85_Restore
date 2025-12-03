@interface NSDateComponents(Readable)
- (id)_intents_readableTitleWithLocalizer:()Readable metadata:;
@end

@implementation NSDateComponents(Readable)

- (id)_intents_readableTitleWithLocalizer:()Readable metadata:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DEE8];
  languageCode = [v6 languageCode];
  v10 = [v8 if_currentCalendarWithLanguageCode:languageCode];

  v11 = v7;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v11 format] == 1)
    {
      v12 = objc_alloc_init(MEMORY[0x1E696AB70]);
      [v12 setCalendar:v10];
      [v12 setUnitsStyle:2];
      type = [v11 type];
      if (type <= 2)
      {
        [v12 setAllowedUnits:qword_18EE5E4F0[type]];
      }

      v14 = [v12 stringFromDateComponents:self];
    }

    else
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v12 = [currentCalendar dateFromComponents:self];

      timeZone = [self timeZone];
      v14 = [v12 _intents_readableTitleWithLocalizer:v6 metadata:v11 timeZone:timeZone];
    }
  }

  else
  {

    v14 = [MEMORY[0x1E696AB70] localizedStringFromDateComponents:self unitsStyle:0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

@end