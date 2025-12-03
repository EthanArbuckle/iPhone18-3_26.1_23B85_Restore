@interface EKCalendarItemTitleInlineEditItem
- (BOOL)editor:(id)editor canSelectSubitem:(unint64_t)subitem;
- (BOOL)focusTitleAndSelectTitle:(BOOL)title;
- (BOOL)isSaveable;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (BOOL)titleShouldReturn;
- (EKCalendarItemTitleInlineEditItem)init;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)_makeCell;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_setDrawsOwnRowSeparatorsForCell:(id)cell;
- (void)dealloc;
- (void)refreshFromCalendarItemAndStore;
- (void)reset;
- (void)setDrawsOwnRowSeparators:(BOOL)separators;
- (void)titleDidBeginEditing:(id)editing;
- (void)titleDidChange;
- (void)titleDidEndEditing;
@end

@implementation EKCalendarItemTitleInlineEditItem

- (EKCalendarItemTitleInlineEditItem)init
{
  v6.receiver = self;
  v6.super_class = EKCalendarItemTitleInlineEditItem;
  v2 = [(EKCalendarItemTitleInlineEditItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(EKCalendarItemTitleInlineEditItem *)v2 setDrawsOwnRowSeparators:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = EKCalendarItemTitleInlineEditItem;
  [(EKCalendarItemTitleInlineEditItem *)&v4 dealloc];
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  [objc_opt_class() scaledHeightOfSystemTableViewCell];
  v7 = v6;
  v8 = v6 * 3.0;
  [(EKUITitleTableViewCell *)self->_titleCell idealHeightForWidth:width];
  return fmax(v7, fmin(v9 + 22.0, v8));
}

- (void)refreshFromCalendarItemAndStore
{
  WeakRetained = objc_loadWeakRetained(&self->super._calendarItem);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->super._calendarItem);
    title = [v5 title];
    [(EKUITitleTableViewCell *)self->_titleCell setTitle:title];
  }
}

- (void)reset
{
  titleCell = self->_titleCell;
  self->_titleCell = 0;
}

- (id)_makeCell
{
  v2 = [[EKUISingleLineTitleTableViewCell alloc] initWithDelegate:self];

  return v2;
}

- (BOOL)focusTitleAndSelectTitle:(BOOL)title
{
  titleCopy = title;
  titleCell = self->_titleCell;
  if (!titleCell)
  {
    v6 = [(EKCalendarItemTitleInlineEditItem *)self cellForSubitemAtIndex:0];
    titleCell = self->_titleCell;
  }

  [(EKUITitleTableViewCell *)titleCell focusTitleAndSelectTitle:titleCopy];
  return 1;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  titleCell = self->_titleCell;
  if (!titleCell)
  {
    _makeCell = [(EKCalendarItemTitleInlineEditItem *)self _makeCell];
    v6 = self->_titleCell;
    self->_titleCell = _makeCell;

    titleCell = self->_titleCell;
  }

  v7 = titleCell;
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  title = [calendarItem title];
  v10 = [title length];

  if (v10)
  {
    calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
    title2 = [calendarItem2 title];
    v13 = _StringWithLineEndingsRemoved(title2);
    [(EKUITitleTableViewCell *)v7 setTitle:v13];
  }

  [(EKCalendarItemTitleInlineEditItem *)self _setDrawsOwnRowSeparatorsForCell:v7];

  return v7;
}

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  titleCell = self->_titleCell;
  if (titleCell)
  {
    title = [(EKUITitleTableViewCell *)titleCell title];
    v6 = _StringWithLineEndingsRemoved(title);
    calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
    [calendarItem setTitle:v6];
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (BOOL)editor:(id)editor canSelectSubitem:(unint64_t)subitem
{
  v4 = [(EKCalendarItemEditItem *)self selectedResponder:editor];
  v5 = v4 == 0;

  return v5;
}

- (void)titleDidBeginEditing:(id)editing
{
  [(EKCalendarItemEditItem *)self setSelectedResponder:editing];

  [(EKCalendarItemEditItem *)self notifyDidStartEditing];
}

- (void)titleDidChange
{
  [(EKCalendarItemEditItem *)self notifyTextChanged];

  [(EKCalendarItemEditItem *)self notifyRequiresHeightChange];
}

- (void)titleDidEndEditing
{
  [(EKCalendarItemEditItem *)self notifyDidEndEditing];

  [(EKCalendarItemEditItem *)self setSelectedResponder:0];
}

- (BOOL)titleShouldReturn
{
  selectedResponder = [(EKCalendarItemEditItem *)self selectedResponder];
  [selectedResponder resignFirstResponder];

  return 0;
}

- (BOOL)isSaveable
{
  title = [(EKUITitleTableViewCell *)self->_titleCell title];
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  title2 = [calendarItem title];
  if ([title isEqualToString:title2])
  {
    v6 = 0;
  }

  else
  {
    title3 = [(EKUITitleTableViewCell *)self->_titleCell title];
    v6 = [title3 length] != 0;
  }

  return v6;
}

- (void)setDrawsOwnRowSeparators:(BOOL)separators
{
  if (self->_drawsOwnRowSeparators != separators)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_drawsOwnRowSeparators = separators;
    delegate = [(EKCalendarItemEditItem *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(EKCalendarItemEditItem *)self delegate];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __62__EKCalendarItemTitleInlineEditItem_setDrawsOwnRowSeparators___block_invoke;
      v9[3] = &unk_1E843EBC0;
      v9[4] = self;
      [delegate2 editItem:self performActionsOnCellAtSubitem:0 actions:v9];
    }
  }
}

- (void)_setDrawsOwnRowSeparatorsForCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setDrawsOwnRowSeparators:{-[EKCalendarItemTitleInlineEditItem drawsOwnRowSeparators](self, "drawsOwnRowSeparators")}];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [cellCopy setRowSeparatorColor:separatorColor];

  if ([(EKCalendarItemTitleInlineEditItem *)self drawsOwnRowSeparators])
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v5 = *MEMORY[0x1E69DE3D0];
    v6 = *MEMORY[0x1E69DE3D0];
    v7 = *MEMORY[0x1E69DE3D0];
    v8 = *MEMORY[0x1E69DE3D0];
  }

  [cellCopy setSeparatorInset:{v5, v6, v7, v8}];
}

@end