@interface HKRecalibrateEstimatesRequestRecord
- (BOOL)isEqual:(id)a3;
- (HKRecalibrateEstimatesRequestRecord)initWithCoder:(id)a3;
- (HKRecalibrateEstimatesRequestRecord)initWithSessionIdentifier:(id)a3 source:(id)a4 sampleType:(id)a5 effectiveDate:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKRecalibrateEstimatesRequestRecord

- (HKRecalibrateEstimatesRequestRecord)initWithSessionIdentifier:(id)a3 source:(id)a4 sampleType:(id)a5 effectiveDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKRecalibrateEstimatesRequestRecord;
  v14 = [(HKRecalibrateEstimatesRequestRecord *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    sessionIdentifier = v14->_sessionIdentifier;
    v14->_sessionIdentifier = v15;

    v17 = [v11 copy];
    source = v14->_source;
    v14->_source = v17;

    v19 = [v12 copy];
    sampleType = v14->_sampleType;
    v14->_sampleType = v19;

    v21 = [v13 copy];
    effectiveDate = v14->_effectiveDate;
    v14->_effectiveDate = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (![(NSUUID *)self->_sessionIdentifier isEqual:v5[1]]|| ![(HKSource *)self->_source isEqual:v5[2]]|| ![(HKObjectType *)self->_sampleType isEqual:v5[3]])
    {
      goto LABEL_9;
    }

    effectiveDate = self->_effectiveDate;
    v7 = v5[4];
    if (effectiveDate == v7)
    {
      v8 = 1;
      goto LABEL_10;
    }

    if (v7)
    {
      v8 = [(NSDate *)effectiveDate isEqualToDate:?];
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sessionIdentifier hash];
  v4 = [(HKSource *)self->_source hash]^ v3;
  v5 = [(HKObjectType *)self->_sampleType hash];
  return v4 ^ v5 ^ [(NSDate *)self->_effectiveDate hash];
}

- (HKRecalibrateEstimatesRequestRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKRecalibrateEstimatesRequestRecord;
  v5 = [(HKRecalibrateEstimatesRequestRecord *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session_id"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sample_type"];
    sampleType = v5->_sampleType;
    v5->_sampleType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eff_date"];
    effectiveDate = v5->_effectiveDate;
    v5->_effectiveDate = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"session_id"];
  [v5 encodeObject:self->_source forKey:@"source"];
  [v5 encodeObject:self->_sampleType forKey:@"sample_type"];
  [v5 encodeObject:self->_effectiveDate forKey:@"eff_date"];
}

@end