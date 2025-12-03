@interface BSUIDefaultDateLabel
+ (id)_currentCalendar;
- (BOOL)isDateWithinEffectiveAllDayRange:(id)range;
- (BSUIDateLabelDelegate)delegate;
- (BSUIDefaultDateLabel)init;
- (id)_constructNonAllDayLabelStringWithDate:(char)date startTime:(int)time startIsToday:(int)today sameDayDates:(void *)dates eventOngoing:(int)ongoing withCurrentDate:(double)currentDate forStartLabel:;
- (id)_localDateForDate:(void *)date inTimeZone:;
- (id)constructLabelString;
- (void)_configureTimer;
- (void)_forceUpdate;
- (void)_invalidateTimer;
- (void)_resetEffectiveAllDayState:(uint64_t)state;
- (void)_resetModelProperties;
- (void)_updateTimerFired:(id)fired;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setAllDay:(BOOL)day;
- (void)setEndDate:(id)date withTimeZone:(id)zone;
- (void)setIsTimestamp:(BOOL)timestamp;
- (void)setStartDate:(id)date withTimeZone:(id)zone;
- (void)setTimeZoneRelativeEndDate:(id)date;
- (void)setTimeZoneRelativeStartDate:(id)date absoluteStartDate:(id)startDate;
- (void)stopCoalescingUpdates;
- (void)update;
- (void)updateTextIfNecessary:(uint64_t)necessary;
@end

@implementation BSUIDefaultDateLabel

- (BSUIDefaultDateLabel)init
{
  v7.receiver = self;
  v7.super_class = BSUIDefaultDateLabel;
  v2 = [(BSUIDefaultDateLabel *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
    timeZoneRelativeStartDate = v2->_timeZoneRelativeStartDate;
    v2->_timeZoneRelativeStartDate = v3;

    v2->_allDay = 0;
    v2->_effectiveAllDay = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__forceUpdate name:*MEMORY[0x1E698E5B0] object:0];
  }

  return v2;
}

- (void)_configureTimer
{
  if (self)
  {
    v2 = objc_opt_class();
    if (v2 == objc_opt_class())
    {
      v3 = &OBJC_IVAR___BSUIDefaultDateLabel__timeZoneRelativeStartDate;
      [self[110] timeIntervalSinceNow];
      if (v4 <= 0.0 && (v3 = &OBJC_IVAR___BSUIDefaultDateLabel__timeZoneRelativeEndDate, [self[101] timeIntervalSinceNow], v5 <= 0.0))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(self + *v3);
      }

      if (![self[106] isValid] || (objc_msgSend(self[106], "fireDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isAfterDate:", v6), v7, v8))
      {
        if (v6)
        {
          [self[106] invalidate];
          v9 = self[106];
          self[106] = 0;

          v10 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v6 interval:self target:sel__updateTimerFired_ selector:0 userInfo:0 repeats:0.0];
          v11 = self[106];
          self[106] = v10;

          v15[0] = 0;
          v15[1] = v15;
          v15[2] = 0x3032000000;
          v15[3] = __Block_byref_object_copy__2;
          v15[4] = __Block_byref_object_dispose__2;
          v16 = self[106];
          Main = CFRunLoopGetMain();
          v13 = *MEMORY[0x1E695E8E0];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__BSUIDefaultDateLabel__configureTimer__block_invoke;
          block[3] = &unk_1E76B7FE0;
          block[4] = v15;
          CFRunLoopPerformBlock(Main, v13, block);
          _Block_object_dispose(v15, 8);
        }
      }
    }
  }
}

- (void)update
{
  if (self->_isCoalescingUpdates)
  {
    self->_needsUpdateFromCoalesce = 1;
  }

  else
  {
    [(BSUIDefaultDateLabel *)self _forceUpdate];
  }
}

