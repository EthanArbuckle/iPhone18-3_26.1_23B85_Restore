@interface EKRecurrenceHelper
- (BOOL)isEqual:(id)a3;
- (EKRecurrenceHelper)initWithSpecifier:(id)a3;
- (NSArray)daysOfTheMonth;
- (NSArray)daysOfTheWeek;
- (NSArray)daysOfTheYear;
- (NSArray)monthsOfTheYear;
- (NSArray)setPositions;
- (NSArray)weeksOfTheYear;
- (NSString)specifier;
- (id)_parseDaysOfWeek:(id *)a3 range:(id)a4;
- (id)_parseIndexList:(id *)a3 range:(id)a4;
- (void)_appendDaysOfTheWeek:(id)a3 toSpecifier:(id)a4;
- (void)_appendIndexList:(id)a3 toSpecifier:(id)a4 propertyKey:(unsigned __int16)a5;
- (void)_clearArrays;
- (void)_parseSpecifierIfNeeded;
- (void)_updateSpecifier;
- (void)revert;
- (void)setDaysOfTheMonth:(id)a3;
- (void)setDaysOfTheWeek:(id)a3;
- (void)setDaysOfTheYear:(id)a3;
- (void)setMonthsOfTheYear:(id)a3;
- (void)setSetPositions:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)setWeeksOfTheYear:(id)a3;
@end

@implementation EKRecurrenceHelper

- (EKRecurrenceHelper)initWithSpecifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EKRecurrenceHelper;
  v5 = [(EKRecurrenceHelper *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    specifier = v5->_specifier;
    v5->_specifier = v6;
  }

  return v5;
}

