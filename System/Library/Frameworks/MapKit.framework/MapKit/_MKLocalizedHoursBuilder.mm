@interface _MKLocalizedHoursBuilder
+ (id)localizedHoursDayRangeString:(id)a3;
- (BOOL)_isCurrentTimeSingular:(id)a3;
- (BOOL)_isOpenAtClosingSoon;
- (NSArray)AMPMSymbols;
- (NSDate)compareDate;
- (NSString)localizedOpenState;
- (NSString)localizedOperatingHours;
- (UIColor)hoursStateLabelColor;
- (_MKLocalizedHoursBuilder)initWithBusinessHours:(id)a3 timeZone:(id)a4 localizedHoursStringOptions:(unint64_t)a5 conciseStyle:(BOOL)a6 openAt:(id)a7;
- (_MKLocalizedHoursBuilder)initWithMapItem:(id)a3 localizedHoursStringOptions:(unint64_t)a4;
- (_MKLocalizedHoursBuilder)initWithMapItem:(id)a3 localizedHoursStringOptions:(unint64_t)a4 conciseStyle:(BOOL)a5 openAt:(id)a6;
- (_MKLocalizedHoursBuilder)initWithMapItemForMessageForBusiness:(id)a3 localizedHoursStringOptions:(unint64_t)a4;
- (id)_findNextOperatingWeekday:(int64_t)a3;
- (id)_formatedOperatingHourString:(id)a3 timeZone:(id)a4 weekday:(int64_t)a5;
- (id)_formattedStringForHourRangesWithStartAndEndDates:(id)a3 timeZone:(id)a4;
- (id)_localizedTimeStringFromDate:(id)a3 timezone:(id)a4;
- (id)_updateLocalizedOperatingHoursString:(unint64_t)a3;
- (id)concatenateStrings:(id)a3 joinedByString:(id)a4;
- (id)formatData:(id)a3;
- (id)showClosingSoonHour:(id)a3 timeZone:(id)a4;
- (int64_t)state;
- (void)_commonInit;
- (void)_resetLocalizedBuilder:(BOOL)a3;
- (void)_resetLocalizedStrings:(BOOL)a3;
- (void)_updateLocalizedString;
- (void)setGeoMapItemOpeningHourOptions:(unint64_t)a3;
- (void)setLocalizedHoursStringOptions:(unint64_t)a3;
- (void)setOperatingHours:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)updateHoursLabelColorWithDefaultLabelColor:(id)a3;
@end

@implementation _MKLocalizedHoursBuilder

- (NSArray)AMPMSymbols
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v3 = [hoursFormatter AMSymbol];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [hoursFormatter AMSymbol];
    [v2 addObject:v5];
  }

  v6 = [hoursFormatter PMSymbol];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [hoursFormatter PMSymbol];
    [v2 addObject:v8];
  }

  v9 = [v2 copy];

  return v9;
}

