@interface EKCalendarItemAlarmEditItem
- (BOOL)_alarmsMatchCalendarItem;
- (BOOL)_calendarItemHasLeaveNowAlarm;
- (BOOL)configureForCalendarConstraints:(id)constraints;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)footerTitle;
- (unint64_t)numberOfSubitems;
- (void)_updateAlarms;
- (void)refreshFromCalendarItemAndStore;
- (void)setCalendarItem:(id)item store:(id)store;
- (void)ttlLocationStatusChanged:(id)changed;
@end

@implementation EKCalendarItemAlarmEditItem

- (void)setCalendarItem:(id)item store:(id)store
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = EKCalendarItemAlarmEditItem;
  [(EKCalendarItemEditItem *)&v13 setCalendarItem:itemCopy store:store];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69932B0];
  alarmsViewModel = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
  [defaultCenter removeObserver:self name:v8 object:alarmsViewModel];

  if (itemCopy)
  {
    v10 = [objc_alloc(MEMORY[0x1E6993378]) initWithCalendarItem:itemCopy];
    [(EKCalendarItemAlarmEditItem *)self setAlarmsViewModel:v10];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    alarmsViewModel2 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
    [defaultCenter2 addObserver:self selector:sel_ttlLocationStatusChanged_ name:v8 object:alarmsViewModel2];
  }

  else
  {
    [(EKCalendarItemAlarmEditItem *)self setAlarmsViewModel:0];
  }

  [(EKCalendarItemAlarmEditItem *)self _updateAlarms];
}

- (unint64_t)numberOfSubitems
{
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  calendar = [calendarItem calendar];
  source = [calendar source];
  constraints = [source constraints];
  maxAlarmsAllowed = [constraints maxAlarmsAllowed];

  v8 = [(NSArray *)self->_alarms count];
  v9 = 1;
  if (self->_hasLeaveNowAlarm)
  {
    v9 = 2;
  }

  v10 = v9 + v8;
  if (maxAlarmsAllowed == -1)
  {
    v11 = 2;
  }

  else
  {
    v11 = maxAlarmsAllowed;
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

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_alarms count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_alarms objectAtIndexedSubscript:index];
  }

  v6 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  v7 = v6;
  if (v5)
  {
    alarmsViewModel = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
    -[EKUIPopupTableViewCell setTitleStrikethrough:](v7, "setTitleStrikethrough:", [alarmsViewModel isAlarmEffectivelyDisabled:v5]);
  }

  else
  {
    [(EKUIPopupTableViewCell *)v6 setTitleStrikethrough:0];
  }

  alarmsViewModel2 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__EKCalendarItemAlarmEditItem_cellForSubitemAtIndex___block_invoke;
  v15[3] = &unk_1E8442018;
  v15[4] = self;
  v15[5] = index;
  v10 = [alarmsViewModel2 menuForAlarmAtIndex:index actionHandler:v15];
  [(EKUIPopupTableViewCell *)v7 setPopupMenu:v10];

  v11 = [MEMORY[0x1E6993378] labelTextForIndex:index];
  textLabel = [(EKUIPopupTableViewCell *)v7 textLabel];
  [textLabel setText:v11];

  v13 = [MEMORY[0x1E6993378] accessibilityIdentifierForIndex:index];
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
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  calendar = [calendarItem calendar];
  isIgnoringEventAlerts = [calendar isIgnoringEventAlerts];

  if (isIgnoringEventAlerts)
  {
    calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
    calendar2 = [calendarItem2 calendar];
    v8 = CUIKDisplayedTitleForCalendar();

    v9 = EventKitUIBundle();
    v10 = [v9 localizedStringForKey:@"Event Alerts" value:&stru_1F4EF6790 table:0];

    v11 = MEMORY[0x1E696AEC0];
    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"Alerts for this calendar are disabled.\nTo allow this alert to fire value:enable ‘%@’ in the calendar settings for ‘%@’." table:{&stru_1F4EF6790, 0}];
    footerTitle = [v11 localizedStringWithFormat:v13, v10, v8];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = EKCalendarItemAlarmEditItem;
    footerTitle = [(EKCalendarItemEditItem *)&v16 footerTitle];
  }

  return footerTitle;
}

