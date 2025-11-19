@interface SCATGridPointPickerViewController
- (BOOL)_isVisible;
- (BOOL)handleInputAction:(id)a3 withElement:(id)a4;
- (CGPath)scannerPathForPointPickerCenterPoint:(id)a3;
- (CGRect)scannerFrameForPointPickerCenterPoint:(id)a3;
- (CGRect)scannerFrameForPointPickerGroup:(id)a3;
- (CGRect)scannerFrameForPointPickerSquare:(id)a3;
- (NSIndexPath)currentSelectionPath;
- (NSString)description;
- (id)_scannableElements;
- (id)_scannableElementsAtSelectionPath:(id)a3;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)generateElementsForGroup:(id)a3;
- (id)lastElementWithOptions:(int *)a3;
- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)setCurrentSelectionPath:(id)a3;
@end

@implementation SCATGridPointPickerViewController

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = SCATGridPointPickerViewController;
  v3 = [(SCATGridPointPickerViewController *)&v8 description];
  v4 = [(SCATPointPickerViewController *)self prompt];
  v5 = [(SCATGridPointPickerViewController *)self currentSelectionPath];
  v6 = [v3 stringByAppendingFormat:@" - prompt %@, current selection path %@", v4, v5];

  return v6;
}

- (BOOL)_isVisible
{
  v2 = [(SCATGridPointPickerViewController *)self view];
  v3 = [v2 superview];
  v4 = v3 != 0;

  return v4;
}

- (id)_scannableElementsAtSelectionPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSNull null];
  }

  v7 = v6;
  v8 = [(NSMutableDictionary *)self->_scannableElements objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(SCATGridPointPickerViewController *)self _showsRowsForSelectionPath:v5];
    v12 = [(SCATGridPointPickerViewController *)self pointPickerView];
    v13 = v12;
    v25 = v7;
    if (v11)
    {
      v14 = [v12 numberOfRows];
    }

    else
    {
      v14 = [v12 numberOfColumns];
    }

    v15 = v14;

    v10 = [NSMutableArray arrayWithCapacity:v15 + 1];
    v16 = [(SCATPointPickerElement *)[SCATPointPickerCenterPoint alloc] initWithSelectionPath:v5];
    [(SCATPointPickerCenterPoint *)v16 setDelegate:self];
    v24 = v16;
    [v10 addObject:v16];
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        if (v5)
        {
          [v5 indexPathByAddingIndex:i];
        }

        else
        {
          [NSIndexPath indexPathWithIndex:i];
        }
        v18 = ;
        if ([v18 length] == 8)
        {
          v19 = [(SCATPointPickerElement *)[SCATPointPickerSquare alloc] initWithSelectionPath:v18];
          [(SCATPointPickerSquare *)v19 setDelegate:self];
        }

        else
        {
          v19 = [[SCATPointPickerGroup alloc] initWithSelectionPath:v18 generatorDelegate:self];
        }

        [v10 addObject:v19];
      }
    }

    scannableElements = self->_scannableElements;
    if (!scannableElements)
    {
      v21 = [[NSMutableDictionary alloc] initWithCapacity:1];
      v22 = self->_scannableElements;
      self->_scannableElements = v21;

      scannableElements = self->_scannableElements;
    }

    v7 = v25;
    [(NSMutableDictionary *)scannableElements setObject:v10 forKey:v25];
  }

  return v10;
}

- (id)_scannableElements
{
  v3 = [(SCATGridPointPickerViewController *)self currentSelectionPath];
  v4 = [(SCATGridPointPickerViewController *)self _scannableElementsAtSelectionPath:v3];

  return v4;
}

- (NSIndexPath)currentSelectionPath
{
  v2 = [(SCATGridPointPickerViewController *)self pointPickerView];
  v3 = [v2 currentSelectionPath];

  return v3;
}

- (void)setCurrentSelectionPath:(id)a3
{
  v4 = a3;
  v5 = [(SCATGridPointPickerViewController *)self pointPickerView];
  [v5 setCurrentSelectionPath:v4];
}