- (void)_forceUpdate
{
  if (self)
  {
    [BSUIDefaultDateLabel _resetEffectiveAllDayState:?];
    if (self->_allDay)
    {
      timeZoneRelativeStartDate = self->_timeZoneRelativeStartDate;
      if (timeZoneRelativeStartDate)
      {
        [(NSDate *)timeZoneRelativeStartDate timeIntervalSinceReferenceDate];
        v5 = v4;
        v6 = BSDateAtStartOfDay();
        if (v6)
        {
          if (!self->_timeZoneRelativeStartDate)
          {
            goto LABEL_10;
          }

          [(NSDate *)self->_timeZoneRelativeEndDate timeIntervalSinceReferenceDate];
          if (v7 >= v5)
          {
            v8 = BSDateAtStartOfDay();
            if (!v8)
            {
              goto LABEL_13;
            }

            if (([v6 isEqualToDate:v8] & 1) == 0)
            {
              effectiveAllDayEndDate = [(NSDate *)v8 bs_dateByAddingDays:-1];
              if (effectiveAllDayEndDate)
              {
                self->_effectiveAllDay = 1;
                objc_storeStrong(&self->_effectiveAllDayStartDate, v6);
                objc_storeStrong(&self->_effectiveAllDayLastValidDate, effectiveAllDayEndDate);
                objc_storeStrong(&self->_effectiveAllDayEndDate, v8);
              }

              goto LABEL_12;
            }

LABEL_10:
            v8 = [v6 bs_dateByAddingDays:1];
            if (v8)
            {
              self->_effectiveAllDay = 1;
              objc_storeStrong(&self->_effectiveAllDayStartDate, v6);
              objc_storeStrong(&self->_effectiveAllDayLastValidDate, v6);
              v8 = v8;
              effectiveAllDayEndDate = self->_effectiveAllDayEndDate;
              self->_effectiveAllDayEndDate = v8;
LABEL_12:
            }

LABEL_13:
          }
        }
      }
    }
  }

  [(BSUIDefaultDateLabel *)self updateTextIfNecessary:?];
}

- (void)stopCoalescingUpdates
{
  if (self->_isCoalescingUpdates)
  {
    self->_isCoalescingUpdates = 0;
    if (self->_needsUpdateFromCoalesce)
    {
      [(BSUIDefaultDateLabel *)self _forceUpdate];
      self->_needsUpdateFromCoalesce = 0;
    }
  }
}

+ (id)_currentCalendar
{
  objc_opt_self();
  if (qword_1ED61C800 != -1)
  {
    dispatch_once(&qword_1ED61C800, &__block_literal_global_4);
  }

  v0 = _MergedGlobals_1;

  return v0;
}

- (void)prepareForReuse
{
  [(BSUIDefaultDateLabel *)self removeFromSuperview];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(BSUIDefaultDateLabel *)self setTransform:v4];
  [(BSUIDefaultDateLabel *)self setAlpha:1.0];
  [(BSUIDefaultDateLabel *)self setHidden:0];
  [(BSUIDefaultDateLabel *)self setText:0];
  [(BSUIDefaultDateLabel *)self setDelegate:0];
  [(BSUIDefaultDateLabel *)self _invalidateTimer];
  [(BSUIDefaultDateLabel *)self _resetModelProperties];
}

- (void)_resetModelProperties
{
  if (self)
  {
    *(self + 856) = 0;
    *(self + 841) = 0;
    *(self + 842) = 0;
    v2 = *(self + 880);
    *(self + 880) = 0;

    v3 = *(self + 808);
    *(self + 808) = 0;

    [BSUIDefaultDateLabel _resetEffectiveAllDayState:self];
  }
}

- (void)_invalidateTimer
{
  if (self)
  {
    [*(self + 848) invalidate];
    v2 = *(self + 848);
    *(self + 848) = 0;
  }
}

uint64_t __40__BSUIDefaultDateLabel__currentCalendar__block_invoke()
{
  _MergedGlobals_1 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  [(BSUIDefaultDateLabel *)self _invalidateTimer];
  [(BSUIDefaultDateLabel *)self _resetModelProperties];
  v3.receiver = self;
  v3.super_class = BSUIDefaultDateLabel;
  [(BSUIDefaultDateLabel *)&v3 dealloc];
}

- (void)setAllDay:(BOOL)day
{
  if (self->_allDay != day)
  {
    self->_allDay = day;
    [(BSUIDefaultDateLabel *)self update];
  }
}

- (void)setIsTimestamp:(BOOL)timestamp
{
  if (self->_isTimestamp != timestamp)
  {
    self->_isTimestamp = timestamp;
    [(BSUIDefaultDateLabel *)self update];
  }
}

void __39__BSUIDefaultDateLabel__configureTimer__block_invoke(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 40) isValid])
  {
    v2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v2 addTimer:*(*(*(a1 + 32) + 8) + 40) forMode:*MEMORY[0x1E695DA28]];
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)setTimeZoneRelativeStartDate:(id)date absoluteStartDate:(id)startDate
{
  dateCopy = date;
  if (![(NSDate *)self->_timeZoneRelativeStartDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_timeZoneRelativeStartDate, date);
    [(BSUIDefaultDateLabel *)self update];
    [(BSUIDefaultDateLabel *)&self->super.super.super.super.isa _configureTimer];
  }
}

