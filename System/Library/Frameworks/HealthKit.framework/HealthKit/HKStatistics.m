@interface HKStatistics
+ (void)_validateOptions:(unint64_t)a3 forDataType:(id)a4;
- (BOOL)getData:(id *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (HKQuantity)averageQuantityForSource:(HKSource *)source;
- (HKQuantity)durationForSource:(HKSource *)source;
- (HKQuantity)maximumQuantityForSource:(HKSource *)source;
- (HKQuantity)minimumQuantityForSource:(HKSource *)source;
- (HKQuantity)mostRecentQuantityForSource:(HKSource *)source;
- (HKQuantity)sumQuantityForSource:(HKSource *)source;
- (HKQuantityType)quantityType;
- (HKStatistics)init;
- (HKStatistics)initWithCoder:(id)a3;
- (HKStatistics)initWithDataType:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (NSDateInterval)mostRecentQuantityDateIntervalForSource:(HKSource *)source;
- (NSString)description;
- (id)_initAsCopyOf:(id)a3;
- (id)asJSONObject;
- (id)baselineRelativeValueState;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setSources:(id)a3;
- (void)_validateUnit:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)quantityType;
- (void)setAverageQuantity:(id)a3;
- (void)setMaximumQuantity:(id)a3;
- (void)setMinimumQuantity:(id)a3;
- (void)setMostRecentQuantity:(id)a3;
- (void)setSumQuantity:(id)a3;
@end

@implementation HKStatistics

- (HKStatistics)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (void)_validateOptions:(unint64_t)a3 forDataType:(id)a4
{
  isKindOfClass = a4;
  v6 = isKindOfClass;
  if (a3 != 0x10000000)
  {
    v8 = isKindOfClass;
    if ([isKindOfClass conformsToProtocol:&unk_1F06B3968])
    {
      v7 = v8;
      if (([v7 supportsStatisticOptions:a3] & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Statistics option is not compatible with statistic configuration providing data type %@", v7}];
      }

      goto LABEL_12;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      isKindOfClass = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unexpected data type %@ not permitted for non-presence options.", v8}];
      goto LABEL_12;
    }

    v6 = v8;
    if (a3 != 0xFFFFFFFF80000000 && a3 != 64 && a3 != 0x40000000)
    {
      isKindOfClass = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Statistics option is not compatible with non-quantity data type %@", v8}];
LABEL_12:
      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v6);
}

- (HKStatistics)initWithDataType:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKStatistics;
  v12 = [(HKStatistics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataType, a3);
    objc_storeStrong(&v13->_startDate, a4);
    objc_storeStrong(&v13->_endDate, a5);
  }

  return v13;
}

- (HKQuantity)averageQuantityForSource:(HKSource *)source
{
  averageQuantityBySource = self->_averageQuantityBySource;
  v4 = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)averageQuantityBySource objectForKeyedSubscript:v4];

  return v5;
}

- (HKQuantity)minimumQuantityForSource:(HKSource *)source
{
  minimumQuantityBySource = self->_minimumQuantityBySource;
  v4 = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)minimumQuantityBySource objectForKeyedSubscript:v4];

  return v5;
}

- (HKQuantity)maximumQuantityForSource:(HKSource *)source
{
  maximumQuantityBySource = self->_maximumQuantityBySource;
  v4 = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)maximumQuantityBySource objectForKeyedSubscript:v4];

  return v5;
}

- (HKQuantity)mostRecentQuantityForSource:(HKSource *)source
{
  mostRecentQuantityBySource = self->_mostRecentQuantityBySource;
  v4 = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)mostRecentQuantityBySource objectForKeyedSubscript:v4];

  return v5;
}

- (NSDateInterval)mostRecentQuantityDateIntervalForSource:(HKSource *)source
{
  mostRecentQuantityDateIntervalBySource = self->_mostRecentQuantityDateIntervalBySource;
  v4 = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)mostRecentQuantityDateIntervalBySource objectForKeyedSubscript:v4];

  return v5;
}

- (HKQuantity)sumQuantityForSource:(HKSource *)source
{
  sumQuantityBySource = self->_sumQuantityBySource;
  v4 = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)sumQuantityBySource objectForKeyedSubscript:v4];

  return v5;
}

- (HKQuantity)durationForSource:(HKSource *)source
{
  durationBySource = self->_durationBySource;
  v4 = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)durationBySource objectForKeyedSubscript:v4];

  return v5;
}

