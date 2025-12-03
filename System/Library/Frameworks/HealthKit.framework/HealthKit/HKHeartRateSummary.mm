@interface HKHeartRateSummary
- (BOOL)isEqual:(id)equal;
- (HKHeartRateSummary)initWithActivityCacheIndex:(int64_t)index heartRateDateInterval:(id)interval restingHeartRate:(id)rate walkingAverageHeartRate:(id)heartRate allDayStatistics:(id)statistics workoutStatistics:(id)workoutStatistics workoutRecoveryStatistics:(id)recoveryStatistics breatheStatistics:(id)self0 sleepStatistics:(id)self1;
- (HKHeartRateSummary)initWithCoder:(id)coder;
- (id)deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHeartRateSummary

- (HKHeartRateSummary)initWithActivityCacheIndex:(int64_t)index heartRateDateInterval:(id)interval restingHeartRate:(id)rate walkingAverageHeartRate:(id)heartRate allDayStatistics:(id)statistics workoutStatistics:(id)workoutStatistics workoutRecoveryStatistics:(id)recoveryStatistics breatheStatistics:(id)self0 sleepStatistics:(id)self1
{
  intervalCopy = interval;
  rateCopy = rate;
  heartRateCopy = heartRate;
  statisticsCopy = statistics;
  workoutStatisticsCopy = workoutStatistics;
  recoveryStatisticsCopy = recoveryStatistics;
  breatheStatisticsCopy = breatheStatistics;
  sleepStatisticsCopy = sleepStatistics;
  v35.receiver = self;
  v35.super_class = HKHeartRateSummary;
  v21 = [(HKHeartRateSummary *)&v35 init];
  v22 = v21;
  if (v21)
  {
    v21->_activityCacheIndex = index;
    objc_storeStrong(&v21->_heartRateDateInterval, interval);
    objc_storeStrong(&v22->_restingHeartRate, rate);
    objc_storeStrong(&v22->_walkingAverageHeartRate, heartRate);
    objc_storeStrong(&v22->_allDayStatistics, statistics);
    v23 = [workoutStatisticsCopy copy];
    workoutStatistics = v22->_workoutStatistics;
    v22->_workoutStatistics = v23;

    v25 = [recoveryStatisticsCopy copy];
    workoutRecoveryStatistics = v22->_workoutRecoveryStatistics;
    v22->_workoutRecoveryStatistics = v25;

    v27 = [breatheStatisticsCopy copy];
    breatheStatistics = v22->_breatheStatistics;
    v22->_breatheStatistics = v27;

    objc_storeStrong(&v22->_sleepStatistics, sleepStatistics);
  }

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  activityCacheIndex = self->_activityCacheIndex;
  coderCopy = coder;
  [coderCopy encodeInt64:activityCacheIndex forKey:@"ActivityCacheIndex"];
  [coderCopy encodeObject:self->_heartRateDateInterval forKey:@"HeartRateDateInterval"];
  [coderCopy encodeObject:self->_restingHeartRate forKey:@"RestingHeartRate"];
  [coderCopy encodeObject:self->_walkingAverageHeartRate forKey:@"WalkingAverageHeartRate"];
  [coderCopy encodeObject:self->_allDayStatistics forKey:@"AllDayStatistics"];
  [coderCopy encodeObject:self->_workoutStatistics forKey:@"WorkoutStatistics"];
  [coderCopy encodeObject:self->_workoutRecoveryStatistics forKey:@"RecoveryStatistics"];
  [coderCopy encodeObject:self->_breatheStatistics forKey:@"BreatheStatistics"];
}