- (id)concatenateStrings:(id)a3 joinedByString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62___MKLocalizedHoursBuilder_concatenateStrings_joinedByString___block_invoke;
  v12[3] = &unk_1E76CD7B0;
  v12[4] = &v13;
  v7 = MEMORY[0x1A58E9F30](v12);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v7);
  }

  if (*(v14 + 24) == 1)
  {
    v8 = [v5 reverseObjectEnumerator];
    v9 = [v8 allObjects];

    v5 = v9;
  }

  v10 = [v5 componentsJoinedByString:v6];

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)formatData:(id)a3
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695E0F0];
  v6 = [MEMORY[0x1E695E0F0] mutableCopy];
  v7 = [v5 mutableCopy];
  v8 = [v5 mutableCopy];
  v9 = [v5 mutableCopy];
  v10 = [v5 mutableCopy];
  if (self->_timeZone)
  {
    v98 = v10;
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v11 setTimeZone:self->_timeZone];
    v106 = self;
    v97 = [(_MKLocalizedHoursBuilder *)self compareDate];
    v88 = [v11 components:512 fromDate:?];
    v96 = [v88 weekday];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v89 = v4;
    obj = v4;
    v99 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
    if (v99)
    {
      v94 = *v117;
      v91 = v7;
      v92 = v6;
      v93 = v8;
      v95 = v9;
      v100 = v11;
      do
      {
        v12 = 0;
        do
        {
          if (*v117 != v94)
          {
            objc_enumerationMutation(obj);
          }

          v103 = v12;
          v13 = *(*(&v116 + 1) + 8 * v12);
          v14 = [v11 components:28 fromDate:v97];
          [v14 setDay:{objc_msgSend(v13, "dayOfWeekRange") - v96 + objc_msgSend(v14, "day")}];
          [v13 dayOfWeekRange];
          v16 = v15;
          v102 = v14;
          if (v15 == 1)
          {
            v17 = dayOfWeekFormatterFull;
            [v11 dateFromComponents:v14];
            v19 = v18 = v11;
            v20 = [v17 stringFromDate:v19];

            v21 = dayOfWeekFormatterShort;
            v22 = [v18 dateFromComponents:v14];
            v23 = [v21 stringFromDate:v22];

            v24 = v20;
          }

          else
          {
            [v13 dayOfWeekRange];
            if (v25 == 7)
            {
              v23 = _MKLocalizedStringFromThisBundle(@"Every Day");
              v24 = v23;
            }

            else
            {
              v26 = dayOfWeekFormatterFull;
              v108 = [v14 copy];
              v27 = [v108 copy];
              [v13 dayOfWeekRange];
              v110 = v27;
              [v27 setDay:{v28 + objc_msgSend(v27, "day") - 1}];
              v29 = [v100 dateFromComponents:v108];
              v30 = [v26 stringFromDate:v29];

              v31 = [v100 dateFromComponents:v27];
              v32 = [v26 stringFromDate:v31];

              v33 = MEMORY[0x1E696AEC0];
              v34 = _MKLocalizedStringFromThisBundle(@"Placecard Full Hours Weekday Range");
              v35 = v32;
              v104 = [v33 stringWithFormat:v34, v30, v32];

              v36 = dayOfWeekFormatterShort;
              v37 = [v100 dateFromComponents:v108];
              v38 = [v36 stringFromDate:v37];

              v39 = [v100 dateFromComponents:v110];
              v40 = [v36 stringFromDate:v39];

              v41 = MEMORY[0x1E696AEC0];
              v42 = _MKLocalizedStringFromThisBundle(@"Placecard Full Hours Weekday Range");
              v23 = [v41 stringWithFormat:v42, v38, v40];

              v8 = v93;
              v7 = v91;

              v6 = v92;
              v24 = v104;
            }
          }

          v105 = v24;
          [v6 addObject:?];
          v101 = v23;
          [v7 addObject:v23];
          v43 = [MEMORY[0x1E696AD98] numberWithBool:v16 == 1];
          [v98 addObject:v43];

          v44 = MEMORY[0x1E695DF70];
          v45 = [v13 openIntervals];
          v46 = [v44 arrayWithCapacity:{objc_msgSend(v45, "count")}];

          v47 = MEMORY[0x1E695DF70];
          v48 = [v13 openIntervals];
          v49 = [v47 arrayWithCapacity:{objc_msgSend(v48, "count")}];

          v50 = [v13 openIntervals];
          v51 = [v50 count];

          if (v51)
          {
            v109 = v46;
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v107 = [v13 openIntervals];
            v52 = [v107 countByEnumeratingWithState:&v112 objects:v123 count:16];
            if (v52)
            {
              v53 = v52;
              v111 = *v113;
              v54 = 0x1E696A000uLL;
              v56 = v107;
              v55 = v46;
              do
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v113 != v111)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v58 = *(*(&v112 + 1) + 8 * i);
                  [v58 duration];
                  if (v59 == 86400.0)
                  {
                    v60 = _MKLocalizedStringFromThisBundle(@"Placecard Full Hours, open");
                    v61 = *(v54 + 3776);
                    v62 = [twentyFourHourFullFormatter stringFromTimeInterval:86400.0];
                    v63 = [v61 localizedStringWithFormat:v60, v62];

                    [v55 addObject:v63];
                    v64 = *(v54 + 3776);
                    v65 = [twentyFourHourAbbreviatedFormatter stringFromTimeInterval:86400.0];
                    v66 = [v64 localizedStringWithFormat:v60, v65];

                    [v49 addObject:v66];
                  }

                  else
                  {
                    v67 = v49;
                    v68 = hoursFormatter;
                    v69 = [v58 startDate];
                    v66 = [v68 stringFromDate:v69];

                    v70 = hoursFormatter;
                    v71 = [v58 endDate];
                    v72 = [v70 stringFromDate:v71];

                    v73 = *(v54 + 3776);
                    v74 = _MKLocalizedStringFromThisBundle(@"Operating Hours Range");
                    v75 = [v73 stringWithFormat:v74, v66, v72];

                    [v55 addObject:v75];
                    v76 = [v58 startDate];
                    v122[0] = v76;
                    v77 = [v58 endDate];
                    v122[1] = v77;
                    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
                    v60 = [(_MKLocalizedHoursBuilder *)v106 _formattedStringForHourRangesWithStartAndEndDates:v78 timeZone:v106->_timeZone];

                    v49 = v67;
                    v56 = v107;

                    v55 = v109;
                    v54 = 0x1E696A000;

                    [v49 addObject:v60];
                  }
                }

                v53 = [v56 countByEnumeratingWithState:&v112 objects:v123 count:16];
              }

              while (v53);
              v79 = v56;
              v7 = v91;
              v6 = v92;
              v8 = v93;
            }

            else
            {
              v8 = v93;
              v79 = v107;
              v55 = v46;
            }
          }

          else
          {
            v79 = _MKLocalizedStringFromThisBundle(@"Closed");
            [v46 addObject:v79];
            [v49 addObject:v79];
            v55 = v46;
          }

          [v8 addObject:v55];
          v9 = v95;
          [v95 addObject:v49];

          v12 = v103 + 1;
          v11 = v100;
        }

        while (v103 + 1 != v99);
        v99 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
      }

      while (v99);
    }

    v120[0] = @"DaysFull";
    v120[1] = @"DaysShort";
    v121[0] = v6;
    v121[1] = v7;
    v120[2] = @"HoursFull";
    v120[3] = @"HoursShort";
    v121[2] = v8;
    v121[3] = v9;
    v120[4] = @"CurrentHours";
    v80 = [(_MKLocalizedHoursBuilder *)v106 localizedOperatingHours];
    v81 = v80;
    if (v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = &stru_1F15B23C0;
    }

    v121[4] = v82;
    v120[5] = @"CurrentOpenState";
    v83 = [(_MKLocalizedHoursBuilder *)v106 localizedOpenState];
    v84 = v83;
    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = &stru_1F15B23C0;
    }

    v120[6] = @"SingularWeekdayIdentifier";
    v121[5] = v85;
    v121[6] = v98;
    v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:7];

    v10 = v98;
    v4 = v89;
  }

  else
  {
    v86 = 0;
  }

  return v86;
}