- (void)revert
{
  specifier = self->_specifier;
  self->_specifier = 0;

  daysOfTheWeek = self->_daysOfTheWeek;
  self->_daysOfTheWeek = 0;

  daysOfTheMonth = self->_daysOfTheMonth;
  self->_daysOfTheMonth = 0;

  daysOfTheYear = self->_daysOfTheYear;
  self->_daysOfTheYear = 0;

  weeksOfTheYear = self->_weeksOfTheYear;
  self->_weeksOfTheYear = 0;

  monthsOfTheYear = self->_monthsOfTheYear;
  self->_monthsOfTheYear = 0;

  setPositions = self->_setPositions;
  self->_setPositions = 0;

  *&self->_dirty = 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(EKRecurrenceHelper *)self specifier];
    v6 = [v4 specifier];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(EKRecurrenceHelper *)self specifier];
      v8 = [v4 specifier];
      v9 = [v7 isEqualToString:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)specifier
{
  if (self->_dirty)
  {
    [(EKRecurrenceHelper *)self _updateSpecifier];
  }

  v3 = [(NSString *)self->_specifier copy];

  return v3;
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_specifier != v4)
  {
    v8 = v4;
    if (!v4 || (v4 = [v4 isEqualToString:?], v5 = v8, (v4 & 1) == 0))
    {
      *&self->_dirty = 0;
      [(EKRecurrenceHelper *)self _clearArrays];
      v6 = [v8 copy];
      specifier = self->_specifier;
      self->_specifier = v6;

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (NSArray)daysOfTheWeek
{
  [(EKRecurrenceHelper *)self _parseSpecifierIfNeeded];
  v3 = [(NSArray *)self->_daysOfTheWeek copy];

  return v3;
}

- (void)setDaysOfTheWeek:(id)a3
{
  v8 = a3;
  v4 = [(EKRecurrenceHelper *)self daysOfTheWeek];

  v5 = v8;
  if (v4 != v8)
  {
    v6 = [v8 copy];
    daysOfTheWeek = self->_daysOfTheWeek;
    self->_daysOfTheWeek = v6;

    v5 = v8;
    self->_dirty = 1;
  }
}

- (NSArray)daysOfTheMonth
{
  [(EKRecurrenceHelper *)self _parseSpecifierIfNeeded];
  v3 = [(NSArray *)self->_daysOfTheMonth copy];

  return v3;
}

- (void)setDaysOfTheMonth:(id)a3
{
  v8 = a3;
  v4 = [(EKRecurrenceHelper *)self daysOfTheMonth];

  v5 = v8;
  if (v4 != v8)
  {
    v6 = [v8 copy];
    daysOfTheMonth = self->_daysOfTheMonth;
    self->_daysOfTheMonth = v6;

    v5 = v8;
    self->_dirty = 1;
  }
}

- (NSArray)daysOfTheYear
{
  [(EKRecurrenceHelper *)self _parseSpecifierIfNeeded];
  v3 = [(NSArray *)self->_daysOfTheYear copy];

  return v3;
}

- (void)setDaysOfTheYear:(id)a3
{
  v8 = a3;
  v4 = [(EKRecurrenceHelper *)self daysOfTheYear];

  v5 = v8;
  if (v4 != v8)
  {
    v6 = [v8 copy];
    daysOfTheYear = self->_daysOfTheYear;
    self->_daysOfTheYear = v6;

    v5 = v8;
    self->_dirty = 1;
  }
}

- (NSArray)weeksOfTheYear
{
  [(EKRecurrenceHelper *)self _parseSpecifierIfNeeded];
  v3 = [(NSArray *)self->_weeksOfTheYear copy];

  return v3;
}

- (void)setWeeksOfTheYear:(id)a3
{
  v8 = a3;
  v4 = [(EKRecurrenceHelper *)self weeksOfTheYear];

  v5 = v8;
  if (v4 != v8)
  {
    v6 = [v8 copy];
    weeksOfTheYear = self->_weeksOfTheYear;
    self->_weeksOfTheYear = v6;

    v5 = v8;
    self->_dirty = 1;
  }
}

- (NSArray)monthsOfTheYear
{
  [(EKRecurrenceHelper *)self _parseSpecifierIfNeeded];
  v3 = [(NSArray *)self->_monthsOfTheYear copy];

  return v3;
}

- (void)setMonthsOfTheYear:(id)a3
{
  v8 = a3;
  v4 = [(EKRecurrenceHelper *)self monthsOfTheYear];

  v5 = v8;
  if (v4 != v8)
  {
    v6 = [v8 copy];
    monthsOfTheYear = self->_monthsOfTheYear;
    self->_monthsOfTheYear = v6;

    v5 = v8;
    self->_dirty = 1;
  }
}

- (NSArray)setPositions
{
  [(EKRecurrenceHelper *)self _parseSpecifierIfNeeded];
  v3 = [(NSArray *)self->_setPositions copy];

  return v3;
}

- (void)setSetPositions:(id)a3
{
  v8 = a3;
  v4 = [(EKRecurrenceHelper *)self setPositions];

  v5 = v8;
  if (v4 != v8)
  {
    v6 = [v8 copy];
    setPositions = self->_setPositions;
    self->_setPositions = v6;

    v5 = v8;
    self->_dirty = 1;
  }
}

- (void)_clearArrays
{
  daysOfTheWeek = self->_daysOfTheWeek;
  self->_daysOfTheWeek = 0;

  daysOfTheMonth = self->_daysOfTheMonth;
  self->_daysOfTheMonth = 0;

  daysOfTheYear = self->_daysOfTheYear;
  self->_daysOfTheYear = 0;

  weeksOfTheYear = self->_weeksOfTheYear;
  self->_weeksOfTheYear = 0;

  monthsOfTheYear = self->_monthsOfTheYear;
  self->_monthsOfTheYear = 0;

  setPositions = self->_setPositions;
  self->_setPositions = 0;
}

- (void)_updateSpecifier
{
  v7 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
  if ([(NSArray *)self->_daysOfTheWeek count])
  {
    [(EKRecurrenceHelper *)self _appendDaysOfTheWeek:self->_daysOfTheWeek toSpecifier:v7];
  }

  if ([(NSArray *)self->_daysOfTheMonth count])
  {
    [(EKRecurrenceHelper *)self _appendIndexList:self->_daysOfTheMonth toSpecifier:v7 propertyKey:77];
  }

  if ([(NSArray *)self->_daysOfTheYear count])
  {
    [(EKRecurrenceHelper *)self _appendIndexList:self->_daysOfTheYear toSpecifier:v7 propertyKey:89];
  }

  if ([(NSArray *)self->_weeksOfTheYear count])
  {
    [(EKRecurrenceHelper *)self _appendIndexList:self->_weeksOfTheYear toSpecifier:v7 propertyKey:87];
  }

  if ([(NSArray *)self->_monthsOfTheYear count])
  {
    [(EKRecurrenceHelper *)self _appendIndexList:self->_monthsOfTheYear toSpecifier:v7 propertyKey:79];
  }

  v3 = [(NSArray *)self->_setPositions count];
  v4 = v7;
  if (v3)
  {
    [(EKRecurrenceHelper *)self _appendIndexList:self->_setPositions toSpecifier:v7 propertyKey:83];
    v4 = v7;
  }

  v5 = [v4 copy];
  specifier = self->_specifier;
  self->_specifier = v5;

  *&self->_dirty = 256;
}

- (void)_parseSpecifierIfNeeded
{
  if (!self->_parsed)
  {
    v2 = self;
    [(EKRecurrenceHelper *)self _clearArrays];
    v3 = [(NSString *)v2->_specifier length];
    if (v3)
    {
      v4 = v3;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *buffer = 0u;
      v42 = 0u;
      specifier = v2->_specifier;
      theString = specifier;
      v52 = 0;
      v53 = v3;
      CharactersPtr = CFStringGetCharactersPtr(specifier);
      CStringPtr = 0;
      v50 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(specifier, 0x600u);
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v54 = 0;
      v55 = 0;
      v51 = CStringPtr;
      v40 = v2;
      do
      {
        if (v8 < 0 || (v11 = v53, v53 <= v8))
        {
          v12 = 0;
          goto LABEL_11;
        }

        if (v50)
        {
          v12 = v50[v52 + v8];
        }

        else if (v51)
        {
          v12 = v51[v52 + v8];
        }

        else
        {
          if (v55 <= v8 || (v13 = v54, v54 > v8))
          {
            v14 = v8 - 4;
            if (v8 < 4)
            {
              v14 = 0;
            }

            if (v14 + 64 < v53)
            {
              v11 = v14 + 64;
            }

            v54 = v14;
            v55 = v11;
            v56.length = v11 - v14;
            v56.location = v52 + v14;
            CFStringGetCharacters(theString, v56, buffer);
            v13 = v54;
          }

          v12 = buffer[v8 - v13];
        }

        if (v12 == 61)
        {
          if (v8 - v9 != 1 && v8 - v9 < 3)
          {
            v16 = 0;
          }

          else
          {
            v16 = v10;
          }

          v17 = v8 + 1;
          if (v8 + 1 >= v4)
          {
            v12 = 61;
            ++v8;
            goto LABEL_59;
          }

          v18 = ~v8;
          v19 = v8 + 65;
          v20 = v8 + 1;
          while (1)
          {
            v21 = v8 + 1;
            if (v20 >= 4)
            {
              v22 = 4;
            }

            else
            {
              v22 = v20;
            }

            v23 = v53;
            if (v53 <= v21)
            {
              v12 = 0;
            }

            else
            {
              if (v50)
              {
                v12 = v50[v52 + 1 + v8];
              }

              else if (v51)
              {
                v12 = v51[v52 + 1 + v8];
              }

              else
              {
                v24 = v54;
                if (v55 <= v21 || v54 > v21)
                {
                  v26 = -v22;
                  v27 = v22 + v18;
                  v28 = v19 - v22;
                  v29 = v8 + v26;
                  v30 = v16;
                  v31 = v29 + 1;
                  v32 = v29 + 65;
                  if (v32 >= v53)
                  {
                    v32 = v53;
                  }

                  v54 = v31;
                  v55 = v32;
                  if (v53 >= v28)
                  {
                    v23 = v28;
                  }

                  v57.location = v31 + v52;
                  v57.length = v23 + v27;
                  CFStringGetCharacters(theString, v57, buffer);
                  v16 = v30;
                  v24 = v54;
                }

                v12 = buffer[v8 + 1 - v24];
              }

              if (v12 == 59)
              {
                ++v8;
                v12 = 59;
LABEL_58:
                v2 = v40;
LABEL_59:
                if (v16 > 0x52u)
                {
                  switch(v16)
                  {
                    case 'S':
                      v37 = [(EKRecurrenceHelper *)v2 _parseIndexList:buffer range:v17, v8 - v17];
                      setPositions = v2->_setPositions;
                      v2->_setPositions = v37;
                      break;
                    case 'W':
                      v39 = [(EKRecurrenceHelper *)v2 _parseIndexList:buffer range:v17, v8 - v17];
                      setPositions = v2->_weeksOfTheYear;
                      v2->_weeksOfTheYear = v39;
                      break;
                    case 'Y':
                      v35 = [(EKRecurrenceHelper *)v2 _parseIndexList:buffer range:v17, v8 - v17];
                      setPositions = v2->_daysOfTheYear;
                      v2->_daysOfTheYear = v35;
                      break;
                    default:
                      goto LABEL_73;
                  }
                }

                else
                {
                  switch(v16)
                  {
                    case 'D':
                      v36 = [(EKRecurrenceHelper *)v2 _parseDaysOfWeek:buffer range:v17, v8 - v17];
                      setPositions = v2->_daysOfTheWeek;
                      v2->_daysOfTheWeek = v36;
                      break;
                    case 'M':
                      v38 = [(EKRecurrenceHelper *)v2 _parseIndexList:buffer range:v17, v8 - v17];
                      setPositions = v2->_daysOfTheMonth;
                      v2->_daysOfTheMonth = v38;
                      break;
                    case 'O':
                      v33 = [(EKRecurrenceHelper *)v2 _parseIndexList:buffer range:v17, v8 - v17];
                      setPositions = v2->_monthsOfTheYear;
                      v2->_monthsOfTheYear = v33;
                      break;
                    default:
LABEL_73:
                      v10 = 0;
                      v9 = v8 + 1;
                      goto LABEL_11;
                  }
                }

                goto LABEL_73;
              }
            }

            ++v20;
            --v18;
            ++v19;
            ++v8;
            if (v4 - 1 == v21)
            {
              v8 = v4;
              goto LABEL_58;
            }
          }
        }

LABEL_11:
        if (((++v8 - v9) | 2) == 3)
        {
          v10 = v12;
        }
      }

      while (v8 < v4);
    }

    v2->_parsed = 1;
  }
}

- (void)_appendDaysOfTheWeek:(id)a3 toSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 68;
  if ([v6 length])
  {
    [v6 appendString:@";"];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v15 length:1];
  [v6 appendString:v7];

  [v6 appendString:@"="];
  v8 = [v5 count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [v5 objectAtIndex:i];
      v12 = v11;
      if (i)
      {
        v13 = @",%s%ld%s";
      }

      else
      {
        v13 = @"%s%ld%s";
      }

      if ([v11 weekNumber] <= 0)
      {
        v14 = "";
      }

      else
      {
        v14 = "+";
      }

      [v6 appendFormat:v13, v14, objc_msgSend(v12, "weekNumber"), __CalDayStrings[objc_msgSend(v12, "dayOfTheWeek")]];
    }
  }
}

