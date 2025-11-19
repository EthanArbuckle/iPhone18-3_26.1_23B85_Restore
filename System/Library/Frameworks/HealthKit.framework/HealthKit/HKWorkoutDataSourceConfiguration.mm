@interface HKWorkoutDataSourceConfiguration
- (HKWorkoutDataSourceConfiguration)initWithCoder:(id)a3;
- (HKWorkoutDataSourceConfiguration)initWithWorkoutConfiguration:(id)a3 sampleTypesToCollect:(id)a4 eventTypesToCollect:(id)a5 collectsDefaultTypes:(BOOL)a6;
- (HKWorkoutDataSourceConfiguration)initWithWorkoutConfiguration:(id)a3 sampleTypesToCollect:(id)a4 filters:(id)a5 eventTypesToCollect:(id)a6 collectsDefaultTypes:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutDataSourceConfiguration

- (HKWorkoutDataSourceConfiguration)initWithWorkoutConfiguration:(id)a3 sampleTypesToCollect:(id)a4 filters:(id)a5 eventTypesToCollect:(id)a6 collectsDefaultTypes:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = HKWorkoutDataSourceConfiguration;
  v16 = [(HKWorkoutDataSourceConfiguration *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    v18 = v17;
    if (!v17)
    {
      v18 = objc_alloc_init(HKWorkoutConfiguration);
    }

    objc_storeStrong(&v16->_workoutConfiguration, v18);
    if (!v17)
    {
    }

    v19 = [v13 copy];
    sampleTypesToCollect = v16->_sampleTypesToCollect;
    v16->_sampleTypesToCollect = v19;

    v21 = [v14 copy];
    filtersBySampleType = v16->_filtersBySampleType;
    v16->_filtersBySampleType = v21;

    v23 = [v15 copy];
    eventTypesToCollect = v16->_eventTypesToCollect;
    v16->_eventTypesToCollect = v23;

    v16->_collectsDefaultTypes = a7;
  }

  return v16;
}

- (HKWorkoutDataSourceConfiguration)initWithWorkoutConfiguration:(id)a3 sampleTypesToCollect:(id)a4 eventTypesToCollect:(id)a5 collectsDefaultTypes:(BOOL)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v44.receiver = self;
  v44.super_class = HKWorkoutDataSourceConfiguration;
  v13 = [(HKWorkoutDataSourceConfiguration *)&v44 init];
  if (v13)
  {
    v14 = [v10 copy];
    v15 = v14;
    if (!v14)
    {
      v15 = objc_alloc_init(HKWorkoutConfiguration);
    }

    v34 = v12;
    v37 = a6;
    objc_storeStrong(&v13->_workoutConfiguration, v15);
    if (!v14)
    {
    }

    v16 = [v11 copy];
    sampleTypesToCollect = v13->_sampleTypesToCollect;
    v35 = v13;
    v13->_sampleTypesToCollect = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = v10;
    v19 = [v10 locationType];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = v11;
    obj = v11;
    v20 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v40 + 1) + 8 * i);
          v25 = [HKWorkoutDataSource _sourcePredicateForSampleType:v24 isIndoor:v19 == 2];
          v26 = [MEMORY[0x1E695DFD8] setWithObject:v24];
          v27 = [v25 hk_filterRepresentationForDataTypes:v26];
          [v18 setObject:v27 forKeyedSubscript:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v21);
    }

    v28 = [v18 copy];
    v13 = v35;
    filtersBySampleType = v35->_filtersBySampleType;
    v35->_filtersBySampleType = v28;

    v12 = v34;
    v30 = [v34 copy];
    eventTypesToCollect = v35->_eventTypesToCollect;
    v35->_eventTypesToCollect = v30;

    v35->_collectsDefaultTypes = v37;
    v10 = v38;
    v11 = v36;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKWorkoutDataSourceConfiguration allocWithZone:a3];
  workoutConfiguration = self->_workoutConfiguration;
  sampleTypesToCollect = self->_sampleTypesToCollect;
  filtersBySampleType = self->_filtersBySampleType;
  eventTypesToCollect = self->_eventTypesToCollect;
  collectsDefaultTypes = self->_collectsDefaultTypes;

  return [(HKWorkoutDataSourceConfiguration *)v4 initWithWorkoutConfiguration:workoutConfiguration sampleTypesToCollect:sampleTypesToCollect filters:filtersBySampleType eventTypesToCollect:eventTypesToCollect collectsDefaultTypes:collectsDefaultTypes];
}

- (HKWorkoutDataSourceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HKWorkoutDataSourceConfiguration;
  v5 = [(HKTaskConfiguration *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutConfiguration"];
    workoutConfiguration = v5->_workoutConfiguration;
    v5->_workoutConfiguration = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"sampleTypesToCollect"];
    sampleTypesToCollect = v5->_sampleTypesToCollect;
    v5->_sampleTypesToCollect = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"filtersBySampleType"];
    filtersBySampleType = v5->_filtersBySampleType;
    v5->_filtersBySampleType = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"eventTypesToCollect"];
    eventTypesToCollect = v5->_eventTypesToCollect;
    v5->_eventTypesToCollect = v22;

    v5->_collectsDefaultTypes = [v4 decodeBoolForKey:@"collectsDefaultTypes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKWorkoutDataSourceConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_workoutConfiguration forKey:{@"workoutConfiguration", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sampleTypesToCollect forKey:@"sampleTypesToCollect"];
  [v4 encodeObject:self->_filtersBySampleType forKey:@"filtersBySampleType"];
  [v4 encodeObject:self->_eventTypesToCollect forKey:@"eventTypesToCollect"];
  [v4 encodeBool:self->_collectsDefaultTypes forKey:@"collectsDefaultTypes"];
}

@end