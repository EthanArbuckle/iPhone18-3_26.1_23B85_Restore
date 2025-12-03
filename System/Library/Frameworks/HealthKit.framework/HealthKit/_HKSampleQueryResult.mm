@interface _HKSampleQueryResult
- (_HKSampleQueryResult)initWithStartDate:(id)date endDate:(id)endDate samples:(id)samples;
@end

@implementation _HKSampleQueryResult

- (_HKSampleQueryResult)initWithStartDate:(id)date endDate:(id)endDate samples:(id)samples
{
  dateCopy = date;
  endDateCopy = endDate;
  samplesCopy = samples;
  v19.receiver = self;
  v19.super_class = _HKSampleQueryResult;
  v12 = [(_HKSampleQueryResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
    v14 = [samplesCopy copy];
    samples = v13->_samples;
    v13->_samples = v14;

    v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateCopy endDate:endDateCopy];
    dateInterval = v13->_dateInterval;
    v13->_dateInterval = v16;
  }

  return v13;
}

@end