- (id)baselineRelativeValueState
{
  if (!self->_minimumQuantity && !self->_maximumQuantity)
  {
    return 0;
  }

  dataType = self->_dataType;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_dataType;
  if ([(HKObjectType *)v4 _supportsRelativeDataCalculation])
  {
    minimumQuantity = self->_minimumQuantity;
    if (!minimumQuantity)
    {
      minimumQuantity = self->_maximumQuantity;
    }

    v6 = minimumQuantity;
    v7 = [(HKObjectType *)v4 _unitForChangeInCanonicalUnit];
    [(HKQuantity *)v6 doubleValueForUnit:v7];
    v9 = v8;

    v10 = &unk_1F0684638;
    if (v9 == 1.79769313e308)
    {
      v10 = &unk_1F0684620;
    }

    if (v9 == -1.79769313e308)
    {
      v11 = &unk_1F0684608;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setAverageQuantity:(id)a3
{
  v9 = a3;
  dataType = self->_dataType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(HKStatistics *)self quantityType];
    v7 = [v6 aggregationStyle];

    if ((v7 - 1) <= 2)
    {
      if (v9)
      {
        v8 = [v9 _unit];
        [(HKStatistics *)self _validateUnit:v8];
      }

      objc_storeStrong(&self->_averageQuantity, a3);
    }
  }
}

- (void)setMinimumQuantity:(id)a3
{
  v9 = a3;
  dataType = self->_dataType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(HKStatistics *)self quantityType];
    v7 = [v6 aggregationStyle];

    if ((v7 - 1) <= 2)
    {
      if (v9)
      {
        v8 = [v9 _unit];
        [(HKStatistics *)self _validateUnit:v8];
      }

      objc_storeStrong(&self->_minimumQuantity, a3);
    }
  }
}

- (void)setMaximumQuantity:(id)a3
{
  v9 = a3;
  dataType = self->_dataType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(HKStatistics *)self quantityType];
    v7 = [v6 aggregationStyle];

    if ((v7 - 1) <= 2)
    {
      if (v9)
      {
        v8 = [v9 _unit];
        [(HKStatistics *)self _validateUnit:v8];
      }

      objc_storeStrong(&self->_maximumQuantity, a3);
    }
  }
}

- (void)setMostRecentQuantity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(HKQuantity *)v4 _unit];
    [(HKStatistics *)self _validateUnit:v6];
  }

  mostRecentQuantity = self->_mostRecentQuantity;
  self->_mostRecentQuantity = v5;
}

