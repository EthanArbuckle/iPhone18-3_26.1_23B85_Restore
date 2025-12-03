@interface EKEventAlarmDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)_createRealPopupMenuForIndex:(int64_t)index popupCell:(id)cell;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (unint64_t)numberOfSubitems;
- (void)_setAlarmsAreEditable;
- (void)_updateAlarms;
- (void)setEvent:(id)event reminder:(id)reminder store:(id)store;
- (void)ttlLocationStatusChanged:(id)changed;
@end

@implementation EKEventAlarmDetailItem

- (void)_updateAlarms
{
  alarmsViewModel = [(EKEventAlarmDetailItem *)self alarmsViewModel];
  [alarmsViewModel setNeedsUpdate];

  alarmsViewModel2 = [(EKEventAlarmDetailItem *)self alarmsViewModel];
  uiAlarms = [alarmsViewModel2 uiAlarms];

  alarms = self->_alarms;
  self->_alarms = uiAlarms;
  v8 = uiAlarms;

  alarmPopupMenus = self->_alarmPopupMenus;
  self->_alarmPopupMenus = 0;
}

- (void)setEvent:(id)event reminder:(id)reminder store:(id)store
{
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = EKEventAlarmDetailItem;
  [(EKEventDetailItem *)&v15 setEvent:eventCopy reminder:reminder store:store];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *MEMORY[0x1E69932B0];
  alarmsViewModel = [(EKEventAlarmDetailItem *)self alarmsViewModel];
  [defaultCenter removeObserver:self name:v10 object:alarmsViewModel];

  if (eventCopy)
  {
    v12 = [objc_alloc(MEMORY[0x1E6993378]) initWithCalendarItem:eventCopy];
    [(EKEventAlarmDetailItem *)self setAlarmsViewModel:v12];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    alarmsViewModel2 = [(EKEventAlarmDetailItem *)self alarmsViewModel];
    [defaultCenter2 addObserver:self selector:sel_ttlLocationStatusChanged_ name:v10 object:alarmsViewModel2];
  }

  else
  {
    [(EKEventAlarmDetailItem *)self setAlarmsViewModel:0];
  }

  [(EKEventAlarmDetailItem *)self _updateAlarms];
}

- (void)_setAlarmsAreEditable
{
  calendar = [(EKEvent *)self->super._event calendar];
  allowsContentModifications = [calendar allowsContentModifications];

  if (!allowsContentModifications || [(EKEvent *)self->super._event status]== EKEventStatusCanceled)
  {
    goto LABEL_3;
  }

  calendar2 = [(EKEvent *)self->super._event calendar];
  source = [calendar2 source];
  constraints = [source constraints];
  maxAlarmsAllowed = [constraints maxAlarmsAllowed];

  if (!maxAlarmsAllowed)
  {
    goto LABEL_4;
  }

  calendar3 = [(EKEvent *)self->super._event calendar];
  source2 = [calendar3 source];
  constraints2 = [source2 constraints];
  if (![constraints2 supportsAlarmTriggerIntervals] || -[EKEventDetailItem isPrivateEvent](self, "isPrivateEvent"))
  {
    LOBYTE(maxAlarmsAllowed) = 0;
LABEL_9:

    goto LABEL_4;
  }

  isReadOnlyDelegateCalendar = [(EKEventDetailItem *)self isReadOnlyDelegateCalendar];

  if (!isReadOnlyDelegateCalendar)
  {
    if (![(EKEvent *)self->super._event isExternallyOrganizedInvitation])
    {
      LOBYTE(maxAlarmsAllowed) = 1;
      goto LABEL_4;
    }

    calendar3 = [(EKEvent *)self->super._event calendar];
    source2 = [calendar3 source];
    constraints2 = [source2 constraints];
    LOBYTE(maxAlarmsAllowed) = [constraints2 supportsInvitationModifications];
    goto LABEL_9;
  }

LABEL_3:
  LOBYTE(maxAlarmsAllowed) = 0;
LABEL_4:
  self->_alarmsAreEditable = maxAlarmsAllowed;
}

- (void)ttlLocationStatusChanged:(id)changed
{
  delegate = [(EKEventDetailItem *)self delegate];
  [delegate eventDetailItemWantsRefresh:self];
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  [(EKEventAlarmDetailItem *)self _setAlarmsAreEditable:event];
  if (![(NSArray *)self->_alarms count]&& !self->_alarmsAreEditable)
  {
    return 0;
  }

  externalID = [(EKEvent *)self->super._event externalID];
  if (externalID)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(EKEvent *)self->super._event actionsState]== 0;
  }

  return v7;
}

