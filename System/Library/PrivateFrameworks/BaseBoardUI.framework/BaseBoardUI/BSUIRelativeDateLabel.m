@interface BSUIRelativeDateLabel
- (id)_timelineIdentifier;
- (id)_timelinesForDateInterval:(id)a3;
- (id)constructLabelString;
- (void)_setOverrideTimerFireInfo:(id)a3;
- (void)_timelinesForDateInterval:(id)a3 completion:(id)a4;
- (void)_updateWithFrameSpecifier:(id)a3;
- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setTimeZoneRelativeStartDate:(id)a3 absoluteStartDate:(id)a4;
- (void)timerFiredWithValue:(unint64_t)a3 forResolution:(unint64_t)a4 comparedToNow:(int64_t)a5;
- (void)willMoveToWindow:(id)a3;
@end

@implementation BSUIRelativeDateLabel

- (id)constructLabelString
{
  v45 = *MEMORY[0x1E69E9840];
  overrideTimerFireInfo = self->_overrideTimerFireInfo;
  if (overrideTimerFireInfo)
  {
    value = [(BSRelativeDateTimerFireInfo *)overrideTimerFireInfo value];
    resolution = [(BSRelativeDateTimerFireInfo *)self->_overrideTimerFireInfo resolution];
    comparedToNow = [(BSRelativeDateTimerFireInfo *)self->_overrideTimerFireInfo comparedToNow];
  }

  else
  {
    value = self->_value;
    resolution = self->_resolution;
    comparedToNow = self->_comparedToNow;
  }

  v8 = [(BSUIDefaultDateLabel *)self timeZoneRelativeStartDate];

  if (v8)
  {
    if ([(BSUIDefaultDateLabel *)self isEffectiveAllDay])
    {
      v31.receiver = self;
      v31.super_class = BSUIRelativeDateLabel;
      v9 = [(BSUIDefaultDateLabel *)&v31 constructLabelString];
      goto LABEL_8;
    }

    if (resolution <= 1)
    {
      if (resolution)
      {
        if (resolution != 1)
        {
          goto LABEL_41;
        }

        v11 = MEMORY[0x1E696AEC0];
        v12 = +[NSBundle bs_baseBoardUIBundle];
        v13 = v12;
        if (comparedToNow == 1)
        {
          [v12 localizedStringForKey:@"RELATIVE_DATE_FUTURE_MINUTES" value:&stru_1F1587660 table:&stru_1F1587660];
        }

        else
        {
          [v12 localizedStringForKey:@"RELATIVE_DATE_PAST_MINUTES" value:&stru_1F1587660 table:&stru_1F1587660];
        }
      }

      else
      {
        v11 = MEMORY[0x1E696AEC0];
        v14 = +[NSBundle bs_baseBoardUIBundle];
        v13 = v14;
        if (comparedToNow == 1)
        {
          [v14 localizedStringForKey:@"RELATIVE_DATE_FUTURE_SECONDS" value:&stru_1F1587660 table:&stru_1F1587660];
        }

        else
        {
          [v14 localizedStringForKey:@"RELATIVE_DATE_PAST_SECONDS" value:&stru_1F1587660 table:&stru_1F1587660];
        }
      }

      goto LABEL_31;
    }

    if (resolution == 2)
    {
      if ((comparedToNow != 1 || value <= 1) && (comparedToNow == 1 || value < 4))
      {
        v11 = MEMORY[0x1E696AEC0];
        v17 = +[NSBundle bs_baseBoardUIBundle];
        v13 = v17;
        if (comparedToNow == 1)
        {
          [v17 localizedStringForKey:@"RELATIVE_DATE_FUTURE_HOURS" value:&stru_1F1587660 table:&stru_1F1587660];
        }

        else
        {
          [v17 localizedStringForKey:@"RELATIVE_DATE_PAST_HOURS" value:&stru_1F1587660 table:&stru_1F1587660];
        }

        v18 = LABEL_31:;
        v19 = [v11 localizedStringWithFormat:v18, value];
        goto LABEL_36;
      }

      v29.receiver = self;
      v29.super_class = BSUIRelativeDateLabel;
      v9 = [(BSUIDefaultDateLabel *)&v29 constructLabelString];
    }

    else
    {
      if (resolution != 3)
      {
        goto LABEL_41;
      }

      if (comparedToNow != 1)
      {
        v20 = MEMORY[0x1E696AEC0];
        v13 = +[NSBundle bs_baseBoardUIBundle];
        v18 = [v13 localizedStringForKey:@"RELATIVE_DATE_PAST_DAYS" value:&stru_1F1587660 table:&stru_1F1587660];
        v19 = [v20 localizedStringWithFormat:v18, value];
LABEL_36:
        v10 = v19;

        if (!v10)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v30.receiver = self;
      v30.super_class = BSUIRelativeDateLabel;
      v9 = [(BSUIDefaultDateLabel *)&v30 constructLabelString];
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = BSUIRelativeDateLabel;
    v9 = [(BSUIDefaultDateLabel *)&v32 constructLabelString];
  }

LABEL_8:
  v10 = v9;
  if (!v9)
  {
LABEL_41:
    v22 = MEMORY[0x1E696AEC0];
    v23 = [(BSUIDefaultDateLabel *)self timeZoneRelativeStartDate];
    v24 = [v22 stringWithFormat:@"value=%llu resolution=%u comparedToNow=%i timeZoneRelativeStartDate=%@ isEffectiveAllDay=%{BOOL}i", value, resolution, comparedToNow, v23, -[BSUIDefaultDateLabel isEffectiveAllDay](self, "isEffectiveAllDay")];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v34 = v25;
      v35 = 2114;
      v36 = v27;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSUIRelativeDateLabel.m";
      v41 = 1024;
      v42 = 137;
      v43 = 2114;
      v44 = v24;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D3A494);
  }

LABEL_37:

  return v10;
}

- (void)didMoveToWindow
{
  v5 = [(BSUIRelativeDateLabel *)self window];
  v3 = [v5 windowScene];
  v4 = [v3 _alwaysOnEnvironment];
  [v4 addObserver:self];
}

- (void)prepareForReuse
{
  [(BSRelativeDateTimer *)self->_relativeDateTimer invalidate];
  [(BSRelativeDateTimer *)self->_relativeDateTimer setDate:0];
  self->_value = 0;
  self->_comparedToNow = 0;
  self->_resolution = 0;
  overrideTimerFireInfo = self->_overrideTimerFireInfo;
  self->_overrideTimerFireInfo = 0;

  self->_invalidateTimelineOnReuse = 1;
  v4.receiver = self;
  v4.super_class = BSUIRelativeDateLabel;
  [(BSUIDefaultDateLabel *)&v4 prepareForReuse];
}

- (void)setTimeZoneRelativeStartDate:(id)a3 absoluteStartDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BSUIRelativeDateLabel;
  [(BSUIDefaultDateLabel *)&v11 setTimeZoneRelativeStartDate:v6 absoluteStartDate:v7];
  relativeDateTimer = self->_relativeDateTimer;
  if (v7 && !relativeDateTimer)
  {
    v9 = objc_alloc_init(MEMORY[0x1E698E758]);
    v10 = self->_relativeDateTimer;
    self->_relativeDateTimer = v9;

    [(BSRelativeDateTimer *)self->_relativeDateTimer setDelegate:self];
    relativeDateTimer = self->_relativeDateTimer;
  }

  [(BSRelativeDateTimer *)relativeDateTimer setDate:v7];
}

