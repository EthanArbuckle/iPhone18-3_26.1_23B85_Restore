@interface HKPauseRingsSchedule
+ (id)pauseRingsScheduleWithStartDateIndex:(int64_t)index endDateIndex:(int64_t)dateIndex device:(id)device metadata:(id)metadata;
- (BOOL)isEquivalent:(id)equivalent;
- (HKPauseRingsSchedule)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKPauseRingsSchedule

+ (id)pauseRingsScheduleWithStartDateIndex:(int64_t)index endDateIndex:(int64_t)dateIndex device:(id)device metadata:(id)metadata
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__HKPauseRingsSchedule_pauseRingsScheduleWithStartDateIndex_endDateIndex_device_metadata___block_invoke;
  aBlock[3] = &__block_descriptor_48_e8_v16__0_8l;
  aBlock[4] = index;
  aBlock[5] = dateIndex;
  metadataCopy = metadata;
  deviceCopy = device;
  v10 = _Block_copy(aBlock);
  date = [MEMORY[0x1E695DF00] date];
  v12 = +[(HKObjectType *)HKSampleType];
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___HKPauseRingsSchedule;
  v13 = objc_msgSendSuper2(&v15, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v12, date, date, deviceCopy, metadataCopy, v10);

  return v13;
}

uint64_t __90__HKPauseRingsSchedule_pauseRingsScheduleWithStartDateIndex_endDateIndex_device_metadata___block_invoke(uint64_t result, uint64_t a2)
{
  *(a2 + 96) = *(result + 32);
  *(a2 + 104) = *(result + 40);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKPauseRingsSchedule;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_startDateIndex forKey:{@"StartDateIndex", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_endDateIndex forKey:@"EndDateIndex"];
}

- (HKPauseRingsSchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKPauseRingsSchedule;
  v5 = [(HKSample *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_startDateIndex = [coderCopy decodeInt64ForKey:@"StartDateIndex"];
    v5->_endDateIndex = [coderCopy decodeInt64ForKey:@"EndDateIndex"];
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = HKPauseRingsSchedule, [(HKSample *)&v10 isEquivalent:equivalentCopy]))
  {
    v5 = equivalentCopy;
    startDateIndex = [(HKPauseRingsSchedule *)self startDateIndex];
    if (startDateIndex == [v5 startDateIndex])
    {
      endDateIndex = [(HKPauseRingsSchedule *)self endDateIndex];
      v8 = endDateIndex == [v5 endDateIndex];
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