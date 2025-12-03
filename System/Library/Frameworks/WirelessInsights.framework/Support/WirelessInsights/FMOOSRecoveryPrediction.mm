@interface FMOOSRecoveryPrediction
- (id)description;
- (id)init:(id)init seenCount:(int)count cells:(id)cells;
@end

@implementation FMOOSRecoveryPrediction

- (id)init:(id)init seenCount:(int)count cells:(id)cells
{
  initCopy = init;
  cellsCopy = cells;
  v15.receiver = self;
  v15.super_class = FMOOSRecoveryPrediction;
  v11 = [(FMOOSRecoveryPrediction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_durations, init);
    v12->_seenCount = count;
    objc_storeStrong(&v12->_cells, cells);
    v13 = v12;
  }

  return v12;
}

- (id)description
{
  durations = [(FMOOSRecoveryPrediction *)self durations];
  seenCount = [(FMOOSRecoveryPrediction *)self seenCount];
  cells = [(FMOOSRecoveryPrediction *)self cells];
  v6 = [NSString stringWithFormat:@"durations %@, seenCount %d, cells %@", durations, seenCount, cells];

  return v6;
}

@end