@interface HKUnprocessedBloodOxygenDataSample
+ (id)unprocessedBloodOxygenDataSampleWithPayload:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7;
- (HKUnprocessedBloodOxygenDataSample)initWithCoder:(id)a3;
- (void)_setPayload:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUnprocessedBloodOxygenDataSample

+ (id)unprocessedBloodOxygenDataSampleWithPayload:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = +[HKObjectType unprocessedBloodOxygenDataType];
  [v16 timeIntervalSinceReferenceDate];
  v19 = v18;

  [v15 timeIntervalSinceReferenceDate];
  v21 = v20;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __116__HKUnprocessedBloodOxygenDataSample_unprocessedBloodOxygenDataSampleWithPayload_startDate_endDate_device_metadata___block_invoke;
  v25[3] = &unk_1E7379D50;
  v26 = v12;
  v22 = v12;
  v23 = [a1 _newSampleWithType:v17 startDate:v14 endDate:v13 device:v25 metadata:v19 config:v21];

  return v23;
}

- (void)_setPayload:(id)a3
{
  v4 = [a3 copy];
  payload = self->_payload;
  self->_payload = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKUnprocessedBloodOxygenDataSample)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKUnprocessedBloodOxygenDataSample;
  v5 = [(HKSample *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PayloadDataKey"];
    [(HKUnprocessedBloodOxygenDataSample *)v5 _setPayload:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUnprocessedBloodOxygenDataSample;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_payload forKey:{@"PayloadDataKey", v5.receiver, v5.super_class}];
}

@end