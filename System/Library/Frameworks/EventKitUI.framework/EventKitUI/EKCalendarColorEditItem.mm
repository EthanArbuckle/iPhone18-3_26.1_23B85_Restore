@interface EKCalendarColorEditItem
- (BOOL)configureWithCalendar:(id)a3;
- (BOOL)saveStateToCalendar:(id)a3;
- (EKCalendarColorEditItemDelegate)colorEditItemDelegate;
- (id)_cellForSymbolicColor:(id)a3;
- (id)_cellWithText:(id)a3;
- (id)_checkmarkCellForCustomColor:(id)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)cells;
- (id)headerTitle;
- (unint64_t)numberOfSubitems;
- (void)_setInitialColorOnCalendar;
- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)editItemSelectedColor:(id)a3 symbolicName:(id)a4;
- (void)reset;
- (void)setCalendar:(id)a3 store:(id)a4;
- (void)setLayoutInline:(BOOL)a3;
@end

@implementation EKCalendarColorEditItem

- (void)reset
{
  cells = self->_cells;
  self->_cells = 0;
}

- (BOOL)configureWithCalendar:(id)a3
{
  v6.receiver = self;
  v6.super_class = EKCalendarColorEditItem;
  v3 = a3;
  [(EKCalendarEditItem *)&v6 configureWithCalendar:v3];
  v4 = [v3 source];

  LOBYTE(v3) = [v4 isFacebookSource];
  return v3 ^ 1;
}

- (void)setLayoutInline:(BOOL)a3
{
  self->_layoutInline = a3;
  cells = self->_cells;
  self->_cells = 0;
}

- (id)_cellWithText:(id)a3
{
  v3 = a3;
  v4 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  v5 = [(EKUITableViewCell *)v4 textLabel];
  [v5 setText:v3];

  v6 = [(EKUITableViewCell *)v4 textLabel];
  [v6 setAccessibilityIdentifier:@"calendar-current-selected-color"];

  [(EKUITableViewCell *)v4 setSelectionStyle:1];
  [(EKUITableViewCell *)v4 setAccessoryType:0];
  [(EKUITableViewCell *)v4 setAccessibilityIdentifier:@"calendar-color-cell"];

  return v4;
}

- (id)_checkmarkCellForCustomColor:(id)a3
{
  v4 = a3;
  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:@"Custom…" value:&stru_1F4EF6790 table:0];

  v7 = [(EKCalendarColorEditItem *)self _cellWithText:v6];
  v8 = [v7 textLabel];
  v9 = [v8 font];
  v10 = ScaledCalendarColorChooserDotImageForColor(v4, v9);

  v11 = [v7 imageView];
  [v11 setImage:v10];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"calendar-color-cell-custom"];
  [v7 setAccessibilityIdentifier:v12];

  return v7;
}

- (id)_cellForSymbolicColor:(id)a3
{
  store = self->super._store;
  v5 = a3;
  v6 = [(EKEventStore *)store localizedStringForSymbolicColorName:v5];
  v7 = [(EKCalendarColorEditItem *)self _cellWithText:v6];

  v8 = [MEMORY[0x1E6966990] displayColorForSymbolicName:v5];
  v9 = [v7 textLabel];
  v10 = [v9 font];
  v11 = ScaledCalendarColorChooserDotImageForColor(v8, v10);
  v12 = [v7 imageView];
  [v12 setImage:v11];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"calendar-color-cell-%@", v5];

  [v7 setAccessibilityIdentifier:v13];

  return v7;
}