- (void)_appendIndexList:(id)a3 toSpecifier:(id)a4 propertyKey:(unsigned __int16)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v17 = v5;
  if (v5)
  {
    if ([v8 length])
    {
      [v9 appendString:@";"];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v17 length:1];
    [v9 appendString:v10];

    [v9 appendString:@"="];
    v11 = [v7 count];
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = [v7 objectAtIndex:i];
        v15 = v14;
        if (i)
        {
          v16 = @",%d";
        }

        else
        {
          v16 = @"%d";
        }

        [v9 appendFormat:v16, objc_msgSend(v14, "intValue")];
      }
    }
  }
}

- (id)_parseDaysOfWeek:(id *)a3 range:(id)a4
{
  if (a4.var1 >= 1)
  {
    var0 = a4.var0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = a4.var0 + a4.var1;
    v10 = a4.var0 + a4.var1 - 1;
    v46 = &a3->var0[1];
    v47 = 0;
    while (1)
    {
      if (var0 < 0 || (var1 = a3->var4.var1, var1 <= var0))
      {
        v13 = 0;
      }

      else
      {
        var2 = a3->var2;
        if (var2)
        {
          v13 = var2[a3->var4.var0 + var0];
        }

        else
        {
          var3 = a3->var3;
          if (var3)
          {
            v13 = var3[a3->var4.var0 + var0];
          }

          else
          {
            if (a3->var6 <= var0 || (var5 = a3->var5, var5 > var0))
            {
              v42 = var0 - 4;
              if (var0 < 4)
              {
                v42 = 0;
              }

              if (v42 + 64 < var1)
              {
                var1 = v42 + 64;
              }

              a3->var5 = v42;
              a3->var6 = var1;
              v50.length = var1 - v42;
              v50.location = a3->var4.var0 + v42;
              CFStringGetCharacters(a3->var1, v50, a3->var0);
              var5 = a3->var5;
            }

            v13 = a3->var0[var0 - var5];
          }
        }

        if ((v13 - 48) <= 9u)
        {
          v8 = 10 * v8 + v13 - 48;
          v7 = 1;
          goto LABEL_62;
        }
      }

      if ((v7 & 1) != 0 || v13 > 0x2Du || ((1 << v13) & 0x280100000000) == 0)
      {
        v14 = var0 + 1;
        if (var0 < -1 || v14 >= v9 || (v15 = a3->var4.var1, v15 <= v14))
        {
          v18 = 0;
          v19 = v13 == 83;
        }

        else
        {
          v16 = a3->var2;
          if (v16)
          {
            v17 = v16[a3->var4.var0 + v14];
          }

          else
          {
            v40 = a3->var3;
            if (v40)
            {
              v17 = v40[a3->var4.var0 + v14];
            }

            else
            {
              if (a3->var6 <= v14 || (v43 = a3->var5, v43 > v14))
              {
                v44 = var0 - 3;
                if (v14 < 4)
                {
                  v44 = 0;
                }

                if (v44 + 64 < v15)
                {
                  v15 = v44 + 64;
                }

                a3->var5 = v44;
                a3->var6 = v15;
                v51.length = v15 - v44;
                v51.location = a3->var4.var0 + v44;
                CFStringGetCharacters(a3->var1, v51, a3->var0);
                v43 = a3->var5;
              }

              v17 = a3->var0[v14 - v43];
            }
          }

          if (v13 == 77 && v17 == 79)
          {
            v20 = 2;
            goto LABEL_19;
          }

          v18 = v17 == 85;
          if (v13 == 84 && v17 == 85)
          {
            v20 = 3;
            goto LABEL_19;
          }

          if (v13 == 87 && v17 == 69)
          {
            v20 = 4;
            goto LABEL_19;
          }

          if (v13 == 84 && v17 == 72)
          {
            v20 = 5;
            goto LABEL_19;
          }

          if (v13 == 70 && v17 == 82)
          {
            v20 = 6;
            goto LABEL_19;
          }

          v19 = v13 == 83;
          if (v13 == 83 && v17 == 65)
          {
            v20 = 7;
LABEL_19:
            if (v6)
            {
              v21 = -v8;
            }

            else
            {
              v21 = v8;
            }

            v22 = v47;
            if (!v47)
            {
              v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
            }

            v23 = [EKRecurrenceDayOfWeek dayOfWeek:v20 weekNumber:v21, v46];
            v47 = v22;
            [v22 addObject:v23];

            if (v14 >= v9)
            {
              v8 = 0;
              v7 = 0;
              v6 = 0;
              ++var0;
            }

            else
            {
              v24 = ~var0;
              v25 = var0 + 65;
              while (1)
              {
                v26 = var0 + 1;
                v27 = v14 >= 4 ? 4 : v14;
                if ((v26 & 0x8000000000000000) == 0)
                {
                  v28 = a3->var4.var1;
                  if (v28 > v26)
                  {
                    v29 = a3->var2;
                    if (v29)
                    {
                      v30 = v29[a3->var4.var0 + 1 + var0];
                    }

                    else
                    {
                      v31 = a3->var3;
                      if (v31)
                      {
                        v30 = v31[a3->var4.var0 + 1 + var0];
                      }

                      else
                      {
                        if (a3->var6 <= v26 || (v32 = a3->var5, v32 > v26))
                        {
                          v33 = -v27;
                          v34 = v27 + v24;
                          v35 = v25 - v27;
                          v36 = var0 + v33;
                          v37 = v36 + 1;
                          v38 = v36 + 65;
                          if (v38 >= v28)
                          {
                            v38 = a3->var4.var1;
                          }

                          a3->var5 = v37;
                          a3->var6 = v38;
                          if (v28 >= v35)
                          {
                            v28 = v35;
                          }

                          v49.location = v37 + a3->var4.var0;
                          v49.length = v28 + v34;
                          CFStringGetCharacters(a3->var1, v49, a3->var0);
                          v32 = a3->var5;
                        }

                        v30 = v46[var0 - v32];
                      }
                    }

                    if (v30 == 44)
                    {
                      break;
                    }
                  }
                }

                ++v14;
                --v24;
                ++v25;
                ++var0;
                if (v10 == v26)
                {
                  v8 = 0;
                  v7 = 0;
                  v6 = 0;
                  var0 = v9;
                  goto LABEL_62;
                }
              }

              v8 = 0;
              v7 = 0;
              v6 = 0;
              ++var0;
            }

            goto LABEL_62;
          }
        }

        v20 = v19 & v18;
        goto LABEL_19;
      }

      v7 = 0;
      v6 |= v13 == 45;
LABEL_62:
      if (++var0 >= v9)
      {
        goto LABEL_91;
      }
    }
  }

  v47 = 0;
LABEL_91:

  return v47;
}

