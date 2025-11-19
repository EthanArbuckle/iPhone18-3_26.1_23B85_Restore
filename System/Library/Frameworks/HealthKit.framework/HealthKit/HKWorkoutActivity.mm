@interface HKWorkoutActivity
- (BOOL)_filterAndSetWorkoutEvents:(id)a3;
- (BOOL)acceptsAssociationWithObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)unitTest_isEqualToActivity:(id)a3 includingStatistics:(BOOL)a4;
- (HKStatistics)statisticsForType:(HKQuantityType *)quantityType;
- (HKWorkoutActivity)initWithCoder:(id)a3;
- (HKWorkoutActivity)initWithWorkoutConfiguration:(HKWorkoutConfiguration *)workoutConfiguration startDate:(NSDate *)startDate endDate:(NSDate *)endDate metadata:(NSDictionary *)metadata;
- (NSDictionary)allStatistics;
- (NSString)description;
- (id)_deepCopy;
- (id)_initWithUUID:(id)a3 workoutConfiguration:(id)a4 startDate:(id)a5 endDate:(id)a6 workoutEvents:(id)a7 startsPaused:(BOOL)a8 duration:(double)a9 metadata:(id)a10 statisticsPerType:(id)a11;
- (id)_statisticsPerType;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setAllStatistics:(id)a3;
- (void)_setDuration:(double)a3;
- (void)_setEndDate:(id)a3;
- (void)_setMetadata:(id)a3;
- (void)_setStatistics:(id)a3 forType:(id)a4;
- (void)_setUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutActivity

- (HKWorkoutActivity)initWithWorkoutConfiguration:(HKWorkoutConfiguration *)workoutConfiguration startDate:(NSDate *)startDate endDate:(NSDate *)endDate metadata:(NSDictionary *)metadata
{
  v10 = metadata;
  v11 = endDate;
  v12 = startDate;
  v13 = workoutConfiguration;
  v14 = [(HKWorkoutConfiguration *)v13 suggestedActivityUUID];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x1E696AFB0] UUID];
  }

  v17 = v16;

  [(NSDate *)v11 timeIntervalSinceDate:v12];
  v18 = [(HKWorkoutActivity *)self _initWithUUID:v17 workoutConfiguration:v13 startDate:v12 endDate:v11 workoutEvents:MEMORY[0x1E695E0F0] startsPaused:0 duration:v10 metadata:0 statisticsPerType:?];

  v19 = v18;
  v20 = HKDefaultObjectValidationConfiguration();
  v22 = [(HKWorkoutActivity *)v19 _validateWithConfiguration:v20, v21];
  v23 = v22;
  if (v22)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = [v22 localizedDescription];
    [v24 raise:v25 format:{@"%@", v26}];
  }

  return v19;
}

- (id)_initWithUUID:(id)a3 workoutConfiguration:(id)a4 startDate:(id)a5 endDate:(id)a6 workoutEvents:(id)a7 startsPaused:(BOOL)a8 duration:(double)a9 metadata:(id)a10 statisticsPerType:(id)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a10;
  v24 = a11;
  v42.receiver = self;
  v42.super_class = HKWorkoutActivity;
  v25 = [(HKWorkoutActivity *)&v42 init];
  v26 = v25;
  if (v25)
  {
    v25->_lock._os_unfair_lock_opaque = 0;
    v27 = [v18 copy];
    UUID = v26->_UUID;
    v26->_UUID = v27;

    v29 = [v19 copy];
    workoutConfiguration = v26->_workoutConfiguration;
    v26->_workoutConfiguration = v29;

    v31 = [v20 copy];
    startDate = v26->_startDate;
    v26->_startDate = v31;

    v33 = [v21 copy];
    endDate = v26->_endDate;
    v26->_endDate = v33;

    v35 = [v22 copy];
    workoutEvents = v26->_workoutEvents;
    v26->_workoutEvents = v35;

    v26->_startsPaused = a8;
    v26->_duration = a9;
    v37 = [v23 copy];
    metadata = v26->_metadata;
    v26->_metadata = v37;

    v39 = [v24 mutableCopy];
    statisticsPerType = v26->_statisticsPerType;
    v26->_statisticsPerType = v39;
  }

  return v26;
}