- (void)updateHoursLabelColorWithDefaultLabelColor:(id)a3
{
  v13 = a3;
  if (!MapsFeature_IsEnabled_SearchAndDiscovery() || ![(GEOResultRefinementTime *)self->_openAt isSelected]|| ([(GEOResultRefinementTime *)self->_openAt timeStamp], v4 <= 0.0) || [(_MKLocalizedHoursBuilder *)self _isOpenAtClosingSoon])
  {
    if (self->_isOpeningSoon || self->_isClosingSoon)
    {
      v5 = MEMORY[0x1E69DC888];
      v6 = 0.568627477;
      v7 = 1.0;
      v8 = 0.0;
LABEL_13:
      v9 = [v5 colorWithRed:v7 green:v6 blue:v8 alpha:1.0];
LABEL_14:
      hoursStateLabelColor = self->_hoursStateLabelColor;
      self->_hoursStateLabelColor = v9;
      goto LABEL_15;
    }

    if (self->_isClosedTodayAllDay || self->_isCurrentlyClosed || self->_isPermanentlyClosed || self->_isTemporarilyClosed)
    {
      v5 = MEMORY[0x1E69DC888];
      v7 = 0.949019611;
      v6 = 0.286274523;
      v8 = 0.200000003;
      goto LABEL_13;
    }
  }

  if (v13)
  {
    v9 = v13;
    goto LABEL_14;
  }

  hoursStateLabelColor = +[MKInfoCardThemeManager currentTheme];
  v11 = [hoursStateLabelColor textColor];
  v12 = self->_hoursStateLabelColor;
  self->_hoursStateLabelColor = v11;

LABEL_15:
}

- (id)_formattedStringForHourRangesWithStartAndEndDates:(id)a3 timeZone:(id)a4
{
  if ((self->_localizedHoursStringOptions & 0x100) != 0)
  {
    [MEMORY[0x1E696AEC0] _navigation_formattedStringForHourRanges:a3 timeZone:a4 delimeter:@"\n"];
  }

  else
  {
    [MEMORY[0x1E696AEC0] _navigation_formattedStringForHourRanges:a3 timeZone:a4];
  }
  v4 = ;

  return v4;
}

- (BOOL)_isOpenAtClosingSoon
{
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [(_MKLocalizedHoursBuilder *)self timeZone];
  [v3 setTimeZone:v4];

  v5 = MEMORY[0x1E69A2370];
  v6 = [(_MKLocalizedHoursBuilder *)self compareDate];
  v7 = [(GEOBusinessHours *)self->_operatingHours placeDailyNormalizedHours];
  v8 = [v5 getWeekdayForDate:v6 inNormalizedHours:v7 timeZone:self->_timeZone];

  v9 = MEMORY[0x1E69A2368];
  v10 = [(GEOBusinessHours *)self->_operatingHours placeDailyHours];
  v11 = [v9 getPlaceDailyHoursForWeekday:v8 placeDailyHours:v10];

  v12 = [v11 openIntervals];
  v13 = [v12 lastObject];
  v14 = [v13 endDate];

  if (v14)
  {
    v15 = [(_MKLocalizedHoursBuilder *)self compareDate];
    v16 = [v3 components:224 fromDate:v15];

    v17 = [v3 components:224 fromDate:v14];
    v18 = [v17 hour];
    if (v18 < [v16 hour])
    {
      [v17 setHour:{objc_msgSend(v17, "hour") + 24}];
    }

    v19 = [v17 hour];
    v20 = [v17 minute];
    v21 = [v16 hour];
    v22 = (v20 - [v16 minute] + 60 * (v19 - v21)) * 60.0;
    isClosingSoon = v22 < [(GEOBusinessHours *)self->_operatingHours closingSoonThresdholdInSeconds];
  }

  else
  {
    isClosingSoon = self->_isClosingSoon;
  }

  return isClosingSoon;
}

