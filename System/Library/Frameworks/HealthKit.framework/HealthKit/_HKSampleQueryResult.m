@interface _HKSampleQueryResult
- (_HKSampleQueryResult)initWithStartDate:(id)a3 endDate:(id)a4 samples:(id)a5;
@end

@implementation _HKSampleQueryResult

- (_HKSampleQueryResult)initWithStartDate:(id)a3 endDate:(id)a4 samples:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _HKSampleQueryResult;
  v12 = [(_HKSampleQueryResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, a3);
    objc_storeStrong(&v13->_endDate, a4);
    v14 = [v11 copy];
    samples = v13->_samples;
    v13->_samples = v14;

    v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v10];
    dateInterval = v13->_dateInterval;
    v13->_dateInterval = v16;
  }

  return v13;
}

@end