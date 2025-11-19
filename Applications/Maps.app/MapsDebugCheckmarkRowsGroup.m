@interface MapsDebugCheckmarkRowsGroup
+ (id)rowsGroupContainingRows:(id *)a3 withContent:(id)a4 backingGeoConfigKey:(id)a5 get:(id)a6 set:(id)a7;
- (MapsDebugCheckmarkRowsGroup)init;
- (NSArray)rows;
- (NSString)groupIdentifier;
- (id)_initWithHeldRows;
- (id)_relinquishOwnershipOfHeldRows;
- (id)addRowWithTitle:(id)a3 subtitle:(id)a4 value:(id)a5;
- (unint64_t)selectedRowsCount;
- (void)addRow:(id)a3;
- (void)checkmarkRowDidChangeChecked:(id)a3;
- (void)checkmarkRowWillInvalidate:(id)a3;
- (void)dealloc;
- (void)setGeoConfigKey:(id)a3;
- (void)update;
@end

@implementation MapsDebugCheckmarkRowsGroup

- (void)setGeoConfigKey:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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
  v3 = [(MapsDebugCheckmarkRowsGroup *)self rows];
  [v3 makeObjectsPerformSelector:"updateChecked"];

  v4 = [(MapsDebugCheckmarkRowsGroup *)self rows];
  [v4 makeObjectsPerformSelector:"updateConfiguration"];
}

- (unint64_t)selectedRowsCount
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(MapsDebugCheckmarkRowsGroup *)self rows];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) isChecked];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(MapsDebugCheckmarkRowsGroup *)self weakRows];
  v3 = [v2 copy];

  return v3;
}

- (void)checkmarkRowWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = [(MapsDebugCheckmarkRowsGroup *)self weakRows];
  [v5 removeObject:v4];
}

- (void)checkmarkRowDidChangeChecked:(id)a3
{
  v6 = a3;
  v4 = [(MapsDebugCheckmarkRowsGroup *)self selectionChanged];

  if (v4)
  {
    v5 = [(MapsDebugCheckmarkRowsGroup *)self selectionChanged];
    (v5)[2](v5, v6);
  }
}

- (void)addRow:(id)a3
{
  v5 = a3;
  [v5 setRowsGroup:self];
  v4 = [(MapsDebugCheckmarkRowsGroup *)self weakRows];
  [v4 addObject:v5];

  [(NSMutableArray *)self->_heldRows addObject:v5];
}

- (id)addRowWithTitle:(id)a3 subtitle:(id)a4 value:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(MapsDebugCheckmarkRow);
  [(MapsDebugTableRow *)v11 setTitle:v10];

  [(MapsDebugTableRow *)v11 setSubtitle:v9];
  [(MapsDebugCheckmarkRow *)v11 setValue:v8];

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

+ (id)rowsGroupContainingRows:(id *)a3 withContent:(id)a4 backingGeoConfigKey:(id)a5 get:(id)a6 set:(id)a7
{
  var1 = a5.var1;
  v9 = *&a5.var0;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = [[MapsDebugCheckmarkRowsGroup alloc] _initWithHeldRows];
  v11[2](v11, v14);
  [v14 _relinquishOwnershipOfHeldRows];
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

        [*(*(&v30 + 1) + 8 * i) setGet:{v12, var1}];
      }

      v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
  }

  objc_initWeak(&location, v14);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1005B3E94;
  v26 = &unk_101622C50;
  objc_copyWeak(&v28, &location);
  v19 = v13;
  v27 = v19;
  [v14 setSelectionChanged:&v23];
  [v14 update];
  if (a3)
  {
    v20 = v15;
    *a3 = v15;
  }

  [v14 setGeoConfigKey:{v9, var1, var1, v23, v24, v25, v26}];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v14;
}

@end