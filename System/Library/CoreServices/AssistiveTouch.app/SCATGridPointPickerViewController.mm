@interface SCATGridPointPickerViewController
- (BOOL)_isVisible;
- (BOOL)handleInputAction:(id)action withElement:(id)element;
- (CGPath)scannerPathForPointPickerCenterPoint:(id)point;
- (CGRect)scannerFrameForPointPickerCenterPoint:(id)point;
- (CGRect)scannerFrameForPointPickerGroup:(id)group;
- (CGRect)scannerFrameForPointPickerSquare:(id)square;
- (NSIndexPath)currentSelectionPath;
- (NSString)description;
- (id)_scannableElements;
- (id)_scannableElementsAtSelectionPath:(id)path;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)generateElementsForGroup:(id)group;
- (id)lastElementWithOptions:(int *)options;
- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)setCurrentSelectionPath:(id)path;
@end

@implementation SCATGridPointPickerViewController

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = SCATGridPointPickerViewController;
  v3 = [(SCATGridPointPickerViewController *)&v8 description];
  prompt = [(SCATPointPickerViewController *)self prompt];
  currentSelectionPath = [(SCATGridPointPickerViewController *)self currentSelectionPath];
  v6 = [v3 stringByAppendingFormat:@" - prompt %@, current selection path %@", prompt, currentSelectionPath];

  return v6;
}

- (BOOL)_isVisible
{
  view = [(SCATGridPointPickerViewController *)self view];
  superview = [view superview];
  v4 = superview != 0;

  return v4;
}

- (id)_scannableElementsAtSelectionPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy)
  {
    v6 = pathCopy;
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
    pointPickerView = [(SCATGridPointPickerViewController *)self pointPickerView];
    v13 = pointPickerView;
    v25 = v7;
    if (v11)
    {
      numberOfRows = [pointPickerView numberOfRows];
    }

    else
    {
      numberOfRows = [pointPickerView numberOfColumns];
    }

    v15 = numberOfRows;

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
  currentSelectionPath = [(SCATGridPointPickerViewController *)self currentSelectionPath];
  v4 = [(SCATGridPointPickerViewController *)self _scannableElementsAtSelectionPath:currentSelectionPath];

  return v4;
}

- (NSIndexPath)currentSelectionPath
{
  pointPickerView = [(SCATGridPointPickerViewController *)self pointPickerView];
  currentSelectionPath = [pointPickerView currentSelectionPath];

  return currentSelectionPath;
}

- (void)setCurrentSelectionPath:(id)path
{
  pathCopy = path;
  pointPickerView = [(SCATGridPointPickerViewController *)self pointPickerView];
  [pointPickerView setCurrentSelectionPath:pathCopy];
}

