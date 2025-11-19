@interface HKHeartRateSummary
- (BOOL)isEqual:(id)a3;
- (HKHeartRateSummary)initWithActivityCacheIndex:(int64_t)a3 heartRateDateInterval:(id)a4 restingHeartRate:(id)a5 walkingAverageHeartRate:(id)a6 allDayStatistics:(id)a7 workoutStatistics:(id)a8 workoutRecoveryStatistics:(id)a9 breatheStatistics:(id)a10 sleepStatistics:(id)a11;
- (HKHeartRateSummary)initWithCoder:(id)a3;
- (id)deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHeartRateSummary

- (HKHeartRateSummary)initWithActivityCacheIndex:(int64_t)a3 heartRateDateInterval:(id)a4 restingHeartRate:(id)a5 walkingAverageHeartRate:(id)a6 allDayStatistics:(id)a7 workoutStatistics:(id)a8 workoutRecoveryStatistics:(id)a9 breatheStatistics:(id)a10 sleepStatistics:(id)a11
{
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v35.receiver = self;
  v35.super_class = HKHeartRateSummary;
  v21 = [(HKHeartRateSummary *)&v35 init];
  v22 = v21;
  if (v21)
  {
    v21->_activityCacheIndex = a3;
    objc_storeStrong(&v21->_heartRateDateInterval, a4);
    objc_storeStrong(&v22->_restingHeartRate, a5);
    objc_storeStrong(&v22->_walkingAverageHeartRate, a6);
    objc_storeStrong(&v22->_allDayStatistics, a7);
    v23 = [v17 copy];
    workoutStatistics = v22->_workoutStatistics;
    v22->_workoutStatistics = v23;

    v25 = [v18 copy];
    workoutRecoveryStatistics = v22->_workoutRecoveryStatistics;
    v22->_workoutRecoveryStatistics = v25;

    v27 = [v19 copy];
    breatheStatistics = v22->_breatheStatistics;
    v22->_breatheStatistics = v27;

    objc_storeStrong(&v22->_sleepStatistics, a11);
  }

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  activityCacheIndex = self->_activityCacheIndex;
  v5 = a3;
  [v5 encodeInt64:activityCacheIndex forKey:@"ActivityCacheIndex"];
  [v5 encodeObject:self->_heartRateDateInterval forKey:@"HeartRateDateInterval"];
  [v5 encodeObject:self->_restingHeartRate forKey:@"RestingHeartRate"];
  [v5 encodeObject:self->_walkingAverageHeartRate forKey:@"WalkingAverageHeartRate"];
  [v5 encodeObject:self->_allDayStatistics forKey:@"AllDayStatistics"];
  [v5 encodeObject:self->_workoutStatistics forKey:@"WorkoutStatistics"];
  [v5 encodeObject:self->_workoutRecoveryStatistics forKey:@"RecoveryStatistics"];
  [v5 encodeObject:self->_breatheStatistics forKey:@"BreatheStatistics"];
}

