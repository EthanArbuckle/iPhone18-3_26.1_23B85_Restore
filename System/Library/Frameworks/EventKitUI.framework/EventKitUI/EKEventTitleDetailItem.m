@interface EKEventTitleDetailItem
- (BOOL)minimalMode;
- (BOOL)shouldShowEditButtonInline;
- (BOOL)shouldShowNextButton;
- (BOOL)shouldShowPreviousButton;
- (BOOL)showsDetectedConferenceItem;
- (BOOL)titleCellShouldPresentShareSheet:(id)a3;
- (BOOL)titleShouldInsetForEditButton:(id)a3;
- (EKEventTitleDetailItemDelegate)editDelegate;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)owningViewController;
- (void)_updateCellIfNeededForWidth:(double)a3;
- (void)editButtonPressed;
- (void)nextButtonPressed;
- (void)previousButtonPressed;
- (void)refreshForHeightChange;
- (void)setCellPosition:(int)a3;
- (void)setEvent:(id)a3 reminder:(id)a4 store:(id)a5;
- (void)setHidesBottomSeparator:(BOOL)a3;
- (void)setHidesTopSeparator:(BOOL)a3;
- (void)setNumberOfTitleLines:(unint64_t)a3;
- (void)titleCell:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5;
@end

@implementation EKEventTitleDetailItem

- (void)setEvent:(id)a3 reminder:(id)a4 store:(id)a5
{
  v9.receiver = self;
  v9.super_class = EKEventTitleDetailItem;
  v8 = a3;
  [(EKEventDetailItem *)&v9 setEvent:v8 reminder:a4 store:a5];
  [(EKEventDetailCell *)self->_cell setEvent:v8, v9.receiver, v9.super_class];
}

- (void)setCellPosition:(int)a3
{
  v3 = *&a3;
  if ([(EKEventDetailItem *)self cellPosition]!= a3)
  {
    self->_cellNeedsUpdate = 1;
  }

  v5.receiver = self;
  v5.super_class = EKEventTitleDetailItem;
  [(EKEventDetailItem *)&v5 setCellPosition:v3];
}

- (void)_updateCellIfNeededForWidth:(double)a3
{
  if (self->_cellNeedsUpdate)
  {
    [(EKEventDetailTitleCell *)self->_cell update];
    [(EKEventDetailTitleCell *)self->_cell layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:a3];
    self->_cellNeedsUpdate = 0;
  }
}

- (void)setHidesTopSeparator:(BOOL)a3
{
  self->_hidesTopSeparator = a3;
  cell = self->_cell;
  if (cell)
  {
    [(EKEventDetailTitleCell *)cell setHideTopCellSeparator:?];
  }
}

- (void)setHidesBottomSeparator:(BOOL)a3
{
  self->_hidesBottomSeparator = a3;
  cell = self->_cell;
  if (cell)
  {
    [(EKEventDetailTitleCell *)cell setHideBottomCellSeparator:?];
  }
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  if (self->_cell)
  {
    if (a5)
    {
      self->_cellNeedsUpdate = 1;
    }

    [(EKEventTitleDetailItem *)self _updateCellIfNeededForWidth:a3, a4];
  }

  else
  {
    v6 = [(EKEventTitleDetailItem *)self cellForSubitemAtIndex:0, a5, a4];
  }

  [(EKEventDetailTitleCell *)self->_cell frame];
  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [(EKEventDetailCell *)[EKEventDetailTitleCell alloc] initWithEvent:self->super._event editable:0];
    [(EKEventDetailTitleCell *)v5 setNumberOfTitleLines:[(EKEventTitleDetailItem *)self numberOfTitleLines]];
    [(EKEventDetailTitleCell *)v5 setDelegate:self];
    [(EKEventDetailTitleCell *)v5 setNonInteractivePlatterMode:[(EKEventTitleDetailItem *)self nonInteractivePlatterMode]];
    [(EKEventDetailTitleCell *)v5 setAccessibilityIdentifier:@"event-details-title-cell"];
    if ([(EKEventTitleDetailItem *)self hidesBottomSeparator])
    {
      [(EKEventDetailTitleCell *)v5 setHideBottomCellSeparator:1];
    }

    if ([(EKEventTitleDetailItem *)self hidesTopSeparator])
    {
      [(EKEventDetailTitleCell *)v5 setHideTopCellSeparator:1];
    }

    [(EKEventDetailTitleCell *)v5 setHasMapItemLaunchOptionFromTimeToLeaveNotification:[(EKEventTitleDetailItem *)self hasMapItemLaunchOptionFromTimeToLeaveNotification]];
    v6 = self->_cell;
    self->_cell = v5;

    self->_cellNeedsUpdate = 1;
    cell = self->_cell;
  }

  [(EKEventDetailTitleCell *)cell frame];
  [(EKEventTitleDetailItem *)self _updateCellIfNeededForWidth:v7];
  v8 = self->_cell;

  return v8;
}