- (BOOL)configureForCalendarConstraints:(id)constraints
{
  v30 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  [(EKCalendarItemAlarmEditItem *)self _updateAlarms];
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selfCopy = self;
    calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    alarms = [calendarItem2 alarms];
    v9 = [alarms countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(alarms);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 isAbsolute])
        {
          absoluteDate = [v13 absoluteDate];
          startDate = [calendarItem2 startDate];
          v16 = [absoluteDate compare:startDate];

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

        source = [constraintsCopy source];
        constraints = [source constraints];
        supportsAlarmsTriggeringAfterStartDate = [constraints supportsAlarmsTriggeringAfterStartDate];

        if ((supportsAlarmsTriggeringAfterStartDate & 1) == 0)
        {
          [calendarItem2 removeAlarm:v13];
        }
      }

      v10 = [alarms countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v10)
      {
LABEL_15:

        self = selfCopy;
        break;
      }
    }
  }

  v24.receiver = self;
  v24.super_class = EKCalendarItemAlarmEditItem;
  v21 = [(EKCalendarItemEditItem *)&v24 configureForCalendarConstraints:constraintsCopy];

  return v21;
}

- (BOOL)_calendarItemHasLeaveNowAlarm
{
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([calendarItem2 eligibleForTravelAdvisories])
  {
    travelAdvisoryBehaviorIsEffectivelyEnabled = [calendarItem2 travelAdvisoryBehaviorIsEffectivelyEnabled];
  }

  else
  {
    travelAdvisoryBehaviorIsEffectivelyEnabled = 0;
  }

  return travelAdvisoryBehaviorIsEffectivelyEnabled;
}

- (void)_updateAlarms
{
  alarmsViewModel = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
  [alarmsViewModel setNeedsUpdate];

  alarmsViewModel2 = [(EKCalendarItemAlarmEditItem *)self alarmsViewModel];
  uiAlarms = [alarmsViewModel2 uiAlarms];

  alarms = self->_alarms;
  self->_alarms = uiAlarms;
}

- (void)refreshFromCalendarItemAndStore
{
  v3.receiver = self;
  v3.super_class = EKCalendarItemAlarmEditItem;
  [(EKCalendarItemEditItem *)&v3 refreshFromCalendarItemAndStore];
  [(EKCalendarItemAlarmEditItem *)self _updateAlarms];
}

- (void)ttlLocationStatusChanged:(id)changed
{
  delegate = [(EKCalendarItemEditItem *)self delegate];
  v5 = [delegate rowNumberForEditItem:self];

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
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  _calendarItemHasLeaveNowAlarm = [(EKCalendarItemAlarmEditItem *)self _calendarItemHasLeaveNowAlarm];
  if (self->_hasLeaveNowAlarm == _calendarItemHasLeaveNowAlarm && (v5 = _calendarItemHasLeaveNowAlarm, [calendarItem alarms], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, -[NSArray count](self->_alarms, "count") == v7 + v5))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
    alarms = [calendarItem2 alarms];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__EKCalendarItemAlarmEditItem__alarmsMatchCalendarItem__block_invoke;
    v12[3] = &unk_1E8442040;
    v12[4] = self;
    v12[5] = &v13;
    [alarms enumerateObjectsUsingBlock:v12];

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

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  _alarmsMatchCalendarItem = [(EKCalendarItemAlarmEditItem *)self _alarmsMatchCalendarItem];
  if (!_alarmsMatchCalendarItem)
  {
    [(EKCalendarItemAlarmEditItem *)self _updateAlarms];
  }

  return !_alarmsMatchCalendarItem;
}

@end