- (HKHeartRateSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = HKHeartRateSummary;
  v5 = [(HKHeartRateSummary *)&v30 init];
  if (v5)
  {
    v5->_activityCacheIndex = [v4 decodeInt64ForKey:@"ActivityCacheIndex"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HeartRateDateInterval"];
    heartRateDateInterval = v5->_heartRateDateInterval;
    v5->_heartRateDateInterval = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RestingHeartRate"];
    restingHeartRate = v5->_restingHeartRate;
    v5->_restingHeartRate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WalkingAverageHeartRate"];
    walkingAverageHeartRate = v5->_walkingAverageHeartRate;
    v5->_walkingAverageHeartRate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AllDayStatistics"];
    allDayStatistics = v5->_allDayStatistics;
    v5->_allDayStatistics = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"WorkoutStatistics"];
    workoutStatistics = v5->_workoutStatistics;
    v5->_workoutStatistics = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"RecoveryStatistics"];
    workoutRecoveryStatistics = v5->_workoutRecoveryStatistics;
    v5->_workoutRecoveryStatistics = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"BreatheStatistics"];
    breatheStatistics = v5->_breatheStatistics;
    v5->_breatheStatistics = v27;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_activityCacheIndex];
  restingHeartRate = self->_restingHeartRate;
  v7 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)restingHeartRate doubleValueForUnit:v7];
  v9 = v8;
  walkingAverageHeartRate = self->_walkingAverageHeartRate;
  v11 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)walkingAverageHeartRate doubleValueForUnit:v11];
  v13 = [v3 stringWithFormat:@"<%@:%p cacheIndex:%@ resting:%.1fbpm walking:%.1fbpm day:%@ workout:%@ recovery:%@ breathe:%@>", v4, self, v5, v9, v12, self->_allDayStatistics, self->_workoutStatistics, self->_workoutRecoveryStatistics, self->_breatheStatistics];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(HKHeartRateSummary *)self activityCacheIndex];
      if (v7 == [(HKHeartRateSummary *)v6 activityCacheIndex])
      {
        v8 = [(HKHeartRateSummary *)self heartRateDateInterval];
        v9 = [(HKHeartRateSummary *)v6 heartRateDateInterval];
        v75 = v8 != v9;
        if (v8 != v9)
        {
          v77 = [(HKHeartRateSummary *)v6 heartRateDateInterval];
          if (!v77)
          {
            v12 = 0;

            goto LABEL_94;
          }

          v10 = [(HKHeartRateSummary *)self heartRateDateInterval];
          v11 = [(HKHeartRateSummary *)v6 heartRateDateInterval];
          if (![v10 isEqual:v11])
          {
            v12 = 0;
            goto LABEL_43;
          }

          v71 = v11;
          v72 = v10;
        }

        v13 = [(HKHeartRateSummary *)self restingHeartRate];
        v14 = [(HKHeartRateSummary *)v6 restingHeartRate];
        if (v13 == v14)
        {
          v68 = 0;
        }

        else
        {
          v15 = [(HKHeartRateSummary *)v6 restingHeartRate];
          if (!v15)
          {

            v12 = 0;
            if (v8 == v9)
            {
              v75 = 0;
              goto LABEL_92;
            }

            v75 = 1;
LABEL_91:

LABEL_92:
            if (v75)
            {
              goto LABEL_93;
            }

LABEL_94:

            goto LABEL_95;
          }

          v69 = v15;
          v3 = [(HKHeartRateSummary *)self restingHeartRate];
          v70 = [(HKHeartRateSummary *)v6 restingHeartRate];
          if (![v3 isEqual:?])
          {
            v12 = 0;
LABEL_40:

            goto LABEL_41;
          }

          v68 = v13 != v14;
        }

        v16 = [(HKHeartRateSummary *)self walkingAverageHeartRate];
        [(HKHeartRateSummary *)v6 walkingAverageHeartRate];
        v74 = v73 = v16;
        v17 = v16 == v74;
        v18 = v16 != v74;
        if (v17)
        {
          v64 = v18;
          v66 = v3;
        }

        else
        {
          v19 = [(HKHeartRateSummary *)v6 walkingAverageHeartRate];
          if (!v19)
          {

            v12 = 0;
            if (v13 != v14)
            {
              LOBYTE(v27) = 1;
              goto LABEL_88;
            }

            v27 = 0;
LABEL_96:
            if (!v27)
            {
LABEL_90:

              if (v8 == v9)
              {
                goto LABEL_92;
              }

              goto LABEL_91;
            }

LABEL_89:

            goto LABEL_90;
          }

          v64 = v18;
          v61 = v19;
          v20 = [(HKHeartRateSummary *)self walkingAverageHeartRate];
          v62 = [(HKHeartRateSummary *)v6 walkingAverageHeartRate];
          v63 = v20;
          if (![v20 isEqual:?])
          {
            v12 = 0;
            v26 = v73;
LABEL_39:

            if (v13 == v14)
            {
              goto LABEL_90;
            }

            goto LABEL_40;
          }

          v66 = v3;
        }

        v21 = [(HKHeartRateSummary *)self allDayStatistics];
        v67 = [(HKHeartRateSummary *)v6 allDayStatistics];
        if (v21 == v67)
        {
          v57 = 0;
        }

        else
        {
          v22 = [(HKHeartRateSummary *)v6 allDayStatistics];
          if (!v22)
          {

            v12 = 0;
            v26 = v73;
            v3 = v66;
            if (v73 != v74)
            {
              LOBYTE(v32) = 1;
              goto LABEL_85;
            }

            v32 = 0;
LABEL_98:
            if (!v32)
            {
LABEL_87:

              v27 = v68;
              if (v13 != v14)
              {
LABEL_88:

                if (!v27)
                {
                  goto LABEL_90;
                }

                goto LABEL_89;
              }

              goto LABEL_96;
            }

LABEL_86:

            goto LABEL_87;
          }

          v57 = v21 != v67;
          v56 = v22;
          v23 = [(HKHeartRateSummary *)self allDayStatistics];
          v24 = [(HKHeartRateSummary *)v6 allDayStatistics];
          v59 = v23;
          v25 = v23;
          v4 = v24;
          if (![v25 isEqual:v24])
          {
            v65 = v21;
            v12 = 0;
            v26 = v73;
            goto LABEL_28;
          }
        }

        v28 = [(HKHeartRateSummary *)self workoutStatistics];
        v60 = [(HKHeartRateSummary *)v6 workoutStatistics];
        v65 = v21;
        if (v28 == v60)
        {
          v55 = v4;
        }

        else
        {
          v29 = [(HKHeartRateSummary *)v6 workoutStatistics];
          if (!v29)
          {

            v37 = v21;
            v12 = 0;
            v26 = v73;
            v38 = v57;
            if (v37 != v67)
            {
              goto LABEL_79;
            }

            goto LABEL_82;
          }

          v55 = v4;
          v53 = v29;
          v30 = [(HKHeartRateSummary *)self workoutStatistics];
          v51 = [(HKHeartRateSummary *)v6 workoutStatistics];
          v52 = v30;
          if (![v30 isEqual:?])
          {
            v12 = 0;
            v26 = v73;
            v31 = v60;
LABEL_77:

            if (v65 != v67)
            {
              LOBYTE(v38) = 1;
              v4 = v55;
LABEL_79:

              if (!v38)
              {
                goto LABEL_84;
              }

LABEL_83:

              goto LABEL_84;
            }

            v38 = 0;
LABEL_82:
            if (!v38)
            {
              goto LABEL_84;
            }

            goto LABEL_83;
          }
        }

        v33 = [(HKHeartRateSummary *)self workoutRecoveryStatistics];
        v58 = [(HKHeartRateSummary *)v6 workoutRecoveryStatistics];
        v54 = v33;
        if (v33 == v58)
        {
          v50 = v28;
          [(HKHeartRateSummary *)self breatheStatistics];
        }

        else
        {
          v34 = [(HKHeartRateSummary *)v6 workoutRecoveryStatistics];
          if (!v34)
          {
            v12 = 0;
            v26 = v73;
            goto LABEL_76;
          }

          v49 = v34;
          v50 = v28;
          v35 = [(HKHeartRateSummary *)self workoutRecoveryStatistics];
          v36 = [(HKHeartRateSummary *)v6 workoutRecoveryStatistics];
          if (([v35 isEqual:v36] & 1) == 0)
          {

            v12 = 0;
LABEL_65:
            if (v50 != v60)
            {
            }

            if (v65 != v67)
            {
            }

            if (v73 != v74)
            {
            }

            if (v13 == v14)
            {
LABEL_42:

              v11 = v71;
              v10 = v72;
              if (v8 == v9)
              {
                goto LABEL_94;
              }

LABEL_43:

LABEL_93:
              goto LABEL_94;
            }

LABEL_41:
            goto LABEL_42;
          }

          v48 = v35;
          [(HKHeartRateSummary *)self breatheStatistics];
        }
        v39 = ;
        v40 = [(HKHeartRateSummary *)v6 breatheStatistics];
        v12 = v39 == v40;
        if (v39 == v40)
        {
        }

        else
        {
          v41 = v40;
          v42 = [(HKHeartRateSummary *)v6 breatheStatistics];
          if (v42)
          {
            v76 = v42;
            v43 = [(HKHeartRateSummary *)self breatheStatistics];
            v44 = [(HKHeartRateSummary *)v6 breatheStatistics];
            v12 = [v43 isEqual:v44];

            if (v54 != v58)
            {
            }

            goto LABEL_65;
          }
        }

        if (v54 == v58)
        {

          v31 = v60;
          v28 = v50;
          v26 = v73;
          if (v50 != v60)
          {
            goto LABEL_77;
          }

          goto LABEL_101;
        }

        v26 = v73;
        v28 = v50;
LABEL_76:

        v31 = v60;
        if (v28 != v60)
        {
          goto LABEL_77;
        }

LABEL_101:

        v4 = v55;
        if (v65 != v67)
        {
LABEL_28:

          v3 = v66;
          if (v26 == v74)
          {
            goto LABEL_87;
          }

          goto LABEL_39;
        }

LABEL_84:

        v3 = v66;
        v32 = v64;
        if (v26 != v74)
        {
LABEL_85:

          if (!v32)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        }

        goto LABEL_98;
      }
    }

    v12 = 0;
  }

