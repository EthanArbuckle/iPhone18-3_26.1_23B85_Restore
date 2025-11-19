@interface EKCalendarItemTitleInlineEditItem
- (BOOL)editor:(id)a3 canSelectSubitem:(unint64_t)a4;
- (BOOL)focusTitleAndSelectTitle:(BOOL)a3;
- (BOOL)isSaveable;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (BOOL)titleShouldReturn;
- (EKCalendarItemTitleInlineEditItem)init;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (id)_makeCell;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)_setDrawsOwnRowSeparatorsForCell:(id)a3;
- (void)dealloc;
- (void)refreshFromCalendarItemAndStore;
- (void)reset;
- (void)setDrawsOwnRowSeparators:(BOOL)a3;
- (void)titleDidBeginEditing:(id)a3;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = EKCalendarItemTitleInlineEditItem;
  [(EKCalendarItemTitleInlineEditItem *)&v4 dealloc];
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4
{
  [objc_opt_class() scaledHeightOfSystemTableViewCell];
  v7 = v6;
  v8 = v6 * 3.0;
  [(EKUITitleTableViewCell *)self->_titleCell idealHeightForWidth:a4];
  return fmax(v7, fmin(v9 + 22.0, v8));
}

- (void)refreshFromCalendarItemAndStore
{
  WeakRetained = objc_loadWeakRetained(&self->super._calendarItem);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->super._calendarItem);
    v4 = [v5 title];
    [(EKUITitleTableViewCell *)self->_titleCell setTitle:v4];
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

- (BOOL)focusTitleAndSelectTitle:(BOOL)a3
{
  v3 = a3;
  titleCell = self->_titleCell;
  if (!titleCell)
  {
    v6 = [(EKCalendarItemTitleInlineEditItem *)self cellForSubitemAtIndex:0];
    titleCell = self->_titleCell;
  }

  [(EKUITitleTableViewCell *)titleCell focusTitleAndSelectTitle:v3];
  return 1;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  titleCell = self->_titleCell;
  if (!titleCell)
  {
    v5 = [(EKCalendarItemTitleInlineEditItem *)self _makeCell];
    v6 = self->_titleCell;
    self->_titleCell = v5;

    titleCell = self->_titleCell;
  }

  v7 = titleCell;
  v8 = [(EKCalendarItemEditItem *)self calendarItem];
  v9 = [v8 title];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(EKCalendarItemEditItem *)self calendarItem];
    v12 = [v11 title];
    v13 = _StringWithLineEndingsRemoved(v12);
    [(EKUITitleTableViewCell *)v7 setTitle:v13];
  }

  [(EKCalendarItemTitleInlineEditItem *)self _setDrawsOwnRowSeparatorsForCell:v7];

  return v7;
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  titleCell = self->_titleCell;
  if (titleCell)
  {
    v5 = [(EKUITitleTableViewCell *)titleCell title];
    v6 = _StringWithLineEndingsRemoved(v5);
    v7 = [(EKCalendarItemEditItem *)self calendarItem];
    [v7 setTitle:v6];
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (BOOL)editor:(id)a3 canSelectSubitem:(unint64_t)a4
{
  v4 = [(EKCalendarItemEditItem *)self selectedResponder:a3];
  v5 = v4 == 0;

  return v5;
}

- (void)titleDidBeginEditing:(id)a3
{
  [(EKCalendarItemEditItem *)self setSelectedResponder:a3];

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
  v2 = [(EKCalendarItemEditItem *)self selectedResponder];
  [v2 resignFirstResponder];

  return 0;
}

- (BOOL)isSaveable
{
  v3 = [(EKUITitleTableViewCell *)self->_titleCell title];
  v4 = [(EKCalendarItemEditItem *)self calendarItem];
  v5 = [v4 title];
  if ([v3 isEqualToString:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(EKUITitleTableViewCell *)self->_titleCell title];
    v6 = [v7 length] != 0;
  }

  return v6;
}

- (void)setDrawsOwnRowSeparators:(BOOL)a3
{
  if (self->_drawsOwnRowSeparators != a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_drawsOwnRowSeparators = a3;
    v6 = [(EKCalendarItemEditItem *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(EKCalendarItemEditItem *)self delegate];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __62__EKCalendarItemTitleInlineEditItem_setDrawsOwnRowSeparators___block_invoke;
      v9[3] = &unk_1E843EBC0;
      v9[4] = self;
      [v8 editItem:self performActionsOnCellAtSubitem:0 actions:v9];
    }
  }
}

- (void)_setDrawsOwnRowSeparatorsForCell:(id)a3
{
  v9 = a3;
  [v9 setDrawsOwnRowSeparators:{-[EKCalendarItemTitleInlineEditItem drawsOwnRowSeparators](self, "drawsOwnRowSeparators")}];
  v4 = [MEMORY[0x1E69DC888] separatorColor];
  [v9 setRowSeparatorColor:v4];

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

  [v9 setSeparatorInset:{v5, v6, v7, v8}];
}

@end