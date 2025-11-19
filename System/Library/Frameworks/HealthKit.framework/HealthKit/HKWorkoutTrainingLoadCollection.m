@interface HKWorkoutTrainingLoadCollection
- (HKWorkoutTrainingLoadCollection)initWithCoder:(id)a3;
- (HKWorkoutTrainingLoadCollection)initWithTotalTrainingLoads:(id)a3;
- (id)_init;
- (id)trainingLoad;
- (id)trainingLoadForDate:(id)a3;
- (void)addTrainingLoad:(id)a3;
@end

@implementation HKWorkoutTrainingLoadCollection

- (HKWorkoutTrainingLoadCollection)initWithTotalTrainingLoads:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKWorkoutTrainingLoadCollection;
  v5 = [(HKWorkoutTrainingLoadCollection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    trainingLoads = v5->_trainingLoads;
    v5->_trainingLoads = v6;
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKWorkoutTrainingLoadCollection;
  return [(HKWorkoutTrainingLoadCollection *)&v3 init];
}

- (void)addTrainingLoad:(id)a3
{
  v4 = a3;
  trainingLoads = self->_trainingLoads;
  v13 = v4;
  if (trainingLoads)
  {
    v6 = [(NSMutableArray *)trainingLoads lastObject];
    v7 = [v6 dateInterval];
    v8 = [v7 startDate];

    v9 = [v13 dateInterval];
    v10 = [v9 startDate];
    v11 = [v10 isEqualToDate:v8];

    if (v11)
    {
      [(NSMutableArray *)self->_trainingLoads removeObject:v6];
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_trainingLoads;
    self->_trainingLoads = v12;
  }

  [(NSMutableArray *)self->_trainingLoads addObject:v13];
}

- (id)trainingLoad
{
  v2 = [(NSMutableArray *)self->_trainingLoads copy];

  return v2;
}

- (id)trainingLoadForDate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_trainingLoads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 dateInterval];
        v11 = [v10 containsDate:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (HKWorkoutTrainingLoadCollection)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKWorkoutTrainingLoadCollection;
  v5 = [(HKWorkoutTrainingLoadCollection *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"trainingLoads"];
    trainingLoads = v5->_trainingLoads;
    v5->_trainingLoads = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end