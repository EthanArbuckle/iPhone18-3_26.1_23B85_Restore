@interface HKCurrentActivityCacheQueryResult
- (HKCurrentActivityCacheQueryResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCurrentActivityCacheQueryResult

- (void)encodeWithCoder:(id)a3
{
  currentActivityCache = self->_currentActivityCache;
  v5 = a3;
  v6 = NSStringFromSelector(sel_currentActivityCache);
  [v5 encodeObject:currentActivityCache forKey:v6];

  activeEnergyResults = self->_activeEnergyResults;
  v8 = NSStringFromSelector(sel_activeEnergyResults);
  [v5 encodeObject:activeEnergyResults forKey:v8];

  appleMoveTimeResults = self->_appleMoveTimeResults;
  v10 = NSStringFromSelector(sel_appleMoveTimeResults);
  [v5 encodeObject:appleMoveTimeResults forKey:v10];

  appleExerciseTimeResults = self->_appleExerciseTimeResults;
  v12 = NSStringFromSelector(sel_appleExerciseTimeResults);
  [v5 encodeObject:appleExerciseTimeResults forKey:v12];

  appleStandHourResults = self->_appleStandHourResults;
  v14 = NSStringFromSelector(sel_appleStandHourResults);
  [v5 encodeObject:appleStandHourResults forKey:v14];
}

- (HKCurrentActivityCacheQueryResult)initWithCoder:(id)a3
{
  v40[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = HKCurrentActivityCacheQueryResult;
  v5 = [(HKCurrentActivityCacheQueryResult *)&v36 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_currentActivityCache);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    currentActivityCache = v5->_currentActivityCache;
    v5->_currentActivityCache = v8;

    v10 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = NSStringFromSelector(sel_activeEnergyResults);
    v14 = [v4 decodeObjectOfClasses:v12 forKey:v13];
    activeEnergyResults = v5->_activeEnergyResults;
    v5->_activeEnergyResults = v14;

    v16 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = NSStringFromSelector(sel_appleMoveTimeResults);
    v20 = [v4 decodeObjectOfClasses:v18 forKey:v19];
    appleMoveTimeResults = v5->_appleMoveTimeResults;
    v5->_appleMoveTimeResults = v20;

    v22 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v24 = [v22 setWithArray:v23];
    v25 = NSStringFromSelector(sel_appleExerciseTimeResults);
    v26 = [v4 decodeObjectOfClasses:v24 forKey:v25];
    appleExerciseTimeResults = v5->_appleExerciseTimeResults;
    v5->_appleExerciseTimeResults = v26;

    v28 = MEMORY[0x1E695DFD8];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v30 = [v28 setWithArray:v29];
    v31 = NSStringFromSelector(sel_appleStandHourResults);
    v32 = [v4 decodeObjectOfClasses:v30 forKey:v31];
    appleStandHourResults = v5->_appleStandHourResults;
    v5->_appleStandHourResults = v32;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

@end