- (id)_findNextOperatingWeekday:(int64_t)a3
{
  v5 = [(GEOBusinessHours *)self->_operatingHours operatingWeekdays];
  if (![v5 count])
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = _MKLocalizedStringFromThisBundle(@"Business Hours [Permanently Closed]");
    v15 = [v13 stringWithFormat:v14];
LABEL_12:
    v18 = v15;
    goto LABEL_14;
  }

  v6 = a3 % 7 + 1;
  v7 = 7;
  while (1)
  {
    v8 = MEMORY[0x1E69A2368];
    v9 = [(GEOBusinessHours *)self->_operatingHours placeDailyHours];
    v10 = [v8 getPlaceDailyHoursForWeekday:v6 placeDailyHours:v9];

    v11 = [v10 openIntervals];
    v12 = [v11 count];

    if (v12)
    {
      break;
    }

    v6 = v6 % 7 + 1;
    if (!--v7)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  if (_findNextOperatingWeekday__oneTimeToken != -1)
  {
    dispatch_once(&_findNextOperatingWeekday__oneTimeToken, &__block_literal_global_225);
  }

  v16 = _findNextOperatingWeekday__weekdays;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v14 = [v16 objectForKeyedSubscript:v17];

  if (v14)
  {
    v15 = v14;
    v14 = v15;
    goto LABEL_12;
  }

  v18 = &stru_1F15B23C0;
LABEL_14:

  return v18;
}

- (id)_localizedTimeStringFromDate:(id)a3 timezone:(id)a4
{
  v5 = a3;
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___MKLocalizedHoursBuilder__localizedTimeStringFromDate_timezone___block_invoke;
  block[3] = &unk_1E76CDB38;
  v7 = v6;
  v16 = v7;
  if (_localizedTimeStringFromDate_timezone__oneTimeToken != -1)
  {
    dispatch_once(&_localizedTimeStringFromDate_timezone__oneTimeToken, block);
  }

  v8 = [_localizedTimeStringFromDate_timezone__formatter dateFormat];
  v9 = [v8 rangeOfString:@"a"];

  v10 = [_localizedTimeStringFromDate_timezone__calendar component:64 fromDate:v5];
  [_localizedTimeStringFromDate_timezone__formatter setTimeZone:v7];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = @"jmm";
  }

  else
  {
    v12 = @"j a";
  }

  [_localizedTimeStringFromDate_timezone__formatter setLocalizedDateFormatFromTemplate:v12];
  v13 = [_localizedTimeStringFromDate_timezone__formatter stringFromDate:v5];

  return v13;
}

- (BOOL)_isCurrentTimeSingular:(id)a3
{
  v3 = _isCurrentTimeSingular__oneTimeToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_isCurrentTimeSingular__oneTimeToken, &__block_literal_global_29227);
  }

  v5 = [_isCurrentTimeSingular__calendar component:32 fromDate:v4];

  return v5 == 1;
}

- (id)showClosingSoonHour:(id)a3 timeZone:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(_MKLocalizedHoursBuilder *)self _isCurrentTimeSingular:v7])
  {
    v8 = @"Business Hours [Closing Soon] 1:xx";
  }

  else
  {
    v8 = @"Business Hours [Closing Soon]";
  }

  v9 = _MKLocalizedStringFromThisBundle(v8);
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(_MKLocalizedHoursBuilder *)self _localizedTimeStringFromDate:v7 timezone:v6];

  v12 = [v10 stringWithFormat:v9, v11];

  return v12;
}

