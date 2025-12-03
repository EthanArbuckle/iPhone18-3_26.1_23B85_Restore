@interface HKUnprocessedBloodOxygenDataSample
+ (id)unprocessedBloodOxygenDataSampleWithPayload:(id)payload startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata;
- (HKUnprocessedBloodOxygenDataSample)initWithCoder:(id)coder;
- (void)_setPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUnprocessedBloodOxygenDataSample

+ (id)unprocessedBloodOxygenDataSampleWithPayload:(id)payload startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata
{
  payloadCopy = payload;
  metadataCopy = metadata;
  deviceCopy = device;
  endDateCopy = endDate;
  dateCopy = date;
  v17 = +[HKObjectType unprocessedBloodOxygenDataType];
  [dateCopy timeIntervalSinceReferenceDate];
  v19 = v18;

  [endDateCopy timeIntervalSinceReferenceDate];
  v21 = v20;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __116__HKUnprocessedBloodOxygenDataSample_unprocessedBloodOxygenDataSampleWithPayload_startDate_endDate_device_metadata___block_invoke;
  v25[3] = &unk_1E7379D50;
  v26 = payloadCopy;
  v22 = payloadCopy;
  v23 = [self _newSampleWithType:v17 startDate:deviceCopy endDate:metadataCopy device:v25 metadata:v19 config:v21];

  return v23;
}

- (void)_setPayload:(id)payload
{
  v4 = [payload copy];
  payload = self->_payload;
  self->_payload = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKUnprocessedBloodOxygenDataSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HKUnprocessedBloodOxygenDataSample;
  v5 = [(HKSample *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PayloadDataKey"];
    [(HKUnprocessedBloodOxygenDataSample *)v5 _setPayload:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKUnprocessedBloodOxygenDataSample;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_payload forKey:{@"PayloadDataKey", v5.receiver, v5.super_class}];
}

@end