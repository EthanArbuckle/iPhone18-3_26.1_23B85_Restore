@interface HKMedicationDoseEventType
- (BOOL)supportsStatisticOptions:(unint64_t)a3;
- (void)validateUnitForStatistic:(id)a3;
@end

@implementation HKMedicationDoseEventType

- (BOOL)supportsStatisticOptions:(unint64_t)a3
{
  if ((a3 & 0xE) != 0)
  {
    return 0;
  }

  v5 = _HKStatisticsOptionPercentile() & a3;
  result = 0;
  if (v5 != _HKStatisticsOptionPercentile())
  {
    if ((a3 & 0x40) == 0)
    {
      return 1;
    }

    v6 = _HKStatisticOptionsAverageSampleDuration() & a3;
    if (v6 != _HKStatisticOptionsAverageSampleDuration())
    {
      return 1;
    }
  }

  return result;
}

- (void)validateUnitForStatistic:(id)a3
{
  v10 = a3;
  v4 = [(HKMedicationDoseEventType *)self canonicalUnitForStatistics];
  v5 = [v10 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_opt_class();
    v9 = [(HKMedicationDoseEventType *)self canonicalUnitForStatistics];
    [v6 raise:v7 format:{@"%@ %@ requires unit of type %@. Incompatible unit: %@", v8, self, v9, v10}];
  }
}

@end