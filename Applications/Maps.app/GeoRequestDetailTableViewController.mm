@interface GeoRequestDetailTableViewController
- ($4664FF6D43EFF9328B607401752770FA)typeForSection:(int64_t)section;
- (GeoRequestDetailTableViewController)initWithGEORequestCounterInfo:(id)info;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation GeoRequestDetailTableViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"reuseIdentifier"];
  }

  [v7 setSelectionStyle:0];
  if (-[GeoRequestDetailTableViewController isValidSection:](self, "isValidSection:", [pathCopy section]))
  {
    v8 = -[GeoRequestDetailTableViewController typeForSection:](self, "typeForSection:", [pathCopy section]);
    counterInfo = [(GeoRequestDetailTableViewController *)self counterInfo];
    v10 = [counterInfo nonZeroResultTypesForType:v8];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    v13 = GEOStringForRequestCounterInfoResult();
    counterInfo2 = [(GeoRequestDetailTableViewController *)self counterInfo];
    v15 = [counterInfo2 numberOfRequestsForType:v8 result:unsignedIntegerValue];
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  textLabel = [v7 textLabel];
  [textLabel setText:v13];

  v17 = [NSString stringWithFormat:@"%lu", v15];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v17];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(GeoRequestDetailTableViewController *)self isValidSection:section])
  {
    v6 = [(GeoRequestDetailTableViewController *)self typeForSection:section];
    v7 = GEODataRequestKindAsString();
    counterInfo = [(GeoRequestDetailTableViewController *)self counterInfo];
    v9 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [counterInfo xmitBytesForType:v6], 3);

    counterInfo2 = [(GeoRequestDetailTableViewController *)self counterInfo];
    v11 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [counterInfo2 recvBytesForType:v6], 3);
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (![(GeoRequestDetailTableViewController *)self isValidSection:section])
  {
    return 0;
  }

  counterInfo = [(GeoRequestDetailTableViewController *)self counterInfo];
  v7 = [counterInfo nonZeroResultTypesForType:{-[GeoRequestDetailTableViewController typeForSection:](self, "typeForSection:", section)}];
  v8 = [v7 count];

  return v8;
}

- ($4664FF6D43EFF9328B607401752770FA)typeForSection:(int64_t)section
{
  v3 = [(NSArray *)self->_requestTypes objectAtIndexedSubscript:section];
  intValue = [v3 intValue];
  v5 = (intValue >> 8) & 0x7F;
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
      v7 = intValue;
    }

    else
    {
      v7 = 0;
    }

    v8 = (v6 & 0xAA) == 0;
    if ((v6 & 0xAA) != 0)
    {
      v9 = intValue & 0x7F00;
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
      v10 = intValue << 32;
    }
  }

  v11 = v9;

  return (v10 | v11);
}

- (GeoRequestDetailTableViewController)initWithGEORequestCounterInfo:(id)info
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = GeoRequestDetailTableViewController;
  v6 = [(GeoRequestDetailTableViewController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_counterInfo, info);
    requestTypes = [infoCopy requestTypes];
    requestTypes = v7->_requestTypes;
    v7->_requestTypes = requestTypes;
  }

  return v7;
}

@end