- (void)dealloc
{
  [(BSRelativeDateTimer *)self->_relativeDateTimer setDelegate:0];
  [(BSRelativeDateTimer *)self->_relativeDateTimer invalidate];
  v3.receiver = self;
  v3.super_class = BSUIRelativeDateLabel;
  [(BSUIDefaultDateLabel *)&v3 dealloc];
}

- (void)timerFiredWithValue:(unint64_t)a3 forResolution:(unint64_t)a4 comparedToNow:(int64_t)a5
{
  self->_value = a3;
  self->_resolution = a4;
  self->_comparedToNow = a5;
  [(BSUIDefaultDateLabel *)self updateTextIfNecessary];
}

- (void)willMoveToWindow:(id)a3
{
  v11 = a3;
  v4 = [(BSUIRelativeDateLabel *)self window];
  v5 = [v4 windowScene];
  v6 = [v5 _alwaysOnEnvironment];
  [v6 removeObserver:self];

  v7 = [v11 windowScene];
  v8 = v7;
  if (self->_invalidateTimelineOnReuse && v7 != 0)
  {
    v10 = [v7 _backlightSceneEnvironment];
    [v10 invalidateAllTimelinesForReason:@"BSUIRelativeDateLabel Reuse"];

    self->_invalidateTimelineOnReuse = 0;
  }
}

