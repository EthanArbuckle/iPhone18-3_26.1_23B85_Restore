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
  v9 = [v6 languageCode];
  v10 = [v8 if_currentCalendarWithLanguageCode:v9];

  v11 = v7;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v11 format] == 1)
    {
      v12 = objc_alloc_init(MEMORY[0x1E696AB70]);
      [v12 setCalendar:v10];
      [v12 setUnitsStyle:2];
      v13 = [v11 type];
      if (v13 <= 2)
      {
        [v12 setAllowedUnits:qword_18EE5E4F0[v13]];
      }

      v14 = [v12 stringFromDateComponents:a1];
    }

    else
    {
      v15 = [MEMORY[0x1E695DEE8] currentCalendar];
      v12 = [v15 dateFromComponents:a1];

      v16 = [a1 timeZone];
      v14 = [v12 _intents_readableTitleWithLocalizer:v6 metadata:v11 timeZone:v16];
    }
  }

  else
  {

    v14 = [MEMORY[0x1E696AB70] localizedStringFromDateComponents:a1 unitsStyle:0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

@end