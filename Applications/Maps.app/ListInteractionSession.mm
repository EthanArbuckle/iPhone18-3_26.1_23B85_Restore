@interface ListInteractionSession
- (ListInteractionSession)initWithObjects:(id)a3 forType:(int)a4 startDate:(id)a5 proactiveStartTimes:(id)a6;
- (id)description;
- (void)updateWithSelection:(id)a3;
- (void)updateWithTableView:(id)a3;
@end

@implementation ListInteractionSession

- (id)description
{
  listType = self->_listType;
  if (listType >= 0xD)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", listType];
  }

  else
  {
    v4 = off_10162B050[listType];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_items;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v8);
        v11 = [v10 resultType];
        if (v11 >= 4)
        {
          v12 = [NSString stringWithFormat:@"(unknown: %i)", v11];
        }

        else
        {
          v12 = off_10162B0B8[v11];
        }

        if ([v10 initiallyVisible])
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        if ([v10 eventuallyVisible])
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v4 = -[__CFString stringByAppendingFormat:](v9, "stringByAppendingFormat:", @"\nListSession %@ initVisible %@ eventVisible %@ tap %d", v12, v13, v14, [v10 tappedCount]);

        v8 = v8 + 1;
        v9 = v4;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)updateWithTableView:(id)a3
{
  v4 = [a3 indexPathsForVisibleRows];
  v5 = +[NSMutableIndexSet indexSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 row];
        if (v12 < [(NSArray *)self->_items count])
        {
          [v5 addIndex:{objc_msgSend(v11, "row")}];
          v13 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [v11 row]);
          v14 = v13;
          if (self->_resultsItemsInitialized)
          {
            [v13 setEventuallyVisible:1];
          }

          else
          {
            [v13 setInitiallyVisible:1];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  proactiveItems = self->_proactiveItems;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100805A4C;
  v17[3] = &unk_10162AF78;
  v18 = v5;
  v16 = v5;
  [(NSDictionary *)proactiveItems enumerateKeysAndObjectsUsingBlock:v17];
  self->_resultsItemsInitialized = 1;
}

- (void)updateWithSelection:(id)a3
{
  v6 = a3;
  if (([v6 row] & 0x8000000000000000) == 0)
  {
    v4 = [v6 row];
    if (v4 < [(NSArray *)self->_items count])
    {
      v5 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [v6 row]);
      [v5 setTappedCount:{objc_msgSend(v5, "tappedCount") + 1}];
    }
  }
}

- (ListInteractionSession)initWithObjects:(id)a3 forType:(int)a4 startDate:(id)a5 proactiveStartTimes:(id)a6
{
  v10 = a3;
  v60 = a5;
  v62 = a6;
  if (![v10 count])
  {
    v54 = 0;
    goto LABEL_52;
  }

  v70.receiver = self;
  v70.super_class = ListInteractionSession;
  v11 = [(ListInteractionSession *)&v70 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_50;
  }

  v11->_resultsItemsInitialized = 0;
  v56 = v11;
  v11->_listType = a4;
  v59 = +[NSMutableDictionary dictionary];
  v58 = +[NSDate date];
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v57 = v10;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (!v14)
  {
    goto LABEL_49;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v67;
  v63 = a4 - 2;
  v18 = ((a4 - 2) < 6) & (0x3Bu >> (a4 - 2));
  v19 = &GEOMapsAuthEnvironmentKey_ptr;
  v61 = v13;
  do
  {
    v20 = 0;
    v64 = v15;
    do
    {
      if (*v67 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v66 + 1) + 8 * v20);
      v22 = objc_alloc_init(v19[195]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v21;
        if ([v23 _hasMUID])
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v21;
        v25 = objc_alloc_init(GEOProactiveItem);
        [v25 setProactiveItemType:{objc_msgSend(v23, "proactiveItemType")}];
        [v25 setVisible:0];
        [v25 setShared:0];
        [v25 setEdited:0];
        [v25 setDeleted:0];
        [v25 setTapped:0];
        v26 = [v23 uniqueIdentifier];
        v27 = [v62 objectForKeyedSubscript:v26];

        if (!v27)
        {
          v28 = [v23 uniqueIdentifier];
          [v62 setObject:v58 forKeyedSubscript:v28];

          v13 = v61;
          v27 = v58;
        }

        [v27 timeIntervalSinceDate:v60];
        [v25 setTimeSinceStart:(v29 * 1000.0)];
        v30 = [NSNumber numberWithUnsignedInteger:v16];
        [v59 setObject:v25 forKeyedSubscript:v30];

        v24 = 3;
        goto LABEL_34;
      }

      v31 = v21;
      v32 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
      objc_opt_class();
      v33 = v31;
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;

      if (v35 && ([v35 historyEntry], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "conformsToProtocol:", v32), v36, v37))
      {
        v38 = v33;
      }

      else
      {
        v38 = 0;
      }

      if (v38)
      {
        v39 = v33;
        v40 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
        objc_opt_class();
        v41 = v39;
        if (objc_opt_isKindOfClass())
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        v43 = v42;

        if (v43 && ([v43 historyEntry], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "conformsToProtocol:", v40), v44, v45))
        {
          v23 = v41;
        }

        else
        {
          v23 = 0;
        }

        v46 = [v23 historyEntry];
        v47 = [v46 geoMapItem];
        v48 = [MKMapItem _itemWithGeoMapItem:v47];

        if ([v48 _hasMUID])
        {
          [v22 setBusinessId:{objc_msgSend(v48, "_muid")}];
        }

        v24 = 2;
        v13 = v61;
LABEL_34:
        v15 = v64;
        v19 = &GEOMapsAuthEnvironmentKey_ptr;
LABEL_35:

        if (!v18)
        {
          goto LABEL_37;
        }

LABEL_36:
        v24 = dword_101213590[v63];
        goto LABEL_37;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v33 mapItem];
        v13 = v61;
        v15 = v64;
        v19 = &GEOMapsAuthEnvironmentKey_ptr;
        if ([v23 _hasMUID])
        {
LABEL_10:
          [v22 setBusinessId:{objc_msgSend(v23, "_muid")}];
        }

LABEL_11:
        v24 = 2;
        goto LABEL_35;
      }

      objc_opt_class();
      v13 = v61;
      v15 = v64;
      v19 = &GEOMapsAuthEnvironmentKey_ptr;
      if (objc_opt_isKindOfClass())
      {
        v23 = [v33 mapItem];
        if ([v23 _hasMUID])
        {
          [v22 setBusinessId:{objc_msgSend(v23, "_muid")}];
        }

        v24 = 1;
        goto LABEL_35;
      }

      v24 = 2;
      if (v18)
      {
        goto LABEL_36;
      }

LABEL_37:
      [v22 setResultType:v24];
      [v13 addObject:v22];
      ++v16;

      v20 = v20 + 1;
    }

    while (v15 != v20);
    v49 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    v15 = v49;
  }

  while (v49);
LABEL_49:

  v50 = [v13 copy];
  v12 = v56;
  items = v56->_items;
  v56->_items = v50;

  v52 = [v59 copy];
  proactiveItems = v56->_proactiveItems;
  v56->_proactiveItems = v52;

  v10 = v57;
LABEL_50:
  self = v12;
  v54 = self;
LABEL_52:

  return v54;
}

@end