- (HKHeartRateSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = HKHeartRateSummary;
  v5 = [(HKHeartRateSummary *)&v30 init];
  if (v5)
  {
    v5->_activityCacheIndex = [coderCopy decodeInt64ForKey:@"ActivityCacheIndex"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HeartRateDateInterval"];
    heartRateDateInterval = v5->_heartRateDateInterval;
    v5->_heartRateDateInterval = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RestingHeartRate"];
    restingHeartRate = v5->_restingHeartRate;
    v5->_restingHeartRate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WalkingAverageHeartRate"];
    walkingAverageHeartRate = v5->_walkingAverageHeartRate;
    v5->_walkingAverageHeartRate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AllDayStatistics"];
    allDayStatistics = v5->_allDayStatistics;
    v5->_allDayStatistics = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"WorkoutStatistics"];
    workoutStatistics = v5->_workoutStatistics;
    v5->_workoutStatistics = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"RecoveryStatistics"];
    workoutRecoveryStatistics = v5->_workoutRecoveryStatistics;
    v5->_workoutRecoveryStatistics = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"BreatheStatistics"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activityCacheIndex = [(HKHeartRateSummary *)self activityCacheIndex];
      if (activityCacheIndex == [(HKHeartRateSummary *)equalCopy activityCacheIndex])
      {
        heartRateDateInterval = [(HKHeartRateSummary *)self heartRateDateInterval];
        heartRateDateInterval2 = [(HKHeartRateSummary *)equalCopy heartRateDateInterval];
        v75 = heartRateDateInterval != heartRateDateInterval2;
        if (heartRateDateInterval != heartRateDateInterval2)
        {
          heartRateDateInterval3 = [(HKHeartRateSummary *)equalCopy heartRateDateInterval];
          if (!heartRateDateInterval3)
          {
            v12 = 0;

            goto LABEL_94;
          }

          heartRateDateInterval4 = [(HKHeartRateSummary *)self heartRateDateInterval];
          heartRateDateInterval5 = [(HKHeartRateSummary *)equalCopy heartRateDateInterval];
          if (![heartRateDateInterval4 isEqual:heartRateDateInterval5])
          {
            v12 = 0;
            goto LABEL_43;
          }

          v71 = heartRateDateInterval5;
          v72 = heartRateDateInterval4;
        }

        restingHeartRate = [(HKHeartRateSummary *)self restingHeartRate];
        restingHeartRate2 = [(HKHeartRateSummary *)equalCopy restingHeartRate];
        if (restingHeartRate == restingHeartRate2)
        {
          v68 = 0;
        }

        else
        {
          restingHeartRate3 = [(HKHeartRateSummary *)equalCopy restingHeartRate];
          if (!restingHeartRate3)
          {

            v12 = 0;
            if (heartRateDateInterval == heartRateDateInterval2)
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

          v69 = restingHeartRate3;
          restingHeartRate4 = [(HKHeartRateSummary *)self restingHeartRate];
          restingHeartRate5 = [(HKHeartRateSummary *)equalCopy restingHeartRate];
          if (![restingHeartRate4 isEqual:?])
          {
            v12 = 0;
LABEL_40:

            goto LABEL_41;
          }

          v68 = restingHeartRate != restingHeartRate2;
        }

        walkingAverageHeartRate = [(HKHeartRateSummary *)self walkingAverageHeartRate];
        [(HKHeartRateSummary *)equalCopy walkingAverageHeartRate];
        v74 = v73 = walkingAverageHeartRate;
        v17 = walkingAverageHeartRate == v74;
        v18 = walkingAverageHeartRate != v74;
        if (v17)
        {
          v64 = v18;
          v66 = restingHeartRate4;
        }

        else
        {
          walkingAverageHeartRate2 = [(HKHeartRateSummary *)equalCopy walkingAverageHeartRate];
          if (!walkingAverageHeartRate2)
          {

            v12 = 0;
            if (restingHeartRate != restingHeartRate2)
            {
              LOBYTE(v27) = 1;
              goto LABEL_88;
            }

            v27 = 0;
LABEL_96:
            if (!v27)
            {
LABEL_90:

              if (heartRateDateInterval == heartRateDateInterval2)
              {
                goto LABEL_92;
              }

              goto LABEL_91;
            }

LABEL_89:

            goto LABEL_90;
          }

          v64 = v18;
          v61 = walkingAverageHeartRate2;
          walkingAverageHeartRate3 = [(HKHeartRateSummary *)self walkingAverageHeartRate];
          walkingAverageHeartRate4 = [(HKHeartRateSummary *)equalCopy walkingAverageHeartRate];
          v63 = walkingAverageHeartRate3;
          if (![walkingAverageHeartRate3 isEqual:?])
          {
            v12 = 0;
            v26 = v73;
LABEL_39:

            if (restingHeartRate == restingHeartRate2)
            {
              goto LABEL_90;
            }

            goto LABEL_40;
          }

          v66 = restingHeartRate4;
        }

        allDayStatistics = [(HKHeartRateSummary *)self allDayStatistics];
        allDayStatistics2 = [(HKHeartRateSummary *)equalCopy allDayStatistics];
        if (allDayStatistics == allDayStatistics2)
        {
          v57 = 0;
        }

        else
        {
          allDayStatistics3 = [(HKHeartRateSummary *)equalCopy allDayStatistics];
          if (!allDayStatistics3)
          {

            v12 = 0;
            v26 = v73;
            restingHeartRate4 = v66;
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
              if (restingHeartRate != restingHeartRate2)
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

          v57 = allDayStatistics != allDayStatistics2;
          v56 = allDayStatistics3;
          allDayStatistics4 = [(HKHeartRateSummary *)self allDayStatistics];
          allDayStatistics5 = [(HKHeartRateSummary *)equalCopy allDayStatistics];
          v59 = allDayStatistics4;
          v25 = allDayStatistics4;
          v4 = allDayStatistics5;
          if (![v25 isEqual:allDayStatistics5])
          {
            v65 = allDayStatistics;
            v12 = 0;
            v26 = v73;
            goto LABEL_28;
          }
        }

        workoutStatistics = [(HKHeartRateSummary *)self workoutStatistics];
        workoutStatistics2 = [(HKHeartRateSummary *)equalCopy workoutStatistics];
        v65 = allDayStatistics;
        if (workoutStatistics == workoutStatistics2)
        {
          v55 = v4;
        }

        else
        {
          workoutStatistics3 = [(HKHeartRateSummary *)equalCopy workoutStatistics];
          if (!workoutStatistics3)
          {

            v37 = allDayStatistics;
            v12 = 0;
            v26 = v73;
            v38 = v57;
            if (v37 != allDayStatistics2)
            {
              goto LABEL_79;
            }

            goto LABEL_82;
          }

          v55 = v4;
          v53 = workoutStatistics3;
          workoutStatistics4 = [(HKHeartRateSummary *)self workoutStatistics];
          workoutStatistics5 = [(HKHeartRateSummary *)equalCopy workoutStatistics];
          v52 = workoutStatistics4;
          if (![workoutStatistics4 isEqual:?])
          {
            v12 = 0;
            v26 = v73;
            v31 = workoutStatistics2;
LABEL_77:

            if (v65 != allDayStatistics2)
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

        workoutRecoveryStatistics = [(HKHeartRateSummary *)self workoutRecoveryStatistics];
        workoutRecoveryStatistics2 = [(HKHeartRateSummary *)equalCopy workoutRecoveryStatistics];
        v54 = workoutRecoveryStatistics;
        if (workoutRecoveryStatistics == workoutRecoveryStatistics2)
        {
          v50 = workoutStatistics;
          [(HKHeartRateSummary *)self breatheStatistics];
        }

        else
        {
          workoutRecoveryStatistics3 = [(HKHeartRateSummary *)equalCopy workoutRecoveryStatistics];
          if (!workoutRecoveryStatistics3)
          {
            v12 = 0;
            v26 = v73;
            goto LABEL_76;
          }

          v49 = workoutRecoveryStatistics3;
          v50 = workoutStatistics;
          workoutRecoveryStatistics4 = [(HKHeartRateSummary *)self workoutRecoveryStatistics];
          workoutRecoveryStatistics5 = [(HKHeartRateSummary *)equalCopy workoutRecoveryStatistics];
          if (([workoutRecoveryStatistics4 isEqual:workoutRecoveryStatistics5] & 1) == 0)
          {

            v12 = 0;
LABEL_65:
            if (v50 != workoutStatistics2)
            {
            }

            if (v65 != allDayStatistics2)
            {
            }

            if (v73 != v74)
            {
            }

            if (restingHeartRate == restingHeartRate2)
            {
LABEL_42:

              heartRateDateInterval5 = v71;
              heartRateDateInterval4 = v72;
              if (heartRateDateInterval == heartRateDateInterval2)
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

          v48 = workoutRecoveryStatistics4;
          [(HKHeartRateSummary *)self breatheStatistics];
        }
        v39 = ;
        breatheStatistics = [(HKHeartRateSummary *)equalCopy breatheStatistics];
        v12 = v39 == breatheStatistics;
        if (v39 == breatheStatistics)
        {
        }

        else
        {
          v41 = breatheStatistics;
          breatheStatistics2 = [(HKHeartRateSummary *)equalCopy breatheStatistics];
          if (breatheStatistics2)
          {
            v76 = breatheStatistics2;
            breatheStatistics3 = [(HKHeartRateSummary *)self breatheStatistics];
            breatheStatistics4 = [(HKHeartRateSummary *)equalCopy breatheStatistics];
            v12 = [breatheStatistics3 isEqual:breatheStatistics4];

            if (v54 != workoutRecoveryStatistics2)
            {
            }

            goto LABEL_65;
          }
        }

        if (v54 == workoutRecoveryStatistics2)
        {

          v31 = workoutStatistics2;
          workoutStatistics = v50;
          v26 = v73;
          if (v50 != workoutStatistics2)
          {
            goto LABEL_77;
          }

          goto LABEL_101;
        }

        v26 = v73;
        workoutStatistics = v50;
LABEL_76:

        v31 = workoutStatistics2;
        if (workoutStatistics != workoutStatistics2)
        {
          goto LABEL_77;
        }

LABEL_101:

        v4 = v55;
        if (v65 != allDayStatistics2)
        {
LABEL_28:

          restingHeartRate4 = v66;
          if (v26 == v74)
          {
            goto LABEL_87;
          }

          goto LABEL_39;
        }

LABEL_84:

        restingHeartRate4 = v66;
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
  heartRateDateInterval = [(HKHeartRateSummary *)self heartRateDateInterval];
  v5 = [heartRateDateInterval hash];
  restingHeartRate = [(HKHeartRateSummary *)self restingHeartRate];
  v7 = v5 ^ [restingHeartRate hash];
  walkingAverageHeartRate = [(HKHeartRateSummary *)self walkingAverageHeartRate];
  v9 = v7 ^ [walkingAverageHeartRate hash] ^ activityCacheIndex;
  allDayStatistics = [(HKHeartRateSummary *)self allDayStatistics];
  v11 = [allDayStatistics hash];
  workoutStatistics = [(HKHeartRateSummary *)self workoutStatistics];
  v13 = v11 ^ [workoutStatistics hash];
  workoutRecoveryStatistics = [(HKHeartRateSummary *)self workoutRecoveryStatistics];
  v15 = v13 ^ [workoutRecoveryStatistics hash];
  breatheStatistics = [(HKHeartRateSummary *)self breatheStatistics];
  v17 = v15 ^ [breatheStatistics hash];

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