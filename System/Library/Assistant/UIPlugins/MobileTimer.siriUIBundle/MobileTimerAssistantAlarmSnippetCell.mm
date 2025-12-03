@interface MobileTimerAssistantAlarmSnippetCell
- (MobileTimerAssistantAlarmSnippetCell)initWithFrame:(CGRect)frame;
- (MobileTimerAssistantAlarmSnippetCellDelegate)delegate;
- (void)alarmActiveChanged:(id)changed;
- (void)refreshWithSleepMetadata:(id)metadata;
- (void)setAlarm:(id)alarm;
- (void)setupConstraints;
@end

@implementation MobileTimerAssistantAlarmSnippetCell

- (MobileTimerAssistantAlarmSnippetCell)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = MobileTimerAssistantAlarmSnippetCell;
  v3 = [(MobileTimerAssistantAlarmSnippetCell *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MTUIAlarmView alloc];
    [(MobileTimerAssistantAlarmSnippetCell *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    alarmView = v3->_alarmView;
    v3->_alarmView = v5;

    [(MTUIAlarmView *)v3->_alarmView setShouldAddLayoutConstraints:1];
    v7 = +[UIColor siriui_textColor];
    timeLabel = [(MTUIAlarmView *)v3->_alarmView timeLabel];
    [timeLabel setTextColor:v7];

    v9 = +[UIColor siriui_keylineColor];
    enabledSwitch = [(MTUIAlarmView *)v3->_alarmView enabledSwitch];
    [enabledSwitch setTintColor:v9];

    [(MobileTimerAssistantAlarmSnippetCell *)v3 textAndAccessoryInsets];
    [(MTUIAlarmView *)v3->_alarmView setLayoutMargins:?];
    enabledSwitch2 = [(MTUIAlarmView *)v3->_alarmView enabledSwitch];
    [enabledSwitch2 addTarget:v3 action:"alarmActiveChanged:" forControlEvents:4096];

    [(MobileTimerAssistantAlarmSnippetCell *)v3 addSubview:v3->_alarmView];
    [(MobileTimerAssistantAlarmSnippetCell *)v3 setupConstraints];
  }

  return v3;
}

- (void)setupConstraints
{
  v23 = objc_opt_new();
  contentView = [(MobileTimerAssistantAlarmSnippetCell *)self contentView];
  leadingAnchor = [contentView leadingAnchor];
  alarmView = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
  leadingAnchor2 = [alarmView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v23 addObject:v7];

  contentView2 = [(MobileTimerAssistantAlarmSnippetCell *)self contentView];
  trailingAnchor = [contentView2 trailingAnchor];
  alarmView2 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
  trailingAnchor2 = [alarmView2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v23 addObject:v12];

  contentView3 = [(MobileTimerAssistantAlarmSnippetCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  alarmView3 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
  topAnchor2 = [alarmView3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v23 addObject:v17];

  contentView4 = [(MobileTimerAssistantAlarmSnippetCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  alarmView4 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
  bottomAnchor2 = [alarmView4 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

- (void)alarmActiveChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(MobileTimerAssistantAlarmSnippetCell *)self delegate];
  isOn = [changedCopy isOn];

  [delegate setAlarmActive:isOn forCell:self];
}

- (void)setAlarm:(id)alarm
{
  alarmCopy = alarm;
  alarm = self->_alarm;
  if (alarm != alarmCopy)
  {
    v18 = alarmCopy;
    alarmCopy2 = alarm;
    objc_storeStrong(&self->_alarm, alarm);
    if ([(MTAlarm *)self->_alarm isSleepAlarm]&& MTShouldHandleForEucalyptus())
    {
      alarmView = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
      enabledSwitch = [alarmView enabledSwitch];
      [enabledSwitch setHidden:1];

      sleepMetaData = [(MobileTimerAssistantAlarmSnippetCell *)self sleepMetaData];
      [(MobileTimerAssistantAlarmSnippetCell *)self refreshWithSleepMetadata:sleepMetaData];
    }

    else
    {
      alarmView2 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
      enabledSwitch2 = [alarmView2 enabledSwitch];
      [enabledSwitch2 setOn:-[MTAlarm isEnabled](self->_alarm animated:{"isEnabled"), alarmCopy2 != 0}];

      if ([(MTAlarm *)self->_alarm repeatSchedule])
      {
        sleepMetaData = DateMaskToString();
      }

      else
      {
        sleepMetaData = 0;
      }

      alarmView3 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
      displayTitle = [(MTAlarm *)self->_alarm displayTitle];
      v15 = +[UIColor siriui_textColor];
      [alarmView3 setName:displayTitle andRepeatText:sleepMetaData textColor:v15];

      alarmView4 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
      timeLabel = [alarmView4 timeLabel];
      [timeLabel setHour:-[MTAlarm hour](self->_alarm minute:{"hour"), -[MTAlarm minute](self->_alarm, "minute")}];
    }

    alarmCopy = v18;
  }
}

- (void)refreshWithSleepMetadata:(id)metadata
{
  metadataCopy = metadata;
  displaysTime = [metadataCopy displaysTime];
  timeLabel = [(MTUIAlarmView *)self->_alarmView timeLabel];
  if (displaysTime)
  {
    alarmComponents = [metadataCopy alarmComponents];
    hour = [alarmComponents hour];
    alarmComponents2 = [metadataCopy alarmComponents];
    [timeLabel setHour:hour minute:{objc_msgSend(alarmComponents2, "minute")}];
  }

  else
  {
    alarmComponents = [metadataCopy mainDescription];
    [timeLabel setTimeLabelText:alarmComponents];
  }

  v9 = +[UIColor siriui_textColor];
  timeLabel2 = [(MTUIAlarmView *)self->_alarmView timeLabel];
  [timeLabel2 setTextColor:v9];

  alarmView = self->_alarmView;
  detailedDescription = [metadataCopy detailedDescription];
  v13 = +[UIColor siriui_textColor];
  [(MTUIAlarmView *)alarmView setName:0 andRepeatText:detailedDescription textColor:v13];

  [(MTUIAlarmView *)self->_alarmView setNeedsLayout];
}

- (MobileTimerAssistantAlarmSnippetCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end