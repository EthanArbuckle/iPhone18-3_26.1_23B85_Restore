@interface FMTSEventCellChanged
- (FMTSEventCellChanged)initWithTimestamp:(unint64_t)timestamp fromCellGCI:(id)i toCellGCI:(id)cI;
- (NSDictionary)detailsAsDict;
- (id)description;
@end

@implementation FMTSEventCellChanged

- (FMTSEventCellChanged)initWithTimestamp:(unint64_t)timestamp fromCellGCI:(id)i toCellGCI:(id)cI
{
  iCopy = i;
  cICopy = cI;
  v15.receiver = self;
  v15.super_class = FMTSEventCellChanged;
  v11 = [(FMTSEvent *)&v15 initWithTimestamp:timestamp];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fromCellGCI, i);
    objc_storeStrong(&v12->_toCellGCI, cI);
    v13 = v12;
  }

  return v12;
}

- (NSDictionary)detailsAsDict
{
  v7[0] = @"from";
  fromCellGCI = [(FMTSEventCellChanged *)self fromCellGCI];
  v7[1] = @"to";
  v8[0] = fromCellGCI;
  toCellGCI = [(FMTSEventCellChanged *)self toCellGCI];
  v8[1] = toCellGCI;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = FMTSEventCellChanged;
  v3 = [(FMTSEvent *)&v8 description];
  fromCellGCI = [(FMTSEventCellChanged *)self fromCellGCI];
  toCellGCI = [(FMTSEventCellChanged *)self toCellGCI];
  v6 = [NSString stringWithFormat:@"FMTSEventCellChanged: %@, fromCellGCI %@, toCellGCI %@", v3, fromCellGCI, toCellGCI];

  return v6;
}

@end