@interface EKCalendarItemEditorTableView
- (void)reloadData;
- (void)scrollToRowAtIndexPath:(id)a3 atScrollPosition:(int64_t)a4 animated:(BOOL)a5;
@end

@implementation EKCalendarItemEditorTableView

- (void)reloadData
{
  self->_isReloading = 1;
  v3 = [(EKCalendarItemEditorTableView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(EKCalendarItemEditorTableView *)self delegate];
    [v5 tableViewDidStartReload:self];
  }

  v6.receiver = self;
  v6.super_class = EKCalendarItemEditorTableView;
  [(EKCalendarItemEditorTableView *)&v6 reloadData];
  self->_isReloading = 0;
}

- (void)scrollToRowAtIndexPath:(id)a3 atScrollPosition:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(EKCalendarItemEditorTableView *)self cellForRowAtIndexPath:v8];
  if (a4 != 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 _isAncestorOfFirstResponder])
      {
        a4 = 1;
      }
    }
  }

  v10.receiver = self;
  v10.super_class = EKCalendarItemEditorTableView;
  [(EKCalendarItemEditorTableView *)&v10 scrollToRowAtIndexPath:v8 atScrollPosition:a4 animated:v5];
}

@end