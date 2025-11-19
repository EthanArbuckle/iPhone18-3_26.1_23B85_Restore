@interface EKSerializableRecurrenceRule
+ (id)classesForKey;
- (EKSerializableRecurrenceRule)initWithRecurrenceRule:(id)a3;
- (id)createRecurrenceRule:(id *)a3;
@end

@implementation EKSerializableRecurrenceRule

+ (id)classesForKey
{
  v26[10] = *MEMORY[0x1E69E9840];
  v25[0] = @"frequency";
  v24 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v26[0] = v14;
  v25[1] = @"interval";
  v23 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v26[1] = v2;
  v25[2] = @"recurrenceEnd";
  v22 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v26[2] = v3;
  v25[3] = @"firstDayOfTheWeek";
  v21 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v26[3] = v4;
  v25[4] = @"daysOfTheWeek";
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v26[4] = v5;
  v25[5] = @"daysOfTheMonth";
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v26[5] = v6;
  v25[6] = @"daysOfTheYear";
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v26[6] = v7;
  v25[7] = @"weeksOfTheYear";
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v26[7] = v8;
  v25[8] = @"monthsOfTheYear";
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v26[8] = v9;
  v25[9] = @"setPositions";
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v26[9] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (EKSerializableRecurrenceRule)initWithRecurrenceRule:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = EKSerializableRecurrenceRule;
  v5 = [(EKSerializableRecurrenceRule *)&v34 init];
  if (v5)
  {
    v5->_frequency = [v4 frequency];
    v5->_interval = [v4 interval];
    v6 = [v4 recurrenceEnd];
    v7 = [v6 copy];
    recurrenceEnd = v5->_recurrenceEnd;
    v5->_recurrenceEnd = v7;

    v5->_firstDayOfTheWeek = [v4 firstDayOfTheWeek];
    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    v10 = [v4 daysOfTheWeek];
    v11 = [v9 initWithArray:v10 copyItems:1];
    daysOfTheWeek = v5->_daysOfTheWeek;
    v5->_daysOfTheWeek = v11;

    v13 = objc_alloc(MEMORY[0x1E695DEC8]);
    v14 = [v4 daysOfTheMonth];
    v15 = [v13 initWithArray:v14 copyItems:1];
    daysOfTheMonth = v5->_daysOfTheMonth;
    v5->_daysOfTheMonth = v15;

    v17 = objc_alloc(MEMORY[0x1E695DEC8]);
    v18 = [v4 daysOfTheYear];
    v19 = [v17 initWithArray:v18 copyItems:1];
    daysOfTheYear = v5->_daysOfTheYear;
    v5->_daysOfTheYear = v19;

    v21 = objc_alloc(MEMORY[0x1E695DEC8]);
    v22 = [v4 weeksOfTheYear];
    v23 = [v21 initWithArray:v22 copyItems:1];
    weeksOfTheYear = v5->_weeksOfTheYear;
    v5->_weeksOfTheYear = v23;

    v25 = objc_alloc(MEMORY[0x1E695DEC8]);
    v26 = [v4 monthsOfTheYear];
    v27 = [v25 initWithArray:v26 copyItems:1];
    monthsOfTheYear = v5->_monthsOfTheYear;
    v5->_monthsOfTheYear = v27;

    v29 = objc_alloc(MEMORY[0x1E695DEC8]);
    v30 = [v4 setPositions];
    v31 = [v29 initWithArray:v30 copyItems:1];
    setPositions = v5->_setPositions;
    v5->_setPositions = v31;
  }

  return v5;
}

- (id)createRecurrenceRule:(id *)a3
{
  if ([(EKSerializableRecurrenceRule *)self interval]<= 0)
  {
    v14 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKSerializableRecurrenceRule *)v14 createRecurrenceRule:?];
    }

    v13 = 0;
  }

  else
  {
    v16 = [EKRecurrenceRule alloc];
    v4 = [(EKSerializableRecurrenceRule *)self frequency];
    v5 = [(EKSerializableRecurrenceRule *)self interval];
    v6 = [(EKSerializableRecurrenceRule *)self daysOfTheWeek];
    v7 = [(EKSerializableRecurrenceRule *)self daysOfTheMonth];
    v8 = [(EKSerializableRecurrenceRule *)self monthsOfTheYear];
    v9 = [(EKSerializableRecurrenceRule *)self weeksOfTheYear];
    v10 = [(EKSerializableRecurrenceRule *)self daysOfTheYear];
    v11 = [(EKSerializableRecurrenceRule *)self setPositions];
    v12 = [(EKSerializableRecurrenceRule *)self recurrenceEnd];
    v13 = [(EKRecurrenceRule *)v16 initRecurrenceWithFrequency:v4 interval:v5 daysOfTheWeek:v6 daysOfTheMonth:v7 monthsOfTheYear:v8 weeksOfTheYear:v9 daysOfTheYear:v10 setPositions:v11 end:v12];
  }

  return v13;
}

- (void)createRecurrenceRule:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5[0] = 67109120;
  v5[1] = [a2 interval];
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Serialized recurrence rule has invalid interval (%d). Ignoring.", v5, 8u);

  v4 = *MEMORY[0x1E69E9840];
}

@end