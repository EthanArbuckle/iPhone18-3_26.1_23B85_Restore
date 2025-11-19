@interface FMOOSRecoveryPrediction
- (id)description;
- (id)init:(id)a3 seenCount:(int)a4 cells:(id)a5;
@end

@implementation FMOOSRecoveryPrediction

- (id)init:(id)a3 seenCount:(int)a4 cells:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FMOOSRecoveryPrediction;
  v11 = [(FMOOSRecoveryPrediction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_durations, a3);
    v12->_seenCount = a4;
    objc_storeStrong(&v12->_cells, a5);
    v13 = v12;
  }

  return v12;
}

- (id)description
{
  v3 = [(FMOOSRecoveryPrediction *)self durations];
  v4 = [(FMOOSRecoveryPrediction *)self seenCount];
  v5 = [(FMOOSRecoveryPrediction *)self cells];
  v6 = [NSString stringWithFormat:@"durations %@, seenCount %d, cells %@", v3, v4, v5];

  return v6;
}

@end