- (unint64_t)numberOfSubitems
{
  calendar = [(EKEvent *)self->super._event calendar];
  source = [calendar source];
  constraints = [source constraints];
  maxAlarmsAllowed = [constraints maxAlarmsAllowed];

  alarmsAreEditable = self->_alarmsAreEditable;
  v8 = [(NSArray *)self->_alarms count];
  v9 = 1;
  if (v8)
  {
    v9 = 2;
  }

  v10 = 2;
  if (v8 < 2)
  {
    v10 = v8;
  }

  if (!alarmsAreEditable)
  {
    v9 = v10;
  }

  v11 = maxAlarmsAllowed;
  if (v9 < maxAlarmsAllowed)
  {
    v11 = v9;
  }

  if (maxAlarmsAllowed >= 0)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = EKEventAlarmDetailItem;
  [(EKEventDetailItem *)&v5 defaultCellHeightForSubitemAtIndex:index forWidth:width];
  return result;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v47[4] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_alarms count]<= index)
  {
    alarmsViewModel = EventKitUIBundle();
    v38 = [alarmsViewModel localizedStringForKey:@"None alert - event alarm detail item" value:@"None" table:0];
    v7 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v5 = [(NSArray *)self->_alarms objectAtIndexedSubscript:index];
  v38 = [v5 localizedDescriptionAllDay:{-[EKEvent isAllDay](self->super._event, "isAllDay")}];
  if (v5)
  {
    alarmsViewModel = [(EKEventAlarmDetailItem *)self alarmsViewModel];
    v7 = [alarmsViewModel isAlarmEffectivelyDisabled:v5];
LABEL_5:

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:
  if (!self->_alarmsAreEditable)
  {
    v10 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    if (v7)
    {
      v12 = *MEMORY[0x1E69DB6B8];
      v47[0] = &unk_1F4F32410;
      v13 = *MEMORY[0x1E69DB648];
      v46[0] = v12;
      v46[1] = v13;
      v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v47[1] = v14;
      v46[2] = *MEMORY[0x1E69DB650];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v47[2] = secondaryLabelColor;
      v46[3] = *MEMORY[0x1E69DB6B0];
      secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v17 = [secondaryLabelColor2 colorWithAlphaComponent:0.75];
      v47[3] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];

      detailTextLabel = [(EKUIPopupTableViewCell *)v10 detailTextLabel];
      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v38 attributes:v18];
      [detailTextLabel setAttributedText:v20];
    }

    else
    {
      v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      detailTextLabel2 = [(EKUIPopupTableViewCell *)v10 detailTextLabel];
      [detailTextLabel2 setFont:v21];

      secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      detailTextLabel3 = [(EKUIPopupTableViewCell *)v10 detailTextLabel];
      [detailTextLabel3 setTextColor:secondaryLabelColor3];

      detailTextLabel4 = [(EKUIPopupTableViewCell *)v10 detailTextLabel];
      [detailTextLabel4 setText:v38];
    }

    goto LABEL_26;
  }

  if ([(NSMutableArray *)self->_alarmPopupMenus count]<= index)
  {
    goto LABEL_10;
  }

  v8 = [(NSMutableArray *)self->_alarmPopupMenus objectAtIndexedSubscript:index];
  null = [MEMORY[0x1E695DFB0] null];

  if (v8 == null)
  {

LABEL_10:
    v8 = 0;
  }

  v10 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  if (EKUICatalyst())
  {
    v11 = [(EKEventAlarmDetailItem *)self _createRealPopupMenuForIndex:index popupCell:v10];
    [(EKUIPopupTableViewCell *)v10 setPopupMenu:v11];
  }

  else
  {
    if (!v8)
    {
      alarmsViewModel2 = [(EKEventAlarmDetailItem *)self alarmsViewModel];
      v8 = [alarmsViewModel2 placeholderMenuForAlarmAtIndex:index];
    }

    [(EKUIPopupTableViewCell *)v10 setPopupMenu:v8];
    objc_initWeak(&location, v10);
    objc_initWeak(&from, self);
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy__3;
    v42[4] = __Block_byref_object_dispose__3;
    v43 = 0;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __48__EKEventAlarmDetailItem_cellForSubitemAtIndex___block_invoke;
    v39[3] = &unk_1E843FF78;
    objc_copyWeak(&v40, &from);
    objc_copyWeak(v41, &location);
    v39[4] = v42;
    v41[1] = index;
    [(EKUIPopupTableViewCell *)v10 setPopupMenuProvider:v39];
    objc_destroyWeak(v41);
    objc_destroyWeak(&v40);
    _Block_object_dispose(v42, 8);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  if (v8)
  {
    alarmPopupMenus = self->_alarmPopupMenus;
    if (!alarmPopupMenus)
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = self->_alarmPopupMenus;
      self->_alarmPopupMenus = v28;

      alarmPopupMenus = self->_alarmPopupMenus;
    }

    if ([(NSMutableArray *)alarmPopupMenus count]<= index)
    {
      do
      {
        v30 = self->_alarmPopupMenus;
        null2 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v30 addObject:null2];
      }

      while ([(NSMutableArray *)self->_alarmPopupMenus count]<= index);
    }

    [(NSMutableArray *)self->_alarmPopupMenus setObject:v8 atIndexedSubscript:index];
  }

  [(EKUIPopupTableViewCell *)v10 setTitleStrikethrough:v7];

