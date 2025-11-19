@interface HKElectrocardiogramVoltageMeasurement
- (BOOL)isEqual:(id)a3;
- (HKElectrocardiogramVoltageMeasurement)initWithLeadIVoltage:(id)a3 timeSinceSampleStart:(double)a4;
- (HKQuantity)quantityForLead:(HKElectrocardiogramLead)lead;
@end

@implementation HKElectrocardiogramVoltageMeasurement

- (HKElectrocardiogramVoltageMeasurement)initWithLeadIVoltage:(id)a3 timeSinceSampleStart:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HKElectrocardiogramVoltageMeasurement;
  v7 = [(HKElectrocardiogramVoltageMeasurement *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    leadIVoltage = v7->_leadIVoltage;
    v7->_leadIVoltage = v8;

    v7->_timeSinceSampleStart = a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_timeSinceSampleStart != v4->_timeSinceSampleStart)
  {
    goto LABEL_7;
  }

  leadIVoltage = self->_leadIVoltage;
  v6 = v4->_leadIVoltage;
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