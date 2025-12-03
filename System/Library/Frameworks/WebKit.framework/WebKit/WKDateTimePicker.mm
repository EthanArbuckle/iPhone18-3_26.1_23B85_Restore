@interface WKDateTimePicker
- (NSString)calendarType;
- (RetainPtr<NSDateFormatter>)dateFormatterForPicker;
- (RetainPtr<NSISO8601DateFormatter>)iso8601DateFormatterForCalendarView;
- (WKDateTimePicker)initWithView:(id)view inputType:(unsigned __int8)type;
- (id).cxx_construct;
- (id)_sanitizeInputValueForFormatter:(id)formatter;
- (void)_dateChanged;
- (void)controlBeginEditing;
- (void)controlEndEditing;
- (void)datePickerPopoverControllerDidReset:(id)reset;
- (void)dealloc;
- (void)handleDatePickerPresentationDismissal;
- (void)removeDatePickerPresentation;
- (void)setDateTimePickerToInitialValue;
- (void)setHour:(int64_t)hour minute:(int64_t)minute;
- (void)setWeekPickerToInitialValue;
- (void)showDateTimePicker;
- (void)weekOfYearSelection:(id)selection didSelectWeekOfYear:(id)year;
@end

@implementation WKDateTimePicker

- (WKDateTimePicker)initWithView:(id)view inputType:(unsigned __int8)type
{
  typeCopy = type;
  v28.receiver = self;
  v28.super_class = WKDateTimePicker;
  v6 = [(WKDateTimePicker *)&v28 init];
  if (!v6)
  {
    return v6;
  }

  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "localeWithLocaleIdentifier:", @"en_US_POSIX"}];
  [v7 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "timeZoneForSecondsFromGMT:", 0)}];
  [v7 setDateFormat:@"yyyy-MM-dd'T'HH:mm"];
  v8 = [v7 dateFromString:@"10000-12-31T23:59"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = objc_alloc(MEMORY[0x1E696AB80]);
  v12 = [v11 initWithStartDate:objc_msgSend(MEMORY[0x1E695DF00] endDate:{"distantPast"), v9}];
  m_ptr = v6->_dateInterval.m_ptr;
  v6->_dateInterval.m_ptr = v12;
  if (m_ptr)
  {
  }

  v6->_view = view;
  [view lastInteractionLocation];
  v6->_interactionPoint.x = v14;
  v6->_interactionPoint.y = v15;
  if (typeCopy <= 12)
  {
    if (typeCopy == 11)
    {
      v18 = 0;
      v16 = 0;
      v17 = 1;
      v19 = @"yyyy-MM-dd";
      goto LABEL_21;
    }

    if (typeCopy == 12)
    {
      v18 = 0;
      v16 = 0;
      v17 = 2;
      v19 = @"yyyy-MM-dd'T'HH:mm";
      goto LABEL_21;
    }
  }

  else
  {
    switch(typeCopy)
    {
      case 13:
        v18 = 0;
        v16 = 1;
        v17 = 4269;
        v19 = @"yyyy-MM";
        goto LABEL_21;
      case 14:
        v6->_formatString = @"yyyy-'W'ww";
        v20 = [objc_alloc(MEMORY[0x1E69DC758]) initWithDelegate:v6];
        v21 = v6->_selectionWeekOfYear.m_ptr;
        v6->_selectionWeekOfYear.m_ptr = v20;
        if (v21)
        {
        }

        v22 = objc_alloc_init(MEMORY[0x1E69DC760]);
        v23 = v6->_calendarView.m_ptr;
        v6->_calendarView.m_ptr = v22;
        if (v23)
        {

          v22 = v6->_calendarView.m_ptr;
        }

        -[UICalendarView setCalendar:](v22, "setCalendar:", [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D868]]);
        [(UICalendarView *)v6->_calendarView.m_ptr setSelectionBehavior:v6->_selectionWeekOfYear.m_ptr];
        [(UICalendarView *)v6->_calendarView.m_ptr setAvailableDateRange:v6->_dateInterval.m_ptr];
LABEL_29:
        if (!v9)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      case 15:
        v16 = 0;
        v17 = 0;
        v18 = 1;
        v19 = @"HH:mm";
LABEL_21:
        v6->_formatString = &v19->isa;
        v24 = objc_alloc_init(MEMORY[0x1E69DC920]);
        v25 = v6->_datePicker.m_ptr;
        v6->_datePicker.m_ptr = v24;
        if (v25)
        {

          v24 = v6->_datePicker.m_ptr;
        }

        [(UIDatePicker *)v24 setMinimumDate:[(NSDateInterval *)v6->_dateInterval.m_ptr startDate]];
        [(UIDatePicker *)v6->_datePicker.m_ptr setMaximumDate:[(NSDateInterval *)v6->_dateInterval.m_ptr endDate]];
        [(UIDatePicker *)v6->_datePicker.m_ptr addTarget:v6 action:sel__dateChanged forControlEvents:4096];
        if ([(WKDateTimePicker *)v6 shouldForceGregorianCalendar])
        {
          -[UIDatePicker setCalendar:](v6->_datePicker.m_ptr, "setCalendar:", [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]]);
        }

        [(UIDatePicker *)v6->_datePicker.m_ptr setDatePickerMode:v17];
        if (v18 | v16)
        {
          v26 = 1;
        }

        else
        {
          v26 = 3;
        }

        [(UIDatePicker *)v6->_datePicker.m_ptr setPreferredDatePickerStyle:v26];
        v6->_isDismissingDatePicker = 0;
        goto LABEL_29;
    }
  }

  v6 = 0;
  if (v9)
  {
LABEL_30:
  }

