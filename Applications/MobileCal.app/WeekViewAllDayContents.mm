@interface WeekViewAllDayContents
- (WeekViewAllDayContentsDelegate)delegate;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation WeekViewAllDayContents

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  if ([endedCopy count] == 1)
  {
    anyObject = [endedCopy anyObject];
    v6 = anyObject;
    if (anyObject)
    {
      view = [anyObject view];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v6 locationInView:self];
        v10 = v9;
        v12 = v11;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained emptySpaceClickForCalendarWeekDayEventContent:self atPoint:{v10, v12}];
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (WeekViewAllDayContentsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end