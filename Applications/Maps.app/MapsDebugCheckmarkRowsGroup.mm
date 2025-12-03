@interface MapsDebugCheckmarkRowsGroup
+ (id)rowsGroupContainingRows:(id *)rows withContent:(id)content backingGeoConfigKey:(id)key get:(id)get set:(id)set;
- (MapsDebugCheckmarkRowsGroup)init;
- (NSArray)rows;
- (NSString)groupIdentifier;
- (id)_initWithHeldRows;
- (id)_relinquishOwnershipOfHeldRows;
- (id)addRowWithTitle:(id)title subtitle:(id)subtitle value:(id)value;
- (unint64_t)selectedRowsCount;
- (void)addRow:(id)row;
- (void)checkmarkRowDidChangeChecked:(id)checked;
- (void)checkmarkRowWillInvalidate:(id)invalidate;
- (void)dealloc;
- (void)setGeoConfigKey:(id)key;
- (void)update;
@end

@implementation MapsDebugCheckmarkRowsGroup

- (void)setGeoConfigKey:(id)key
{
  var1 = key.var1;
  var0 = key.var0;
  GEOConfigRemoveDelegateListenerForAllKeys();
  if (var0 && var1)
  {

    _GEOConfigAddDelegateListenerForKey();
  }
}

- (NSString)groupIdentifier
{
  groupIdentifier = self->_groupIdentifier;
  if (!groupIdentifier)
  {
    v4 = [NSString stringWithFormat:@"MapsDebugCheckmarkRowsGroup-%p", self];
    v5 = self->_groupIdentifier;
    self->_groupIdentifier = v4;

    groupIdentifier = self->_groupIdentifier;
  }

  return groupIdentifier;
}

- (void)update
{
  rows = [(MapsDebugCheckmarkRowsGroup *)self rows];
  [rows makeObjectsPerformSelector:"updateChecked"];

  rows2 = [(MapsDebugCheckmarkRowsGroup *)self rows];
  [rows2 makeObjectsPerformSelector:"updateConfiguration"];
}

- (unint64_t)selectedRowsCount
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  rows = [(MapsDebugCheckmarkRowsGroup *)self rows];
  v3 = [rows countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(rows);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) isChecked];
      }

      v4 = [rows countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)rows
{
  weakRows = [(MapsDebugCheckmarkRowsGroup *)self weakRows];
  v3 = [weakRows copy];

  return v3;
}

- (void)checkmarkRowWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  weakRows = [(MapsDebugCheckmarkRowsGroup *)self weakRows];
  [weakRows removeObject:invalidateCopy];
}

- (void)checkmarkRowDidChangeChecked:(id)checked
{
  checkedCopy = checked;
  selectionChanged = [(MapsDebugCheckmarkRowsGroup *)self selectionChanged];

  if (selectionChanged)
  {
    selectionChanged2 = [(MapsDebugCheckmarkRowsGroup *)self selectionChanged];
    (selectionChanged2)[2](selectionChanged2, checkedCopy);
  }
}

- (void)addRow:(id)row
{
  rowCopy = row;
  [rowCopy setRowsGroup:self];
  weakRows = [(MapsDebugCheckmarkRowsGroup *)self weakRows];
  [weakRows addObject:rowCopy];

  [(NSMutableArray *)self->_heldRows addObject:rowCopy];
}

- (id)addRowWithTitle:(id)title subtitle:(id)subtitle value:(id)value
{
  valueCopy = value;
  subtitleCopy = subtitle;
  titleCopy = title;
  v11 = objc_alloc_init(MapsDebugCheckmarkRow);
  [(MapsDebugTableRow *)v11 setTitle:titleCopy];

  [(MapsDebugTableRow *)v11 setSubtitle:subtitleCopy];
  [(MapsDebugCheckmarkRow *)v11 setValue:valueCopy];

  [(MapsDebugCheckmarkRowsGroup *)self addRow:v11];

  return v11;
}

- (void)dealloc
{
  weakRows = self->_weakRows;
  if (weakRows)
  {
    CFRelease(weakRows);
    self->_weakRows = 0;
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  v4.receiver = self;
  v4.super_class = MapsDebugCheckmarkRowsGroup;
  [(MapsDebugCheckmarkRowsGroup *)&v4 dealloc];
}

- (id)_initWithHeldRows
{
  v2 = [(MapsDebugCheckmarkRowsGroup *)self init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    heldRows = v2->_heldRows;
    v2->_heldRows = v3;
  }

  return v2;
}

- (MapsDebugCheckmarkRowsGroup)init
{
  v4.receiver = self;
  v4.super_class = MapsDebugCheckmarkRowsGroup;
  v2 = [(MapsDebugCheckmarkRowsGroup *)&v4 init];
  if (v2)
  {
    v2->_weakRows = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  }

  return v2;
}

- (id)_relinquishOwnershipOfHeldRows
{
  v3 = [(NSMutableArray *)self->_heldRows copy];
  heldRows = self->_heldRows;
  self->_heldRows = 0;

  return v3;
}

+ (id)rowsGroupContainingRows:(id *)rows withContent:(id)content backingGeoConfigKey:(id)key get:(id)get set:(id)set
{
  var1 = key.var1;
  v9 = *&key.var0;
  contentCopy = content;
  getCopy = get;
  setCopy = set;
  _initWithHeldRows = [[MapsDebugCheckmarkRowsGroup alloc] _initWithHeldRows];
  contentCopy[2](contentCopy, _initWithHeldRows);
  [_initWithHeldRows _relinquishOwnershipOfHeldRows];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v15 = v31 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v16)
  {
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v30 + 1) + 8 * i) setGet:{getCopy, var1}];
      }

      v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
  }

  objc_initWeak(&location, _initWithHeldRows);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1005B3E94;
  v26 = &unk_101622C50;
  objc_copyWeak(&v28, &location);
  v19 = setCopy;
  v27 = v19;
  [_initWithHeldRows setSelectionChanged:&v23];
  [_initWithHeldRows update];
  if (rows)
  {
    v20 = v15;
    *rows = v15;
  }

  [_initWithHeldRows setGeoConfigKey:{v9, var1, var1, v23, v24, v25, v26}];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return _initWithHeldRows;
}

@end