@interface EKCalendarItemAlarmEditItem
- (BOOL)_alarmsMatchCalendarItem;
- (BOOL)_calendarItemHasLeaveNowAlarm;
- (BOOL)configureForCalendarConstraints:(id)a3;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)footerTitle;
- (unint64_t)numberOfSubitems;
- (void)_updateAlarms;
- (void)refreshFromCalendarItemAndStore;
- (void)setCalendarItem:(id)a3 store:(id)a4;
- (void)ttlLocationStatusChanged:(id)a3;
@end

@implementation EKCalendarItemAlarmEditItem

- (void)setCalendarItem:(id)a3 store:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = EKCalendarItemAlarmEditItem;
  [(EKCalendarItemEditItem *)&v13 setCalendarItem:v6 store:a4];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69932B0];
  v9 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
  [v7 removeObserver:self name:v8 object:v9];

  if (v6)
  {
    v10 = [objc_alloc(MEMORY[0x1E6993378]) initWithCalendarItem:v6];
    [(EKCalendarItemAlarmEditItem *)self setAlarmsViewModel:v10];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
    [v11 addObserver:self selector:sel_ttlLocationStatusChanged_ name:v8 object:v12];
  }

  else
  {
    [(EKCalendarItemAlarmEditItem *)self setAlarmsViewModel:0];
  }

  [(EKCalendarItemAlarmEditItem *)self _updateAlarms];
}

- (unint64_t)numberOfSubitems
{
  v3 = [(EKCalendarItemEditItem *)self calendarItem];
  v4 = [v3 calendar];
  v5 = [v4 source];
  v6 = [v5 constraints];
  v7 = [v6 maxAlarmsAllowed];

  v8 = [(NSArray *)self->_alarms count];
  v9 = 1;
  if (self->_hasLeaveNowAlarm)
  {
    v9 = 2;
  }

  v10 = v9 + v8;
  if (v7 == -1)
  {
    v11 = 2;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_alarms count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_alarms objectAtIndexedSubscript:a3];
  }

  v6 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  v7 = v6;
  if (v5)
  {
    v8 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
    -[EKUIPopupTableViewCell setTitleStrikethrough:](v7, "setTitleStrikethrough:", [v8 isAlarmEffectivelyDisabled:v5]);
  }

  else
  {
    [(EKUIPopupTableViewCell *)v6 setTitleStrikethrough:0];
  }

  v9 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__EKCalendarItemAlarmEditItem_cellForSubitemAtIndex___block_invoke;
  v15[3] = &unk_1E8442018;
  v15[4] = self;
  v15[5] = a3;
  v10 = [v9 menuForAlarmAtIndex:a3 actionHandler:v15];
  [(EKUIPopupTableViewCell *)v7 setPopupMenu:v10];

  v11 = [MEMORY[0x1E6993378] labelTextForIndex:a3];
  v12 = [(EKUIPopupTableViewCell *)v7 textLabel];
  [v12 setText:v11];

  v13 = [MEMORY[0x1E6993378] accessibilityIdentifierForIndex:a3];
  [(EKUIPopupTableViewCell *)v7 setAccessibilityIdentifier:v13];

  return v7;
}

void __53__EKCalendarItemAlarmEditItem_cellForSubitemAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) alarmsViewModel];

  if (v7)
  {
    v8 = [*(a1 + 32) alarmsViewModel];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__EKCalendarItemAlarmEditItem_cellForSubitemAtIndex___block_invoke_2;
    v11[3] = &unk_1E843FFA0;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    [v8 updatedUIAlarmFromUIAlarm:v5 toUIAlarm:v6 atIndex:v9 completion:v11];
  }

  else
  {
    v10 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[EKCalendarItemAlarmEditItem cellForSubitemAtIndex:]_block_invoke";
      _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, "Error: %s: 'alarmsViewModel' should not be nil", buf, 0xCu);
    }
  }
}

uint64_t __53__EKCalendarItemAlarmEditItem_cellForSubitemAtIndex___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) _updateAlarms];
    [*(v2 + 32) notifySubitemDidSave:0];
    v3 = *(v2 + 32);

    return [v3 editItemViewController:0 didCompleteWithAction:2];
  }

  return result;
}