LABEL_26:
  v32 = [MEMORY[0x1E6993378] labelTextForIndex:index];
  textLabel = [(EKUIPopupTableViewCell *)v10 textLabel];
  [textLabel setText:v32];

  v34 = [MEMORY[0x1E6993378] accessibilityIdentifierForIndex:index];
  [(EKUIPopupTableViewCell *)v10 setAccessibilityIdentifier:v34];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textLabel2 = [(EKUIPopupTableViewCell *)v10 textLabel];
  [textLabel2 setTextColor:labelColor];

  return v10;
}

id __48__EKEventAlarmDetailItem_cellForSubitemAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = objc_loadWeakRetained((a1 + 48));
    v15 = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "Menu owner = %@. popupCell = %@", &v15, 0x16u);
  }

  v9 = 0;
  if (WeakRetained && v5)
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (!v10)
    {
      v11 = [WeakRetained _createRealPopupMenuForIndex:*(a1 + 56) popupCell:v5];
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      [v5 setPopupMenu:*(*(*(a1 + 32) + 8) + 40)];
      [v5 setPopupMenuProvider:0];
      v10 = *(*(*(a1 + 32) + 8) + 40);
    }

    v9 = v10;
  }

  return v9;
}

- (id)_createRealPopupMenuForIndex:(int64_t)index popupCell:(id)cell
{
  cellCopy = cell;
  objc_initWeak(&location, self);
  objc_initWeak(&from, cellCopy);
  alarmsViewModel = [(EKEventAlarmDetailItem *)self alarmsViewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__EKEventAlarmDetailItem__createRealPopupMenuForIndex_popupCell___block_invoke;
  v10[3] = &unk_1E8440018;
  objc_copyWeak(&v11, &location);
  v12[1] = index;
  objc_copyWeak(v12, &from);
  v8 = [alarmsViewModel menuForAlarmAtIndex:index actionHandler:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v8;
}

void __65__EKEventAlarmDetailItem__createRealPopupMenuForIndex_popupCell___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__EKEventAlarmDetailItem__createRealPopupMenuForIndex_popupCell___block_invoke_2;
  aBlock[3] = &unk_1E843FFC8;
  objc_copyWeak(v36, (a1 + 32));
  v7 = v5;
  v34 = v7;
  v8 = v6;
  v9 = *(a1 + 48);
  v35 = v8;
  v36[1] = v9;
  v10 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained editItemEventToDetach];
    v14 = [v13 isOrWasPartOfRecurringSeries];
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == 1)
    {
      v16 = objc_loadWeakRetained((a1 + 40));
      if (v16)
      {
        v17 = [v12 viewControllerToPresentFrom];
        [v16 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __65__EKEventAlarmDetailItem__createRealPopupMenuForIndex_popupCell___block_invoke_31;
        v30[3] = &unk_1E843FFF0;
        objc_copyWeak(&v32, (a1 + 32));
        v31 = v10;
        v26 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v17 sourceView:v16 sourceRect:v13 forEvent:v30 withCompletionHandler:v19, v21, v23, v25];
        v27 = v12[13];
        v12[13] = v26;

        v28 = [v12[13] alertController];
        v29 = [v28 popoverPresentationController];
        [v29 setPermittedArrowDirections:12];

        objc_destroyWeak(&v32);
      }
    }

    else
    {
      v10[2](v10);
      [v12 editItemViewController:0 didCompleteWithAction:2];
    }
  }

  objc_destroyWeak(v36);
}

void __65__EKEventAlarmDetailItem__createRealPopupMenuForIndex_popupCell___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained alarmsViewModel];

    if (v4)
    {
      v5 = [v3 alarmsViewModel];
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 56);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __65__EKEventAlarmDetailItem__createRealPopupMenuForIndex_popupCell___block_invoke_3;
      v10[3] = &unk_1E843FFA0;
      v10[4] = v3;
      [v5 updatedUIAlarmFromUIAlarm:v6 toUIAlarm:v7 atIndex:v8 completion:v10];
    }

    else
    {
      v9 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v12 = "[EKEventAlarmDetailItem _createRealPopupMenuForIndex:popupCell:]_block_invoke_2";
        _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "Error: %s: 'alarmsViewModel' should not be nil", buf, 0xCu);
      }
    }
  }
}

uint64_t __65__EKEventAlarmDetailItem__createRealPopupMenuForIndex_popupCell___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) _updateAlarms];
    v3 = *(v2 + 32);

    return [v3 notifySubitemDidSave:0];
  }

  return result;
}

void __65__EKEventAlarmDetailItem__createRealPopupMenuForIndex_popupCell___block_invoke_31(uint64_t a1, uint64_t a2)
{
  if (a2 > 3)
  {
    if ((a2 - 4) < 2)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!a2)
  {
    v3 = 3;
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    v3 = 4;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
LABEL_11:
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained reset];
    v4 = [WeakRetained delegate];
    [v4 eventDetailItemWantsRefresh:WeakRetained];

    goto LABEL_12;
  }

  v3 = 5;
LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained editItemViewController:0 didCompleteWithAction:v3];
LABEL_12:
  v5 = WeakRetained[13];
  WeakRetained[13] = 0;
}

@end