- (id)cells
{
  if (!self->_cells)
  {
    layoutInline = self->_layoutInline;
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    if (layoutInline)
    {
      v5 = [v4 initWithCapacity:8];
      cells = self->_cells;
      self->_cells = v5;

      store = self->super._store;
      if (!store)
      {
        goto LABEL_24;
      }

      v8 = [(EKEventStore *)store colorForCalendar:self->super._calendar];
      if (!v8)
      {
        [(EKCalendarColorEditItem *)self _setInitialColorOnCalendar];
        v8 = [(EKEventStore *)self->super._store colorForCalendar:self->super._calendar];
      }

      v9 = [(EKEventStore *)self->super._store colorNamesInRainbowOrder];
      v10 = [(EKEventStore *)self->super._store defaultCalendarColorsInRainbowOrder];
      if ([v9 count])
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = [v10 objectAtIndex:v11];
          v14 = [v9 objectAtIndex:v11];
          v15 = [(EKCalendarColorEditItem *)self _cellForSymbolicColor:v14];
          if ([v13 isEqual:v8])
          {
            self->_checkedRow = v11;
            [v15 setAccessoryType:3];
            v12 = 1;
          }

          [(NSMutableArray *)self->_cells addObject:v15];

          ++v11;
        }

        while ([v9 count] > v11);
      }

      else
      {
        v12 = 0;
      }

      if (!self->_customColorPicker)
      {
        v23 = objc_alloc_init(MEMORY[0x1E69DC8A0]);
        [(UIColorPickerViewController *)v23 setSupportsAlpha:0];
        [(UIColorPickerViewController *)v23 setDelegate:self];
        [(UIColorPickerViewController *)v23 setSelectedColor:v8];
        customColorPicker = self->_customColorPicker;
        self->_customColorPicker = v23;
      }

      v25 = [(UIColorPickerViewController *)self->_customColorPicker selectedColor];
      v26 = [(EKCalendarColorEditItem *)self _checkmarkCellForCustomColor:v25];

      if (v12)
      {
        [(NSMutableArray *)self->_cells addObject:v26];
      }

      else
      {
        [v26 setAccessoryType:3];
        [(NSMutableArray *)self->_cells addObject:v26];
        self->_checkedRow = [(NSMutableArray *)self->_cells count]- 1;
      }
    }

    else
    {
      v16 = [v4 initWithCapacity:1];
      v17 = self->_cells;
      self->_cells = v16;

      v18 = self->super._store;
      if (!v18)
      {
        goto LABEL_24;
      }

      v8 = [(EKEventStore *)v18 colorForCalendar:self->super._calendar];
      if (!v8)
      {
        [(EKCalendarColorEditItem *)self _setInitialColorOnCalendar];
        v8 = [(EKEventStore *)self->super._store colorForCalendar:self->super._calendar];
      }

      v19 = [(EKEventStore *)self->super._store stringForColor:v8];
      v9 = [(EKCalendarColorEditItem *)self _cellWithText:v19];

      v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v21 = ScaledCalendarColorChooserDotImageForColor(v8, v20);
      v22 = [v9 imageView];
      [v22 setImage:v21];

      [v9 setAccessoryType:1];
      [(NSMutableArray *)self->_cells addObject:v9];
    }
  }

LABEL_24:
  v27 = self->_cells;

  return v27;
}

- (void)_setInitialColorOnCalendar
{
  v3 = [(EKEventStore *)self->super._store copyCGColorForNewCalendar];
  v5 = [MEMORY[0x1E69DC888] colorWithCGColor:v3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = [(EKEventStore *)self->super._store symbolicNameForColor:v5];
  if (v4)
  {
    [(EKCalendar *)self->super._calendar setSymbolicColorName:v4];
  }
}

- (void)setCalendar:(id)a3 store:(id)a4
{
  v6.receiver = self;
  v6.super_class = EKCalendarColorEditItem;
  [(EKCalendarEditItem *)&v6 setCalendar:a3 store:a4];
  cells = self->_cells;
  self->_cells = 0;
}

- (unint64_t)numberOfSubitems
{
  v2 = [(EKCalendarColorEditItem *)self cells];
  v3 = [v2 count];

  return v3;
}

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Color" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [(EKCalendarColorEditItem *)self cells];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v22 = a3;
  if (self->_layoutInline)
  {
    v6 = [(EKCalendarColorEditItem *)self cells];
    v7 = [v6 objectAtIndex:self->_checkedRow];

    [v7 setAccessoryType:0];
    v8 = [(EKCalendarColorEditItem *)self cells];
    v9 = [v8 objectAtIndex:a4];

    [v9 setAccessoryType:3];
    self->_checkedRow = a4;
    if ([(EKCalendarColorEditItem *)self lastSubitemIndex]== a4)
    {
      v10 = [(EKCalendarEditItem *)self delegate];
      v11 = [v10 owningNavigationController];
      v12 = [v11 presentedViewController];

      if (v12)
      {
LABEL_10:
        [(EKCalendarColorEditItem *)self saveStateToCalendar:self->super._calendar];
        goto LABEL_11;
      }

      v13 = [(EKCalendarColorEditItem *)self colorEditItemDelegate];
      v14 = [(UIColorPickerViewController *)self->_customColorPicker selectedColor];
      [v13 editItemSelectedColor:v14 symbolicName:0];

      [(UIColorPickerViewController *)self->_customColorPicker setModalPresentationStyle:7];
      v15 = [(UIColorPickerViewController *)self->_customColorPicker popoverPresentationController];
      [v15 setSourceView:v9];
      [v15 setPermittedArrowDirections:12];
      v16 = [(EKCalendarEditItem *)self delegate];
      v17 = [v16 owningNavigationController];
      [v17 presentViewController:self->_customColorPicker animated:1 completion:0];
    }

    else
    {
      v15 = [(EKEventStore *)self->super._store colorNamesInRainbowOrder];
      v16 = [v15 objectAtIndexedSubscript:self->_checkedRow];
      v17 = [(EKCalendarColorEditItem *)self colorEditItemDelegate];
      [v17 editItemSelectedColor:0 symbolicName:v16];
    }

    goto LABEL_10;
  }

  if (!self->_layoutInlineViewController)
  {
    v18 = objc_alloc_init(EKCalendarColorEditItem);
    [(EKCalendarColorEditItem *)v18 setLayoutInline:1];
    [(EKCalendarColorEditItem *)v18 setCalendar:self->super._calendar store:self->super._store];
    v19 = [(EKCalendarEditItem *)self delegate];
    [(EKCalendarEditItem *)v18 setDelegate:v19];

    [(EKCalendarColorEditItem *)v18 setColorEditItemDelegate:self];
    v20 = objc_alloc_init(EKCalendarColorViewController);
    layoutInlineViewController = self->_layoutInlineViewController;
    self->_layoutInlineViewController = v20;

    [(EKCalendarColorViewController *)self->_layoutInlineViewController setEditItem:v18];
  }

  v7 = [(EKCalendarEditItem *)self delegate];
  v9 = [v7 owningNavigationController];
  [v9 pushViewController:self->_layoutInlineViewController animated:1];
LABEL_11:
}