- (id)_formatedOperatingHourString:(id)a3 timeZone:(id)a4 weekday:(int64_t)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (self->_isClosedTodayAllDay)
  {
    v10 = [(_MKLocalizedHoursBuilder *)self _findNextOperatingWeekday:a5];
    goto LABEL_49;
  }

  if (self->_isOpenTodayAllDay)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = _MKLocalizedStringFromThisBundle(@"Business Hours [Open All Day]");
    v10 = [v11 stringWithFormat:v12];
    goto LABEL_48;
  }

  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v12 setTimeZone:v9];
  if ([(GEOResultRefinementTime *)self->_openAt isSelected])
  {
    [(GEOResultRefinementTime *)self->_openAt timeStamp];
    if (v13 > 0.0)
    {
      v14 = [v8 openIntervals];
      v15 = [v14 lastObject];
      v16 = [v15 endDate];

      if (v16)
      {
        if ([(_MKLocalizedHoursBuilder *)self _isOpenAtClosingSoon])
        {
          v10 = [(_MKLocalizedHoursBuilder *)self showClosingSoonHour:v16 timeZone:v9];
        }

        else
        {
          if ([(_MKLocalizedHoursBuilder *)self _isCurrentTimeSingular:v16])
          {
            v45 = @"Business Hours [Open till] 1:xx";
          }

          else
          {
            v45 = @"Business Hours [Open till]";
          }

          v47 = _MKLocalizedStringFromThisBundle(v45);
          v48 = MEMORY[0x1E696AEC0];
          v49 = [(_MKLocalizedHoursBuilder *)self _localizedTimeStringFromDate:v16 timezone:v9];
          v10 = [v48 stringWithFormat:v47, v49];
        }
      }

      else
      {
        v10 = &stru_1F15B23C0;
      }

LABEL_39:

      goto LABEL_48;
    }
  }

  v50 = a5;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [v8 openIntervals];
  v17 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = v17;
  v54 = *v56;
  v51 = v9;
  v52 = v8;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v56 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v55 + 1) + 8 * i);
      v21 = [(_MKLocalizedHoursBuilder *)self compareDate];
      v22 = [v12 component:32 fromDate:v21];

      v23 = [v20 startDate];
      v24 = [v12 component:32 fromDate:v23];

      v25 = [v20 startDate];
      v26 = [v12 component:64 fromDate:v25];

      v27 = [v20 endDate];
      v28 = [v20 startDate];
      [v27 timeIntervalSinceDate:v28];
      v30 = (v29 + (60 * v26)) / 3600;

      v31 = v30 + v24;
      v32 = [v20 endDate];
      v33 = [v12 component:64 fromDate:v32];

      v34 = [(_MKLocalizedHoursBuilder *)self compareDate];
      v35 = [v12 component:64 fromDate:v34];

      if (v22 >= v31 && (v22 != v31 || v35 > v33))
      {
        continue;
      }

      v16 = [v20 startDate];
      v37 = [v20 endDate];

      if (self->_isOpeningSoon && v16)
      {
        v9 = v51;
        v8 = v52;
        if ([(_MKLocalizedHoursBuilder *)self _isCurrentTimeSingular:v16])
        {
          v38 = @"Business Hours [Opening Soon] 1:xx";
        }

        else
        {
          v38 = @"Business Hours [Opening Soon]";
        }
      }

      else
      {
        v9 = v51;
        v8 = v52;
        if (self->_isClosingSoon && v37)
        {
          v10 = [(_MKLocalizedHoursBuilder *)self showClosingSoonHour:v37 timeZone:v51];
LABEL_38:

          goto LABEL_39;
        }

        if (self->_isCurrentlyOpen && v37)
        {
          if ([(_MKLocalizedHoursBuilder *)self _isCurrentTimeSingular:v37])
          {
            v39 = @"Business Hours [Open till] 1:xx";
          }

          else
          {
            v39 = @"Business Hours [Open till]";
          }

          v40 = _MKLocalizedStringFromThisBundle(v39);
          v41 = MEMORY[0x1E696AEC0];
          v42 = self;
          v43 = v37;
          goto LABEL_37;
        }

        if (!self->_isCurrentlyClosed)
        {
          goto LABEL_47;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        if ([(_MKLocalizedHoursBuilder *)self _isCurrentTimeSingular:v16])
        {
          v38 = @"Business Hours [Closed till time] 1:xx";
        }

        else
        {
          v38 = @"Business Hours [Closed till time]";
        }
      }

      v40 = _MKLocalizedStringFromThisBundle(v38);
      v41 = MEMORY[0x1E696AEC0];
      v42 = self;
      v43 = v16;
LABEL_37:
      v44 = [(_MKLocalizedHoursBuilder *)v42 _localizedTimeStringFromDate:v43 timezone:v9];
      v10 = [v41 stringWithFormat:v40, v44];

      goto LABEL_38;
    }

    v18 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    v9 = v51;
    v8 = v52;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v37 = 0;
  v16 = 0;
  if (self->_isCurrentlyClosed)
  {
LABEL_23:
    v10 = [(_MKLocalizedHoursBuilder *)self _findNextOperatingWeekday:v50];

    goto LABEL_48;
  }

LABEL_47:

  v10 = &stru_1F15B23C0;
LABEL_48:

LABEL_49:

  return v10;
}

