@interface HKActivityGoalSchedule
+ (id)activityGoalScheduleWithDate:(id)a3 goalType:(int64_t)a4 mondayGoal:(id)a5 tuesdayGoal:(id)a6 wednesdayGoal:(id)a7 thursdayGoal:(id)a8 fridayGoal:(id)a9 saturdayGoal:(id)a10 sundayGoal:(id)a11 device:(id)a12 metadata:(id)a13;
- (BOOL)isEquivalent:(id)a3;
- (HKActivityGoalSchedule)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKActivityGoalSchedule

+ (id)activityGoalScheduleWithDate:(id)a3 goalType:(int64_t)a4 mondayGoal:(id)a5 tuesdayGoal:(id)a6 wednesdayGoal:(id)a7 thursdayGoal:(id)a8 fridayGoal:(id)a9 saturdayGoal:(id)a10 sundayGoal:(id)a11 device:(id)a12 metadata:(id)a13
{
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __165__HKActivityGoalSchedule_activityGoalScheduleWithDate_goalType_mondayGoal_tuesdayGoal_wednesdayGoal_thursdayGoal_fridayGoal_saturdayGoal_sundayGoal_device_metadata___block_invoke;
  aBlock[3] = &unk_1E7382FB8;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = a4;
  v39 = v23;
  v38 = v22;
  v37 = v21;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = v17;
  v28 = a13;
  v29 = a12;
  v30 = a3;
  v31 = _Block_copy(aBlock);
  v32 = +[(HKObjectType *)HKSampleType];
  v40.receiver = a1;
  v40.super_class = &OBJC_METACLASS___HKActivityGoalSchedule;
  v33 = objc_msgSendSuper2(&v40, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v32, v30, v30, v29, v28, v31);

  return v33;
}

void __165__HKActivityGoalSchedule_activityGoalScheduleWithDate_goalType_mondayGoal_tuesdayGoal_wednesdayGoal_thursdayGoal_fridayGoal_saturdayGoal_sundayGoal_device_metadata___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = *(a1 + 88);
  objc_storeStrong((a2 + 104), *(a1 + 32));
  v4 = a2;
  objc_storeStrong(v4 + 14, *(a1 + 40));
  objc_storeStrong(v4 + 15, *(a1 + 48));
  objc_storeStrong(v4 + 16, *(a1 + 56));
  objc_storeStrong(v4 + 17, *(a1 + 64));
  objc_storeStrong(v4 + 18, *(a1 + 72));
  objc_storeStrong(v4 + 19, *(a1 + 80));
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKActivityGoalSchedule;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_goalType forKey:{@"GoalType", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_mondayGoal forKey:@"MondayGoal"];
  [v4 encodeObject:self->_tuesdayGoal forKey:@"TuesdayGoal"];
  [v4 encodeObject:self->_wednesdayGoal forKey:@"WednesdayGoal"];
  [v4 encodeObject:self->_thursdayGoal forKey:@"ThursdayGoal"];
  [v4 encodeObject:self->_fridayGoal forKey:@"FridayGoal"];
  [v4 encodeObject:self->_saturdayGoal forKey:@"SaturdayGoal"];
  [v4 encodeObject:self->_sundayGoal forKey:@"SundayGoal"];
}

