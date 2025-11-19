@interface MKDistanceFormatter
- (BOOL)_useMetric;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (CLLocationDistance)distanceFromString:(NSString *)distance;
- (MKDistanceFormatter)init;
- (MKDistanceFormatter)initWithCoder:(id)a3;
- (NSString)stringFromDistance:(CLLocationDistance)distance;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)stringForObjectValue:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLocale:(NSLocale *)locale;
@end

@implementation MKDistanceFormatter

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  [(MKDistanceFormatter *)self distanceFromString:a4];
  v8 = v7;
  if (v7 < 0.0)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a5)
    {
      v9 = _MKLocalizedStringFromThisBundle(@"Couldn't convert to distance");
      a3 = a5;
      goto LABEL_8;
    }
  }

  else if (a3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
LABEL_8:
    *a3 = v9;
  }

  return v8 >= 0.0;
}

- (CLLocationDistance)distanceFromString:(NSString *)distance
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = distance;
  v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v5 setLenient:1];
  v33[0] = 0;
  v33[1] = [(NSString *)v4 length];
  v31 = 0;
  v32 = 0;
  [v5 getObjectValue:&v32 forString:v4 range:v33 error:&v31];
  v6 = v32;
  v7 = v31;
  if (v6)
  {
    if ([(MKDistanceFormatter *)self _useMetric])
    {
      v8 = MNInstructionsLocalizedMetricUnits();
      MNInstructionsLocalizedImperialUnits();
    }

    else
    {
      v8 = MNInstructionsLocalizedImperialUnits();
      MNInstructionsLocalizedMetricUnits();
    }
    v10 = ;
    v11 = [v8 sortedArrayUsingComparator:&__block_literal_global_29395];

    v12 = [v10 sortedArrayUsingComparator:&__block_literal_global_29395];

    [v11 arrayByAddingObjectsFromArray:v12];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v30 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
    v9 = -1.0;
    if (v14)
    {
      v15 = v14;
      v23 = v12;
      v24 = v11;
      v25 = v7;
      v26 = v6;
      v16 = *v28;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v18 objectAtIndexedSubscript:{0, v23, v24, v25}];
          v20 = [v18 objectAtIndexedSubscript:1];
          [v20 integerValue];

          if ([(NSString *)v4 rangeOfString:v19 options:1]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 = v26;
            [v26 doubleValue];
            MNInstructionsDistanceTypeConvertToMeters();
            v9 = v21;

            goto LABEL_16;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v6 = v26;
LABEL_16:
      v11 = v24;
      v7 = v25;
      v12 = v23;
    }
  }

  else
  {
    v9 = -1.0;
  }

  return v9;
}

uint64_t __42__MKDistanceFormatter_distanceFromString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndex:0];
  v6 = [v4 objectAtIndex:0];

  v7 = [v5 length];
  if (v7 <= [v6 length])
  {
    v9 = [v5 length];
    v8 = v9 < [v6 length];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 doubleValue];
    v5 = [(MKDistanceFormatter *)self stringFromDistance:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)stringFromDistance:(CLLocationDistance)distance
{
  v5 = [(MKDistanceFormatter *)self _useMetric];
  if (v5)
  {
    v6 = 1;
    v7 = 2;
  }

  else if (self->_units == 3)
  {
    v6 = 2;
    v7 = 1;
  }

  else
  {
    v8 = [(NSLocale *)self->_locale _navigation_useYardsForShortDistances];
    v7 = 1;
    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  unitStyle = self->_unitStyle;
  if (unitStyle)
  {
    v10 = unitStyle == 1;
  }

  else
  {
    v10 = v5;
  }

  v11 = MEMORY[0x1E696AEC0];
  locale = self->_locale;

  return [v11 _navigation_localizedStringForDistance:0 detail:v10 unitFormat:locale locale:v7 useMetric:v6 useYards:distance];
}

- (BOOL)_useMetric
{
  units = self->_units;
  if (units)
  {
    return units == 1;
  }

  else
  {
    return [(NSLocale *)self->_locale _navigation_distanceUsesMetricSystem];
  }
}

- (id)description
{
  v3 = [(NSLocale *)self->_locale description];
  units = self->_units;
  if (units > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E76CA100[units];
  }

  unitStyle = self->_unitStyle;
  if (unitStyle > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E76CA120[unitStyle];
  }

  v8 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = MKDistanceFormatter;
  v9 = [(MKDistanceFormatter *)&v12 description];
  v10 = [v8 stringWithFormat:@"%@ locale:%@ units:%@ unitStyle:%@", v9, v3, v5, v7];

  return v10;
}

- (void)setLocale:(NSLocale *)locale
{
  v4 = locale;
  if (self->_locale != v4)
  {
    v7 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    }

    v6 = self->_locale;
    self->_locale = v5;

    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(MKDistanceFormatter *)self locale];
    v7 = [v6 copyWithZone:a3];
    [v5 setLocale:v7];

    [v5 setUnits:{-[MKDistanceFormatter units](self, "units")}];
    [v5 setUnitStyle:{-[MKDistanceFormatter unitStyle](self, "unitStyle")}];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKDistanceFormatter;
  v4 = a3;
  [(MKDistanceFormatter *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[MKDistanceFormatter units](self forKey:{"units", v6.receiver, v6.super_class), @"MKDistanceFormatterUnits"}];
  [v4 encodeInteger:-[MKDistanceFormatter unitStyle](self forKey:{"unitStyle"), @"MKDistanceFormatterUnitStyle"}];
  v5 = [(MKDistanceFormatter *)self locale];
  [v4 encodeObject:v5 forKey:@"MKDistanceFormatterLocale"];
}

- (MKDistanceFormatter)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKDistanceFormatter;
  v5 = [(MKDistanceFormatter *)&v8 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"MKDistanceFormatterLocale"])
    {
      v6 = [v4 decodeObjectForKey:@"MKDistanceFormatterLocale"];
      [(MKDistanceFormatter *)v5 setLocale:v6];
    }

    if ([v4 containsValueForKey:@"MKDistanceFormatterUnits"])
    {
      -[MKDistanceFormatter setUnits:](v5, "setUnits:", [v4 decodeIntegerForKey:@"MKDistanceFormatterUnits"]);
    }

    if ([v4 containsValueForKey:@"MKDistanceFormatterUnitStyle"])
    {
      -[MKDistanceFormatter setUnitStyle:](v5, "setUnitStyle:", [v4 decodeIntegerForKey:@"MKDistanceFormatterUnitStyle"]);
    }
  }

  return v5;
}

- (MKDistanceFormatter)init
{
  v6.receiver = self;
  v6.super_class = MKDistanceFormatter;
  v2 = [(MKDistanceFormatter *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(MKDistanceFormatter *)v2 setLocale:v3];

    v4 = +[MKUsageCounter sharedCounter];
    [v4 count:1];
  }

  return v2;
}

@end