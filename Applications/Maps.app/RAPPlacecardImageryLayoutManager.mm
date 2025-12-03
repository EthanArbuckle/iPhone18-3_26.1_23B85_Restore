@interface RAPPlacecardImageryLayoutManager
- (RAPPlacecardImageryLayoutManager)initWithDefaultItems:(id)items;
- (id)issueItemForIndex:(unint64_t)index;
- (id)issueItems;
- (void)downloadAndResolveLayoutWithMapItem:(id)item completion:(id)completion;
- (void)mergeWithServerConfig:(id)config;
@end

@implementation RAPPlacecardImageryLayoutManager

- (id)issueItems
{
  v3 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_layoutItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        fieldType = [v9 fieldType];
        unsignedIntegerValue = [fieldType unsignedIntegerValue];

        displayText = [v9 displayText];

        v13 = [[RAPPlacecardImageryIssueItem alloc] initWithType:unsignedIntegerValue overridenText:displayText];
        [v3 addObject:v13];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [v3 copy];

  return v14;
}

- (id)issueItemForIndex:(unint64_t)index
{
  if ([(RAPPlacecardImageryLayoutManager *)self numberOfIssueItems]<= index)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: index < self.numberOfIssueItems", v11, 2u);
    }

    v9 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_layoutItems objectAtIndex:index];
    fieldType = [v5 fieldType];
    unsignedIntegerValue = [fieldType unsignedIntegerValue];

    displayText = [v5 displayText];
    v9 = [[RAPPlacecardImageryIssueItem alloc] initWithType:unsignedIntegerValue overridenText:displayText];
  }

  return v9;
}

- (void)downloadAndResolveLayoutWithMapItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v8 = objc_alloc_init(RAPLayoutOptions);
  [(RAPLayoutOptions *)v8 setLayoutType:5];
  [(RAPLayoutOptions *)v8 setReportedMapItem:itemCopy];
  v9 = [[RAPLayoutDownloader alloc] initWithLayoutOptions:v8];
  downloader = self->_downloader;
  self->_downloader = v9;

  objc_initWeak(&location, self);
  v11 = self->_downloader;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100768B80;
  v13[3] = &unk_101628608;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [(RAPLayoutDownloader *)v11 fetchLayoutConfig:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)mergeWithServerConfig:(id)config
{
  configCopy = config;
  obj = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v50 = configCopy;
  layoutFields = [configCopy layoutFields];
  v5 = [layoutFields countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v67;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v67 != v7)
        {
          objc_enumerationMutation(layoutFields);
        }

        v9 = *(*(&v66 + 1) + 8 * i);
        if ([v9 type] == 7 && objc_msgSend(v9, "enabled"))
        {
          v10 = v9;
          v11 = objc_alloc_init(RAPLayoutItem);
          name = [v10 name];
          v13 = [name poiImageCorrectionType] - 1;
          if (v13 < 8)
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = 0;
          }

          v15 = [NSNumber numberWithUnsignedInteger:v14];
          [(RAPLayoutItem *)v11 setFieldType:v15];

          displayText = [v10 displayText];
          [(RAPLayoutItem *)v11 setDisplayText:displayText];

          [obj addObject:v11];
        }
      }

      v6 = [layoutFields countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v6);
  }

  v17 = [(NSArray *)self->_layoutItems copy];
  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = objc_alloc_init(NSMutableSet);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v63;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v63 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v62 + 1) + 8 * j);
        fieldType = [v25 fieldType];
        [v18 setObject:v25 forKey:fieldType];

        fieldType2 = [v25 fieldType];
        [v19 addObject:fieldType2];
      }

      v22 = [v20 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v22);
  }

  v49 = v20;

  v28 = objc_alloc_init(NSMutableSet);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obja = obj;
  v29 = [obja countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v59;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v59 != v31)
        {
          objc_enumerationMutation(obja);
        }

        v33 = *(*(&v58 + 1) + 8 * k);
        fieldType3 = [v33 fieldType];
        v35 = [v18 objectForKey:fieldType3];

        displayText2 = [v33 displayText];
        v37 = [displayText2 length];

        if (v37)
        {
          displayText3 = [v33 displayText];
          [v35 setDisplayText:displayText3];
        }

        fieldType4 = [v33 fieldType];
        [v28 addObject:fieldType4];
      }

      v30 = [obja countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v30);
  }

  [v28 minusSet:v19];
  v40 = objc_alloc_init(NSMutableArray);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v41 = v28;
  v42 = [v41 countByEnumeratingWithState:&v54 objects:v70 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v55;
    do
    {
      for (m = 0; m != v43; m = m + 1)
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [v18 objectForKey:*(*(&v54 + 1) + 8 * m)];
        [v40 addObject:v46];
      }

      v43 = [v41 countByEnumeratingWithState:&v54 objects:v70 count:16];
    }

    while (v43);
  }

  v47 = [v40 copy];
  layoutItems = self->_layoutItems;
  self->_layoutItems = v47;
}

- (RAPPlacecardImageryLayoutManager)initWithDefaultItems:(id)items
{
  itemsCopy = items;
  v24.receiver = self;
  v24.super_class = RAPPlacecardImageryLayoutManager;
  v5 = [(RAPPlacecardImageryLayoutManager *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v22 = v5;
    v7 = itemsCopy;
    v8 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v26;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = objc_alloc_init(RAPLayoutItem);
          localizedTitle = [v14 localizedTitle];
          [(RAPLayoutItem *)v15 setDisplayText:localizedTitle];

          v17 = [NSNumber numberWithUnsignedInteger:v11];
          [(RAPLayoutItem *)v15 setOrdinal:v17];

          v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 type]);
          [(RAPLayoutItem *)v15 setFieldType:v18];

          [v8 addObject:v15];
          ++v11;
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v19 = [v8 copy];
    v6 = v22;
    layoutItems = v22->_layoutItems;
    v22->_layoutItems = v19;
  }

  return v6;
}

@end