LABEL_31:
  if (v7)
  {
  }

  return v6;
}

- (void)weekOfYearSelection:(id)selection didSelectWeekOfYear:(id)year
{
  selectionCopy = selection;
  if (selection)
  {
    selectionCopy2 = selection;
  }

  m_ptr = self->_selectionWeekOfYear.m_ptr;
  self->_selectionWeekOfYear.m_ptr = selectionCopy;
  if (m_ptr)
  {

    selectionCopy = self->_selectionWeekOfYear.m_ptr;
  }

  [(UICalendarView *)self->_calendarView.m_ptr setSelectionBehavior:selectionCopy, year];

  [(WKDateTimePicker *)self _dateChanged];
}

- (void)datePickerPopoverControllerDidReset:(id)reset
{
  [(WKDateTimePicker *)self setDateTimePickerToInitialValue];
  page = [(WKContentView *)self->_view page];
  focusedElementInformation = [(WKContentView *)self->_view focusedElementInformation];
  v9 = 0;
  v10[0] = focusedElementInformation + 2;
  v6 = page[44];
  v10[1] = &v9;
  WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetFocusedElementValue>(v6, v10, page[6], 0);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }
  }
}

- (void)handleDatePickerPresentationDismissal
{
  isDismissingDatePicker = self->_isDismissingDatePicker;
  if (!isDismissingDatePicker)
  {
    self->_isDismissingDatePicker = 1;
    [(WKContentView *)self->_view accessoryDone];
    self->_isDismissingDatePicker = isDismissingDatePicker;
  }
}

- (void)removeDatePickerPresentation
{
  m_ptr = self->_datePickerController.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  isDismissingDatePicker = self->_isDismissingDatePicker;
  if (isDismissingDatePicker)
  {
    self->_datePickerController.m_ptr = 0;
LABEL_6:

    goto LABEL_7;
  }

  self->_isDismissingDatePicker = 1;
  [(WKDatePickerPopoverController *)m_ptr dismissViewControllerAnimated:0 completion:0];
  self->_isDismissingDatePicker = isDismissingDatePicker;
  m_ptr = self->_datePickerController.m_ptr;
  self->_datePickerController.m_ptr = 0;
  if (m_ptr)
  {
    goto LABEL_6;
  }

LABEL_7:
  webView = [(WKContentView *)self->_view webView];

  [webView _didDismissContextMenu];
}