LABEL_95:

  return v12;
}

- (unint64_t)hash
{
  activityCacheIndex = self->_activityCacheIndex;
  v4 = [(HKHeartRateSummary *)self heartRateDateInterval];
  v5 = [v4 hash];
  v6 = [(HKHeartRateSummary *)self restingHeartRate];
  v7 = v5 ^ [v6 hash];
  v8 = [(HKHeartRateSummary *)self walkingAverageHeartRate];
  v9 = v7 ^ [v8 hash] ^ activityCacheIndex;
  v10 = [(HKHeartRateSummary *)self allDayStatistics];
  v11 = [v10 hash];
  v12 = [(HKHeartRateSummary *)self workoutStatistics];
  v13 = v11 ^ [v12 hash];
  v14 = [(HKHeartRateSummary *)self workoutRecoveryStatistics];
  v15 = v13 ^ [v14 hash];
  v16 = [(HKHeartRateSummary *)self breatheStatistics];
  v17 = v15 ^ [v16 hash];

  return v9 ^ v17;
}

- (id)deepCopy
{
  v3 = [(NSArray *)self->_workoutStatistics hk_map:&__block_literal_global_136];
  v4 = [(NSArray *)self->_workoutRecoveryStatistics hk_map:&__block_literal_global_44_3];
  v5 = [(NSArray *)self->_breatheStatistics hk_map:&__block_literal_global_47_0];
  v6 = [HKHeartRateSummary alloc];
  activityCacheIndex = self->_activityCacheIndex;
  heartRateDateInterval = self->_heartRateDateInterval;
  restingHeartRate = self->_restingHeartRate;
  walkingAverageHeartRate = self->_walkingAverageHeartRate;
  v11 = [(HKHeartRateSummaryStatistics *)self->_allDayStatistics copy];
  v12 = [(HKHeartRateSummary *)v6 initWithActivityCacheIndex:activityCacheIndex heartRateDateInterval:heartRateDateInterval restingHeartRate:restingHeartRate walkingAverageHeartRate:walkingAverageHeartRate allDayStatistics:v11 workoutStatistics:v3 workoutRecoveryStatistics:v4 breatheStatistics:v5 sleepStatistics:self->_sleepStatistics];

  return v12;
}

id __30__HKHeartRateSummary_deepCopy__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

id __30__HKHeartRateSummary_deepCopy__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

id __30__HKHeartRateSummary_deepCopy__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

@end