- (void)setNumberOfTitleLines:(unint64_t)a3
{
  if (self->_numberOfTitleLines != a3)
  {
    self->_numberOfTitleLines = a3;
    [(EKEventDetailTitleCell *)self->_cell setNumberOfTitleLines:?];
  }
}

- (void)editButtonPressed
{
  v2 = [(EKEventTitleDetailItem *)self editDelegate];
  [v2 editButtonPressed];
}

- (BOOL)shouldShowEditButtonInline
{
  v3 = [(EKEventTitleDetailItem *)self editDelegate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(EKEventTitleDetailItem *)self editDelegate];
  v5 = [v4 shouldShowEditButtonInline];

  return v5;
}

- (BOOL)shouldShowNextButton
{
  v3 = [(EKEventTitleDetailItem *)self editDelegate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(EKEventTitleDetailItem *)self editDelegate];
  v5 = [v4 shouldShowNextButton];

  return v5;
}

- (BOOL)shouldShowPreviousButton
{
  v3 = [(EKEventTitleDetailItem *)self editDelegate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(EKEventTitleDetailItem *)self editDelegate];
  v5 = [v4 shouldShowPreviousButton];

  return v5;
}

- (void)nextButtonPressed
{
  v2 = [(EKEventTitleDetailItem *)self editDelegate];
  [v2 nextButtonPressed];
}

- (void)previousButtonPressed
{
  v2 = [(EKEventTitleDetailItem *)self editDelegate];
  [v2 previousButtonPressed];
}

- (BOOL)titleShouldInsetForEditButton:(id)a3
{
  v4 = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(EKEventDetailItem *)self delegate];
  v7 = [v6 titleShouldInsetForEditButton:self];

  return v7;
}

- (BOOL)minimalMode
{
  v2 = [(EKEventTitleDetailItem *)self editDelegate];
  v3 = [v2 minimalMode];

  return v3;
}

- (id)owningViewController
{
  v3 = [(EKEventDetailItem *)self delegate];
  v4 = [v3 viewControllerForEventItem:self];

  return v4;
}

- (BOOL)showsDetectedConferenceItem
{
  v2 = [(EKEventDetailItem *)self delegate];
  v3 = [v2 showsDetectedConferenceItem];

  return v3;
}

- (void)refreshForHeightChange
{
  v2 = [(EKEventDetailItem *)self delegate];
  [v2 eventDetailItemWantsRefeshForHeightChange];
}

- (BOOL)titleCellShouldPresentShareSheet:(id)a3
{
  v4 = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(EKEventDetailItem *)self delegate];
  v7 = [v6 eventDetailItemShouldPresentShareSheet:self];

  return v7;
}

- (void)titleCell:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(EKEventDetailItem *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(EKEventDetailItem *)self delegate];
    [v10 eventDetailItem:self requestPresentShareSheetWithActivityItems:v11 withPopoverSourceView:v7];
  }
}

- (EKEventTitleDetailItemDelegate)editDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editDelegate);

  return WeakRetained;
}

@end