@interface EKCalendarColorEditItem
- (BOOL)configureWithCalendar:(id)calendar;
- (BOOL)saveStateToCalendar:(id)calendar;
- (EKCalendarColorEditItemDelegate)colorEditItemDelegate;
- (id)_cellForSymbolicColor:(id)color;
- (id)_cellWithText:(id)text;
- (id)_checkmarkCellForCustomColor:(id)color;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)cells;
- (id)headerTitle;
- (unint64_t)numberOfSubitems;
- (void)_setInitialColorOnCalendar;
- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)editItemSelectedColor:(id)color symbolicName:(id)name;
- (void)reset;
- (void)setCalendar:(id)calendar store:(id)store;
- (void)setLayoutInline:(BOOL)inline;
@end

@implementation EKCalendarColorEditItem

- (void)reset
{
  cells = self->_cells;
  self->_cells = 0;
}

- (BOOL)configureWithCalendar:(id)calendar
{
  v6.receiver = self;
  v6.super_class = EKCalendarColorEditItem;
  calendarCopy = calendar;
  [(EKCalendarEditItem *)&v6 configureWithCalendar:calendarCopy];
  source = [calendarCopy source];

  LOBYTE(calendarCopy) = [source isFacebookSource];
  return calendarCopy ^ 1;
}

- (void)setLayoutInline:(BOOL)inline
{
  self->_layoutInline = inline;
  cells = self->_cells;
  self->_cells = 0;
}

- (id)_cellWithText:(id)text
{
  textCopy = text;
  v4 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  textLabel = [(EKUITableViewCell *)v4 textLabel];
  [textLabel setText:textCopy];

  textLabel2 = [(EKUITableViewCell *)v4 textLabel];
  [textLabel2 setAccessibilityIdentifier:@"calendar-current-selected-color"];

  [(EKUITableViewCell *)v4 setSelectionStyle:1];
  [(EKUITableViewCell *)v4 setAccessoryType:0];
  [(EKUITableViewCell *)v4 setAccessibilityIdentifier:@"calendar-color-cell"];

  return v4;
}

- (id)_checkmarkCellForCustomColor:(id)color
{
  colorCopy = color;
  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:@"Custom…" value:&stru_1F4EF6790 table:0];

  v7 = [(EKCalendarColorEditItem *)self _cellWithText:v6];
  textLabel = [v7 textLabel];
  font = [textLabel font];
  v10 = ScaledCalendarColorChooserDotImageForColor(colorCopy, font);

  imageView = [v7 imageView];
  [imageView setImage:v10];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"calendar-color-cell-custom"];
  [v7 setAccessibilityIdentifier:v12];

  return v7;
}

- (id)_cellForSymbolicColor:(id)color
{
  store = self->super._store;
  colorCopy = color;
  v6 = [(EKEventStore *)store localizedStringForSymbolicColorName:colorCopy];
  v7 = [(EKCalendarColorEditItem *)self _cellWithText:v6];

  v8 = [MEMORY[0x1E6966990] displayColorForSymbolicName:colorCopy];
  textLabel = [v7 textLabel];
  font = [textLabel font];
  v11 = ScaledCalendarColorChooserDotImageForColor(v8, font);
  imageView = [v7 imageView];
  [imageView setImage:v11];

  colorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"calendar-color-cell-%@", colorCopy];

  [v7 setAccessibilityIdentifier:colorCopy];

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

      colorNamesInRainbowOrder = [(EKEventStore *)self->super._store colorNamesInRainbowOrder];
      defaultCalendarColorsInRainbowOrder = [(EKEventStore *)self->super._store defaultCalendarColorsInRainbowOrder];
      if ([colorNamesInRainbowOrder count])
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = [defaultCalendarColorsInRainbowOrder objectAtIndex:v11];
          v14 = [colorNamesInRainbowOrder objectAtIndex:v11];
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

        while ([colorNamesInRainbowOrder count] > v11);
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

      selectedColor = [(UIColorPickerViewController *)self->_customColorPicker selectedColor];
      v26 = [(EKCalendarColorEditItem *)self _checkmarkCellForCustomColor:selectedColor];

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
      colorNamesInRainbowOrder = [(EKCalendarColorEditItem *)self _cellWithText:v19];

      v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v21 = ScaledCalendarColorChooserDotImageForColor(v8, v20);
      imageView = [colorNamesInRainbowOrder imageView];
      [imageView setImage:v21];

      [colorNamesInRainbowOrder setAccessoryType:1];
      [(NSMutableArray *)self->_cells addObject:colorNamesInRainbowOrder];
    }
  }

