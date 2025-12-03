@interface HKRecalibrateEstimatesRequestRecord
- (BOOL)isEqual:(id)equal;
- (HKRecalibrateEstimatesRequestRecord)initWithCoder:(id)coder;
- (HKRecalibrateEstimatesRequestRecord)initWithSessionIdentifier:(id)identifier source:(id)source sampleType:(id)type effectiveDate:(id)date;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKRecalibrateEstimatesRequestRecord

- (HKRecalibrateEstimatesRequestRecord)initWithSessionIdentifier:(id)identifier source:(id)source sampleType:(id)type effectiveDate:(id)date
{
  identifierCopy = identifier;
  sourceCopy = source;
  typeCopy = type;
  dateCopy = date;
  v24.receiver = self;
  v24.super_class = HKRecalibrateEstimatesRequestRecord;
  v14 = [(HKRecalibrateEstimatesRequestRecord *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    sessionIdentifier = v14->_sessionIdentifier;
    v14->_sessionIdentifier = v15;

    v17 = [sourceCopy copy];
    source = v14->_source;
    v14->_source = v17;

    v19 = [typeCopy copy];
    sampleType = v14->_sampleType;
    v14->_sampleType = v19;

    v21 = [dateCopy copy];
    effectiveDate = v14->_effectiveDate;
    v14->_effectiveDate = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (HKRecalibrateEstimatesRequestRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKRecalibrateEstimatesRequestRecord;
  v5 = [(HKRecalibrateEstimatesRequestRecord *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session_id"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sample_type"];
    sampleType = v5->_sampleType;
    v5->_sampleType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eff_date"];
    effectiveDate = v5->_effectiveDate;
    v5->_effectiveDate = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"session_id"];
  [coderCopy encodeObject:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_sampleType forKey:@"sample_type"];
  [coderCopy encodeObject:self->_effectiveDate forKey:@"eff_date"];
}

@end