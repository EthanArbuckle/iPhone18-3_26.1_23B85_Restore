@interface FMTSEventSignalStrengthChanged
- (FMTSEventSignalStrengthChanged)initWithTimestamp:(unint64_t)timestamp fromBars:(id)bars toBars:(id)toBars;
- (NSDictionary)detailsAsDict;
- (id)description;
@end

@implementation FMTSEventSignalStrengthChanged

- (FMTSEventSignalStrengthChanged)initWithTimestamp:(unint64_t)timestamp fromBars:(id)bars toBars:(id)toBars
{
  barsCopy = bars;
  toBarsCopy = toBars;
  v15.receiver = self;
  v15.super_class = FMTSEventSignalStrengthChanged;
  v11 = [(FMTSEvent *)&v15 initWithTimestamp:timestamp];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fromBars, bars);
    objc_storeStrong(&v12->_toBars, toBars);
    v13 = v12;
  }

  return v12;
}

- (NSDictionary)detailsAsDict
{
  v7[0] = @"from";
  fromBars = [(FMTSEventSignalStrengthChanged *)self fromBars];
  v7[1] = @"to";
  v8[0] = fromBars;
  toBars = [(FMTSEventSignalStrengthChanged *)self toBars];
  v8[1] = toBars;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = FMTSEventSignalStrengthChanged;
  v3 = [(FMTSEvent *)&v8 description];
  fromBars = [(FMTSEventSignalStrengthChanged *)self fromBars];
  toBars = [(FMTSEventSignalStrengthChanged *)self toBars];
  v6 = [NSString stringWithFormat:@"FMTSEventSignalStrengthChanged: %@, fromBars %@, toBars %@", v3, fromBars, toBars];

  return v6;
}

@end