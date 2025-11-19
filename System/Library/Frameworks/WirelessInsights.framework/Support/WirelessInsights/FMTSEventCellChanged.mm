@interface FMTSEventCellChanged
- (FMTSEventCellChanged)initWithTimestamp:(unint64_t)a3 fromCellGCI:(id)a4 toCellGCI:(id)a5;
- (NSDictionary)detailsAsDict;
- (id)description;
@end

@implementation FMTSEventCellChanged

- (FMTSEventCellChanged)initWithTimestamp:(unint64_t)a3 fromCellGCI:(id)a4 toCellGCI:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FMTSEventCellChanged;
  v11 = [(FMTSEvent *)&v15 initWithTimestamp:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fromCellGCI, a4);
    objc_storeStrong(&v12->_toCellGCI, a5);
    v13 = v12;
  }

  return v12;
}

- (NSDictionary)detailsAsDict
{
  v7[0] = @"from";
  v3 = [(FMTSEventCellChanged *)self fromCellGCI];
  v7[1] = @"to";
  v8[0] = v3;
  v4 = [(FMTSEventCellChanged *)self toCellGCI];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = FMTSEventCellChanged;
  v3 = [(FMTSEvent *)&v8 description];
  v4 = [(FMTSEventCellChanged *)self fromCellGCI];
  v5 = [(FMTSEventCellChanged *)self toCellGCI];
  v6 = [NSString stringWithFormat:@"FMTSEventCellChanged: %@, fromCellGCI %@, toCellGCI %@", v3, v4, v5];

  return v6;
}

@end