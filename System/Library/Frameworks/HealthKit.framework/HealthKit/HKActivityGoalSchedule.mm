@interface HKActivityGoalSchedule
+ (id)activityGoalScheduleWithDate:(id)date goalType:(int64_t)type mondayGoal:(id)goal tuesdayGoal:(id)tuesdayGoal wednesdayGoal:(id)wednesdayGoal thursdayGoal:(id)thursdayGoal fridayGoal:(id)fridayGoal saturdayGoal:(id)self0 sundayGoal:(id)self1 device:(id)self2 metadata:(id)self3;
- (BOOL)isEquivalent:(id)equivalent;
- (HKActivityGoalSchedule)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKActivityGoalSchedule

+ (id)activityGoalScheduleWithDate:(id)date goalType:(int64_t)type mondayGoal:(id)goal tuesdayGoal:(id)tuesdayGoal wednesdayGoal:(id)wednesdayGoal thursdayGoal:(id)thursdayGoal fridayGoal:(id)fridayGoal saturdayGoal:(id)self0 sundayGoal:(id)self1 device:(id)self2 metadata:(id)self3
{
  goalCopy = goal;
  tuesdayGoalCopy = tuesdayGoal;
  wednesdayGoalCopy = wednesdayGoal;
  thursdayGoalCopy = thursdayGoal;
  fridayGoalCopy = fridayGoal;
  saturdayGoalCopy = saturdayGoal;
  sundayGoalCopy = sundayGoal;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __165__HKActivityGoalSchedule_activityGoalScheduleWithDate_goalType_mondayGoal_tuesdayGoal_wednesdayGoal_thursdayGoal_fridayGoal_saturdayGoal_sundayGoal_device_metadata___block_invoke;
  aBlock[3] = &unk_1E7382FB8;
  v42 = goalCopy;
  v43 = tuesdayGoalCopy;
  v44 = wednesdayGoalCopy;
  v45 = thursdayGoalCopy;
  v46 = fridayGoalCopy;
  v47 = saturdayGoalCopy;
  v48 = sundayGoalCopy;
  typeCopy = type;
  v39 = sundayGoalCopy;
  v38 = saturdayGoalCopy;
  v37 = fridayGoalCopy;
  v24 = thursdayGoalCopy;
  v25 = wednesdayGoalCopy;
  v26 = tuesdayGoalCopy;
  v27 = goalCopy;
  metadataCopy = metadata;
  deviceCopy = device;
  dateCopy = date;
  v31 = _Block_copy(aBlock);
  v32 = +[(HKObjectType *)HKSampleType];
  v40.receiver = self;
  v40.super_class = &OBJC_METACLASS___HKActivityGoalSchedule;
  v33 = objc_msgSendSuper2(&v40, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v32, dateCopy, dateCopy, deviceCopy, metadataCopy, v31);

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKActivityGoalSchedule;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_goalType forKey:{@"GoalType", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_mondayGoal forKey:@"MondayGoal"];
  [coderCopy encodeObject:self->_tuesdayGoal forKey:@"TuesdayGoal"];
  [coderCopy encodeObject:self->_wednesdayGoal forKey:@"WednesdayGoal"];
  [coderCopy encodeObject:self->_thursdayGoal forKey:@"ThursdayGoal"];
  [coderCopy encodeObject:self->_fridayGoal forKey:@"FridayGoal"];
  [coderCopy encodeObject:self->_saturdayGoal forKey:@"SaturdayGoal"];
  [coderCopy encodeObject:self->_sundayGoal forKey:@"SundayGoal"];
}

