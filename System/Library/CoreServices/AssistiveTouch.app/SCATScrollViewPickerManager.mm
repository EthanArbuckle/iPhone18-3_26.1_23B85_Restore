@interface SCATScrollViewPickerManager
- (BOOL)canBeActiveElementManager;
- (BOOL)handleInputAction:(id)a3 withElement:(id)a4;
- (id)visualProvider;
@end

@implementation SCATScrollViewPickerManager

- (id)visualProvider
{
  v3 = [(SCATScrollViewPickerManager *)self pickerViewController];

  if (!v3)
  {
    v4 = [(SCATElementManagerViewController *)[SCATScrollViewPickerViewController alloc] initWithElementManager:self];
    [(SCATScrollViewPickerManager *)self setPickerViewController:v4];
  }

  return [(SCATScrollViewPickerManager *)self pickerViewController];
}

- (BOOL)canBeActiveElementManager
{
  v2 = [(SCATScrollViewPickerManager *)self scrollViews];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)handleInputAction:(id)a3 withElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 action] != 100 && objc_msgSend(v6, "action") != 103 && objc_msgSend(v6, "action") != 109)
  {
    goto LABEL_12;
  }

  if (([v7 scatIsAXElement] & 1) == 0)
  {
    v15 = v7;
    _AXAssert();
  }

  v8 = [(SCATScrollViewPickerManager *)self scrollViews];

  if (!v8)
  {
    _AXAssert();
  }

  if ([v7 scatIsAXElement])
  {
    v9 = [(SCATScrollViewPickerManager *)self scrollViews];

    if (v9)
    {
      v9 = [(SCATScrollViewPickerManager *)self scrollViews];
      v10 = [v9 indexOfObject:v7];

      LOBYTE(v9) = v10 != 0x7FFFFFFFFFFFFFFFLL;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [(SCATScrollViewPickerManager *)self scrollViews];
        _AXAssert();
      }

      else
      {
        v11 = [(SCATScrollViewPickerManager *)self elementsToScroll];
        v12 = [v11 objectAtIndexedSubscript:v10];

        [v12 performAction:{-[SCATScrollViewPickerManager scrollAction](self, "scrollAction")}];
        [(SCATScrollViewPickerManager *)self setScrollViews:0];
        v13 = +[SCATScannerManager sharedManager];
        [v13 beginScanningWithFocusContext:0];
      }
    }
  }

  else
  {
LABEL_12:
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end