- (BOOL)saveStateToCalendar:(id)a3
{
  v4 = a3;
  if (self->_layoutInline)
  {
    v5 = [(EKEventStore *)self->super._store colorNamesInRainbowOrder];
    checkedRow = self->_checkedRow;
    if (checkedRow < [v5 count])
    {
      v7 = [v5 objectAtIndexedSubscript:self->_checkedRow];
      v8 = [v4 symbolicColorName];
      v9 = [v8 isEqualToString:v7];

      if ((v9 & 1) == 0)
      {
        v10 = [v5 objectAtIndexedSubscript:self->_checkedRow];
        [v4 setSymbolicColorName:v10];

        v11 = [(EKCalendarEditItem *)self delegate];
        [v11 calendarItemStartedEditing:self];
      }

      goto LABEL_8;
    }

    v12 = [(UIColorPickerViewController *)self->_customColorPicker selectedColor];
    v13 = [v12 CGColor];

    if (!CGColorEqualToColor([v4 CGColor], v13))
    {
      [v4 setCGColor:v13];
      v7 = [(EKCalendarEditItem *)self delegate];
      [v7 calendarItemStartedEditing:self];
LABEL_8:
    }
  }

  else
  {
    v5 = [(EKCalendarColorViewController *)self->_layoutInlineViewController editItem];
    [v5 saveStateToCalendar:v4];
  }

  return 1;
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v6 = a4;
  v12 = [(EKCalendarColorEditItem *)self cellForSubitemAtIndex:[(EKCalendarColorEditItem *)self lastSubitemIndex]];
  v7 = [v12 textLabel];
  v8 = [v7 font];
  v9 = ScaledCalendarColorChooserDotImageForColor(v6, v8);
  v10 = [v12 imageView];
  [v10 setImage:v9];

  v11 = [(EKCalendarColorEditItem *)self colorEditItemDelegate];
  [v11 editItemSelectedColor:v6 symbolicName:0];
}

- (void)editItemSelectedColor:(id)a3 symbolicName:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (!self->_layoutInline)
  {
    v7 = [(EKCalendarColorEditItem *)self cells];
    v8 = [v7 firstObject];

    if (v6)
    {
      v9 = [(EKEventStore *)self->super._store localizedStringForSymbolicColorName:v6];
      v10 = [v8 textLabel];
      [v10 setText:v9];

      v11 = [MEMORY[0x1E6966990] displayColorForSymbolicName:v6];
      v12 = [v8 textLabel];
      v13 = [v12 font];
      v14 = ScaledCalendarColorChooserDotImageForColor(v11, v13);
      v15 = [v8 imageView];
      [v15 setImage:v14];
    }

    else
    {
      if (!v18)
      {
LABEL_7:

        goto LABEL_8;
      }

      v16 = [(EKEventStore *)self->super._store stringForColor:v18];
      v17 = [v8 textLabel];
      [v17 setText:v16];

      v11 = [v8 textLabel];
      v12 = [v11 font];
      v13 = ScaledCalendarColorChooserDotImageForColor(v18, v12);
      v14 = [v8 imageView];
      [v14 setImage:v13];
    }

    goto LABEL_7;
  }

LABEL_8:
  [(EKCalendarColorEditItem *)self saveStateToCalendar:self->super._calendar];
}

- (EKCalendarColorEditItemDelegate)colorEditItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_colorEditItemDelegate);

  return WeakRetained;
}

@end