- (id)_timelineIdentifier
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSUIRelativeDateLabel: 0x%p", a1];
    v1 = vars8;
  }

  return a1;
}

- (void)_setOverrideTimerFireInfo:(id)a3
{
  v6 = a3;
  if (self->_overrideTimerFireInfo != v6)
  {
    v4 = [(BSRelativeDateTimerFireInfo *)v6 copy];
    overrideTimerFireInfo = self->_overrideTimerFireInfo;
    self->_overrideTimerFireInfo = v4;

    [(BSUIDefaultDateLabel *)self updateTextIfNecessary];
  }
}

- (id)_timelinesForDateInterval:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = [MEMORY[0x1E695DF70] array];
  relativeDateTimer = self->_relativeDateTimer;
  v6 = [v4 startDate];
  v7 = [(BSRelativeDateTimer *)relativeDateTimer nextFireAfterDate:v6];
  v8 = 0;
  while (1)
  {

    v9 = [v7 fireDate];
    v10 = [v4 containsDate:v9];

    if (!v10)
    {
      break;
    }

    [(BSUIRelativeDateLabel *)self _setOverrideTimerFireInfo:v7];
    v6 = [(BSUIRelativeDateLabel *)self text];
    v11 = [v8 isEqualToString:v6];
    v12 = [v6 copy];

    if ((v11 & 1) == 0)
    {
      if ([v7 resolution])
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = MEMORY[0x1E698E510];
      v15 = [v7 fireDate];
      v16 = [v7 copy];
      v17 = [v14 entryForPresentationTime:v15 withRequestedFidelity:v13 animated:0 userObject:v16];

      [v26 addObject:v17];
    }

    v18 = self->_relativeDateTimer;
    v19 = [v7 fireDate];
    v20 = [(BSRelativeDateTimer *)v18 nextFireAfterDate:v19];

    v8 = v12;
    v7 = v20;
  }

  [(BSUIRelativeDateLabel *)self _setOverrideTimerFireInfo:0];
  v21 = MEMORY[0x1E698E508];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSUIRelativeDateLabel: 0x%p", self];
  v23 = [v21 timelineWithEntries:v26 identifier:v22 configure:0];

  v27[0] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

  return v24;
}

- (void)_timelinesForDateInterval:(id)a3 completion:(id)a4
{
  v7 = a4;
  v6 = [(BSUIRelativeDateLabel *)self _timelinesForDateInterval:a3];
  if (v7)
  {
    v7[2](v7, v6);
  }
}

- (void)_updateWithFrameSpecifier:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = [(BSUIRelativeDateLabel *)self _timelineIdentifier];
    v5 = [v12 entrySpecifierForTimelineIdentifier:v4];

    v6 = [v5 timelineEntry];
    v7 = [v6 userObject];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [(BSUIRelativeDateLabel *)self _setOverrideTimerFireInfo:v11];
  }

  else
  {
    [(BSUIRelativeDateLabel *)self _setOverrideTimerFireInfo:0];
  }
}

- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(BSUIRelativeDateLabel *)self _updateWithFrameSpecifier:v7];
  if (v6)
  {
    v6[2](v6);
  }
}

@end