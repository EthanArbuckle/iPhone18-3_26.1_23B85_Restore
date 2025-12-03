@interface EKCalendarItemEditorTableView
- (void)reloadData;
- (void)scrollToRowAtIndexPath:(id)path atScrollPosition:(int64_t)position animated:(BOOL)animated;
@end

@implementation EKCalendarItemEditorTableView

- (void)reloadData
{
  self->_isReloading = 1;
  delegate = [(EKCalendarItemEditorTableView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKCalendarItemEditorTableView *)self delegate];
    [delegate2 tableViewDidStartReload:self];
  }

  v6.receiver = self;
  v6.super_class = EKCalendarItemEditorTableView;
  [(EKCalendarItemEditorTableView *)&v6 reloadData];
  self->_isReloading = 0;
}

- (void)scrollToRowAtIndexPath:(id)path atScrollPosition:(int64_t)position animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  v9 = [(EKCalendarItemEditorTableView *)self cellForRowAtIndexPath:pathCopy];
  if (position != 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 _isAncestorOfFirstResponder])
      {
        position = 1;
      }
    }
  }

  v10.receiver = self;
  v10.super_class = EKCalendarItemEditorTableView;
  [(EKCalendarItemEditorTableView *)&v10 scrollToRowAtIndexPath:pathCopy atScrollPosition:position animated:animatedCopy];
}

@end