- (CGRect)scannerFrameForPointPickerSquare:(id)a3
{
  v4 = a3;
  v5 = [(SCATGridPointPickerViewController *)self pointPickerView];
  v6 = [v4 selectionPath];

  [v5 frameForSelectionPath:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(SCATGridPointPickerViewController *)self pointPickerView];
  [HNDScreen convertRect:v15 fromView:v8, v10, v12, v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)scannerFrameForPointPickerCenterPoint:(id)a3
{
  v4 = a3;
  v5 = [(SCATGridPointPickerViewController *)self pointPickerView];
  v6 = [v4 selectionPath];

  [v5 frameForCenterPointAtSelectionPath:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(SCATGridPointPickerViewController *)self pointPickerView];
  [HNDScreen convertRect:v15 fromView:v8, v10, v12, v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGPath)scannerPathForPointPickerCenterPoint:(id)a3
{
  v4 = a3;
  v5 = [(SCATGridPointPickerViewController *)self pointPickerView];
  v6 = [v4 selectionPath];

  v7 = [v5 pathForCenterPointAtSelectionPath:v6];
  return v7;
}

- (CGRect)scannerFrameForPointPickerGroup:(id)a3
{
  v4 = a3;
  v5 = [(SCATGridPointPickerViewController *)self pointPickerView];
  v6 = [v4 selectionPath];

  [v5 frameForSelectionPath:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(SCATGridPointPickerViewController *)self pointPickerView];
  [HNDScreen convertRect:v15 fromView:v8, v10, v12, v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)generateElementsForGroup:(id)a3
{
  v4 = [a3 selectionPath];
  v5 = [(SCATGridPointPickerViewController *)self _scannableElementsAtSelectionPath:v4];

  return v5;
}

- (id)firstElementWithOptions:(int *)a3
{
  v3 = [(SCATGridPointPickerViewController *)self _scannableElements];
  v4 = [v3 objectAtIndex:0];

  return v4;
}

- (id)lastElementWithOptions:(int *)a3
{
  v3 = [(SCATGridPointPickerViewController *)self _scannableElements];
  v4 = [v3 lastObject];

  return v4;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = a3;
  v8 = [v7 parentGroup];

  if (v8)
  {
    v9 = [v7 parentGroup];
    v10 = [v9 nextSiblingOfChild:v7 didWrap:a4];

    goto LABEL_11;
  }

  v9 = [(SCATGridPointPickerViewController *)self _scannableElementsAtSelectionPath:0];
  v11 = [v9 indexOfObject:v7];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v9 count] - 1;
    v12 = v11 >= v13;
    if (v11 < v13)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = 0;
    }

    v10 = [v9 objectAtIndex:v14];
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  v10 = 0;
  if (a4)
  {
LABEL_10:
    *a4 = v12;
  }

LABEL_11:

  return v10;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = a3;
  v8 = [v7 parentGroup];

  if (v8)
  {
    v9 = [v7 parentGroup];
    v10 = [v9 previousSiblingOfChild:v7 didWrap:a4];

    goto LABEL_9;
  }

  v9 = [(SCATGridPointPickerViewController *)self _scannableElementsAtSelectionPath:0];
  v11 = [v9 indexOfObject:v7];

  if (!v11)
  {
    v10 = [v9 lastObject];
    v12 = 1;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a4 = v12;
    goto LABEL_9;
  }

  v10 = [v9 objectAtIndex:v11 - 1];
  v12 = 0;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v10;
}

- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v6 = a4;
  v5 = v6;
  AXPerformBlockOnMainThread();
}

- (BOOL)handleInputAction:(id)a3 withElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isGroup] & 1) == 0 && (objc_msgSend(v6, "action") == 100 || objc_msgSend(v6, "action") == 103 || objc_msgSend(v6, "action") == 109))
  {
    [(SCATGridPointPickerViewController *)self _resetGrid];
    v9 = v7;
    v10 = [(SCATGridPointPickerViewController *)self pointPickerView];
    v11 = [v9 selectionPath];

    [v10 frameForSelectionPath:v11];
    AX_CGRectGetCenter();
    v13 = v12;
    v15 = v14;

    v16 = [(SCATPointPickerViewController *)self pointPicker];
    v8 = 1;
    [v16 _savePoint:1 andNotifyDelegate:{v13, v15}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end