LABEL_24:
  v27 = self->_cells;

  return v27;
}

- (void)_setInitialColorOnCalendar
{
  copyCGColorForNewCalendar = [(EKEventStore *)self->super._store copyCGColorForNewCalendar];
  v5 = [MEMORY[0x1E69DC888] colorWithCGColor:copyCGColorForNewCalendar];
  if (copyCGColorForNewCalendar)
  {
    CFRelease(copyCGColorForNewCalendar);
  }

  v4 = [(EKEventStore *)self->super._store symbolicNameForColor:v5];
  if (v4)
  {
    [(EKCalendar *)self->super._calendar setSymbolicColorName:v4];
  }
}

- (void)setCalendar:(id)calendar store:(id)store
{
  v6.receiver = self;
  v6.super_class = EKCalendarColorEditItem;
  [(EKCalendarEditItem *)&v6 setCalendar:calendar store:store];
  cells = self->_cells;
  self->_cells = 0;
}

- (unint64_t)numberOfSubitems
{
  cells = [(EKCalendarColorEditItem *)self cells];
  v3 = [cells count];

  return v3;
}

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Color" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cells = [(EKCalendarColorEditItem *)self cells];
  v5 = [cells objectAtIndex:index];

  return v5;
}

- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  editorCopy = editor;
  if (self->_layoutInline)
  {
    cells = [(EKCalendarColorEditItem *)self cells];
    delegate4 = [cells objectAtIndex:self->_checkedRow];

    [delegate4 setAccessoryType:0];
    cells2 = [(EKCalendarColorEditItem *)self cells];
    owningNavigationController3 = [cells2 objectAtIndex:subitem];

    [owningNavigationController3 setAccessoryType:3];
    self->_checkedRow = subitem;
    if ([(EKCalendarColorEditItem *)self lastSubitemIndex]== subitem)
    {
      delegate = [(EKCalendarEditItem *)self delegate];
      owningNavigationController = [delegate owningNavigationController];
      presentedViewController = [owningNavigationController presentedViewController];

      if (presentedViewController)
      {
LABEL_10:
        [(EKCalendarColorEditItem *)self saveStateToCalendar:self->super._calendar];
        goto LABEL_11;
      }

      colorEditItemDelegate = [(EKCalendarColorEditItem *)self colorEditItemDelegate];
      selectedColor = [(UIColorPickerViewController *)self->_customColorPicker selectedColor];
      [colorEditItemDelegate editItemSelectedColor:selectedColor symbolicName:0];

      [(UIColorPickerViewController *)self->_customColorPicker setModalPresentationStyle:7];
      popoverPresentationController = [(UIColorPickerViewController *)self->_customColorPicker popoverPresentationController];
      [popoverPresentationController setSourceView:owningNavigationController3];
      [popoverPresentationController setPermittedArrowDirections:12];
      delegate2 = [(EKCalendarEditItem *)self delegate];
      owningNavigationController2 = [delegate2 owningNavigationController];
      [owningNavigationController2 presentViewController:self->_customColorPicker animated:1 completion:0];
    }

    else
    {
      popoverPresentationController = [(EKEventStore *)self->super._store colorNamesInRainbowOrder];
      delegate2 = [popoverPresentationController objectAtIndexedSubscript:self->_checkedRow];
      owningNavigationController2 = [(EKCalendarColorEditItem *)self colorEditItemDelegate];
      [owningNavigationController2 editItemSelectedColor:0 symbolicName:delegate2];
    }

    goto LABEL_10;
  }

  if (!self->_layoutInlineViewController)
  {
    v18 = objc_alloc_init(EKCalendarColorEditItem);
    [(EKCalendarColorEditItem *)v18 setLayoutInline:1];
    [(EKCalendarColorEditItem *)v18 setCalendar:self->super._calendar store:self->super._store];
    delegate3 = [(EKCalendarEditItem *)self delegate];
    [(EKCalendarEditItem *)v18 setDelegate:delegate3];

    [(EKCalendarColorEditItem *)v18 setColorEditItemDelegate:self];
    v20 = objc_alloc_init(EKCalendarColorViewController);
    layoutInlineViewController = self->_layoutInlineViewController;
    self->_layoutInlineViewController = v20;

    [(EKCalendarColorViewController *)self->_layoutInlineViewController setEditItem:v18];
  }

  delegate4 = [(EKCalendarEditItem *)self delegate];
  owningNavigationController3 = [delegate4 owningNavigationController];
  [owningNavigationController3 pushViewController:self->_layoutInlineViewController animated:1];