- (id)_updateLocalizedOperatingHoursString:(unint64_t)a3
{
  v64 = *MEMORY[0x1E69E9840];
  geoMapItemOpeningHourOptions = self->_geoMapItemOpeningHourOptions;
  v4 = *&vshl_u16((*&vdup_n_s16(geoMapItemOpeningHourOptions) & 0xFF00FF00FF00FFLL), 0xFFFBFFFAFFFEFFFDLL) & 0xFF01FF01FF01FF01;
  *&self->_isClosedTodayAllDay = vuzp1_s8(v4, v4).u32[0];
  self->_isPermanentlyClosed = (geoMapItemOpeningHourOptions & 0x80) != 0;
  self->_isTemporarilyClosed = BYTE1(geoMapItemOpeningHourOptions) & 1;
  self->_isOpenTodayAllDay = (geoMapItemOpeningHourOptions & 0x10) != 0;
  self->_isCurrentlyOpen = (geoMapItemOpeningHourOptions & 2) != 0;
  if ((geoMapItemOpeningHourOptions & 0x80) != 0)
  {
    v5 = @"Permanently Closed";
LABEL_5:
    v6 = _MKLocalizedStringFromThisBundle(v5);
    goto LABEL_82;
  }

  if ((geoMapItemOpeningHourOptions & 0x100) != 0)
  {
    v5 = @"Temporarily Closed";
    goto LABEL_5;
  }

  v7 = a3;
  v9 = MEMORY[0x1E69A2370];
  v10 = [(_MKLocalizedHoursBuilder *)self compareDate];
  v11 = [(GEOBusinessHours *)self->_operatingHours placeDailyNormalizedHours];
  v12 = [v9 getWeekdayForDate:v10 inNormalizedHours:v11 timeZone:self->_timeZone];

  v13 = MEMORY[0x1E69A2368];
  v14 = [(GEOBusinessHours *)self->_operatingHours placeDailyHours];
  v53 = v12;
  v15 = [v13 getPlaceDailyHoursForWeekday:v12 placeDailyHours:v14];

  v16 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v54 = v15;
  v17 = [v15 openIntervals];
  v18 = [v17 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v56;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v55 + 1) + 8 * i);
        v23 = [v22 startDate];
        if (v23)
        {
          v24 = v23;
          v25 = [v22 endDate];

          if (v25)
          {
            v26 = [v22 startDate];
            [v16 addObject:v26];

            v27 = [v22 endDate];
            [v16 addObject:v27];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v19);
  }

  if (!MapsFeature_IsEnabled_SearchAndDiscovery() || !self->_isUsingConciseStyle)
  {
    if (self->_isClosedTodayAllDay)
    {
      if ((v7 & 0x10) == 0)
      {
        v29 = @"Closed Today";
LABEL_22:
        v30 = _MKLocalizedStringFromThisBundle(v29);
LABEL_23:
        v6 = v30;
LABEL_80:
        v28 = v54;
        goto LABEL_81;
      }

LABEL_26:
      v6 = &stru_1F15B23C0;
      goto LABEL_80;
    }

    if (self->_isOpenTodayAllDay)
    {
      if ((v7 & 0x28) != 0)
      {
        goto LABEL_26;
      }

      v36 = _MKLocalizedStringFromThisBundle(@"Placecard Full Hours, open");
      v37 = MEMORY[0x1E696AEC0];
      if ((v7 & 4) != 0)
      {
        v38 = twentyFourHourAbbreviatedFormatter;
      }

      else
      {
        v38 = twentyFourHourFullFormatter;
      }

      v39 = [v38 stringFromTimeInterval:86400.0];
      v6 = [v37 localizedStringWithFormat:v36, v39];

LABEL_79:
      goto LABEL_80;
    }

    if (self->_isCurrentlyClosed)
    {
      if (self->_isOpeningSoon)
      {
        if (v7)
        {
          v29 = @"Opening Soon";
          goto LABEL_22;
        }

        if ((v7 & 2) == 0)
        {
          if (v7 < 0)
          {
            v31 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
            v32 = [v31 length];
            v33 = _MKLocalizedStringFromThisBundle(@"Opening Soon");
            v6 = v33;
            if (v32)
            {
              v62[0] = v33;
              v62[1] = v31;
              v34 = MEMORY[0x1E695DEC8];
              v35 = v62;
LABEL_71:
              v49 = [v34 arrayWithObjects:v35 count:2];
              v50 = [(_MKLocalizedHoursBuilder *)self concatenateStrings:v49 joinedByString:@" · "];

              v6 = v50;
              goto LABEL_80;
            }

            goto LABEL_72;
          }

          goto LABEL_46;
        }

        v36 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
        if ([v36 length])
        {
          v42 = MEMORY[0x1E696AEC0];
          v43 = @"%@, Opening Soon";
LABEL_75:
          v51 = _MKLocalizedStringFromThisBundle(v43);
          v6 = [v42 stringWithFormat:v51, v36];

          goto LABEL_79;
        }

        v46 = @"Opening Soon";
      }

      else
      {
        if (v7)
        {
          v29 = @"Closed Now";
          goto LABEL_22;
        }

        if ((v7 & 2) == 0)
        {
          if (v7 < 0)
          {
            v31 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
            v44 = [v31 length];
            v45 = _MKLocalizedStringFromThisBundle(@"Closed Now");
            v6 = v45;
            if (v44)
            {
              v61[0] = v45;
              v61[1] = v31;
              v34 = MEMORY[0x1E695DEC8];
              v35 = v61;
              goto LABEL_71;
            }

            goto LABEL_72;
          }

          goto LABEL_46;
        }

        v36 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
        if ([v36 length])
        {
          v42 = MEMORY[0x1E696AEC0];
          v43 = @"%@, Closed";
          goto LABEL_75;
        }

        v46 = @"Closed Now";
      }
    }

    else
    {
      if (!self->_isCurrentlyOpen)
      {
        goto LABEL_46;
      }

      if (self->_isClosingSoon)
      {
        if (v7)
        {
          v29 = @"Closing Soon";
          goto LABEL_22;
        }

        if ((v7 & 2) == 0)
        {
          if (v7 < 0)
          {
            v31 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
            v47 = [v31 length];
            v48 = _MKLocalizedStringFromThisBundle(@"Closing Soon");
            v6 = v48;
            if (v47)
            {
              v60[0] = v48;
              v60[1] = v31;
              v34 = MEMORY[0x1E695DEC8];
              v35 = v60;
              goto LABEL_71;
            }

            goto LABEL_72;
          }

          if ((v7 & 8) != 0)
          {
            goto LABEL_26;
          }

          goto LABEL_46;
        }

        v36 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
        if ([v36 length])
        {
          v42 = MEMORY[0x1E696AEC0];
          v43 = @"%@, Closing Soon";
          goto LABEL_75;
        }

        v46 = @"Closing Soon";
      }

      else
      {
        if ((v7 & 8) != 0)
        {
          goto LABEL_26;
        }

        if (v7)
        {
          v29 = @"Open";
          goto LABEL_22;
        }

        if ((v7 & 2) == 0)
        {
          if (v7 < 0)
          {
            v31 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
            v40 = [v31 length];
            v41 = _MKLocalizedStringFromThisBundle(@"Open");
            v6 = v41;
            if (v40)
            {
              v59[0] = v41;
              v59[1] = v31;
              v34 = MEMORY[0x1E695DEC8];
              v35 = v59;
              goto LABEL_71;
            }

LABEL_72:

            goto LABEL_80;
          }

LABEL_46:
          v30 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
          goto LABEL_23;
        }

        v36 = [(_MKLocalizedHoursBuilder *)self _formattedStringForHourRangesWithStartAndEndDates:v16 timeZone:self->_timeZone];
        if ([v36 length])
        {
          v42 = MEMORY[0x1E696AEC0];
          v43 = @"%@, Open";
          goto LABEL_75;
        }

        v46 = @"Open";
      }
    }

    v6 = _MKLocalizedStringFromThisBundle(v46);
    goto LABEL_79;
  }

  v28 = v54;
  v6 = [(_MKLocalizedHoursBuilder *)self _formatedOperatingHourString:v54 timeZone:self->_timeZone weekday:v53];
