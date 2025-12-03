@interface HKElectrocardiogramVoltageMeasurement
- (BOOL)isEqual:(id)equal;
- (HKElectrocardiogramVoltageMeasurement)initWithLeadIVoltage:(id)voltage timeSinceSampleStart:(double)start;
- (HKQuantity)quantityForLead:(HKElectrocardiogramLead)lead;
@end

@implementation HKElectrocardiogramVoltageMeasurement

- (HKElectrocardiogramVoltageMeasurement)initWithLeadIVoltage:(id)voltage timeSinceSampleStart:(double)start
{
  voltageCopy = voltage;
  v11.receiver = self;
  v11.super_class = HKElectrocardiogramVoltageMeasurement;
  v7 = [(HKElectrocardiogramVoltageMeasurement *)&v11 init];
  if (v7)
  {
    v8 = [voltageCopy copy];
    leadIVoltage = v7->_leadIVoltage;
    v7->_leadIVoltage = v8;

    v7->_timeSinceSampleStart = start;
  }

  return v7;
}

- (HKQuantity)quantityForLead:(HKElectrocardiogramLead)lead
{
  if (lead == HKElectrocardiogramLeadAppleWatchSimilarToLeadI)
  {
    v4 = self->_leadIVoltage;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_timeSinceSampleStart != equalCopy->_timeSinceSampleStart)
  {
    goto LABEL_7;
  }

  leadIVoltage = self->_leadIVoltage;
  v6 = equalCopy->_leadIVoltage;
  if (leadIVoltage == v6)
  {
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = [(HKQuantity *)leadIVoltage isEqual:?];
LABEL_9:

  return v7;
}

@end