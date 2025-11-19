@interface GeoPlaceCacheDetailTableViewController
- (GeoPlaceCacheDetailTableViewController)initWithGEORequestCounterCacheResults:(id)a3;
- (id)_nonZeroTotalsForSection:(int64_t)a3;
- (id)_totalsForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation GeoPlaceCacheDetailTableViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"reuseIdentifier"];
  }

  [v7 setSelectionStyle:0];
  v8 = -[GeoPlaceCacheDetailTableViewController _nonZeroTotalsForSection:](self, "_nonZeroTotalsForSection:", [v6 section]);
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  v10 = 0;
  v11 = [v9 unsignedIntegerValue] - 1;
  if (v11 <= 2u)
  {
    v10 = *(&off_101633070 + v11);
  }

  v12 = [v6 section];

  v13 = [(GeoPlaceCacheDetailTableViewController *)self _totalsForSection:v12];
  v14 = [v13 objectForKeyedSubscript:v9];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v7 textLabel];
  [v16 setText:v10];

  v17 = [NSString stringWithFormat:@"%lu", v15];
  v18 = [v7 detailTextLabel];
  [v18 setText:v17];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(GeoPlaceCacheDetailTableViewController *)self _nonZeroTotalsForSection:a4];
  v5 = [v4 count];

  return v5;
}

- (id)_nonZeroTotalsForSection:(int64_t)a3
{
  v5 = [(NSOrderedSet *)self->_displayOrder mutableCopy];
  v6 = [(GeoPlaceCacheDetailTableViewController *)self _totalsForSection:a3];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A7A5A4;
  v9[3] = &unk_101632E48;
  v7 = v5;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

- (id)_totalsForSection:(int64_t)a3
{
  v4 = [(NSOrderedSet *)self->_orderedKeys objectAtIndexedSubscript:a3];
  v5 = [(NSDictionary *)self->_totalsDict objectForKeyedSubscript:v4];

  return v5;
}

- (GeoPlaceCacheDetailTableViewController)initWithGEORequestCounterCacheResults:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = GeoPlaceCacheDetailTableViewController;
  v5 = [(GeoPlaceCacheDetailTableViewController *)&v36 initWithStyle:1];
  if (v5)
  {
    v6 = [NSOrderedSet orderedSetWithArray:&off_1016ED358];
    displayOrder = v5->_displayOrder;
    v26 = v5;
    v5->_displayOrder = v6;

    v31 = +[NSMutableDictionary dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v4;
    obj = v4;
    v30 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v30)
    {
      v29 = *v33;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          v10 = [v9 requestType];
          if (v10 >= 0x41)
          {
            v11 = [NSString stringWithFormat:@"(unknown: %i)", v10];
          }

          else
          {
            v11 = *(&off_101632E68 + v10);
          }

          v12 = [v31 objectForKeyedSubscript:v11];
          if (!v12)
          {
            v37[0] = &off_1016E8270;
            v37[1] = &off_1016E8288;
            v38[0] = &off_1016E82B8;
            v38[1] = &off_1016E82B8;
            v37[2] = &off_1016E82A0;
            v38[2] = &off_1016E82B8;
            v13 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
            v12 = [v13 mutableCopy];

            [v31 setObject:v12 forKeyedSubscript:v11];
          }

          v14 = [v12 objectForKeyedSubscript:&off_1016E8270];
          v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 unsignedIntegerValue] + objc_msgSend(v9, "cacheHitCount"));
          [v12 setObject:v15 forKeyedSubscript:&off_1016E8270];

          v16 = [v12 objectForKeyedSubscript:&off_1016E8288];
          v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 unsignedIntegerValue] + objc_msgSend(v9, "cacheMissCount"));
          [v12 setObject:v17 forKeyedSubscript:&off_1016E8288];

          v18 = [v12 objectForKeyedSubscript:&off_1016E82A0];
          v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 unsignedIntegerValue] + objc_msgSend(v9, "cacheExpiredCount"));
          [v12 setObject:v19 forKeyedSubscript:&off_1016E82A0];
        }

        v30 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v30);
    }

    v20 = [v31 copy];
    v5 = v26;
    totalsDict = v26->_totalsDict;
    v26->_totalsDict = v20;

    v22 = [v31 allKeys];
    v23 = [v22 sortedArrayUsingSelector:"compare:"];

    if (v23)
    {
      v24 = [NSOrderedSet orderedSetWithArray:v23];
    }

    else
    {
      v24 = 0;
    }

    objc_storeStrong(&v26->_orderedKeys, v24);
    v4 = v27;
    if (v23)
    {
    }
  }

  return v5;
}

@end