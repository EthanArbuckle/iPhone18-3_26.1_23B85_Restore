@interface VOTImageExplorerTableElement
- (NSArray)filteredColumnHeaders;
- (id)accessibilityDataTableCellElementForRow:(unint64_t)a3 column:(unint64_t)a4;
- (id)accessibilityHeaderElementsForColumn:(unint64_t)a3;
- (id)filteredSubfeaturesWithFeatureType:(int64_t)a3;
- (unint64_t)accessibilityColumnCount;
- (unint64_t)accessibilityRowCount;
@end

@implementation VOTImageExplorerTableElement

- (unint64_t)accessibilityRowCount
{
  v2 = [(VOTImageExplorerTableElement *)self filteredSubfeaturesWithFeatureType:9];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)accessibilityColumnCount
{
  v2 = [(VOTImageExplorerTableElement *)self filteredSubfeaturesWithFeatureType:10];
  v3 = [v2 count];

  return v3;
}

- (id)accessibilityHeaderElementsForColumn:(unint64_t)a3
{
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(VOTImageExplorerTableElement *)self filteredColumnHeaders];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 columnIndex] == a3)
        {
          [v5 axSafelyAddObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)accessibilityDataTableCellElementForRow:(unint64_t)a3 column:(unint64_t)a4
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(VOTImageExplorerTableElement *)self accessibilityElements];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 rowIndex] == a3 && objc_msgSend(v11, "columnIndex") == a4)
        {
          v12 = v11;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)filteredSubfeaturesWithFeatureType:(int64_t)a3
{
  v5 = [(VOTImageExplorerElement *)self feature];

  if (v5)
  {
    v6 = &OBJC_IVAR___VOTImageExplorerTableElement__filteredColumnFeatures;
    if (a3 == 9)
    {
      v6 = &OBJC_IVAR___VOTImageExplorerTableElement__filteredRowFeatures;
    }

    v7 = *v6;
    v5 = *(&self->super.super.super.super.super.isa + v7);
    if (!v5)
    {
      v8 = [(VOTImageExplorerElement *)self feature];
      v9 = [v8 subfeatures];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100008268;
      v12[3] = &unk_100028978;
      v12[4] = a3;
      v10 = [NSPredicate predicateWithBlock:v12];
      v5 = [v9 filteredArrayUsingPredicate:v10];

      objc_storeStrong((&self->super.super.super.super.super.isa + v7), v5);
    }
  }

  return v5;
}

- (NSArray)filteredColumnHeaders
{
  if (!self->_filteredColumnHeaders)
  {
    v3 = [(VOTImageExplorerTableElement *)self accessibilityElements];

    if (v3)
    {
      v4 = [NSPredicate predicateWithBlock:&stru_1000289B8];
      v5 = [(VOTImageExplorerTableElement *)self accessibilityElements];
      v6 = [v5 filteredArrayUsingPredicate:v4];
      filteredColumnHeaders = self->_filteredColumnHeaders;
      self->_filteredColumnHeaders = v6;
    }
  }

  v8 = self->_filteredColumnHeaders;

  return v8;
}

@end