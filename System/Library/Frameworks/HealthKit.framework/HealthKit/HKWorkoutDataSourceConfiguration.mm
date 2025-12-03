@interface HKWorkoutDataSourceConfiguration
- (HKWorkoutDataSourceConfiguration)initWithCoder:(id)coder;
- (HKWorkoutDataSourceConfiguration)initWithWorkoutConfiguration:(id)configuration sampleTypesToCollect:(id)collect eventTypesToCollect:(id)toCollect collectsDefaultTypes:(BOOL)types;
- (HKWorkoutDataSourceConfiguration)initWithWorkoutConfiguration:(id)configuration sampleTypesToCollect:(id)collect filters:(id)filters eventTypesToCollect:(id)toCollect collectsDefaultTypes:(BOOL)types;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutDataSourceConfiguration

- (HKWorkoutDataSourceConfiguration)initWithWorkoutConfiguration:(id)configuration sampleTypesToCollect:(id)collect filters:(id)filters eventTypesToCollect:(id)toCollect collectsDefaultTypes:(BOOL)types
{
  configurationCopy = configuration;
  collectCopy = collect;
  filtersCopy = filters;
  toCollectCopy = toCollect;
  v26.receiver = self;
  v26.super_class = HKWorkoutDataSourceConfiguration;
  v16 = [(HKWorkoutDataSourceConfiguration *)&v26 init];
  if (v16)
  {
    v17 = [configurationCopy copy];
    v18 = v17;
    if (!v17)
    {
      v18 = objc_alloc_init(HKWorkoutConfiguration);
    }

    objc_storeStrong(&v16->_workoutConfiguration, v18);
    if (!v17)
    {
    }

    v19 = [collectCopy copy];
    sampleTypesToCollect = v16->_sampleTypesToCollect;
    v16->_sampleTypesToCollect = v19;

    v21 = [filtersCopy copy];
    filtersBySampleType = v16->_filtersBySampleType;
    v16->_filtersBySampleType = v21;

    v23 = [toCollectCopy copy];
    eventTypesToCollect = v16->_eventTypesToCollect;
    v16->_eventTypesToCollect = v23;

    v16->_collectsDefaultTypes = types;
  }

  return v16;
}

- (HKWorkoutDataSourceConfiguration)initWithWorkoutConfiguration:(id)configuration sampleTypesToCollect:(id)collect eventTypesToCollect:(id)toCollect collectsDefaultTypes:(BOOL)types
{
  v46 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  collectCopy = collect;
  toCollectCopy = toCollect;
  v44.receiver = self;
  v44.super_class = HKWorkoutDataSourceConfiguration;
  v13 = [(HKWorkoutDataSourceConfiguration *)&v44 init];
  if (v13)
  {
    v14 = [configurationCopy copy];
    v15 = v14;
    if (!v14)
    {
      v15 = objc_alloc_init(HKWorkoutConfiguration);
    }

    v34 = toCollectCopy;
    typesCopy = types;
    objc_storeStrong(&v13->_workoutConfiguration, v15);
    if (!v14)
    {
    }

    v16 = [collectCopy copy];
    sampleTypesToCollect = v13->_sampleTypesToCollect;
    v35 = v13;
    v13->_sampleTypesToCollect = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = configurationCopy;
    locationType = [configurationCopy locationType];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = collectCopy;
    obj = collectCopy;
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
          v25 = [HKWorkoutDataSource _sourcePredicateForSampleType:v24 isIndoor:locationType == 2];
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

    toCollectCopy = v34;
    v30 = [v34 copy];
    eventTypesToCollect = v35->_eventTypesToCollect;
    v35->_eventTypesToCollect = v30;

    v35->_collectsDefaultTypes = typesCopy;
    configurationCopy = v38;
    collectCopy = v36;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKWorkoutDataSourceConfiguration allocWithZone:zone];
  workoutConfiguration = self->_workoutConfiguration;
  sampleTypesToCollect = self->_sampleTypesToCollect;
  filtersBySampleType = self->_filtersBySampleType;
  eventTypesToCollect = self->_eventTypesToCollect;
  collectsDefaultTypes = self->_collectsDefaultTypes;

  return [(HKWorkoutDataSourceConfiguration *)v4 initWithWorkoutConfiguration:workoutConfiguration sampleTypesToCollect:sampleTypesToCollect filters:filtersBySampleType eventTypesToCollect:eventTypesToCollect collectsDefaultTypes:collectsDefaultTypes];
}

- (HKWorkoutDataSourceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HKWorkoutDataSourceConfiguration;
  v5 = [(HKTaskConfiguration *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutConfiguration"];
    workoutConfiguration = v5->_workoutConfiguration;
    v5->_workoutConfiguration = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"sampleTypesToCollect"];
    sampleTypesToCollect = v5->_sampleTypesToCollect;
    v5->_sampleTypesToCollect = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"filtersBySampleType"];
    filtersBySampleType = v5->_filtersBySampleType;
    v5->_filtersBySampleType = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"eventTypesToCollect"];
    eventTypesToCollect = v5->_eventTypesToCollect;
    v5->_eventTypesToCollect = v22;

    v5->_collectsDefaultTypes = [coderCopy decodeBoolForKey:@"collectsDefaultTypes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKWorkoutDataSourceConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_workoutConfiguration forKey:{@"workoutConfiguration", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sampleTypesToCollect forKey:@"sampleTypesToCollect"];
  [coderCopy encodeObject:self->_filtersBySampleType forKey:@"filtersBySampleType"];
  [coderCopy encodeObject:self->_eventTypesToCollect forKey:@"eventTypesToCollect"];
  [coderCopy encodeBool:self->_collectsDefaultTypes forKey:@"collectsDefaultTypes"];
}

@end