LABEL_81:

LABEL_82:

  return v6;
}

- (int64_t)state
{
  if (self->_isClosedTodayAllDay || self->_isCurrentlyClosed)
  {
    return 1;
  }

  if (self->_isClosingSoon)
  {
    return 4;
  }

  if (self->_isOpeningSoon)
  {
    return 6;
  }

  if (self->_isPermanentlyClosed)
  {
    return 3;
  }

  if (self->_isTemporarilyClosed)
  {
    return 2;
  }

  if (self->_isOpenTodayAllDay)
  {
    return 5;
  }

  if (self->_isCurrentlyOpen)
  {
    return 5;
  }

  return 0;
}

- (void)_updateLocalizedString
{
  timeZone = self->_timeZone;
  if (timeZone && self->_operatingHours && (self->_geoMapItemOpeningHourOptions & 1) == 0)
  {
    v4 = [(_MKLocalizedHoursBuilder *)self _updateLocalizedOperatingHoursString:self->_localizedHoursStringOptions];
    localizedOperatingHours = self->_localizedOperatingHours;
    self->_localizedOperatingHours = v4;

    v6 = [(_MKLocalizedHoursBuilder *)self _updateLocalizedOperatingHoursString:1];
    localizedOpenState = self->_localizedOpenState;
    self->_localizedOpenState = v6;

    [(_MKLocalizedHoursBuilder *)self updateHoursLabelColor];
  }

  else
  {

    [(_MKLocalizedHoursBuilder *)self _resetLocalizedStrings:timeZone == 0];
  }
}

- (UIColor)hoursStateLabelColor
{
  hoursStateLabelColor = self->_hoursStateLabelColor;
  if (!hoursStateLabelColor)
  {
    [(_MKLocalizedHoursBuilder *)self _updateLocalizedString];
    hoursStateLabelColor = self->_hoursStateLabelColor;
  }

  return hoursStateLabelColor;
}

- (NSDate)compareDate
{
  compareDate = self->_compareDate;
  if (!compareDate)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = self->_compareDate;
    self->_compareDate = v4;

    compareDate = self->_compareDate;
  }

  return compareDate;
}

- (NSString)localizedOpenState
{
  if (!self->_localizedOpenState)
  {
    [(_MKLocalizedHoursBuilder *)self _updateLocalizedString];
  }

  if ((self->_localizedHoursStringOptions & 0x40) != 0)
  {
    localizedOpenState = &stru_1F15B23C0;
  }

  else
  {
    localizedOpenState = self->_localizedOpenState;
  }

  return localizedOpenState;
}

- (NSString)localizedOperatingHours
{
  localizedOperatingHours = self->_localizedOperatingHours;
  if (!localizedOperatingHours)
  {
    [(_MKLocalizedHoursBuilder *)self _updateLocalizedString];
    localizedOperatingHours = self->_localizedOperatingHours;
  }

  return localizedOperatingHours;
}

- (void)setOperatingHours:(id)a3
{
  v5 = a3;
  if (self->_operatingHours != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_operatingHours, a3);
    self->_geoMapItemOpeningHourOptions = [MEMORY[0x1E69A21D0] _geoMapItemOpeningHoursOptionsForBusinessHours:self->_operatingHours compareDate:self->_compareDate timeZone:self->_timeZone];
    [(_MKLocalizedHoursBuilder *)self _updateLocalizedString];
    v5 = v6;
  }
}

- (void)setLocalizedHoursStringOptions:(unint64_t)a3
{
  if (self->_localizedHoursStringOptions != a3)
  {
    self->_localizedHoursStringOptions = a3;
    [(_MKLocalizedHoursBuilder *)self _updateLocalizedString];
  }
}

- (void)setGeoMapItemOpeningHourOptions:(unint64_t)a3
{
  if (self->_geoMapItemOpeningHourOptions != a3)
  {
    self->_geoMapItemOpeningHourOptions = a3;
    [(_MKLocalizedHoursBuilder *)self _updateLocalizedString];
  }
}

- (void)setTimeZone:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_timeZone, a3);
    [monthAndDayFormatter setTimeZone:self->_timeZone];
    [dayOfWeekFormatterFull setTimeZone:v5];
    [dayOfWeekFormatterShort setTimeZone:v5];
    [hoursFormatter setTimeZone:v5];
    [(_MKLocalizedHoursBuilder *)self _updateLocalizedString];
  }

  else
  {
    [(_MKLocalizedHoursBuilder *)self _resetLocalizedBuilder:1];
  }
}

