@interface EKEventTitleDetailItem
- (BOOL)minimalMode;
- (BOOL)shouldShowEditButtonInline;
- (BOOL)shouldShowNextButton;
- (BOOL)shouldShowPreviousButton;
- (BOOL)showsDetectedConferenceItem;
- (BOOL)titleCellShouldPresentShareSheet:(id)sheet;
- (BOOL)titleShouldInsetForEditButton:(id)button;
- (EKEventTitleDetailItemDelegate)editDelegate;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)owningViewController;
- (void)_updateCellIfNeededForWidth:(double)width;
- (void)editButtonPressed;
- (void)nextButtonPressed;
- (void)previousButtonPressed;
- (void)refreshForHeightChange;
- (void)setCellPosition:(int)position;
- (void)setEvent:(id)event reminder:(id)reminder store:(id)store;
- (void)setHidesBottomSeparator:(BOOL)separator;
- (void)setHidesTopSeparator:(BOOL)separator;
- (void)setNumberOfTitleLines:(unint64_t)lines;
- (void)titleCell:(id)cell requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view;
@end

@implementation EKEventTitleDetailItem

- (void)setEvent:(id)event reminder:(id)reminder store:(id)store
{
  v9.receiver = self;
  v9.super_class = EKEventTitleDetailItem;
  eventCopy = event;
  [(EKEventDetailItem *)&v9 setEvent:eventCopy reminder:reminder store:store];
  [(EKEventDetailCell *)self->_cell setEvent:eventCopy, v9.receiver, v9.super_class];
}

- (void)setCellPosition:(int)position
{
  v3 = *&position;
  if ([(EKEventDetailItem *)self cellPosition]!= position)
  {
    self->_cellNeedsUpdate = 1;
  }

  v5.receiver = self;
  v5.super_class = EKEventTitleDetailItem;
  [(EKEventDetailItem *)&v5 setCellPosition:v3];
}

- (void)_updateCellIfNeededForWidth:(double)width
{
  if (self->_cellNeedsUpdate)
  {
    [(EKEventDetailTitleCell *)self->_cell update];
    [(EKEventDetailTitleCell *)self->_cell layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:width];
    self->_cellNeedsUpdate = 0;
  }
}

- (void)setHidesTopSeparator:(BOOL)separator
{
  self->_hidesTopSeparator = separator;
  cell = self->_cell;
  if (cell)
  {
    [(EKEventDetailTitleCell *)cell setHideTopCellSeparator:?];
  }
}

- (void)setHidesBottomSeparator:(BOOL)separator
{
  self->_hidesBottomSeparator = separator;
  cell = self->_cell;
  if (cell)
  {
    [(EKEventDetailTitleCell *)cell setHideBottomCellSeparator:?];
  }
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  if (self->_cell)
  {
    if (update)
    {
      self->_cellNeedsUpdate = 1;
    }

    [(EKEventTitleDetailItem *)self _updateCellIfNeededForWidth:index, width];
  }

  else
  {
    width = [(EKEventTitleDetailItem *)self cellForSubitemAtIndex:0, update, width];
  }

  [(EKEventDetailTitleCell *)self->_cell frame];
  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
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

- (void)setNumberOfTitleLines:(unint64_t)lines
{
  if (self->_numberOfTitleLines != lines)
  {
    self->_numberOfTitleLines = lines;
    [(EKEventDetailTitleCell *)self->_cell setNumberOfTitleLines:?];
  }
}

- (void)editButtonPressed
{
  editDelegate = [(EKEventTitleDetailItem *)self editDelegate];
  [editDelegate editButtonPressed];
}

- (BOOL)shouldShowEditButtonInline
{
  editDelegate = [(EKEventTitleDetailItem *)self editDelegate];

  if (!editDelegate)
  {
    return 0;
  }

  editDelegate2 = [(EKEventTitleDetailItem *)self editDelegate];
  shouldShowEditButtonInline = [editDelegate2 shouldShowEditButtonInline];

  return shouldShowEditButtonInline;
}

- (BOOL)shouldShowNextButton
{
  editDelegate = [(EKEventTitleDetailItem *)self editDelegate];

  if (!editDelegate)
  {
    return 0;
  }

  editDelegate2 = [(EKEventTitleDetailItem *)self editDelegate];
  shouldShowNextButton = [editDelegate2 shouldShowNextButton];

  return shouldShowNextButton;
}

- (BOOL)shouldShowPreviousButton
{
  editDelegate = [(EKEventTitleDetailItem *)self editDelegate];

  if (!editDelegate)
  {
    return 0;
  }

  editDelegate2 = [(EKEventTitleDetailItem *)self editDelegate];
  shouldShowPreviousButton = [editDelegate2 shouldShowPreviousButton];

  return shouldShowPreviousButton;
}

- (void)nextButtonPressed
{
  editDelegate = [(EKEventTitleDetailItem *)self editDelegate];
  [editDelegate nextButtonPressed];
}

- (void)previousButtonPressed
{
  editDelegate = [(EKEventTitleDetailItem *)self editDelegate];
  [editDelegate previousButtonPressed];
}

- (BOOL)titleShouldInsetForEditButton:(id)button
{
  delegate = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(EKEventDetailItem *)self delegate];
  v7 = [delegate2 titleShouldInsetForEditButton:self];

  return v7;
}

- (BOOL)minimalMode
{
  editDelegate = [(EKEventTitleDetailItem *)self editDelegate];
  minimalMode = [editDelegate minimalMode];

  return minimalMode;
}

- (id)owningViewController
{
  delegate = [(EKEventDetailItem *)self delegate];
  v4 = [delegate viewControllerForEventItem:self];

  return v4;
}

- (BOOL)showsDetectedConferenceItem
{
  delegate = [(EKEventDetailItem *)self delegate];
  showsDetectedConferenceItem = [delegate showsDetectedConferenceItem];

  return showsDetectedConferenceItem;
}

- (void)refreshForHeightChange
{
  delegate = [(EKEventDetailItem *)self delegate];
  [delegate eventDetailItemWantsRefeshForHeightChange];
}

- (BOOL)titleCellShouldPresentShareSheet:(id)sheet
{
  delegate = [(EKEventDetailItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(EKEventDetailItem *)self delegate];
  v7 = [delegate2 eventDetailItemShouldPresentShareSheet:self];

  return v7;
}

- (void)titleCell:(id)cell requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view
{
  itemsCopy = items;
  viewCopy = view;
  delegate = [(EKEventDetailItem *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(EKEventDetailItem *)self delegate];
    [delegate2 eventDetailItem:self requestPresentShareSheetWithActivityItems:itemsCopy withPopoverSourceView:viewCopy];
  }
}

- (EKEventTitleDetailItemDelegate)editDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editDelegate);

  return WeakRetained;
}

@end