- (void)setTimeZoneRelativeEndDate:(id)date
{
  dateCopy = date;
  if (![(NSDate *)self->_timeZoneRelativeEndDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_timeZoneRelativeEndDate, date);
    [(BSUIDefaultDateLabel *)self update];
    [(BSUIDefaultDateLabel *)&self->super.super.super.super.isa _configureTimer];
  }
}

- (void)setStartDate:(id)date withTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if (zoneCopy)
  {
    v7 = [(BSUIDefaultDateLabel *)self _localDateForDate:dateCopy inTimeZone:zoneCopy];
  }

  else
  {
    v7 = dateCopy;
  }

  v8 = v7;
  [(BSUIDefaultDateLabel *)self setTimeZoneRelativeStartDate:v7 absoluteStartDate:dateCopy];
}

- (id)_localDateForDate:(void *)date inTimeZone:
{
  v5 = a2;
  dateCopy = date;
  v7 = 0;
  if (self && v5)
  {
    v8 = +[BSUIDefaultDateLabel _currentCalendar];
    [v8 setTimeZone:dateCopy];
    v9 = [v8 components:254 fromDate:v5];
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    [v8 setTimeZone:systemTimeZone];

    v11 = [v8 dateFromComponents:v9];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v5;
    }

    v7 = v13;
  }

  return v7;
}

- (void)setEndDate:(id)date withTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if (zoneCopy)
  {
    v7 = [(BSUIDefaultDateLabel *)self _localDateForDate:dateCopy inTimeZone:zoneCopy];
  }

  else
  {
    v7 = dateCopy;
  }

  v8 = v7;
  [(BSUIDefaultDateLabel *)self setTimeZoneRelativeEndDate:v7];
}

- (void)_resetEffectiveAllDayState:(uint64_t)state
{
  *(state + 840) = 0;
  v2 = *(state + 816);
  *(state + 816) = 0;

  v3 = *(state + 832);
  *(state + 832) = 0;

  v4 = *(state + 824);
  *(state + 824) = 0;
}

