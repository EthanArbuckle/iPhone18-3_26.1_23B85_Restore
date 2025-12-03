@interface _HKActivityStatisticsQueryResult
- (_HKActivityStatisticsQueryResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKActivityStatisticsQueryResult

- (void)encodeWithCoder:(id)coder
{
  activeEnergyResults = self->_activeEnergyResults;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_activeEnergyResults);
  [coderCopy encodeObject:activeEnergyResults forKey:v6];

  appleMoveTimeResults = self->_appleMoveTimeResults;
  v8 = NSStringFromSelector(sel_appleMoveTimeResults);
  [coderCopy encodeObject:appleMoveTimeResults forKey:v8];

  appleExerciseTimeResults = self->_appleExerciseTimeResults;
  v10 = NSStringFromSelector(sel_appleExerciseTimeResults);
  [coderCopy encodeObject:appleExerciseTimeResults forKey:v10];

  appleStandHourResults = self->_appleStandHourResults;
  v12 = NSStringFromSelector(sel_appleStandHourResults);
  [coderCopy encodeObject:appleStandHourResults forKey:v12];

  workoutResults = self->_workoutResults;
  v14 = NSStringFromSelector(sel_workoutResults);
  [coderCopy encodeObject:workoutResults forKey:v14];
}

- (_HKActivityStatisticsQueryResult)initWithCoder:(id)coder
{
  v43[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = _HKActivityStatisticsQueryResult;
  v5 = [(_HKActivityStatisticsQueryResult *)&v38 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = NSStringFromSelector(sel_activeEnergyResults);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    activeEnergyResults = v5->_activeEnergyResults;
    v5->_activeEnergyResults = v10;

    v12 = MEMORY[0x1E695DFD8];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = NSStringFromSelector(sel_appleMoveTimeResults);
    v16 = [coderCopy decodeObjectOfClasses:v14 forKey:v15];
    appleMoveTimeResults = v5->_appleMoveTimeResults;
    v5->_appleMoveTimeResults = v16;

    v18 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = NSStringFromSelector(sel_appleExerciseTimeResults);
    v22 = [coderCopy decodeObjectOfClasses:v20 forKey:v21];
    appleExerciseTimeResults = v5->_appleExerciseTimeResults;
    v5->_appleExerciseTimeResults = v22;

    v24 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v26 = [v24 setWithArray:v25];
    v27 = NSStringFromSelector(sel_appleStandHourResults);
    v28 = [coderCopy decodeObjectOfClasses:v26 forKey:v27];
    appleStandHourResults = v5->_appleStandHourResults;
    v5->_appleStandHourResults = v28;

    v30 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = NSStringFromSelector(sel_workoutResults);
    v34 = [coderCopy decodeObjectOfClasses:v32 forKey:v33];
    workoutResults = v5->_workoutResults;
    v5->_workoutResults = v34;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

@end