@interface GeoRequestDetailTableViewController
- ($4664FF6D43EFF9328B607401752770FA)typeForSection:(int64_t)a3;
- (GeoRequestDetailTableViewController)initWithGEORequestCounterInfo:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation GeoRequestDetailTableViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"reuseIdentifier"];
  }

  [v7 setSelectionStyle:0];
  if (-[GeoRequestDetailTableViewController isValidSection:](self, "isValidSection:", [v6 section]))
  {
    v8 = -[GeoRequestDetailTableViewController typeForSection:](self, "typeForSection:", [v6 section]);
    v9 = [(GeoRequestDetailTableViewController *)self counterInfo];
    v10 = [v9 nonZeroResultTypesForType:v8];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    v12 = [v11 unsignedIntegerValue];

    v13 = GEOStringForRequestCounterInfoResult();
    v14 = [(GeoRequestDetailTableViewController *)self counterInfo];
    v15 = [v14 numberOfRequestsForType:v8 result:v12];
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v7 textLabel];
  [v16 setText:v13];

  v17 = [NSString stringWithFormat:@"%lu", v15];
  v18 = [v7 detailTextLabel];
  [v18 setText:v17];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(GeoRequestDetailTableViewController *)self isValidSection:a4])
  {
    v6 = [(GeoRequestDetailTableViewController *)self typeForSection:a4];
    v7 = GEODataRequestKindAsString();
    v8 = [(GeoRequestDetailTableViewController *)self counterInfo];
    v9 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v8 xmitBytesForType:v6], 3);

    v10 = [(GeoRequestDetailTableViewController *)self counterInfo];
    v11 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v10 recvBytesForType:v6], 3);
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
  }

  v12 = [NSString stringWithFormat:@"%@\nxmit:%@ / recv:%@", v7, v9, v11];

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (![(GeoRequestDetailTableViewController *)self isValidSection:a4])
  {
    return 0;
  }

  v6 = [(GeoRequestDetailTableViewController *)self counterInfo];
  v7 = [v6 nonZeroResultTypesForType:{-[GeoRequestDetailTableViewController typeForSection:](self, "typeForSection:", a4)}];
  v8 = [v7 count];

  return v8;
}

- ($4664FF6D43EFF9328B607401752770FA)typeForSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_requestTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];
  v5 = (v4 >> 8) & 0x7F;
  if (v5 > 0xB)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v6 = 1 << v5;
    if ((v6 & 0xC05) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    v8 = (v6 & 0xAA) == 0;
    if ((v6 & 0xAA) != 0)
    {
      v9 = v4 & 0x7F00;
    }

    else
    {
      v9 = v7;
    }

    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 << 32;
    }
  }

  v11 = v9;

  return (v10 | v11);
}

- (GeoRequestDetailTableViewController)initWithGEORequestCounterInfo:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = GeoRequestDetailTableViewController;
  v6 = [(GeoRequestDetailTableViewController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_counterInfo, a3);
    v8 = [v5 requestTypes];
    requestTypes = v7->_requestTypes;
    v7->_requestTypes = v8;
  }

  return v7;
}

@end