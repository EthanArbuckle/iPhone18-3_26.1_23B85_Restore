@interface MobileTimerAssistantAlarmSnippetCell
- (MobileTimerAssistantAlarmSnippetCell)initWithFrame:(CGRect)a3;
- (MobileTimerAssistantAlarmSnippetCellDelegate)delegate;
- (void)alarmActiveChanged:(id)a3;
- (void)refreshWithSleepMetadata:(id)a3;
- (void)setAlarm:(id)a3;
- (void)setupConstraints;
@end

@implementation MobileTimerAssistantAlarmSnippetCell

- (MobileTimerAssistantAlarmSnippetCell)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = MobileTimerAssistantAlarmSnippetCell;
  v3 = [(MobileTimerAssistantAlarmSnippetCell *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MTUIAlarmView alloc];
    [(MobileTimerAssistantAlarmSnippetCell *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    alarmView = v3->_alarmView;
    v3->_alarmView = v5;

    [(MTUIAlarmView *)v3->_alarmView setShouldAddLayoutConstraints:1];
    v7 = +[UIColor siriui_textColor];
    v8 = [(MTUIAlarmView *)v3->_alarmView timeLabel];
    [v8 setTextColor:v7];

    v9 = +[UIColor siriui_keylineColor];
    v10 = [(MTUIAlarmView *)v3->_alarmView enabledSwitch];
    [v10 setTintColor:v9];

    [(MobileTimerAssistantAlarmSnippetCell *)v3 textAndAccessoryInsets];
    [(MTUIAlarmView *)v3->_alarmView setLayoutMargins:?];
    v11 = [(MTUIAlarmView *)v3->_alarmView enabledSwitch];
    [v11 addTarget:v3 action:"alarmActiveChanged:" forControlEvents:4096];

    [(MobileTimerAssistantAlarmSnippetCell *)v3 addSubview:v3->_alarmView];
    [(MobileTimerAssistantAlarmSnippetCell *)v3 setupConstraints];
  }

  return v3;
}

- (void)setupConstraints
{
  v23 = objc_opt_new();
  v3 = [(MobileTimerAssistantAlarmSnippetCell *)self contentView];
  v4 = [v3 leadingAnchor];
  v5 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v23 addObject:v7];

  v8 = [(MobileTimerAssistantAlarmSnippetCell *)self contentView];
  v9 = [v8 trailingAnchor];
  v10 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v23 addObject:v12];

  v13 = [(MobileTimerAssistantAlarmSnippetCell *)self contentView];
  v14 = [v13 topAnchor];
  v15 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v23 addObject:v17];

  v18 = [(MobileTimerAssistantAlarmSnippetCell *)self contentView];
  v19 = [v18 bottomAnchor];
  v20 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

- (void)alarmActiveChanged:(id)a3
{
  v4 = a3;
  v6 = [(MobileTimerAssistantAlarmSnippetCell *)self delegate];
  v5 = [v4 isOn];

  [v6 setAlarmActive:v5 forCell:self];
}

- (void)setAlarm:(id)a3
{
  v5 = a3;
  alarm = self->_alarm;
  if (alarm != v5)
  {
    v18 = v5;
    v7 = alarm;
    objc_storeStrong(&self->_alarm, a3);
    if ([(MTAlarm *)self->_alarm isSleepAlarm]&& MTShouldHandleForEucalyptus())
    {
      v8 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
      v9 = [v8 enabledSwitch];
      [v9 setHidden:1];

      v10 = [(MobileTimerAssistantAlarmSnippetCell *)self sleepMetaData];
      [(MobileTimerAssistantAlarmSnippetCell *)self refreshWithSleepMetadata:v10];
    }

    else
    {
      v11 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
      v12 = [v11 enabledSwitch];
      [v12 setOn:-[MTAlarm isEnabled](self->_alarm animated:{"isEnabled"), v7 != 0}];

      if ([(MTAlarm *)self->_alarm repeatSchedule])
      {
        v10 = DateMaskToString();
      }

      else
      {
        v10 = 0;
      }

      v13 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
      v14 = [(MTAlarm *)self->_alarm displayTitle];
      v15 = +[UIColor siriui_textColor];
      [v13 setName:v14 andRepeatText:v10 textColor:v15];

      v16 = [(MobileTimerAssistantAlarmSnippetCell *)self alarmView];
      v17 = [v16 timeLabel];
      [v17 setHour:-[MTAlarm hour](self->_alarm minute:{"hour"), -[MTAlarm minute](self->_alarm, "minute")}];
    }

    v5 = v18;
  }
}

- (void)refreshWithSleepMetadata:(id)a3
{
  v14 = a3;
  v4 = [v14 displaysTime];
  v5 = [(MTUIAlarmView *)self->_alarmView timeLabel];
  if (v4)
  {
    v6 = [v14 alarmComponents];
    v7 = [v6 hour];
    v8 = [v14 alarmComponents];
    [v5 setHour:v7 minute:{objc_msgSend(v8, "minute")}];
  }

  else
  {
    v6 = [v14 mainDescription];
    [v5 setTimeLabelText:v6];
  }

  v9 = +[UIColor siriui_textColor];
  v10 = [(MTUIAlarmView *)self->_alarmView timeLabel];
  [v10 setTextColor:v9];

  alarmView = self->_alarmView;
  v12 = [v14 detailedDescription];
  v13 = +[UIColor siriui_textColor];
  [(MTUIAlarmView *)alarmView setName:0 andRepeatText:v12 textColor:v13];

  [(MTUIAlarmView *)self->_alarmView setNeedsLayout];
}

- (MobileTimerAssistantAlarmSnippetCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end