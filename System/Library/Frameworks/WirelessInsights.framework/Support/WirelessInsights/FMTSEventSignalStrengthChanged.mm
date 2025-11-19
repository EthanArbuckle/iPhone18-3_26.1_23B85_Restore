@interface FMTSEventSignalStrengthChanged
- (FMTSEventSignalStrengthChanged)initWithTimestamp:(unint64_t)a3 fromBars:(id)a4 toBars:(id)a5;
- (NSDictionary)detailsAsDict;
- (id)description;
@end

@implementation FMTSEventSignalStrengthChanged

- (FMTSEventSignalStrengthChanged)initWithTimestamp:(unint64_t)a3 fromBars:(id)a4 toBars:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FMTSEventSignalStrengthChanged;
  v11 = [(FMTSEvent *)&v15 initWithTimestamp:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fromBars, a4);
    objc_storeStrong(&v12->_toBars, a5);
    v13 = v12;
  }

  return v12;
}

- (NSDictionary)detailsAsDict
{
  v7[0] = @"from";
  v3 = [(FMTSEventSignalStrengthChanged *)self fromBars];
  v7[1] = @"to";
  v8[0] = v3;
  v4 = [(FMTSEventSignalStrengthChanged *)self toBars];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = FMTSEventSignalStrengthChanged;
  v3 = [(FMTSEvent *)&v8 description];
  v4 = [(FMTSEventSignalStrengthChanged *)self fromBars];
  v5 = [(FMTSEventSignalStrengthChanged *)self toBars];
  v6 = [NSString stringWithFormat:@"FMTSEventSignalStrengthChanged: %@, fromBars %@, toBars %@", v3, v4, v5];

  return v6;
}

@end