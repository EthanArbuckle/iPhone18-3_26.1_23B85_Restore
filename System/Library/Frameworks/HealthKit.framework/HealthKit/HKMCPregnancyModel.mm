@interface HKMCPregnancyModel
+ (id)descriptionFromState:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HKMCPregnancyModel)initWithCoder:(id)a3;
- (HKMCPregnancyModel)initWithState:(int64_t)a3 pregnancyStartDate:(id)a4 pregnancyEndDate:(id)a5 estimatedDueDate:(id)a6 pregnancyDuration:(id)a7 physiologicalWashoutEndDate:(id)a8 behavioralWashoutEndDate:(id)a9 trimesters:(id)a10 sample:(id)a11 educationalStepsCompletedDate:(id)a12;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCPregnancyModel

- (HKMCPregnancyModel)initWithState:(int64_t)a3 pregnancyStartDate:(id)a4 pregnancyEndDate:(id)a5 estimatedDueDate:(id)a6 pregnancyDuration:(id)a7 physiologicalWashoutEndDate:(id)a8 behavioralWashoutEndDate:(id)a9 trimesters:(id)a10 sample:(id)a11 educationalStepsCompletedDate:(id)a12
{
  v45 = a4;
  v44 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v46.receiver = self;
  v46.super_class = HKMCPregnancyModel;
  v25 = [(HKMCPregnancyModel *)&v46 init];
  v26 = v25;
  if (v25)
  {
    v25->_state = a3;
    v27 = [v45 copy];
    pregnancyStartDate = v26->_pregnancyStartDate;
    v26->_pregnancyStartDate = v27;

    v29 = [v44 copy];
    pregnancyEndDate = v26->_pregnancyEndDate;
    v26->_pregnancyEndDate = v29;

    v31 = [v18 copy];
    estimatedDueDate = v26->_estimatedDueDate;
    v26->_estimatedDueDate = v31;

    v33 = [v19 copy];
    pregnancyDuration = v26->_pregnancyDuration;
    v26->_pregnancyDuration = v33;

    v35 = [v20 copy];
    physiologicalWashoutEndDate = v26->_physiologicalWashoutEndDate;
    v26->_physiologicalWashoutEndDate = v35;

    v37 = [v21 copy];
    behavioralWashoutEndDate = v26->_behavioralWashoutEndDate;
    v26->_behavioralWashoutEndDate = v37;

    v39 = [v22 copy];
    trimesters = v26->_trimesters;
    v26->_trimesters = v39;

    v41 = [v23 copy];
    sample = v26->_sample;
    v26->_sample = v41;

    objc_storeStrong(&v26->_educationalStepsCompletedDate, a12);
  }

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"State"];
  [v5 encodeObject:self->_pregnancyStartDate forKey:@"PregnancyStartDate"];
  [v5 encodeObject:self->_pregnancyEndDate forKey:@"PregnancyEndDate"];
  [v5 encodeObject:self->_estimatedDueDate forKey:@"EstimatedDueDate"];
  [v5 encodeObject:self->_pregnancyDuration forKey:@"PregnancyDuration"];
  [v5 encodeObject:self->_physiologicalWashoutEndDate forKey:@"PhysiologicalWashoutEnd"];
  [v5 encodeObject:self->_behavioralWashoutEndDate forKey:@"BehavioralWashoutEnd"];
  [v5 encodeObject:self->_trimesters forKey:@"Trimesters"];
  [v5 encodeObject:self->_sample forKey:@"Sample"];
  [v5 encodeObject:self->_educationalStepsCompletedDate forKey:@"EducationalStepsCompletedDate"];
}

