@interface BSUIRelativeDateLabel
- (id)_timelineIdentifier;
- (id)_timelinesForDateInterval:(id)interval;
- (id)constructLabelString;
- (void)_setOverrideTimerFireInfo:(id)info;
- (void)_timelinesForDateInterval:(id)interval completion:(id)completion;
- (void)_updateWithFrameSpecifier:(id)specifier;
- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setTimeZoneRelativeStartDate:(id)date absoluteStartDate:(id)startDate;
- (void)timerFiredWithValue:(unint64_t)value forResolution:(unint64_t)resolution comparedToNow:(int64_t)now;
- (void)willMoveToWindow:(id)window;
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

  timeZoneRelativeStartDate = [(BSUIDefaultDateLabel *)self timeZoneRelativeStartDate];

  if (timeZoneRelativeStartDate)
  {
    if ([(BSUIDefaultDateLabel *)self isEffectiveAllDay])
    {
      v31.receiver = self;
      v31.super_class = BSUIRelativeDateLabel;
      constructLabelString = [(BSUIDefaultDateLabel *)&v31 constructLabelString];
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
        value = [v11 localizedStringWithFormat:v18, value];
        goto LABEL_36;
      }

      v29.receiver = self;
      v29.super_class = BSUIRelativeDateLabel;
      constructLabelString = [(BSUIDefaultDateLabel *)&v29 constructLabelString];
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
        value = [v20 localizedStringWithFormat:v18, value];
LABEL_36:
        v10 = value;

        if (!v10)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v30.receiver = self;
      v30.super_class = BSUIRelativeDateLabel;
      constructLabelString = [(BSUIDefaultDateLabel *)&v30 constructLabelString];
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = BSUIRelativeDateLabel;
    constructLabelString = [(BSUIDefaultDateLabel *)&v32 constructLabelString];
  }