- (HKActivityGoalSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HKActivityGoalSchedule;
  v5 = [(HKSample *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v5->_goalType = [v4 decodeIntegerForKey:@"GoalType"];
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"MondayGoal"];
    mondayGoal = v5->_mondayGoal;
    v5->_mondayGoal = v7;

    v9 = [v4 decodeObjectOfClass:v6 forKey:@"TuesdayGoal"];
    tuesdayGoal = v5->_tuesdayGoal;
    v5->_tuesdayGoal = v9;

    v11 = [v4 decodeObjectOfClass:v6 forKey:@"WednesdayGoal"];
    wednesdayGoal = v5->_wednesdayGoal;
    v5->_wednesdayGoal = v11;

    v13 = [v4 decodeObjectOfClass:v6 forKey:@"ThursdayGoal"];
    thursdayGoal = v5->_thursdayGoal;
    v5->_thursdayGoal = v13;

    v15 = [v4 decodeObjectOfClass:v6 forKey:@"FridayGoal"];
    fridayGoal = v5->_fridayGoal;
    v5->_fridayGoal = v15;

    v17 = [v4 decodeObjectOfClass:v6 forKey:@"SaturdayGoal"];
    saturdayGoal = v5->_saturdayGoal;
    v5->_saturdayGoal = v17;

    v19 = [v4 decodeObjectOfClass:v6 forKey:@"SundayGoal"];
    sundayGoal = v5->_sundayGoal;
    v5->_sundayGoal = v19;
  }

  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53.receiver = self;
    v53.super_class = HKActivityGoalSchedule;
    if ([(HKSample *)&v53 isEquivalent:v4])
    {
      v5 = v4;
      v6 = [(HKActivityGoalSchedule *)self goalType];
      if (v6 != [v5 goalType])
      {
        goto LABEL_40;
      }

      v7 = [(HKActivityGoalSchedule *)self mondayGoal];
      v8 = [v5 mondayGoal];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [v5 mondayGoal];
        if (!v10)
        {
          goto LABEL_39;
        }

        v11 = v10;
        v12 = [(HKActivityGoalSchedule *)self mondayGoal];
        v13 = [v5 mondayGoal];
        v14 = [v12 isEqual:v13];

        if (!v14)
        {
          goto LABEL_40;
        }
      }

      v7 = [(HKActivityGoalSchedule *)self tuesdayGoal];
      v16 = [v5 tuesdayGoal];
      v9 = v16;
      if (v7 == v16)
      {
      }

      else
      {
        v17 = [v5 tuesdayGoal];
        if (!v17)
        {
          goto LABEL_39;
        }

        v18 = v17;
        v19 = [(HKActivityGoalSchedule *)self tuesdayGoal];
        v20 = [v5 tuesdayGoal];
        v21 = [v19 isEqual:v20];

        if (!v21)
        {
          goto LABEL_40;
        }
      }

      v7 = [(HKActivityGoalSchedule *)self wednesdayGoal];
      v22 = [v5 wednesdayGoal];
      v9 = v22;
      if (v7 == v22)
      {
      }

      else
      {
        v23 = [v5 wednesdayGoal];
        if (!v23)
        {
          goto LABEL_39;
        }

        v24 = v23;
        v25 = [(HKActivityGoalSchedule *)self wednesdayGoal];
        v26 = [v5 wednesdayGoal];
        v27 = [v25 isEqual:v26];

        if (!v27)
        {
          goto LABEL_40;
        }
      }

      v7 = [(HKActivityGoalSchedule *)self thursdayGoal];
      v28 = [v5 thursdayGoal];
      v9 = v28;
      if (v7 == v28)
      {
      }

      else
      {
        v29 = [v5 thursdayGoal];
        if (!v29)
        {
          goto LABEL_39;
        }

        v30 = v29;
        v31 = [(HKActivityGoalSchedule *)self thursdayGoal];
        v32 = [v5 thursdayGoal];
        v33 = [v31 isEqual:v32];

        if (!v33)
        {
          goto LABEL_40;
        }
      }

      v7 = [(HKActivityGoalSchedule *)self fridayGoal];
      v34 = [v5 fridayGoal];
      v9 = v34;
      if (v7 == v34)
      {
      }

      else
      {
        v35 = [v5 fridayGoal];
        if (!v35)
        {
          goto LABEL_39;
        }

        v36 = v35;
        v37 = [(HKActivityGoalSchedule *)self fridayGoal];
        v38 = [v5 fridayGoal];
        v39 = [v37 isEqual:v38];

        if (!v39)
        {
          goto LABEL_40;
        }
      }

      v7 = [(HKActivityGoalSchedule *)self saturdayGoal];
      v40 = [v5 saturdayGoal];
      v9 = v40;
      if (v7 == v40)
      {
      }

      else
      {
        v41 = [v5 saturdayGoal];
        if (!v41)
        {
          goto LABEL_39;
        }

        v42 = v41;
        v43 = [(HKActivityGoalSchedule *)self saturdayGoal];
        v44 = [v5 saturdayGoal];
        v45 = [v43 isEqual:v44];

        if (!v45)
        {
          goto LABEL_40;
        }
      }

      v7 = [(HKActivityGoalSchedule *)self sundayGoal];
      v46 = [v5 sundayGoal];
      v9 = v46;
      if (v7 == v46)
      {

LABEL_44:
        v15 = 1;
        goto LABEL_41;
      }

      v47 = [v5 sundayGoal];
      if (v47)
      {
        v48 = v47;
        v49 = [(HKActivityGoalSchedule *)self sundayGoal];
        v50 = [v5 sundayGoal];
        v51 = [v49 isEqual:v50];

        if (v51)
        {
          goto LABEL_44;
        }

LABEL_40:
        v15 = 0;
LABEL_41:

        goto LABEL_42;
      }

LABEL_39:

      goto LABEL_40;
    }
  }

  v15 = 0;
LABEL_42:

  return v15;
}

@end