- (id)_deepCopy
{
  v3 = objc_alloc(objc_opt_class());
  metadata = self->_metadata;
  v5 = [v3 _initWithUUID:self->_UUID workoutConfiguration:self->_workoutConfiguration startDate:self->_startDate endDate:self->_endDate workoutEvents:self->_workoutEvents startsPaused:self->_startsPaused duration:self->_duration metadata:metadata statisticsPerType:self->_statisticsPerType];

  return v5;
}

- (void)_setEndDate:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [v7 copy];
  endDate = self->_endDate;
  self->_endDate = v4;

  if (self->_duration == 0.0)
  {
    [v7 timeIntervalSinceDate:self->_startDate];
    self->_duration = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)allStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_statisticsPerType copy];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (HKStatistics)statisticsForType:(HKQuantityType *)quantityType
{
  v4 = quantityType;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_statisticsPerType objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)_setDuration:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_duration = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  metadata = self->_metadata;
  self->_metadata = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_filterAndSetWorkoutEvents:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__HKWorkoutActivity__filterAndSetWorkoutEvents___block_invoke;
  v10[3] = &unk_1E737A078;
  v10[4] = self;
  v10[5] = &v15;
  v10[6] = &v11;
  v5 = [v4 hk_filter:v10];
  if ((v16[3] & 1) == 0)
  {
    self->_startsPaused = *(v12 + 24);
  }

  workoutEvents = self->_workoutEvents;
  p_workoutEvents = &self->_workoutEvents;
  v8 = [(NSArray *)workoutEvents isEqual:v5];
  if ((v8 & 1) == 0)
  {
    objc_storeStrong(p_workoutEvents, v5);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v8 ^ 1;
}