- (id)footerTitle
{
  v3 = [(EKCalendarItemEditItem *)self calendarItem];
  v4 = [v3 calendar];
  v5 = [v4 isIgnoringEventAlerts];

  if (v5)
  {
    v6 = [(EKCalendarItemEditItem *)self calendarItem];
    v7 = [v6 calendar];
    v8 = CUIKDisplayedTitleForCalendar();

    v9 = EventKitUIBundle();
    v10 = [v9 localizedStringForKey:@"Event Alerts" value:&stru_1F4EF6790 table:0];

    v11 = MEMORY[0x1E696AEC0];
    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"Alerts for this calendar are disabled.\nTo allow this alert to fire value:enable ‘%@’ in the calendar settings for ‘%@’." table:{&stru_1F4EF6790, 0}];
    v14 = [v11 localizedStringWithFormat:v13, v10, v8];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = EKCalendarItemAlarmEditItem;
    v14 = [(EKCalendarItemEditItem *)&v16 footerTitle];
  }

  return v14;
}

- (BOOL)configureForCalendarConstraints:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(EKCalendarItemAlarmEditItem *)self _updateAlarms];
  v5 = [(EKCalendarItemEditItem *)self calendarItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v23 = self;
    v7 = [(EKCalendarItemEditItem *)self calendarItem];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [v7 alarms];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    v11 = *v26;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 isAbsolute])
        {
          v14 = [v13 absoluteDate];
          v15 = [v7 startDate];
          v16 = [v14 compare:v15];

          if (v16 != 1)
          {
            continue;
          }
        }

        else
        {
          [v13 relativeOffset];
          if (v17 <= 0.0)
          {
            continue;
          }
        }

        v18 = [v4 source];
        v19 = [v18 constraints];
        v20 = [v19 supportsAlarmsTriggeringAfterStartDate];

        if ((v20 & 1) == 0)
        {
          [v7 removeAlarm:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v10)
      {
LABEL_15:

        self = v23;
        break;
      }
    }
  }

  v24.receiver = self;
  v24.super_class = EKCalendarItemAlarmEditItem;
  v21 = [(EKCalendarItemEditItem *)&v24 configureForCalendarConstraints:v4];

  return v21;
}

- (BOOL)_calendarItemHasLeaveNowAlarm
{
  v3 = [(EKCalendarItemEditItem *)self calendarItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([v5 eligibleForTravelAdvisories])
  {
    v6 = [v5 travelAdvisoryBehaviorIsEffectivelyEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateAlarms
{
  v3 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
  [v3 setNeedsUpdate];

  v4 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
  v5 = [v4 uiAlarms];

  alarms = self->_alarms;
  self->_alarms = v5;
}

- (void)refreshFromCalendarItemAndStore
{
  v3.receiver = self;
  v3.super_class = EKCalendarItemAlarmEditItem;
  [(EKCalendarItemEditItem *)&v3 refreshFromCalendarItemAndStore];
  [(EKCalendarItemAlarmEditItem *)self _updateAlarms];
}

- (void)ttlLocationStatusChanged:(id)a3
{
  v4 = [(EKCalendarItemEditItem *)self delegate];
  v5 = [v4 rowNumberForEditItem:self];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__EKCalendarItemAlarmEditItem_ttlLocationStatusChanged___block_invoke;
  v6[3] = &unk_1E843F690;
  v6[4] = self;
  v6[5] = v5;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
}

void __56__EKCalendarItemAlarmEditItem_ttlLocationStatusChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) numberOfSubitems];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      v5 = [MEMORY[0x1E696AC88] indexPathForRow:i + *(a1 + 40) inSection:0];
      v6 = [*(a1 + 32) delegate];
      [v6 editItem:*(a1 + 32) wantsRowReload:v5];
    }
  }
}

- (BOOL)_alarmsMatchCalendarItem
{
  v3 = [(EKCalendarItemEditItem *)self calendarItem];
  v4 = [(EKCalendarItemAlarmEditItem *)self _calendarItemHasLeaveNowAlarm];
  if (self->_hasLeaveNowAlarm == v4 && (v5 = v4, [v3 alarms], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, -[NSArray count](self->_alarms, "count") == v7 + v5))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v8 = [(EKCalendarItemEditItem *)self calendarItem];
    v9 = [v8 alarms];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__EKCalendarItemAlarmEditItem__alarmsMatchCalendarItem__block_invoke;
    v12[3] = &unk_1E8442040;
    v12[4] = self;
    v12[5] = &v13;
    [v9 enumerateObjectsUsingBlock:v12];

    v10 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __55__EKCalendarItemAlarmEditItem__alarmsMatchCalendarItem__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 56);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  v10 = [v9 alarm];
  v11 = [v8 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  v4 = [(EKCalendarItemAlarmEditItem *)self _alarmsMatchCalendarItem];
  if (!v4)
  {
    [(EKCalendarItemAlarmEditItem *)self _updateAlarms];
  }

  return !v4;
}

@end