- (CGRect)scannerFrameForPointPickerSquare:(id)square
{
  squareCopy = square;
  pointPickerView = [(SCATGridPointPickerViewController *)self pointPickerView];
  selectionPath = [squareCopy selectionPath];

  [pointPickerView frameForSelectionPath:selectionPath];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  pointPickerView2 = [(SCATGridPointPickerViewController *)self pointPickerView];
  [HNDScreen convertRect:pointPickerView2 fromView:v8, v10, v12, v14];
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

- (CGRect)scannerFrameForPointPickerCenterPoint:(id)point
{
  pointCopy = point;
  pointPickerView = [(SCATGridPointPickerViewController *)self pointPickerView];
  selectionPath = [pointCopy selectionPath];

  [pointPickerView frameForCenterPointAtSelectionPath:selectionPath];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  pointPickerView2 = [(SCATGridPointPickerViewController *)self pointPickerView];
  [HNDScreen convertRect:pointPickerView2 fromView:v8, v10, v12, v14];
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

- (CGPath)scannerPathForPointPickerCenterPoint:(id)point
{
  pointCopy = point;
  pointPickerView = [(SCATGridPointPickerViewController *)self pointPickerView];
  selectionPath = [pointCopy selectionPath];

  v7 = [pointPickerView pathForCenterPointAtSelectionPath:selectionPath];
  return v7;
}

- (CGRect)scannerFrameForPointPickerGroup:(id)group
{
  groupCopy = group;
  pointPickerView = [(SCATGridPointPickerViewController *)self pointPickerView];
  selectionPath = [groupCopy selectionPath];

  [pointPickerView frameForSelectionPath:selectionPath];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  pointPickerView2 = [(SCATGridPointPickerViewController *)self pointPickerView];
  [HNDScreen convertRect:pointPickerView2 fromView:v8, v10, v12, v14];
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

- (id)generateElementsForGroup:(id)group
{
  selectionPath = [group selectionPath];
  v5 = [(SCATGridPointPickerViewController *)self _scannableElementsAtSelectionPath:selectionPath];

  return v5;
}

- (id)firstElementWithOptions:(int *)options
{
  _scannableElements = [(SCATGridPointPickerViewController *)self _scannableElements];
  v4 = [_scannableElements objectAtIndex:0];

  return v4;
}

- (id)lastElementWithOptions:(int *)options
{
  _scannableElements = [(SCATGridPointPickerViewController *)self _scannableElements];
  lastObject = [_scannableElements lastObject];

  return lastObject;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  parentGroup = [afterCopy parentGroup];

  if (parentGroup)
  {
    parentGroup2 = [afterCopy parentGroup];
    v10 = [parentGroup2 nextSiblingOfChild:afterCopy didWrap:wrap];

    goto LABEL_11;
  }

  parentGroup2 = [(SCATGridPointPickerViewController *)self _scannableElementsAtSelectionPath:0];
  v11 = [parentGroup2 indexOfObject:afterCopy];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [parentGroup2 count] - 1;
    v12 = v11 >= v13;
    if (v11 < v13)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = 0;
    }

    v10 = [parentGroup2 objectAtIndex:v14];
    if (!wrap)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  v10 = 0;
  if (wrap)
  {
LABEL_10:
    *wrap = v12;
  }

LABEL_11:

  return v10;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  parentGroup = [beforeCopy parentGroup];

  if (parentGroup)
  {
    parentGroup2 = [beforeCopy parentGroup];
    lastObject = [parentGroup2 previousSiblingOfChild:beforeCopy didWrap:wrap];

    goto LABEL_9;
  }

  parentGroup2 = [(SCATGridPointPickerViewController *)self _scannableElementsAtSelectionPath:0];
  v11 = [parentGroup2 indexOfObject:beforeCopy];

  if (!v11)
  {
    lastObject = [parentGroup2 lastObject];
    v12 = 1;
    if (!wrap)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    lastObject = 0;
    if (!wrap)
    {
      goto LABEL_9;
    }

LABEL_8:
    *wrap = v12;
    goto LABEL_9;
  }

  lastObject = [parentGroup2 objectAtIndex:v11 - 1];
  v12 = 0;
  if (wrap)
  {
    goto LABEL_8;
  }

LABEL_9:

  return lastObject;
}

- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext
{
  contextCopy = context;
  v5 = contextCopy;
  AXPerformBlockOnMainThread();
}

- (BOOL)handleInputAction:(id)action withElement:(id)element
{
  actionCopy = action;
  elementCopy = element;
  if (([elementCopy isGroup] & 1) == 0 && (objc_msgSend(actionCopy, "action") == 100 || objc_msgSend(actionCopy, "action") == 103 || objc_msgSend(actionCopy, "action") == 109))
  {
    [(SCATGridPointPickerViewController *)self _resetGrid];
    v9 = elementCopy;
    pointPickerView = [(SCATGridPointPickerViewController *)self pointPickerView];
    selectionPath = [v9 selectionPath];

    [pointPickerView frameForSelectionPath:selectionPath];
    AX_CGRectGetCenter();
    v13 = v12;
    v15 = v14;

    pointPicker = [(SCATPointPickerViewController *)self pointPicker];
    v8 = 1;
    [pointPicker _savePoint:1 andNotifyDelegate:{v13, v15}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end