- (BOOL)isDateWithinEffectiveAllDayRange:(id)range
{
  rangeCopy = range;
  if (!self->_effectiveAllDayStartDate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSUIDefaultDateLabel.m" lineNumber:284 description:@"Effective all-day start date was nil."];
  }

  if (!self->_effectiveAllDayEndDate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSUIDefaultDateLabel.m" lineNumber:285 description:@"Effective all-day end date was nil."];
  }

  [rangeCopy timeIntervalSinceReferenceDate];
  v7 = v6;
  [(NSDate *)self->_effectiveAllDayStartDate timeIntervalSinceReferenceDate];
  if (v7 >= v8)
  {
    [(NSDate *)self->_effectiveAllDayEndDate timeIntervalSinceReferenceDate];
    v9 = v7 < v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_constructNonAllDayLabelStringWithDate:(char)date startTime:(int)time startIsToday:(int)today sameDayDates:(void *)dates eventOngoing:(int)ongoing withCurrentDate:(double)currentDate forStartLabel:
{
  v15 = a2;
  datesCopy = dates;
  if (self)
  {
    mEMORY[0x1E698E670] = [MEMORY[0x1E698E670] sharedInstance];
    mEMORY[0x1E698E678] = [MEMORY[0x1E698E678] sharedInstance];
    v19 = mEMORY[0x1E698E678];
    if ((date & 1) != 0 || today)
    {
      if (ongoing)
      {
        if (today)
        {
          v20 = +[NSBundle bs_baseBoardUIBundle];
          v21 = [v20 localizedStringForKey:@"NOW" value:&stru_1F1587660 table:&stru_1F1587660];

LABEL_36:
          goto LABEL_37;
        }
      }

      else
      {
        [v15 timeIntervalSinceReferenceDate];
        if (!time)
        {
          v24 = v22;
          if (![v19 isTomorrow:?])
          {
            if ([v19 isWithinNextWeek:v24])
            {
              [mEMORY[0x1E698E670] formatDateAsAbbreviatedDayOfWeekWithTime:v15];
            }

            else
            {
              [mEMORY[0x1E698E670] formatDateAsShortDayMonthWithTimeStyle:v15];
            }
            v23 = ;
            goto LABEL_29;
          }

          goto LABEL_17;
        }
      }

      v23 = [mEMORY[0x1E698E670] formatDateAsTimeStyle:v15];
    }

    else
    {
      if ([mEMORY[0x1E698E678] isTomorrow:currentDate])
      {
        if (ongoing)
        {
LABEL_17:
          v23 = [mEMORY[0x1E698E670] formatDateAsRelativeDateAndTimeStyle:v15];
          goto LABEL_29;
        }

LABEL_35:
        v21 = 0;
        goto LABEL_36;
      }

      if ([v19 isWithinNextWeek:currentDate])
      {
        if ((ongoing & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        [datesCopy timeIntervalSinceReferenceDate];
        if (v25 < currentDate)
        {
          if (ongoing)
          {
            v23 = [mEMORY[0x1E698E670] formatDateAsShortDayMonthWithTimeStyle:v15];
            goto LABEL_29;
          }

          goto LABEL_35;
        }

        if ([v19 isYesterday:currentDate])
        {
          if (ongoing)
          {
            if (*(self + 857) == 1)
            {
              v23 = [mEMORY[0x1E698E670] formatDateAsRelativeDateStyle:v15];
              goto LABEL_29;
            }

            goto LABEL_17;
          }

          goto LABEL_35;
        }

        if (![v19 isWithinPrevWeek:1 includeToday:currentDate])
        {
          if (ongoing)
          {
            v23 = [mEMORY[0x1E698E670] formatDateAsDayMonthYearStyle:v15];
            goto LABEL_29;
          }

          goto LABEL_35;
        }

        if (!ongoing)
        {
          goto LABEL_35;
        }
      }

      v23 = [mEMORY[0x1E698E670] formatDateAsAbbreviatedDayOfWeekWithTime:v15];
    }

LABEL_29:
    v21 = v23;
    goto LABEL_36;
  }

  v21 = 0;
LABEL_37:

  return v21;
}

- (id)constructLabelString
{
  labelType = self->_labelType;
  if (labelType == 2)
  {
    if (!self->_timeZoneRelativeStartDate)
    {
LABEL_18:
      v17 = &stru_1F1587660;
      goto LABEL_77;
    }

    goto LABEL_6;
  }

  if (labelType == 1)
  {
LABEL_6:
    v4 = 808;
    goto LABEL_7;
  }

  if (labelType)
  {
    goto LABEL_8;
  }

  v4 = 880;
LABEL_7:
  if (!*(&self->super.super.super.super.isa + v4))
  {
    goto LABEL_18;
  }

LABEL_8:
  date = [MEMORY[0x1E695DF00] date];
  v6 = +[BSUIDefaultDateLabel _currentCalendar];
  mEMORY[0x1E698E678] = [MEMORY[0x1E698E678] sharedInstance];
  mEMORY[0x1E698E670] = [MEMORY[0x1E698E670] sharedInstance];
  v8 = self->_labelType;
  if (!self->_effectiveAllDay)
  {
    p_timeZoneRelativeStartDate = &self->_timeZoneRelativeStartDate;
    [(NSDate *)self->_timeZoneRelativeStartDate timeIntervalSinceReferenceDate];
    v20 = v19;
    v21 = [mEMORY[0x1E698E678] isToday:?];
    if (self->_timeZoneRelativeStartDate && self->_timeZoneRelativeEndDate)
    {
      v22 = [v6 date:? isSameDayAsDate:?];
      if ([date isAfterDate:*p_timeZoneRelativeStartDate])
      {
        v23 = [date isBeforeDate:self->_timeZoneRelativeEndDate];
LABEL_25:
        if (v8 == 2)
        {
          v24 = [(BSUIDefaultDateLabel *)self _constructNonAllDayLabelStringWithDate:v21 startTime:v22 startIsToday:v23 sameDayDates:date eventOngoing:1 withCurrentDate:v20 forStartLabel:?];
          v15 = [(BSUIDefaultDateLabel *)self _constructNonAllDayLabelStringWithDate:v21 startTime:v22 startIsToday:v23 sameDayDates:date eventOngoing:0 withCurrentDate:v20 forStartLabel:?];
          v25 = MEMORY[0x1E696AEC0];
          v17 = +[NSBundle bs_baseBoardUIBundle];
          v26 = [(__CFString *)v17 localizedStringForKey:@"DATE_RANGE_FORMAT_NEW" value:&stru_1F1587660 table:&stru_1F1587660];
          v27 = [v25 stringWithFormat:v26, v24, v15];

          v13 = 0;
        }

        else
        {
          if (v8)
          {
            p_timeZoneRelativeStartDate = &self->_timeZoneRelativeEndDate;
          }

          v13 = *p_timeZoneRelativeStartDate;
          if (v13)
          {
            v17 = [(BSUIDefaultDateLabel *)self _constructNonAllDayLabelStringWithDate:v13 startTime:v21 startIsToday:v22 sameDayDates:v23 eventOngoing:date withCurrentDate:v8 == 0 forStartLabel:v20];
          }

          else
          {
            v17 = &stru_1F1587660;
          }

          if (v8 != 1)
          {
            goto LABEL_75;
          }

          v31 = MEMORY[0x1E696AEC0];
          v15 = +[NSBundle bs_baseBoardUIBundle];
          v24 = [(__CFString *)v15 localizedStringForKey:@"TO_TIME_FORMAT" value:&stru_1F1587660 table:&stru_1F1587660];
          v27 = [v31 stringWithFormat:v24, v17];
        }

        v17 = v27;
LABEL_74:

LABEL_75:
        goto LABEL_76;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = 0;
    goto LABEL_25;
  }

  [(NSDate *)self->_effectiveAllDayStartDate timeIntervalSinceReferenceDate];
  v10 = v9;
  [(NSDate *)self->_effectiveAllDayLastValidDate timeIntervalSinceReferenceDate];
  v12 = v11;
  if (v8 - 1) > 1 || ([mEMORY[0x1E698E678] isToday:v11] & 1) != 0 || (objc_msgSend(v6, "date:isSameDayAsDate:", self->_effectiveAllDayStartDate, self->_effectiveAllDayLastValidDate))
  {
    v13 = 0;
  }

  else if ([mEMORY[0x1E698E678] isTomorrow:v12])
  {
    v34 = +[NSBundle bs_baseBoardUIBundle];
    v13 = [v34 localizedStringForKey:@"TOMORROW" value:&stru_1F1587660 table:&stru_1F1587660];
  }

  else
  {
    v38 = [mEMORY[0x1E698E678] isWithinNextWeek:v12];
    effectiveAllDayLastValidDate = self->_effectiveAllDayLastValidDate;
    if (v38)
    {
      [mEMORY[0x1E698E670] formatDateAsDayOfWeek:effectiveAllDayLastValidDate];
    }

    else
    {
      [mEMORY[0x1E698E670] formatDateAsAbbreviatedDayMonthStyle:effectiveAllDayLastValidDate];
    }
    v13 = ;
  }

  if ((v8 | 2) == 2)
  {
    if ([(BSUIDefaultDateLabel *)self isDateWithinEffectiveAllDayRange:date])
    {
      v14 = +[NSBundle bs_baseBoardUIBundle];
      v15 = [v14 localizedStringForKey:@"TODAY" value:&stru_1F1587660 table:&stru_1F1587660];

      if (v13)
      {
        v16 = MEMORY[0x1E696AEC0];
        +[NSBundle bs_baseBoardUIBundle];
        if (v8 != 2)
          v29 = {;
          v35 = [v29 localizedStringForKey:@"TODAY_TO_DATE_FORMAT" value:&stru_1F1587660 table:&stru_1F1587660];
          [v16 stringWithFormat:v35, v13];
          v37 = LABEL_53:;
LABEL_72:
          v17 = v37;

          goto LABEL_73;
        }

        v29 = LABEL_52:;
        v35 = [v29 localizedStringForKey:@"DATE_RANGE_FORMAT_NEW" value:&stru_1F1587660 table:&stru_1F1587660];
        [v16 stringWithFormat:v35, v15, v13];
        goto LABEL_53;
      }

      goto LABEL_68;
    }

    if ([mEMORY[0x1E698E678] isTomorrow:v10])
    {
      v30 = +[NSBundle bs_baseBoardUIBundle];
      v15 = [v30 localizedStringForKey:@"TOMORROW" value:&stru_1F1587660 table:&stru_1F1587660];

      if (v13)
      {
        v16 = MEMORY[0x1E696AEC0];
        +[NSBundle bs_baseBoardUIBundle];
        if (v8 != 2)
          v29 = {;
          v35 = [v29 localizedStringForKey:@"TOMORROW_TO_DATE_FORMAT" value:&stru_1F1587660 table:&stru_1F1587660];
          [v16 stringWithFormat:v35, v13];
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      goto LABEL_68;
    }

    [date timeIntervalSinceReferenceDate];
    if (v10 <= v32)
    {
      if ([mEMORY[0x1E698E678] isYesterday:v12])
      {
        v36 = +[NSBundle bs_baseBoardUIBundle];
        v15 = [v36 localizedStringForKey:@"YESTERDAY" value:&stru_1F1587660 table:&stru_1F1587660];

        if (v13)
        {
          v16 = MEMORY[0x1E696AEC0];
          +[NSBundle bs_baseBoardUIBundle];
          if (v8 != 2)
            v29 = {;
            v35 = [v29 localizedStringForKey:@"YESTERDAY_TO_DATE_FORMAT" value:&stru_1F1587660 table:&stru_1F1587660];
            [v16 stringWithFormat:v35, v13];
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        goto LABEL_68;
      }

      v40 = [mEMORY[0x1E698E678] isWithinPrevWeek:1 includeToday:v12];
      v41 = self->_effectiveAllDayLastValidDate;
      if (v40)
      {
        v15 = [mEMORY[0x1E698E670] formatDateAsDayOfWeek:v41];
        if (v13)
        {
          v33 = MEMORY[0x1E696AEC0];
          +[NSBundle bs_baseBoardUIBundle];
          if (v8 != 2)
            v29 = {;
            [v29 localizedStringForKey:@"DAYOFWEEK_TO_DATE_FORMAT" value:&stru_1F1587660 table:&stru_1F1587660];
            goto LABEL_67;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v15 = [mEMORY[0x1E698E670] formatDateAsDayMonthYearStyle:v41];
        if (v13)
        {
          v33 = MEMORY[0x1E696AEC0];
          +[NSBundle bs_baseBoardUIBundle];
          if (v8 != 2)
            v29 = {;
            [v29 localizedStringForKey:@"DAYMONTHYEAR_TO_DATE_FORMAT" value:&stru_1F1587660 table:&stru_1F1587660];
            goto LABEL_67;
          }

          goto LABEL_66;
        }
      }
    }

    else
    {
      v15 = [mEMORY[0x1E698E670] formatDateAsAbbreviatedDayMonthStyle:self->_effectiveAllDayStartDate];
      if (v13)
      {
        v33 = MEMORY[0x1E696AEC0];
        +[NSBundle bs_baseBoardUIBundle];
        if (v8 != 2)
          v29 = {;
          [v29 localizedStringForKey:@"DAYMONTH_TO_DATE_FORMAT" value:&stru_1F1587660 table:&stru_1F1587660];
          v35 = LABEL_67:;
          v37 = [v33 stringWithFormat:v35, v15, v13];
          goto LABEL_72;
        }

        v29 = LABEL_66:;
        [v29 localizedStringForKey:@"DATE_RANGE_FORMAT_NEW" value:&stru_1F1587660 table:&stru_1F1587660];
        goto LABEL_67;
      }
    }

LABEL_68:
    v15 = v15;
    v17 = v15;
    goto LABEL_74;
  }

  if (v13)
  {
    v28 = MEMORY[0x1E696AEC0];
    v15 = +[NSBundle bs_baseBoardUIBundle];
    v29 = [(__CFString *)v15 localizedStringForKey:@"TO_DATE_FORMAT" value:&stru_1F1587660 table:&stru_1F1587660];
    v17 = [v28 stringWithFormat:v29, v13];
LABEL_73:

    goto LABEL_74;
  }

  v17 = &stru_1F1587660;
LABEL_76:

LABEL_77:

  return v17;
}

- (void)updateTextIfNecessary:(uint64_t)necessary
{
  if (necessary)
  {
    if ((a2 & 1) != 0 || *(necessary + 841) != 1)
    {
      constructLabelString = [necessary constructLabelString];
      text = [necessary text];
      v4 = [constructLabelString isEqual:text];

      if ((v4 & 1) == 0)
      {
        [necessary setText:constructLabelString];
        [necessary setNeedsDisplay];
        WeakRetained = objc_loadWeakRetained((necessary + 864));
        v6 = WeakRetained;
        if (WeakRetained)
        {
          [WeakRetained dateLabelDidChange:necessary];
        }
      }
    }

    else
    {
      *(necessary + 842) = 1;
    }
  }
}

- (void)_updateTimerFired:(id)fired
{
  [(BSUIDefaultDateLabel *)self update];
  [(BSUIDefaultDateLabel *)self _invalidateTimer];

  [(BSUIDefaultDateLabel *)&self->super.super.super.super.isa _configureTimer];
}

- (BSUIDateLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end