LABEL_8:
  v10 = constructLabelString;
  if (!constructLabelString)
  {
LABEL_41:
    v22 = MEMORY[0x1E696AEC0];
    timeZoneRelativeStartDate2 = [(BSUIDefaultDateLabel *)self timeZoneRelativeStartDate];
    v24 = [v22 stringWithFormat:@"value=%llu resolution=%u comparedToNow=%i timeZoneRelativeStartDate=%@ isEffectiveAllDay=%{BOOL}i", value, resolution, comparedToNow, timeZoneRelativeStartDate2, -[BSUIDefaultDateLabel isEffectiveAllDay](self, "isEffectiveAllDay")];

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
      selfCopy = self;
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
  window = [(BSUIRelativeDateLabel *)self window];
  windowScene = [window windowScene];
  _alwaysOnEnvironment = [windowScene _alwaysOnEnvironment];
  [_alwaysOnEnvironment addObserver:self];
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

- (void)setTimeZoneRelativeStartDate:(id)date absoluteStartDate:(id)startDate
{
  dateCopy = date;
  startDateCopy = startDate;
  v11.receiver = self;
  v11.super_class = BSUIRelativeDateLabel;
  [(BSUIDefaultDateLabel *)&v11 setTimeZoneRelativeStartDate:dateCopy absoluteStartDate:startDateCopy];
  relativeDateTimer = self->_relativeDateTimer;
  if (startDateCopy && !relativeDateTimer)
  {
    v9 = objc_alloc_init(MEMORY[0x1E698E758]);
    v10 = self->_relativeDateTimer;
    self->_relativeDateTimer = v9;

    [(BSRelativeDateTimer *)self->_relativeDateTimer setDelegate:self];
    relativeDateTimer = self->_relativeDateTimer;
  }

  [(BSRelativeDateTimer *)relativeDateTimer setDate:startDateCopy];
}

- (void)dealloc
{
  [(BSRelativeDateTimer *)self->_relativeDateTimer setDelegate:0];
  [(BSRelativeDateTimer *)self->_relativeDateTimer invalidate];
  v3.receiver = self;
  v3.super_class = BSUIRelativeDateLabel;
  [(BSUIDefaultDateLabel *)&v3 dealloc];
}

- (void)timerFiredWithValue:(unint64_t)value forResolution:(unint64_t)resolution comparedToNow:(int64_t)now
{
  self->_value = value;
  self->_resolution = resolution;
  self->_comparedToNow = now;
  [(BSUIDefaultDateLabel *)self updateTextIfNecessary];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  window = [(BSUIRelativeDateLabel *)self window];
  windowScene = [window windowScene];
  _alwaysOnEnvironment = [windowScene _alwaysOnEnvironment];
  [_alwaysOnEnvironment removeObserver:self];

  windowScene2 = [windowCopy windowScene];
  v8 = windowScene2;
  if (self->_invalidateTimelineOnReuse && windowScene2 != 0)
  {
    _backlightSceneEnvironment = [windowScene2 _backlightSceneEnvironment];
    [_backlightSceneEnvironment invalidateAllTimelinesForReason:@"BSUIRelativeDateLabel Reuse"];

    self->_invalidateTimelineOnReuse = 0;
  }
}

- (id)_timelineIdentifier
{
  if (self)
  {
    self = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSUIRelativeDateLabel: 0x%p", self];
    v1 = vars8;
  }

  return self;
}

- (void)_setOverrideTimerFireInfo:(id)info
{
  infoCopy = info;
  if (self->_overrideTimerFireInfo != infoCopy)
  {
    v4 = [(BSRelativeDateTimerFireInfo *)infoCopy copy];
    overrideTimerFireInfo = self->_overrideTimerFireInfo;
    self->_overrideTimerFireInfo = v4;

    [(BSUIDefaultDateLabel *)self updateTextIfNecessary];
  }
}

- (id)_timelinesForDateInterval:(id)interval
{
  v27[1] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  array = [MEMORY[0x1E695DF70] array];
  relativeDateTimer = self->_relativeDateTimer;
  startDate = [intervalCopy startDate];
  v7 = [(BSRelativeDateTimer *)relativeDateTimer nextFireAfterDate:startDate];
  v8 = 0;
  while (1)
  {

    fireDate = [v7 fireDate];
    v10 = [intervalCopy containsDate:fireDate];

    if (!v10)
    {
      break;
    }

    [(BSUIRelativeDateLabel *)self _setOverrideTimerFireInfo:v7];
    startDate = [(BSUIRelativeDateLabel *)self text];
    v11 = [v8 isEqualToString:startDate];
    v12 = [startDate copy];

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
      fireDate2 = [v7 fireDate];
      v16 = [v7 copy];
      v17 = [v14 entryForPresentationTime:fireDate2 withRequestedFidelity:v13 animated:0 userObject:v16];

      [array addObject:v17];
    }

    v18 = self->_relativeDateTimer;
    fireDate3 = [v7 fireDate];
    v20 = [(BSRelativeDateTimer *)v18 nextFireAfterDate:fireDate3];

    v8 = v12;
    v7 = v20;
  }

  [(BSUIRelativeDateLabel *)self _setOverrideTimerFireInfo:0];
  v21 = MEMORY[0x1E698E508];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSUIRelativeDateLabel: 0x%p", self];
  v23 = [v21 timelineWithEntries:array identifier:v22 configure:0];

  v27[0] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

  return v24;
}

- (void)_timelinesForDateInterval:(id)interval completion:(id)completion
{
  completionCopy = completion;
  v6 = [(BSUIRelativeDateLabel *)self _timelinesForDateInterval:interval];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)_updateWithFrameSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    _timelineIdentifier = [(BSUIRelativeDateLabel *)self _timelineIdentifier];
    v5 = [specifierCopy entrySpecifierForTimelineIdentifier:_timelineIdentifier];

    timelineEntry = [v5 timelineEntry];
    userObject = [timelineEntry userObject];
    v8 = objc_opt_class();
    v9 = userObject;
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

- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion
{
  specifierCopy = specifier;
  completionCopy = completion;
  [(BSUIRelativeDateLabel *)self _updateWithFrameSpecifier:specifierCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end