- (void)showDateTimePicker
{
  v3 = *([(WKContentView *)self->_view focusedElementInformation]+ 185);
  v4 = [WKDatePickerPopoverController alloc];
  if (v3 == 14)
  {
    v5 = [(WKDatePickerPopoverController *)v4 initWithCalendarView:self->_calendarView.m_ptr selectionWeekOfYear:self->_selectionWeekOfYear.m_ptr delegate:self];
  }

  else
  {
    v5 = [(WKDatePickerPopoverController *)v4 initWithDatePicker:self->_datePicker.m_ptr delegate:self];
  }

  m_ptr = self->_datePickerController.m_ptr;
  self->_datePickerController.m_ptr = v5;
  if (m_ptr)
  {

    v7 = self->_datePickerController.m_ptr;
  }

  else
  {
    v7 = v5;
  }

  view = self->_view;
  [(WKContentView *)view focusedElementInformation];
  WebCore::IntRect::operator CGRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3321888768;
  v20[2] = __38__WKDateTimePicker_showDateTimePicker__block_invoke;
  v20[3] = &__block_descriptor_40_e8_32c51_ZTSKZ38__WKDateTimePicker_showDateTimePicker_E3__3_e5_v8__0l;
  selfCopy = self;
  selfCopy2 = self;
  selfCopy3 = self;
  [(WKDatePickerPopoverController *)v7 presentInView:view sourceRect:v20 completion:v10, v12, v14, v16];

  v19 = selfCopy2;
  selfCopy2 = 0;
  if (v19)
  {
  }
}

uint64_t __38__WKDateTimePicker_showDateTimePicker__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) webView];

  return [v1 _didShowContextMenu];
}

- (void)dealloc
{
  [(WKDateTimePicker *)self removeDatePickerPresentation];
  v3.receiver = self;
  v3.super_class = WKDateTimePicker;
  [(WKDateTimePicker *)&v3 dealloc];
}

- (id)_sanitizeInputValueForFormatter:(id)formatter
{
  if (*([(WKContentView *)self->_view focusedElementInformation]+ 185) == 15)
  {
    v5 = [@"HH:mm" length];

    return [formatter substringToIndex:v5];
  }

  else if (*([(WKContentView *)self->_view focusedElementInformation]+ 185) == 12)
  {
    v7 = [objc_msgSend(formatter componentsSeparatedByString:{@"T", "objectAtIndex:", 1}];
    v8 = [v7 substringToIndex:{objc_msgSend(@"HH:mm", "length")}];

    return [formatter stringByReplacingOccurrencesOfString:v7 withString:v8];
  }

  else
  {
    return formatter;
  }
}

- (RetainPtr<NSISO8601DateFormatter>)iso8601DateFormatterForCalendarView
{
  v3 = v2;
  v4 = objc_alloc_init(MEMORY[0x1E696AC80]);
  *v3 = v4;
  [v4 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "localTimeZone")}];
  return [v4 setFormatOptions:261];
}

- (RetainPtr<NSDateFormatter>)dateFormatterForPicker
{
  v4 = v2;
  v7 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  *v4 = v5;
  [v5 setTimeZone:{-[UIDatePicker timeZone](self->_datePicker.m_ptr, "timeZone")}];
  [v5 setDateFormat:self->_formatString];
  [v5 setLocale:v7];
  v6.var0 = v7;
  if (v7)
  {
  }

  return v6;
}

- (void)_dateChanged
{
  if (*([(WKContentView *)self->_view focusedElementInformation]+ 185) == 14)
  {
    [(WKDateTimePicker *)self iso8601DateFormatterForCalendarView];
    -[WKContentView updateFocusedElementValue:](self->_view, "updateFocusedElementValue:", [v3 stringFromDate:{objc_msgSend(objc_msgSend(MEMORY[0x1E695DEE8], "calendarWithIdentifier:", *MEMORY[0x1E695D868]), "dateFromComponents:", -[UICalendarSelectionWeekOfYear selectedWeekOfYear](self->_selectionWeekOfYear.m_ptr, "selectedWeekOfYear"))}]);
  }

  else
  {
    [(WKDateTimePicker *)self dateFormatterForPicker];
    -[WKContentView updateFocusedElementValue:](self->_view, "updateFocusedElementValue:", [v3 stringFromDate:{-[UIDatePicker date](self->_datePicker.m_ptr, "date")}]);
  }

  if (v3)
  {
  }
}