- (void)_resetLocalizedStrings:(BOOL)a3
{
  localizedOpenState = self->_localizedOpenState;
  self->_localizedOpenState = &stru_1F15B23C0;

  localizedOperatingHours = self->_localizedOperatingHours;
  self->_localizedOperatingHours = &stru_1F15B23C0;
}

- (void)_resetLocalizedBuilder:(BOOL)a3
{
  v3 = a3;
  *&self->_geoMapItemOpeningHourOptions = xmmword_1A30F6EF0;
  timeZone = self->_timeZone;
  self->_timeZone = 0;

  operatingHours = self->_operatingHours;
  self->_operatingHours = 0;

  v7 = [MEMORY[0x1E69DC888] clearColor];
  hoursStateLabelColor = self->_hoursStateLabelColor;
  self->_hoursStateLabelColor = v7;

  self->_state = 0;

  [(_MKLocalizedHoursBuilder *)self _resetLocalizedStrings:v3];
}

- (void)_commonInit
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___MKLocalizedHoursBuilder__commonInit__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  if (onceToken != -1)
  {
    dispatch_once(&onceToken, block);
  }
}

- (_MKLocalizedHoursBuilder)initWithMapItemForMessageForBusiness:(id)a3 localizedHoursStringOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 _geoMapItem];
  v8 = [v7 _messageLink];
  v9 = [v8 messageBusinessHours];
  v10 = [v6 _geoMapItem];

  v11 = [v10 _messageLink];
  v12 = [v11 timeZone];
  v13 = [(_MKLocalizedHoursBuilder *)self initWithBusinessHours:v9 timeZone:v12 localizedHoursStringOptions:a4 conciseStyle:0 openAt:0];

  return v13;
}

- (_MKLocalizedHoursBuilder)initWithMapItem:(id)a3 localizedHoursStringOptions:(unint64_t)a4 conciseStyle:(BOOL)a5 openAt:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [v11 _businessHours];
  v13 = [v12 objectAtIndex:0];
  v14 = [v11 timeZone];

  v15 = [(_MKLocalizedHoursBuilder *)self initWithBusinessHours:v13 timeZone:v14 localizedHoursStringOptions:a4 conciseStyle:v6 openAt:v10];
  return v15;
}

- (_MKLocalizedHoursBuilder)initWithMapItem:(id)a3 localizedHoursStringOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 _businessHours];
  v8 = [v7 objectAtIndex:0];
  v9 = [v6 timeZone];

  v10 = [(_MKLocalizedHoursBuilder *)self initWithBusinessHours:v8 timeZone:v9 localizedHoursStringOptions:a4 conciseStyle:0 openAt:0];
  return v10;
}

- (_MKLocalizedHoursBuilder)initWithBusinessHours:(id)a3 timeZone:(id)a4 localizedHoursStringOptions:(unint64_t)a5 conciseStyle:(BOOL)a6 openAt:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = _MKLocalizedHoursBuilder;
  v16 = [(_MKLocalizedHoursBuilder *)&v23 init];
  v17 = v16;
  if (v16)
  {
    [(_MKLocalizedHoursBuilder *)v16 _commonInit];
    v17->_isUsingConciseStyle = a6;
    objc_storeStrong(&v17->_openAt, a7);
    v18 = [MEMORY[0x1E695DF00] date];
    v19 = [MEMORY[0x1E69A21D0] _geoMapItemOpeningHoursOptionsForBusinessHours:v13 compareDate:v18 timeZone:v14];
    if (!v14 || (v20 = v19, (v19 & 1) != 0))
    {
      [(_MKLocalizedHoursBuilder *)v17 _resetLocalizedBuilder:v14 == 0];
    }

    else
    {
      objc_storeStrong(&v17->_operatingHours, a3);
      v17->_geoMapItemOpeningHourOptions = v20;
      v17->_localizedHoursStringOptions = a5;
      compareDate = v17->_compareDate;
      v17->_compareDate = v18;

      [(_MKLocalizedHoursBuilder *)v17 setTimeZone:v14];
    }
  }

  return v17;
}

+ (id)localizedHoursDayRangeString:(id)a3
{
  v3 = a3;
  v4 = [v3 startDate];

  if (v4)
  {
    v5 = [v3 endDate];

    v6 = MEMORY[0x1E696AEC0];
    if (v5)
    {
      v7 = _MKLocalizedStringFromThisBundle(@"Placecard Full Hours Weekday Range");
      v8 = monthAndDayFormatter;
      v9 = [v3 startDate];
      v10 = [v8 stringFromDate:v9];
      v11 = monthAndDayFormatter;
      v12 = [v3 endDate];
      v13 = [v11 stringFromDate:v12];
      v14 = [v6 stringWithFormat:v7, v10, v13];
    }

    else
    {
      v7 = _MKLocalizedStringFromThisBundle(@"Placecard Full Hours Starting Day");
      v15 = monthAndDayFormatter;
      v9 = [v3 startDate];
      v10 = [v15 stringFromDate:v9];
      v14 = [v6 stringWithFormat:v7, v10];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end