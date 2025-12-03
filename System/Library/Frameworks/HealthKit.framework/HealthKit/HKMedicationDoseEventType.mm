@interface HKMedicationDoseEventType
- (BOOL)supportsStatisticOptions:(unint64_t)options;
- (void)validateUnitForStatistic:(id)statistic;
@end

@implementation HKMedicationDoseEventType

- (BOOL)supportsStatisticOptions:(unint64_t)options
{
  if ((options & 0xE) != 0)
  {
    return 0;
  }

  v5 = _HKStatisticsOptionPercentile() & options;
  result = 0;
  if (v5 != _HKStatisticsOptionPercentile())
  {
    if ((options & 0x40) == 0)
    {
      return 1;
    }

    v6 = _HKStatisticOptionsAverageSampleDuration() & options;
    if (v6 != _HKStatisticOptionsAverageSampleDuration())
    {
      return 1;
    }
  }

  return result;
}

- (void)validateUnitForStatistic:(id)statistic
{
  statisticCopy = statistic;
  canonicalUnitForStatistics = [(HKMedicationDoseEventType *)self canonicalUnitForStatistics];
  v5 = [statisticCopy isEqual:canonicalUnitForStatistics];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_opt_class();
    canonicalUnitForStatistics2 = [(HKMedicationDoseEventType *)self canonicalUnitForStatistics];
    [v6 raise:v7 format:{@"%@ %@ requires unit of type %@. Incompatible unit: %@", v8, self, canonicalUnitForStatistics2, statisticCopy}];
  }
}

@end