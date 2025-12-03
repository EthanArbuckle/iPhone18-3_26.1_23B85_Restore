@interface EKUICalendarMenu
+ (id)_calendarMenuWithCalendars:(id)calendars eventStore:(id)store backgroundColor:(id)color setupActionHandler:(id)handler selectionHandler:(id)selectionHandler subtitle:(id)subtitle;
+ (id)calendarCircleImageForColor:(id)color;
+ (id)placeholderMenuForCalendar:(id)calendar backgroundColor:(id)color;
@end

@implementation EKUICalendarMenu

+ (id)calendarCircleImageForColor:(id)color
{
  v3 = MEMORY[0x1E69DCAB8];
  colorCopy = color;
  v5 = [v3 systemImageNamed:@"circlebadge.fill"];
  v6 = [v5 imageWithTintColor:colorCopy renderingMode:1];

  return v6;
}

+ (id)placeholderMenuForCalendar:(id)calendar backgroundColor:(id)color
{
  v17[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  calendarCopy = calendar;
  displayColor = [calendarCopy displayColor];
  v9 = CUIKAdjustedColorForBackgroundColor();

  v10 = [self calendarCircleImageForColor:v9];
  v11 = CUIKDisplayedTitleForCalendar();

  v12 = [MEMORY[0x1E69DC628] actionWithTitle:v11 image:v10 identifier:0 handler:&__block_literal_global_17];
  v13 = MEMORY[0x1E69DCC60];
  v17[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [v13 menuWithChildren:v14];

  return v15;
}

+ (id)_calendarMenuWithCalendars:(id)calendars eventStore:(id)store backgroundColor:(id)color setupActionHandler:(id)handler selectionHandler:(id)selectionHandler subtitle:(id)subtitle
{
  v68 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  selectionHandlerCopy = selectionHandler;
  subtitleCopy = subtitle;
  LOBYTE(v45) = 0;
  v14 = [MEMORY[0x1E69933B0] generateGroupsForCalendars:calendars eventStore:store entityType:0 forMode:0 usingBackgroundColor:color includingAccountsWithoutCalendars:0 filterByFocus:v45 usingUnselectedCalendars:0 foundRefreshableCalendar:0 anyGroupsHiddenByFocus:0 numberOfCalendarsHiddenByFocus:0];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v14;
  v50 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v50)
  {
    v48 = *v63;
    v49 = v15;
    do
    {
      v16 = 0;
      do
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v16;
        v17 = *(*(&v62 + 1) + 8 * v16);
        v18 = MEMORY[0x1E695DF70];
        calendarInfos = [v17 calendarInfos];
        v55 = [v18 arrayWithCapacity:{objc_msgSend(calendarInfos, "count")}];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v20 = v17;
        calendarInfos2 = [v17 calendarInfos];
        v21 = [calendarInfos2 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v59;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v59 != v23)
              {
                objc_enumerationMutation(calendarInfos2);
              }

              v25 = *(*(&v58 + 1) + 8 * i);
              v26 = MEMORY[0x1E69DC628];
              title = [v25 title];
              color = [v25 color];
              v29 = [self calendarCircleImageForColor:color];
              v56[0] = MEMORY[0x1E69E9820];
              v56[1] = 3221225472;
              v56[2] = __119__EKUICalendarMenu__calendarMenuWithCalendars_eventStore_backgroundColor_setupActionHandler_selectionHandler_subtitle___block_invoke;
              v56[3] = &unk_1E8440240;
              v56[4] = v25;
              v57 = selectionHandlerCopy;
              v30 = [v26 actionWithTitle:title image:v29 identifier:0 handler:v56];

              v31 = MEMORY[0x1E696AEC0];
              title2 = [v20 title];
              title3 = [v25 title];
              v34 = [v31 stringWithFormat:@"calendar-menu:%@:%@", title2, title3];
              [v30 setAccessibilityIdentifier:v34];

              if ([v25 isShared])
              {
                stringForSharedCalendar = [v25 stringForSharedCalendar];
                [v30 setDiscoverabilityTitle:stringForSharedCalendar];
              }

              if (handlerCopy)
              {
                calendar = [v25 calendar];
                handlerCopy[2](handlerCopy, v30, calendar);
              }

              [v55 addObject:v30];
            }

            v22 = [calendarInfos2 countByEnumeratingWithState:&v58 objects:v66 count:16];
          }

          while (v22);
        }

        title4 = [v20 title];
        v15 = v49;
        CUIKAddInlineMenuItemArrayToArrayWithTitle();

        v16 = v51 + 1;
      }

      while (v51 + 1 != v50);
      v50 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v50);
  }

  if (![v15 count])
  {
    v38 = [MEMORY[0x1E69DC628] actionWithTitle:&stru_1F4EF6790 image:0 identifier:0 handler:&__block_literal_global_24];
    [v15 addObject:v38];
  }

  v39 = MEMORY[0x1E69DCC60];
  if (subtitleCopy)
  {
    v40 = EventKitUIBundle();
    v41 = [v40 localizedStringForKey:@"Calendar - context menu" value:@"Calendar" table:0];
    v42 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
    v43 = [v39 menuWithTitle:v41 image:v42 identifier:0 options:0 children:v15];

    [v43 setSubtitle:subtitleCopy];
  }

  else
  {
    v43 = [MEMORY[0x1E69DCC60] menuWithChildren:v15];
  }

  return v43;
}

void __119__EKUICalendarMenu__calendarMenuWithCalendars_eventStore_backgroundColor_setupActionHandler_selectionHandler_subtitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) calendar];
  (*(*(a1 + 40) + 16))();
}

@end