- (void)setWeekPickerToInitialValue
{
  if ([(NSString *)self->_initialValue.m_ptr length])
  {
    [(WKDateTimePicker *)self iso8601DateFormatterForCalendarView];
    v3 = [v14 dateFromString:{-[WKDateTimePicker _sanitizeInputValueForFormatter:](self, "_sanitizeInputValueForFormatter:", self->_initialValue.m_ptr)}];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    if (v14)
    {
    }

    if (v4)
    {
      v6 = [(NSDateInterval *)[(UICalendarView *)self->_calendarView.m_ptr availableDateRange] containsDate:v4];
    }

    else
    {
      v6 = 0;
    }

    v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D868]];
    date = v4;
    if (!v6)
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    v11 = [v9 components:25088 fromDate:date];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    [(UICalendarSelectionWeekOfYear *)self->_selectionWeekOfYear.m_ptr setSelectedWeekOfYear:v12 animated:1];
    if (!v6)
    {
      [(WKDateTimePicker *)self _dateChanged];
    }

    if (v12)
    {
    }

    if (v4)
    {
    }
  }

  else
  {
    m_ptr = self->_selectionWeekOfYear.m_ptr;
    v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D868]];
    -[UICalendarSelectionWeekOfYear setSelectedWeekOfYear:](m_ptr, "setSelectedWeekOfYear:", [v8 components:25088 fromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}]);

    [(WKDateTimePicker *)self _dateChanged];
  }
}

- (void)setDateTimePickerToInitialValue
{
  if (*([(WKContentView *)self->_view focusedElementInformation]+ 185) == 14)
  {

    [(WKDateTimePicker *)self setWeekPickerToInitialValue];
  }

  else if ([(NSString *)self->_initialValue.m_ptr length])
  {
    [(WKDateTimePicker *)self dateFormatterForPicker];
    v3 = [v9 dateFromString:{-[WKDateTimePicker _sanitizeInputValueForFormatter:](self, "_sanitizeInputValueForFormatter:", self->_initialValue.m_ptr)}];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    if (v9)
    {
    }

    if (v4 && [(NSDateInterval *)self->_dateInterval.m_ptr containsDate:v4])
    {
      v6 = v4;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      v6 = date;
      if (date)
      {
        v8 = date;
      }

      if (v4)
      {
      }

      [(WKDateTimePicker *)self _dateChanged];
    }

    [(UIDatePicker *)self->_datePicker.m_ptr setDate:v6];
    if (v6)
    {
    }
  }

  else
  {
    -[UIDatePicker setDate:](self->_datePicker.m_ptr, "setDate:", [MEMORY[0x1E695DF00] date]);

    [(WKDateTimePicker *)self _dateChanged];
  }
}

- (void)controlBeginEditing
{
  v3 = *([(WKContentView *)self->_view focusedElementInformation]+ 185);
  if (v3 == 15 || v3 == 12)
  {
    [(WKContentView *)self->_view startRelinquishingFirstResponderToFocusedElement];
  }

  -[UIDatePicker setTimeZone:](self->_datePicker.m_ptr, "setTimeZone:", [MEMORY[0x1E695DFE8] localTimeZone]);
  v5 = *([(WKContentView *)self->_view focusedElementInformation]+ 224);
  if (!v5)
  {
    v7 = &stru_1F1147748;
    v13 = &stru_1F1147748;
    v9 = &stru_1F1147748;
    p_initialValue = &self->_initialValue;
LABEL_13:
    v10 = v7;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v13, v5);
  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v6);
  }

  v7 = v13;
  p_initialValue = &self->_initialValue;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_14:
  m_ptr = p_initialValue->m_ptr;
  p_initialValue->m_ptr = &v7->isa;
  if (m_ptr)
  {
  }

  v12 = v13;
  v13 = 0;
  if (v12)
  {
  }

  [(WKDateTimePicker *)self setDateTimePickerToInitialValue];
  [(WKDateTimePicker *)self showDateTimePicker];
}

- (void)controlEndEditing
{
  [(WKContentView *)self->_view stopRelinquishingFirstResponderToFocusedElement];

  [(WKDateTimePicker *)self removeDatePickerPresentation];
}

- (NSString)calendarType
{
  calendar = [(UIDatePicker *)self->_datePicker.m_ptr calendar];

  return [(NSCalendar *)calendar calendarIdentifier];
}

- (void)setHour:(int64_t)hour minute:(int64_t)minute
{
  minute = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%.2ld:%.2ld", hour, minute];
  m_ptr = self->_datePicker.m_ptr;
  [(WKDateTimePicker *)self dateFormatterForPicker];
  -[UIDatePicker setDate:](m_ptr, "setDate:", [v7 dateFromString:minute]);
  if (v7)
  {
  }

  [(WKDateTimePicker *)self _dateChanged];
  if (minute)
  {
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 11) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

@end