- (HKActivityGoalSchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HKActivityGoalSchedule;
  v5 = [(HKSample *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v5->_goalType = [coderCopy decodeIntegerForKey:@"GoalType"];
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"MondayGoal"];
    mondayGoal = v5->_mondayGoal;
    v5->_mondayGoal = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"TuesdayGoal"];
    tuesdayGoal = v5->_tuesdayGoal;
    v5->_tuesdayGoal = v9;

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"WednesdayGoal"];
    wednesdayGoal = v5->_wednesdayGoal;
    v5->_wednesdayGoal = v11;

    v13 = [coderCopy decodeObjectOfClass:v6 forKey:@"ThursdayGoal"];
    thursdayGoal = v5->_thursdayGoal;
    v5->_thursdayGoal = v13;

    v15 = [coderCopy decodeObjectOfClass:v6 forKey:@"FridayGoal"];
    fridayGoal = v5->_fridayGoal;
    v5->_fridayGoal = v15;

    v17 = [coderCopy decodeObjectOfClass:v6 forKey:@"SaturdayGoal"];
    saturdayGoal = v5->_saturdayGoal;
    v5->_saturdayGoal = v17;

    v19 = [coderCopy decodeObjectOfClass:v6 forKey:@"SundayGoal"];
    sundayGoal = v5->_sundayGoal;
    v5->_sundayGoal = v19;
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53.receiver = self;
    v53.super_class = HKActivityGoalSchedule;
    if ([(HKSample *)&v53 isEquivalent:equivalentCopy])
    {
      v5 = equivalentCopy;
      goalType = [(HKActivityGoalSchedule *)self goalType];
      if (goalType != [v5 goalType])
      {
        goto LABEL_40;
      }

      mondayGoal = [(HKActivityGoalSchedule *)self mondayGoal];
      mondayGoal2 = [v5 mondayGoal];
      v9 = mondayGoal2;
      if (mondayGoal == mondayGoal2)
      {
      }

      else
      {
        mondayGoal3 = [v5 mondayGoal];
        if (!mondayGoal3)
        {
          goto LABEL_39;
        }

        v11 = mondayGoal3;
        mondayGoal4 = [(HKActivityGoalSchedule *)self mondayGoal];
        mondayGoal5 = [v5 mondayGoal];
        v14 = [mondayGoal4 isEqual:mondayGoal5];

        if (!v14)
        {
          goto LABEL_40;
        }
      }

      mondayGoal = [(HKActivityGoalSchedule *)self tuesdayGoal];
      tuesdayGoal = [v5 tuesdayGoal];
      v9 = tuesdayGoal;
      if (mondayGoal == tuesdayGoal)
      {
      }

      else
      {
        tuesdayGoal2 = [v5 tuesdayGoal];
        if (!tuesdayGoal2)
        {
          goto LABEL_39;
        }

        v18 = tuesdayGoal2;
        tuesdayGoal3 = [(HKActivityGoalSchedule *)self tuesdayGoal];
        tuesdayGoal4 = [v5 tuesdayGoal];
        v21 = [tuesdayGoal3 isEqual:tuesdayGoal4];

        if (!v21)
        {
          goto LABEL_40;
        }
      }

      mondayGoal = [(HKActivityGoalSchedule *)self wednesdayGoal];
      wednesdayGoal = [v5 wednesdayGoal];
      v9 = wednesdayGoal;
      if (mondayGoal == wednesdayGoal)
      {
      }

      else
      {
        wednesdayGoal2 = [v5 wednesdayGoal];
        if (!wednesdayGoal2)
        {
          goto LABEL_39;
        }

        v24 = wednesdayGoal2;
        wednesdayGoal3 = [(HKActivityGoalSchedule *)self wednesdayGoal];
        wednesdayGoal4 = [v5 wednesdayGoal];
        v27 = [wednesdayGoal3 isEqual:wednesdayGoal4];

        if (!v27)
        {
          goto LABEL_40;
        }
      }

      mondayGoal = [(HKActivityGoalSchedule *)self thursdayGoal];
      thursdayGoal = [v5 thursdayGoal];
      v9 = thursdayGoal;
      if (mondayGoal == thursdayGoal)
      {
      }

      else
      {
        thursdayGoal2 = [v5 thursdayGoal];
        if (!thursdayGoal2)
        {
          goto LABEL_39;
        }

        v30 = thursdayGoal2;
        thursdayGoal3 = [(HKActivityGoalSchedule *)self thursdayGoal];
        thursdayGoal4 = [v5 thursdayGoal];
        v33 = [thursdayGoal3 isEqual:thursdayGoal4];

        if (!v33)
        {
          goto LABEL_40;
        }
      }

      mondayGoal = [(HKActivityGoalSchedule *)self fridayGoal];
      fridayGoal = [v5 fridayGoal];
      v9 = fridayGoal;
      if (mondayGoal == fridayGoal)
      {
      }

      else
      {
        fridayGoal2 = [v5 fridayGoal];
        if (!fridayGoal2)
        {
          goto LABEL_39;
        }

        v36 = fridayGoal2;
        fridayGoal3 = [(HKActivityGoalSchedule *)self fridayGoal];
        fridayGoal4 = [v5 fridayGoal];
        v39 = [fridayGoal3 isEqual:fridayGoal4];

        if (!v39)
        {
          goto LABEL_40;
        }
      }

      mondayGoal = [(HKActivityGoalSchedule *)self saturdayGoal];
      saturdayGoal = [v5 saturdayGoal];
      v9 = saturdayGoal;
      if (mondayGoal == saturdayGoal)
      {
      }

      else
      {
        saturdayGoal2 = [v5 saturdayGoal];
        if (!saturdayGoal2)
        {
          goto LABEL_39;
        }

        v42 = saturdayGoal2;
        saturdayGoal3 = [(HKActivityGoalSchedule *)self saturdayGoal];
        saturdayGoal4 = [v5 saturdayGoal];
        v45 = [saturdayGoal3 isEqual:saturdayGoal4];

        if (!v45)
        {
          goto LABEL_40;
        }
      }

      mondayGoal = [(HKActivityGoalSchedule *)self sundayGoal];
      sundayGoal = [v5 sundayGoal];
      v9 = sundayGoal;
      if (mondayGoal == sundayGoal)
      {

LABEL_44:
        v15 = 1;
        goto LABEL_41;
      }

      sundayGoal2 = [v5 sundayGoal];
      if (sundayGoal2)
      {
        v48 = sundayGoal2;
        sundayGoal3 = [(HKActivityGoalSchedule *)self sundayGoal];
        sundayGoal4 = [v5 sundayGoal];
        v51 = [sundayGoal3 isEqual:sundayGoal4];

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