- (void)setSumQuantity:(id)a3
{
  v8 = a3;
  if ([(HKObjectType *)self->_dataType conformsToProtocol:&unk_1F06B3968])
  {
    v5 = self->_dataType;
    v6 = v5;
    if (v5 && ![(HKObjectType *)v5 aggregationStyleForStatistics])
    {
      if (v8)
      {
        v7 = [v8 _unit];
        [(HKStatistics *)self _validateUnit:v7];
      }

      objc_storeStrong(&self->_sumQuantity, a3);
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)_validateUnit:(id)a3
{
  v4 = a3;
  if ([(HKObjectType *)self->_dataType conformsToProtocol:&unk_1F06B3968])
  {
    [(HKObjectType *)self->_dataType validateUnitForStatistic:v4];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ %@ is not able to determine compatibility of unit %@", objc_opt_class(), self->_dataType, v4}];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 _initAsCopyOf:self];
}

- (id)_initAsCopyOf:(id)a3
{
  v4 = a3;
  v5 = v4[1];
  v6 = [v4 startDate];
  v7 = [v4 endDate];
  v8 = [(HKStatistics *)self initWithDataType:v5 startDate:v6 endDate:v7];

  if (v8)
  {
    -[HKStatistics setDataCount:](v8, "setDataCount:", [v4 dataCount]);
    v8->_dataCount = [v4 dataCount];
    v9 = [v4 averageQuantity];
    averageQuantity = v8->_averageQuantity;
    v8->_averageQuantity = v9;

    v11 = [v4 minimumQuantity];
    minimumQuantity = v8->_minimumQuantity;
    v8->_minimumQuantity = v11;

    v13 = [v4 maximumQuantity];
    maximumQuantity = v8->_maximumQuantity;
    v8->_maximumQuantity = v13;

    v15 = [v4 mostRecentQuantity];
    mostRecentQuantity = v8->_mostRecentQuantity;
    v8->_mostRecentQuantity = v15;

    v17 = [v4 mostRecentQuantityDateInterval];
    mostRecentQuantityDateInterval = v8->_mostRecentQuantityDateInterval;
    v8->_mostRecentQuantityDateInterval = v17;

    v19 = [v4 sumQuantity];
    sumQuantity = v8->_sumQuantity;
    v8->_sumQuantity = v19;

    v21 = [v4 duration];
    duration = v8->_duration;
    v8->_duration = v21;

    v23 = [v4 averageQuantityBySource];
    averageQuantityBySource = v8->_averageQuantityBySource;
    v8->_averageQuantityBySource = v23;

    v25 = [v4 minimumQuantityBySource];
    minimumQuantityBySource = v8->_minimumQuantityBySource;
    v8->_minimumQuantityBySource = v25;

    v27 = [v4 maximumQuantityBySource];
    maximumQuantityBySource = v8->_maximumQuantityBySource;
    v8->_maximumQuantityBySource = v27;

    v29 = [v4 mostRecentQuantityBySource];
    mostRecentQuantityBySource = v8->_mostRecentQuantityBySource;
    v8->_mostRecentQuantityBySource = v29;

    v31 = [v4 mostRecentQuantityDateIntervalBySource];
    mostRecentQuantityDateIntervalBySource = v8->_mostRecentQuantityDateIntervalBySource;
    v8->_mostRecentQuantityDateIntervalBySource = v31;

    v33 = [v4 sumQuantityBySource];
    sumQuantityBySource = v8->_sumQuantityBySource;
    v8->_sumQuantityBySource = v33;

    v35 = [v4 dataCountBySource];
    dataCountBySource = v8->_dataCountBySource;
    v8->_dataCountBySource = v35;

    v37 = [v4 durationBySource];
    durationBySource = v8->_durationBySource;
    v8->_durationBySource = v37;

    v39 = [v4 sources];
    v40 = [v39 copy];
    sources = v8->_sources;
    v8->_sources = v40;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  dataType = self->_dataType;
  v5 = a3;
  [v5 encodeObject:dataType forKey:@"dataType"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeInteger:self->_dataCount forKey:@"dataCount"];
  [v5 encodeObject:self->_sources forKey:@"sources"];
  [v5 encodeObject:self->_averageQuantity forKey:@"average"];
  [v5 encodeObject:self->_minimumQuantity forKey:@"min"];
  [v5 encodeObject:self->_maximumQuantity forKey:@"max"];
  [v5 encodeObject:self->_mostRecentQuantity forKey:@"mostRecent"];
  [v5 encodeObject:self->_mostRecentQuantityDateInterval forKey:@"mostRecentDateInterval"];
  [v5 encodeObject:self->_sumQuantity forKey:@"sum"];
  [v5 encodeObject:self->_duration forKey:@"duration"];
  [v5 encodeObject:self->_averageQuantityBySource forKey:@"averageBySource"];
  [v5 encodeObject:self->_minimumQuantityBySource forKey:@"minBySource"];
  [v5 encodeObject:self->_maximumQuantityBySource forKey:@"maxBySource"];
  [v5 encodeObject:self->_mostRecentQuantityBySource forKey:@"mostRecentBySource"];
  [v5 encodeObject:self->_mostRecentQuantityDateIntervalBySource forKey:@"mostRecentDateIntervalBySource"];
  [v5 encodeObject:self->_sumQuantityBySource forKey:@"sumBySource"];
  [v5 encodeObject:self->_dataCountBySource forKey:@"countBySource"];
  [v5 encodeObject:self->_durationBySource forKey:@"durationBySource"];
  [v5 encodeObject:self->_categoryValue forKey:@"categoryValueKey"];
  [v5 encodeObject:self->_categoryValueBySource forKey:@"categoryValueBySourceKey"];
}

- (HKStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v8 = [(HKStatistics *)self initWithDataType:v5 startDate:v6 endDate:v7];
  if (v8)
  {
    v8->_dataCount = [v4 decodeIntegerForKey:@"dataCount"];
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v36 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v36 forKey:@"sources"];
    sources = v8->_sources;
    v8->_sources = v11;

    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v4 decodeObjectOfClass:v14 forKey:@"average"];
    [(HKStatistics *)v8 setAverageQuantity:v17];

    v18 = [v4 decodeObjectOfClass:v14 forKey:@"min"];
    [(HKStatistics *)v8 setMinimumQuantity:v18];

    v19 = [v4 decodeObjectOfClass:v14 forKey:@"max"];
    [(HKStatistics *)v8 setMaximumQuantity:v19];

    v20 = [v4 decodeObjectOfClass:v14 forKey:@"mostRecent"];
    [(HKStatistics *)v8 setMostRecentQuantity:v20];

    v21 = [v4 decodeObjectOfClass:v13 forKey:@"mostRecentDateInterval"];
    [(HKStatistics *)v8 setMostRecentQuantityDateInterval:v21];

    v22 = [v4 decodeObjectOfClass:v14 forKey:@"sum"];
    [(HKStatistics *)v8 setSumQuantity:v22];

    v23 = [v4 decodeObjectOfClass:v14 forKey:@"duration"];
    [(HKStatistics *)v8 setDuration:v23];

    v24 = [v4 decodeObjectOfClass:v16 forKey:@"categoryValueKey"];
    [(HKStatistics *)v8 setCategoryValue:v24];

    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), v15, v16, v13, v14, 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"averageBySource"];
    [(HKStatistics *)v8 setAverageQuantityBySource:v26];

    v27 = [v4 decodeObjectOfClasses:v25 forKey:@"minBySource"];
    [(HKStatistics *)v8 setMinimumQuantityBySource:v27];

    v28 = [v4 decodeObjectOfClasses:v25 forKey:@"maxBySource"];
    [(HKStatistics *)v8 setMaximumQuantityBySource:v28];

    v29 = [v4 decodeObjectOfClasses:v25 forKey:@"mostRecentBySource"];
    [(HKStatistics *)v8 setMostRecentQuantityBySource:v29];

    v30 = [v4 decodeObjectOfClasses:v25 forKey:@"mostRecentDateIntervalBySource"];
    [(HKStatistics *)v8 setMostRecentQuantityDateIntervalBySource:v30];

    v31 = [v4 decodeObjectOfClasses:v25 forKey:@"sumBySource"];
    [(HKStatistics *)v8 setSumQuantityBySource:v31];

    v32 = [v4 decodeObjectOfClasses:v25 forKey:@"countBySource"];
    [(HKStatistics *)v8 setDataCountBySource:v32];

    v33 = [v4 decodeObjectOfClasses:v25 forKey:@"durationBySource"];
    [(HKStatistics *)v8 setDurationBySource:v33];

    v34 = [v4 decodeObjectOfClasses:v25 forKey:@"categoryValueBySourceKey"];
    [(HKStatistics *)v8 setCategoryValueBySource:v34];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(HKObjectType *)self->_dataType hash];
  v4 = [(NSDate *)self->_startDate hash]^ v3;
  return v4 ^ [(NSDate *)self->_endDate hash]^ (2654435761u * self->_dataCount);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  if (![(HKObjectType *)self->_dataType isEqual:v4[1]])
  {
    goto LABEL_60;
  }

  if (![(NSDate *)self->_startDate isEqual:v4[2]])
  {
    goto LABEL_60;
  }

  if (![(NSDate *)self->_endDate isEqual:v4[3]])
  {
    goto LABEL_60;
  }

  if (self->_dataCount != v4[7])
  {
    goto LABEL_60;
  }

  averageQuantity = self->_averageQuantity;
  v6 = v4[8];
  if (averageQuantity != v6 && (!v6 || ![(HKQuantity *)averageQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  minimumQuantity = self->_minimumQuantity;
  v8 = v4[9];
  if (minimumQuantity != v8 && (!v8 || ![(HKQuantity *)minimumQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  maximumQuantity = self->_maximumQuantity;
  v10 = v4[10];
  if (maximumQuantity != v10 && (!v10 || ![(HKQuantity *)maximumQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  mostRecentQuantity = self->_mostRecentQuantity;
  v12 = v4[11];
  if (mostRecentQuantity != v12 && (!v12 || ![(HKQuantity *)mostRecentQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  mostRecentQuantityDateInterval = self->_mostRecentQuantityDateInterval;
  v14 = v4[12];
  if (mostRecentQuantityDateInterval != v14 && (!v14 || ![(NSDateInterval *)mostRecentQuantityDateInterval isEqual:?]))
  {
    goto LABEL_60;
  }

  sumQuantity = self->_sumQuantity;
  v16 = v4[23];
  if (sumQuantity != v16 && (!v16 || ![(HKQuantity *)sumQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  duration = self->_duration;
  v18 = v4[13];
  if (duration != v18 && (!v18 || ![(HKQuantity *)duration isEqual:?]))
  {
    goto LABEL_60;
  }

  sources = self->_sources;
  v20 = v4[4];
  if (sources != v20 && (!v20 || ![(NSArray *)sources isEqual:?]))
  {
    goto LABEL_60;
  }

  dataCountBySource = self->_dataCountBySource;
  v22 = v4[20];
  if (dataCountBySource != v22 && (!v22 || ![(NSDictionary *)dataCountBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  averageQuantityBySource = self->_averageQuantityBySource;
  v24 = v4[15];
  if (averageQuantityBySource != v24 && (!v24 || ![(NSDictionary *)averageQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  minimumQuantityBySource = self->_minimumQuantityBySource;
  v26 = v4[16];
  if (minimumQuantityBySource != v26 && (!v26 || ![(NSDictionary *)minimumQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  maximumQuantityBySource = self->_maximumQuantityBySource;
  v28 = v4[17];
  if (maximumQuantityBySource != v28 && (!v28 || ![(NSDictionary *)maximumQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  mostRecentQuantityBySource = self->_mostRecentQuantityBySource;
  v30 = v4[18];
  if (mostRecentQuantityBySource != v30 && (!v30 || ![(NSDictionary *)mostRecentQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  mostRecentQuantityDateIntervalBySource = self->_mostRecentQuantityDateIntervalBySource;
  v32 = v4[19];
  if (mostRecentQuantityDateIntervalBySource != v32 && (!v32 || ![(NSDictionary *)mostRecentQuantityDateIntervalBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  sumQuantityBySource = self->_sumQuantityBySource;
  v34 = v4[24];
  if (sumQuantityBySource != v34 && (!v34 || ![(NSDictionary *)sumQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  durationBySource = self->_durationBySource;
  v36 = v4[21];
  if (durationBySource != v36 && (!v36 || ![(NSDictionary *)durationBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  categoryValue = self->_categoryValue;
  v38 = v4[5];
  if (categoryValue != v38 && (!v38 || ![(NSNumber *)categoryValue isEqual:?]))
  {
    goto LABEL_60;
  }

  categoryValueBySource = self->_categoryValueBySource;
  v40 = v4[6];
  if (categoryValueBySource == v40)
  {
    v41 = 1;
    goto LABEL_61;
  }

  if (v40)
  {
    v41 = [(NSDictionary *)categoryValueBySource isEqual:?];
  }

  else
  {
LABEL_60:
    v41 = 0;
  }

LABEL_61:

  return v41;
}

- (HKQuantityType)quantityType
{
  dataType = self->_dataType;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(HKStatistics *)a2 quantityType];
  }

  v5 = self->_dataType;

  return v5;
}

- (void)_setSources:(id)a3
{
  v4 = [a3 copy];
  sources = self->_sources;
  self->_sources = v4;

  MEMORY[0x1EEE66BB8](v4, sources);
}

- (BOOL)getData:(id *)a3 error:(id *)a4
{
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    *a3 = v8;
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogInfrastructure();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HKStatistics *)self getData:a4 error:v10];
    }
  }

  return v8 != 0;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = HKStatistics;
  v4 = [(HKStatistics *)&v10 description];
  v9 = *&self->_dataType;
  endDate = self->_endDate;
  v6 = [(NSArray *)self->_sources componentsJoinedByString:@", "];
  v7 = [v3 initWithFormat:@"<%@ Statistics on %@ (%@ - %@) over sources (%@)>", v4, v9, endDate, v6];

  return v7;
}

- (id)asJSONObject
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(HKStatistics *)self averageQuantity];
  v5 = [(HKStatistics *)self quantityType];
  v6 = [v5 canonicalUnit];
  v7 = [v4 asJSONObjectForUnit:v6];
  [v3 setObject:v7 forKeyedSubscript:@"averageQuantity"];

  v8 = [(HKStatistics *)self minimumQuantity];
  v9 = [(HKStatistics *)self quantityType];
  v10 = [v9 canonicalUnit];
  v11 = [v8 asJSONObjectForUnit:v10];
  [v3 setObject:v11 forKeyedSubscript:@"minimumQuantity"];

  v12 = [(HKStatistics *)self maximumQuantity];
  v13 = [(HKStatistics *)self quantityType];
  v14 = [v13 canonicalUnit];
  v15 = [v12 asJSONObjectForUnit:v14];
  [v3 setObject:v15 forKeyedSubscript:@"maximumQuantity"];

  v16 = [(HKStatistics *)self mostRecentQuantity];
  v17 = [(HKStatistics *)self quantityType];
  v18 = [v17 canonicalUnit];
  v19 = [v16 asJSONObjectForUnit:v18];
  [v3 setObject:v19 forKeyedSubscript:@"mostRecentQuantity"];

  return v3;
}

- (void)quantityType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKStatistics.m" lineNumber:441 description:@"Data type is not a quantity"];
}

- (void)getData:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Error getting archived data from statistics %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end