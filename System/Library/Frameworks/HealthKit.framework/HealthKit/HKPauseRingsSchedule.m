@interface HKPauseRingsSchedule
+ (id)pauseRingsScheduleWithStartDateIndex:(int64_t)a3 endDateIndex:(int64_t)a4 device:(id)a5 metadata:(id)a6;
- (BOOL)isEquivalent:(id)a3;
- (HKPauseRingsSchedule)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKPauseRingsSchedule

+ (id)pauseRingsScheduleWithStartDateIndex:(int64_t)a3 endDateIndex:(int64_t)a4 device:(id)a5 metadata:(id)a6
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__HKPauseRingsSchedule_pauseRingsScheduleWithStartDateIndex_endDateIndex_device_metadata___block_invoke;
  aBlock[3] = &__block_descriptor_48_e8_v16__0_8l;
  aBlock[4] = a3;
  aBlock[5] = a4;
  v8 = a6;
  v9 = a5;
  v10 = _Block_copy(aBlock);
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = +[(HKObjectType *)HKSampleType];
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___HKPauseRingsSchedule;
  v13 = objc_msgSendSuper2(&v15, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v12, v11, v11, v9, v8, v10);

  return v13;
}

uint64_t __90__HKPauseRingsSchedule_pauseRingsScheduleWithStartDateIndex_endDateIndex_device_metadata___block_invoke(uint64_t result, uint64_t a2)
{
  *(a2 + 96) = *(result + 32);
  *(a2 + 104) = *(result + 40);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKPauseRingsSchedule;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_startDateIndex forKey:{@"StartDateIndex", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_endDateIndex forKey:@"EndDateIndex"];
}

- (HKPauseRingsSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKPauseRingsSchedule;
  v5 = [(HKSample *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_startDateIndex = [v4 decodeInt64ForKey:@"StartDateIndex"];
    v5->_endDateIndex = [v4 decodeInt64ForKey:@"EndDateIndex"];
  }

  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = HKPauseRingsSchedule, [(HKSample *)&v10 isEquivalent:v4]))
  {
    v5 = v4;
    v6 = [(HKPauseRingsSchedule *)self startDateIndex];
    if (v6 == [v5 startDateIndex])
    {
      v7 = [(HKPauseRingsSchedule *)self endDateIndex];
      v8 = v7 == [v5 endDateIndex];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end