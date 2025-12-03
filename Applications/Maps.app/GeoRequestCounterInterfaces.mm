@interface GeoRequestCounterInterfaces
- (GeoRequestCounterInterfaces)init;
- (id)currentSelection;
- (id)currentSelectionString;
- (id)stringForRow:(int64_t)row;
- (void)setSelection:(id)selection;
@end

@implementation GeoRequestCounterInterfaces

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100655F94;
  v8[3] = &unk_101624D58;
  v8[4] = &v9;
  [selectionCopy enumerateIndexesUsingBlock:v8];
  v5 = v10[3];
  self->_selected = v5;
  if (!v5)
  {
    self->_selected = GEORequestCounterInterfaceType_AllMask;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [NSNumber numberWithUnsignedInteger:self->_selected];
  [v6 setObject:v7 forKey:@"_debug_geoReqCountInterfaces"];

  _Block_object_dispose(&v9, 8);
}

- (id)stringForRow:(int64_t)row
{
  v3 = GEORequestCounterInterfaceTypesToStrings();
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)currentSelection
{
  v3 = +[NSMutableIndexSet indexSet];
  v4 = GEOAllRequestCounterInterfaceTypesCount;
  if (GEOAllRequestCounterInterfaceTypesCount)
  {
    v5 = 0;
    do
    {
      if ((GEOAllRequestCounterInterfaceTypes[v5] & self->_selected) != 0)
      {
        [v3 addIndex:v5];
      }

      ++v5;
    }

    while (v4 != v5);
  }

  return v3;
}

- (id)currentSelectionString
{
  v2 = GEORequestCounterInterfaceTypesToStrings();
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

- (GeoRequestCounterInterfaces)init
{
  v7.receiver = self;
  v7.super_class = GeoRequestCounterInterfaces;
  v2 = [(GeoRequestCounterInterfaces *)&v7 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 valueForKey:@"_debug_geoReqCountInterfaces"];

    unsignedIntegerValue = [v4 unsignedIntegerValue];
    v2->_selected = unsignedIntegerValue;
    if (!unsignedIntegerValue)
    {
      v2->_selected = GEORequestCounterInterfaceType_AllMask;
    }
  }

  return v2;
}

@end