LABEL_11:
}

- (BOOL)saveStateToCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (self->_layoutInline)
  {
    colorNamesInRainbowOrder = [(EKEventStore *)self->super._store colorNamesInRainbowOrder];
    checkedRow = self->_checkedRow;
    if (checkedRow < [colorNamesInRainbowOrder count])
    {
      delegate2 = [colorNamesInRainbowOrder objectAtIndexedSubscript:self->_checkedRow];
      symbolicColorName = [calendarCopy symbolicColorName];
      v9 = [symbolicColorName isEqualToString:delegate2];

      if ((v9 & 1) == 0)
      {
        v10 = [colorNamesInRainbowOrder objectAtIndexedSubscript:self->_checkedRow];
        [calendarCopy setSymbolicColorName:v10];

        delegate = [(EKCalendarEditItem *)self delegate];
        [delegate calendarItemStartedEditing:self];
      }

      goto LABEL_8;
    }

    selectedColor = [(UIColorPickerViewController *)self->_customColorPicker selectedColor];
    cGColor = [selectedColor CGColor];

    if (!CGColorEqualToColor([calendarCopy CGColor], cGColor))
    {
      [calendarCopy setCGColor:cGColor];
      delegate2 = [(EKCalendarEditItem *)self delegate];
      [delegate2 calendarItemStartedEditing:self];
LABEL_8:
    }
  }

  else
  {
    colorNamesInRainbowOrder = [(EKCalendarColorViewController *)self->_layoutInlineViewController editItem];
    [colorNamesInRainbowOrder saveStateToCalendar:calendarCopy];
  }

  return 1;
}

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  colorCopy = color;
  v12 = [(EKCalendarColorEditItem *)self cellForSubitemAtIndex:[(EKCalendarColorEditItem *)self lastSubitemIndex]];
  textLabel = [v12 textLabel];
  font = [textLabel font];
  v9 = ScaledCalendarColorChooserDotImageForColor(colorCopy, font);
  imageView = [v12 imageView];
  [imageView setImage:v9];

  colorEditItemDelegate = [(EKCalendarColorEditItem *)self colorEditItemDelegate];
  [colorEditItemDelegate editItemSelectedColor:colorCopy symbolicName:0];
}

- (void)editItemSelectedColor:(id)color symbolicName:(id)name
{
  colorCopy = color;
  nameCopy = name;
  if (!self->_layoutInline)
  {
    cells = [(EKCalendarColorEditItem *)self cells];
    firstObject = [cells firstObject];

    if (nameCopy)
    {
      v9 = [(EKEventStore *)self->super._store localizedStringForSymbolicColorName:nameCopy];
      textLabel = [firstObject textLabel];
      [textLabel setText:v9];

      textLabel4 = [MEMORY[0x1E6966990] displayColorForSymbolicName:nameCopy];
      textLabel2 = [firstObject textLabel];
      font = [textLabel2 font];
      imageView2 = ScaledCalendarColorChooserDotImageForColor(textLabel4, font);
      imageView = [firstObject imageView];
      [imageView setImage:imageView2];
    }

    else
    {
      if (!colorCopy)
      {
LABEL_7:

        goto LABEL_8;
      }

      v16 = [(EKEventStore *)self->super._store stringForColor:colorCopy];
      textLabel3 = [firstObject textLabel];
      [textLabel3 setText:v16];

      textLabel4 = [firstObject textLabel];
      textLabel2 = [textLabel4 font];
      font = ScaledCalendarColorChooserDotImageForColor(colorCopy, textLabel2);
      imageView2 = [firstObject imageView];
      [imageView2 setImage:font];
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