- (HKMCPregnancyModel)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = HKMCPregnancyModel;
  v5 = [(HKMCPregnancyModel *)&v26 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"State"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PregnancyStartDate"];
    pregnancyStartDate = v5->_pregnancyStartDate;
    v5->_pregnancyStartDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PregnancyEndDate"];
    pregnancyEndDate = v5->_pregnancyEndDate;
    v5->_pregnancyEndDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EstimatedDueDate"];
    estimatedDueDate = v5->_estimatedDueDate;
    v5->_estimatedDueDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PregnancyDuration"];
    pregnancyDuration = v5->_pregnancyDuration;
    v5->_pregnancyDuration = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PhysiologicalWashoutEnd"];
    physiologicalWashoutEndDate = v5->_physiologicalWashoutEndDate;
    v5->_physiologicalWashoutEndDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BehavioralWashoutEnd"];
    behavioralWashoutEndDate = v5->_behavioralWashoutEndDate;
    v5->_behavioralWashoutEndDate = v16;

    v18 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"Trimesters"];
    trimesters = v5->_trimesters;
    v5->_trimesters = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Sample"];
    sample = v5->_sample;
    v5->_sample = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EducationalStepsCompletedDate"];
    educationalStepsCompletedDate = v5->_educationalStepsCompletedDate;
    v5->_educationalStepsCompletedDate = v23;
  }

  return v5;
}

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  if (HKShowSensitiveLogItems())
  {
    v3 = [HKMCPregnancyModel descriptionFromState:self->_state];
    v4 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F05FF230];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [(HKMCPregnancyModel *)self trimesters];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v22 + 1) + 8 * i) description];
          [v4 appendFormat:@"%@, ", v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v20 = *&self->_estimatedDueDate;
    v21 = *&self->_pregnancyStartDate;
    physiologicalWashoutEndDate = self->_physiologicalWashoutEndDate;
    behavioralWashoutEndDate = self->_behavioralWashoutEndDate;
    educationalStepsCompletedDate = self->_educationalStepsCompletedDate;
    v16 = [(HKSample *)self->_sample description];
    v17 = [v11 stringWithFormat:@"<%@:%p state:%@ | startDate:%@ | endDate:%@ | estimatedDueDate:%@ | duration:%@ | physiologicalWashoutEndDate:%@ | behavioralWashoutEndDate:%@ | trimesters:%@ | educationalStepsCompletedDate:%@ | sample:%@ ", v12, self, v3, v21, v20, physiologicalWashoutEndDate, behavioralWashoutEndDate, v4, educationalStepsCompletedDate, v16];
  }

  else
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)descriptionFromState:(int64_t)a3
{
  v3 = @"none";
  if (a3 == 1)
  {
    v3 = @"ongoing";
  }

  if (a3 == 2)
  {
    return @"post-pregnancy";
  }

  else
  {
    return v3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v28 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMCPregnancyModel *)self state];
      if (v6 != [(HKMCPregnancyModel *)v5 state])
      {
        goto LABEL_33;
      }

      pregnancyStartDate = self->_pregnancyStartDate;
      v8 = v5->_pregnancyStartDate;
      if (pregnancyStartDate != v8 && (!v8 || ![(NSDate *)pregnancyStartDate isEqualToDate:?]))
      {
        goto LABEL_33;
      }

      pregnancyEndDate = self->_pregnancyEndDate;
      v10 = v5->_pregnancyEndDate;
      if (pregnancyEndDate != v10 && (!v10 || ![(NSDate *)pregnancyEndDate isEqualToDate:?]))
      {
        goto LABEL_33;
      }

      estimatedDueDate = self->_estimatedDueDate;
      v12 = v5->_estimatedDueDate;
      if (estimatedDueDate != v12 && (!v12 || ![(NSDate *)estimatedDueDate isEqualToDate:?]))
      {
        goto LABEL_33;
      }

      pregnancyDuration = self->_pregnancyDuration;
      v14 = v5->_pregnancyDuration;
      if (pregnancyDuration != v14 && (!v14 || ![(NSDateInterval *)pregnancyDuration isEqualToDateInterval:?]))
      {
        goto LABEL_33;
      }

      if (((physiologicalWashoutEndDate = self->_physiologicalWashoutEndDate, v16 = v5->_physiologicalWashoutEndDate, physiologicalWashoutEndDate == v16) || v16 && [(NSDate *)physiologicalWashoutEndDate isEqualToDate:?]) && ((behavioralWashoutEndDate = self->_behavioralWashoutEndDate, v18 = v5->_behavioralWashoutEndDate, behavioralWashoutEndDate == v18) || v18 && [(NSDate *)behavioralWashoutEndDate isEqualToDate:?]) && ((trimesters = self->_trimesters, v20 = v5->_trimesters, trimesters == v20) || v20 && [(NSArray *)trimesters isEqualToArray:?]))
      {
        v21 = [(HKObject *)self->_sample UUID];
        v22 = [(HKObject *)v5->_sample UUID];
        if (v21 == v22)
        {
          educationalStepsCompletedDate = self->_educationalStepsCompletedDate;
          v31 = v5->_educationalStepsCompletedDate;
          v28 = educationalStepsCompletedDate == v31;
          if (educationalStepsCompletedDate != v31 && v31)
          {
            v28 = [(NSDate *)educationalStepsCompletedDate isEqualToDate:?];
          }
        }

        else
        {
          v23 = [(HKObject *)v5->_sample UUID];
          if (v23)
          {
            v24 = [(HKObject *)self->_sample UUID];
            v25 = [(HKObject *)v5->_sample UUID];
            if ([v24 isEqual:v25])
            {
              v26 = self->_educationalStepsCompletedDate;
              v27 = v5->_educationalStepsCompletedDate;
              v28 = v26 == v27;
              if (v26 != v27 && v27)
              {
                v28 = [(NSDate *)v26 isEqualToDate:?];
              }
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 0;
          }
        }
      }

      else
      {
LABEL_33:
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (unint64_t)hash
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_trimesters;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 ^= [*(*(&v20 + 1) + 8 * i) hash];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  state = self->_state;
  v10 = [(NSDate *)self->_pregnancyStartDate hash];
  v11 = [(NSDate *)self->_pregnancyEndDate hash];
  v12 = [(NSDate *)self->_estimatedDueDate hash];
  v13 = [(NSDateInterval *)self->_pregnancyDuration hash];
  v14 = [(NSDate *)self->_physiologicalWashoutEndDate hash];
  v15 = [(NSDate *)self->_behavioralWashoutEndDate hash];
  v16 = [(HKObject *)self->_sample hash];
  v17 = [(NSDate *)self->_educationalStepsCompletedDate hash];
  v18 = *MEMORY[0x1E69E9840];
  return state ^ v7 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

@end