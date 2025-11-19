@interface WeekViewAllDayContents
- (WeekViewAllDayContentsDelegate)delegate;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation WeekViewAllDayContents

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v14 = a3;
  if ([v14 count] == 1)
  {
    v5 = [v14 anyObject];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 view];
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