- (id)_parseIndexList:(id *)a3 range:(id)a4
{
  if (a4.var1 < 1)
  {
    v6 = 0;
    goto LABEL_57;
  }

  var0 = a4.var0;
  v6 = 0;
  v7 = 0;
  LODWORD(v8) = 0;
  LOBYTE(v9) = 0;
  v10 = a4.var0 + a4.var1;
  v11 = -a4.var0;
  v12 = a4.var0 + 64;
  do
  {
    if (var0 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = var0;
    }

    if (var0 < 0 || (var1 = a3->var4.var1, var1 <= var0))
    {
      v17 = 0;
      goto LABEL_12;
    }

    var2 = a3->var2;
    if (var2)
    {
      v16 = &var2[a3->var4.var0];
LABEL_10:
      v17 = v16[var0];
      goto LABEL_32;
    }

    var3 = a3->var3;
    if (!var3)
    {
      if (a3->var6 <= var0 || (var5 = a3->var5, var5 > var0))
      {
        v29 = -v13;
        v30 = v13 + v11;
        v31 = v12 - v13;
        v32 = var0 + v29;
        v33 = v32 + 64;
        if (v32 + 64 >= var1)
        {
          v33 = a3->var4.var1;
        }

        a3->var5 = v32;
        a3->var6 = v33;
        if (var1 >= v31)
        {
          var1 = v31;
        }

        v38.location = v32 + a3->var4.var0;
        v38.length = var1 + v30;
        CFStringGetCharacters(a3->var1, v38, a3->var0);
        var5 = a3->var5;
      }

      v16 = &a3->var0[-var5];
      goto LABEL_10;
    }

    v17 = var3[a3->var4.var0 + var0];
LABEL_32:
    if (v17 != 44 || (v9 & 1) == 0)
    {
      if ((v17 - 48) <= 9u)
      {
        LODWORD(v8) = v17 + 10 * v8 - 48;
        v9 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      if (v7)
      {
        v8 = -v8;
      }

      else
      {
        v8 = v8;
      }

      if (!v6)
      {
        v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
      }

      [MEMORY[0x1E696AD98] numberWithInt:v8];
      v27 = v26 = v6;
      [v26 addObject:v27];

      v6 = v26;
      v17 = 44;
    }

LABEL_12:
    v18 = v17;
    v19 = 1 << v17;
    v20 = v7 | (v18 == 45);
    if ((v19 & 0x280100000000) != 0)
    {
      v21 = v8;
    }

    else
    {
      v21 = 0;
    }

    if ((v19 & 0x280100000000) == 0)
    {
      v20 = 0;
    }

    v22 = v18 > 0x2D;
    if (v18 <= 0x2D)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v20 = 0;
    }

    v24 = (v9 & 1) == 0;
    v9 = 0;
    if (v24)
    {
      LODWORD(v8) = v23;
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v24)
    {
      v7 = v20;
    }

    else
    {
      v7 = 0;
    }

LABEL_28:
    ++var0;
    --v11;
    ++v12;
  }

  while (var0 < v10);
  if (v9)
  {
    if (v7)
    {
      v34 = -v8;
    }

    else
    {
      v34 = v8;
    }

    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    }

    v35 = [MEMORY[0x1E696AD98] numberWithInt:v34];
    [v6 addObject:v35];
  }

LABEL_57:

  return v6;
}

@end