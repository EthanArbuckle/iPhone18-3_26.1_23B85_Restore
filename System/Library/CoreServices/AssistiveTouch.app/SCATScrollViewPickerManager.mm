@interface SCATScrollViewPickerManager
- (BOOL)canBeActiveElementManager;
- (BOOL)handleInputAction:(id)action withElement:(id)element;
- (id)visualProvider;
@end

@implementation SCATScrollViewPickerManager

- (id)visualProvider
{
  pickerViewController = [(SCATScrollViewPickerManager *)self pickerViewController];

  if (!pickerViewController)
  {
    v4 = [(SCATElementManagerViewController *)[SCATScrollViewPickerViewController alloc] initWithElementManager:self];
    [(SCATScrollViewPickerManager *)self setPickerViewController:v4];
  }

  return [(SCATScrollViewPickerManager *)self pickerViewController];
}

- (BOOL)canBeActiveElementManager
{
  scrollViews = [(SCATScrollViewPickerManager *)self scrollViews];
  v3 = scrollViews != 0;

  return v3;
}

- (BOOL)handleInputAction:(id)action withElement:(id)element
{
  actionCopy = action;
  elementCopy = element;
  if ([actionCopy action] != 100 && objc_msgSend(actionCopy, "action") != 103 && objc_msgSend(actionCopy, "action") != 109)
  {
    goto LABEL_12;
  }

  if (([elementCopy scatIsAXElement] & 1) == 0)
  {
    v15 = elementCopy;
    _AXAssert();
  }

  scrollViews = [(SCATScrollViewPickerManager *)self scrollViews];

  if (!scrollViews)
  {
    _AXAssert();
  }

  if ([elementCopy scatIsAXElement])
  {
    scrollViews2 = [(SCATScrollViewPickerManager *)self scrollViews];

    if (scrollViews2)
    {
      scrollViews2 = [(SCATScrollViewPickerManager *)self scrollViews];
      v10 = [scrollViews2 indexOfObject:elementCopy];

      LOBYTE(scrollViews2) = v10 != 0x7FFFFFFFFFFFFFFFLL;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        scrollViews3 = [(SCATScrollViewPickerManager *)self scrollViews];
        _AXAssert();
      }

      else
      {
        elementsToScroll = [(SCATScrollViewPickerManager *)self elementsToScroll];
        scrollViews3 = [elementsToScroll objectAtIndexedSubscript:v10];

        [scrollViews3 performAction:{-[SCATScrollViewPickerManager scrollAction](self, "scrollAction")}];
        [(SCATScrollViewPickerManager *)self setScrollViews:0];
        v13 = +[SCATScannerManager sharedManager];
        [v13 beginScanningWithFocusContext:0];
      }
    }
  }

  else
  {
LABEL_12:
    LOBYTE(scrollViews2) = 0;
  }

  return scrollViews2;
}

@end