uint64_t __48__HKWorkoutActivity__filterAndSetWorkoutEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dateInterval];
  v5 = [v4 startDate];

  v6 = [v3 dateInterval];
  v7 = [v6 endDate];

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v8 = [*(a1 + 32) startDate];
    v9 = [v5 hk_isAfterDate:v8];

    if (v9)
    {
      *(*(a1 + 32) + 20) = *(*(*(a1 + 48) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v10 = [*(a1 + 32) startDate];
      v11 = [v5 hk_isBeforeOrEqualToDate:v10];

      if (v11)
      {
        if ([v3 workoutEventType] == 1)
        {
          v12 = 1;
        }

        else
        {
          if ([v3 workoutEventType] != 2)
          {
            goto LABEL_11;
          }

          v12 = 0;
        }

        *(*(*(a1 + 48) + 8) + 24) = v12;
      }
    }
  }

LABEL_11:
  v13 = [*(a1 + 32) endDate];
  if ([v5 hk_isBeforeDate:v13])
  {
    v14 = [*(a1 + 32) startDate];
    v15 = [v7 hk_isAfterDate:v14];

    if (v15)
    {
      v16 = 1;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v17 = [v3 dateInterval];
  [v17 duration];
  v19 = v18;

  if (v19 == 0.0)
  {
    v20 = [*(a1 + 32) startDate];
    if ([v5 isEqualToDate:v20])
    {
      v16 = 1;
    }

    else
    {
      v21 = [*(a1 + 32) endDate];
      v16 = [v5 isEqualToDate:v21];
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_21:

  return v16;
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %@ %@ %@ %@>", v5, self->_UUID, self->_workoutConfiguration, self->_startDate, self->_endDate];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(HKWorkoutConfiguration *)self->_workoutConfiguration hash]^ v3;
  v5 = [(NSDate *)self->_startDate hash];
  v6 = v5 ^ [(NSDate *)self->_endDate hash];
  os_unfair_lock_unlock(&self->_lock);
  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 3);
  UUID = self->_UUID;
  if (v5 != UUID && (!UUID || ![(NSUUID *)v5 isEqual:?]))
  {
    goto LABEL_18;
  }

  v7 = *(v4 + 4);
  workoutConfiguration = self->_workoutConfiguration;
  if (v7 != workoutConfiguration && (!workoutConfiguration || ![(HKWorkoutConfiguration *)v7 isEqual:?]))
  {
    goto LABEL_18;
  }

  v9 = *(v4 + 5);
  startDate = self->_startDate;
  if (v9 != startDate && (!startDate || ![(NSDate *)v9 isEqualToDate:?]))
  {
    goto LABEL_18;
  }

  v11 = *(v4 + 6);
  endDate = self->_endDate;
  if (v11 != endDate && (!endDate || ![(NSDate *)v11 isEqualToDate:?]))
  {
    goto LABEL_18;
  }

  if (vabdd_f64(*(v4 + 8), self->_duration) >= 2.22044605e-16)
  {
    goto LABEL_18;
  }

  v13 = *(v4 + 7);
  metadata = self->_metadata;
  if (v13 == metadata)
  {
    v15 = 1;
    goto LABEL_19;
  }

  if (metadata)
  {
    v15 = [(NSDictionary *)v13 isEqual:?];
  }

  else
  {
LABEL_18:
    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(NSUUID *)self->_UUID copy];
  UUID = self->_UUID;
  self->_UUID = v3;

  v5 = [(HKWorkoutConfiguration *)self->_workoutConfiguration copy];
  workoutConfiguration = self->_workoutConfiguration;
  self->_workoutConfiguration = v5;

  v7 = [(NSDate *)self->_startDate copy];
  startDate = self->_startDate;
  self->_startDate = v7;

  v9 = [(NSDate *)self->_endDate copy];
  endDate = self->_endDate;
  self->_endDate = v9;

  v11 = [(NSArray *)self->_workoutEvents copy];
  workoutEvents = self->_workoutEvents;
  self->_workoutEvents = v11;

  v13 = [(NSDictionary *)self->_metadata copy];
  metadata = self->_metadata;
  self->_metadata = v13;

  v15 = [(NSMutableDictionary *)self->_statisticsPerType mutableCopy];
  statisticsPerType = self->_statisticsPerType;
  self->_statisticsPerType = v15;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"uuid"];
  [v5 encodeObject:self->_workoutConfiguration forKey:@"configuration"];
  [v5 encodeObject:self->_startDate forKey:@"start_date"];
  [v5 encodeObject:self->_endDate forKey:@"end_date"];
  [v5 encodeObject:self->_workoutEvents forKey:@"events"];
  [v5 encodeDouble:@"duration" forKey:self->_duration];
  [v5 encodeObject:self->_metadata forKey:@"metadata"];
  [v5 encodeObject:self->_statisticsPerType forKey:@"statistics"];
  [v5 encodeBool:self->_startsPaused forKey:@"startsPaused"];
}

- (HKWorkoutActivity)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"start_date"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"end_date"];
  v5 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v21 = [v5 setWithArray:v6];

  v7 = [v3 decodeObjectOfClasses:v21 forKey:@"events"];
  [v3 decodeDoubleForKey:@"duration"];
  v9 = v8;
  v10 = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  v11 = [v3 decodeObjectOfClasses:v10 forKey:@"metadata"];
  v12 = [v11 hk_replaceKeysFromSharedStringCache];

  v13 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v15 = [v13 setWithArray:v14];

  v16 = [v3 decodeObjectOfClasses:v15 forKey:@"statistics"];
  v17 = [v3 decodeBoolForKey:@"startsPaused"];

  v18 = [(HKWorkoutActivity *)self _initWithUUID:v4 workoutConfiguration:v24 startDate:v23 endDate:v22 workoutEvents:v7 startsPaused:v17 duration:v9 metadata:v12 statisticsPerType:v16];
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)unitTest_isEqualToActivity:(id)a3 includingStatistics:(BOOL)a4
{
  v6 = a4;
  v93 = *MEMORY[0x1E69E9840];
  v87 = a3;
  v7 = [(HKWorkoutActivity *)self isEqual:?];
  if (v7 && v6)
  {
    v8 = [(NSMutableDictionary *)self->_statisticsPerType count];
    v9 = [v87 _statisticsPerType];
    v10 = [v9 count];

    if (v8 == v10)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      obj = self->_statisticsPerType;
      v80 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v88 objects:v92 count:16];
      if (v80)
      {
        v79 = *v89;
LABEL_6:
        v11 = 0;
        while (1)
        {
          if (*v89 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v88 + 1) + 8 * v11);
          v13 = [(NSMutableDictionary *)self->_statisticsPerType objectForKeyedSubscript:v12];
          v14 = [v87[1] objectForKeyedSubscript:v12];
          v15 = [v13 startDate];
          v16 = [v14 startDate];
          if (v15 != v16)
          {
            v4 = [v14 startDate];
            if (!v4)
            {
              v35 = 1;
              goto LABEL_80;
            }

            v17 = [v13 startDate];
            v5 = [v14 startDate];
            v78 = v17;
            if (![v17 isEqualToDate:v5])
            {
              v35 = 1;
              goto LABEL_79;
            }
          }

          v83 = v4;
          v18 = [v13 endDate];
          [v14 endDate];
          v85 = v82 = v18;
          v38 = v18 == v85;
          v19 = v81;
          v20 = v84;
          if (!v38)
          {
            v75 = [v14 endDate];
            if (!v75)
            {

              v75 = 0;
              goto LABEL_77;
            }

            v76 = v5;
            v21 = v16;
            v22 = v15;
            v19 = [v13 endDate];
            v23 = [v14 endDate];
            v70 = v23;
            if (([v19 isEqualToDate:v23] & 1) == 0)
            {

              v81 = v19;
              v35 = 1;
              v15 = v22;
              v16 = v21;
              v39 = v15 == v21;
LABEL_51:
              v4 = v83;
              v5 = v76;
              if (v39)
              {
                goto LABEL_80;
              }

LABEL_79:

              goto LABEL_80;
            }

            v15 = v22;
            v16 = v21;
            v20 = v84;
          }

          v24 = [v13 sumQuantity];
          v74 = [v14 sumQuantity];
          v81 = v19;
          if (v24 != v74)
          {
            v71 = [v14 sumQuantity];
            if (!v71)
            {

              if (v82 != v85)
              {
              }

              v71 = 0;
              goto LABEL_77;
            }

            v25 = v5;
            v26 = v15;
            v84 = v20;
            v76 = v25;
            v27 = [v13 sumQuantity];
            v28 = [v14 sumQuantity];
            v67 = v28;
            v68 = v27;
            if (([v27 isEqual:v28] & 1) == 0)
            {

              if (v82 != v85)
              {
              }

              v35 = 1;
              v15 = v26;
              v39 = v26 == v16;
              goto LABEL_51;
            }

            v15 = v26;
            v5 = v76;
          }

          v29 = [v13 minimumQuantity];
          v30 = [v14 minimumQuantity];
          v72 = v29;
          v38 = v29 == v30;
          v31 = v30;
          if (v38)
          {
            goto LABEL_23;
          }

          v69 = [v14 minimumQuantity];
          if (!v69)
          {
            v69 = 0;
            v35 = 1;
            goto LABEL_45;
          }

          v20 = [v13 minimumQuantity];
          v61 = [v14 minimumQuantity];
          if ([v20 isEqual:?])
          {
LABEL_23:
            v62 = v24;
            v32 = [v13 maximumQuantity];
            v64 = [v14 maximumQuantity];
            v66 = v32;
            v84 = v20;
            if (v32 == v64)
            {
              v59 = v31;
              v60 = v15;
              v77 = v5;
              v24 = v62;
              goto LABEL_38;
            }

            v58 = [v14 maximumQuantity];
            if (!v58)
            {
              v58 = 0;
              v35 = 1;
              v24 = v62;
              goto LABEL_64;
            }

            v59 = v31;
            v60 = v15;
            v77 = v5;
            v33 = [v13 maximumQuantity];
            v34 = [v14 maximumQuantity];
            v56 = v33;
            v24 = v62;
            v57 = v34;
            if (([v33 isEqual:v34] & 1) == 0)
            {

              v35 = 1;
              v36 = v72;
              v37 = v59;
              v38 = v72 == v59;
              goto LABEL_43;
            }

LABEL_38:
            v40 = v64;
            v41 = [v13 averageQuantity];
            v42 = [v14 averageQuantity];
            v43 = v42;
            v35 = v41 != v42;
            if (v41 == v42)
            {
            }

            else
            {
              v63 = v41;
              v44 = [v14 averageQuantity];
              if (v44)
              {
                v65 = v44;
                v45 = [v13 averageQuantity];
                v46 = [v14 averageQuantity];
                v47 = v40;
                v48 = v45;
                v35 = [v45 isEqual:v46] ^ 1;

                if (v66 != v47)
                {
                }

                v37 = v59;
                v36 = v72;
                v38 = v72 == v59;
                v20 = v84;
LABEL_43:
                v15 = v60;
                if (v38)
                {

                  v49 = v74;
                  v5 = v77;
                  if (v24 != v74)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v31 = v37;

                  v5 = v77;
LABEL_45:

                  v49 = v74;
                  if (v24 != v74)
                  {
LABEL_46:
                    v84 = v20;
                    v50 = v49;

                    goto LABEL_57;
                  }
                }

                v84 = v20;

LABEL_57:
                v51 = v82;
                if (v82 != v85)
                {
                }

LABEL_71:
                goto LABEL_78;
              }
            }

            if (v66 == v64)
            {

              v31 = v59;
              v15 = v60;
              v20 = v84;
              v5 = v77;
              if (v72 != v59)
              {
                goto LABEL_65;
              }
            }

            else
            {

              v20 = v84;
              v31 = v59;
              v15 = v60;
              v5 = v77;
LABEL_64:

              if (v72 != v31)
              {
LABEL_65:
              }
            }

            v52 = v74;
            if (v24 != v74)
            {

              v52 = v74;
            }

            v51 = v82;
            v53 = v85;
            if (v82 != v85)
            {

              v53 = v85;
            }

            goto LABEL_71;
          }

          v84 = v20;
          if (v24 != v74)
          {
          }

          if (v82 != v85)
          {
          }

LABEL_77:
          v35 = 1;
LABEL_78:
          v4 = v83;
          if (v15 != v16)
          {
            goto LABEL_79;
          }

LABEL_80:

          if (v35)
          {
            LOBYTE(v7) = 0;
            goto LABEL_86;
          }

          if (v80 == ++v11)
          {
            v80 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v88 objects:v92 count:16];
            if (v80)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      LOBYTE(v7) = 1;
LABEL_86:
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  v54 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)acceptsAssociationWithObject:(id)a3
{
  v3 = a3;
  v4 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierWorkoutEffortScore"];
  v5 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"];
  v6 = [v3 sampleType];
  if ([v6 isEqual:v4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 sampleType];
    v7 = [v8 isEqual:v5];
  }

  return v7;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  var0 = a3.var0;
  if ([(NSDate *)self->_endDate hk_isBeforeDate:self->_startDate, a3.var1])
  {
    v5 = [MEMORY[0x1E696ABC0] hk_error:3 format:{@"startDate (%@) cannot occur after endDate (%@)", self->_startDate, self->_endDate}];
  }

  else
  {
    workoutConfiguration = self->_workoutConfiguration;
    v18 = 0;
    v7 = [(HKWorkoutConfiguration *)workoutConfiguration validateIgnoringDeviceSupport:1 error:&v18];
    v8 = v18;
    v9 = v8;
    if (v7)
    {
      v5 = 0;
      if (self->_metadata)
      {
        if ((var0 & 8) == 0)
        {
          v10 = HKApplicationSDKVersionToken();
          v11 = [_HKEntitlements entitlementsForCurrentTaskWithError:0];
          v12 = [v11 hasPrivateMetadataAccess];

          metadata = self->_metadata;
          v17 = 0;
          v14 = [(NSDictionary *)metadata hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:v12 applicationSDKVersionToken:v10 error:&v17];
          v15 = v17;
          v5 = v15;
          if (v14)
          {

            v5 = 0;
          }
        }
      }
    }

    else
    {
      v5 = v8;
    }
  }

  return v5;
}

- (id)_statisticsPerType
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_statisticsPerType;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setAllStatistics:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 mutableCopy];

  statisticsPerType = self->_statisticsPerType;
  self->_statisticsPerType = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setStatistics:(id)a3 forType:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  statisticsPerType = self->_statisticsPerType;
  if (!statisticsPerType)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_statisticsPerType;
    self->_statisticsPerType = v8;

    statisticsPerType = self->_statisticsPerType;
  }

  [(NSMutableDictionary *)statisticsPerType setObject:v10 forKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  UUID = self->_UUID;
  self->_UUID = v5;

  os_unfair_lock_unlock(&self->_lock);
}

@end