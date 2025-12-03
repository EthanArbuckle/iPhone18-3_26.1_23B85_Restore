@interface HKStatistics
+ (void)_validateOptions:(unint64_t)options forDataType:(id)type;
- (BOOL)getData:(id *)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKQuantity)averageQuantityForSource:(HKSource *)source;
- (HKQuantity)durationForSource:(HKSource *)source;
- (HKQuantity)maximumQuantityForSource:(HKSource *)source;
- (HKQuantity)minimumQuantityForSource:(HKSource *)source;
- (HKQuantity)mostRecentQuantityForSource:(HKSource *)source;
- (HKQuantity)sumQuantityForSource:(HKSource *)source;
- (HKQuantityType)quantityType;
- (HKStatistics)init;
- (HKStatistics)initWithCoder:(id)coder;
- (HKStatistics)initWithDataType:(id)type startDate:(id)date endDate:(id)endDate;
- (NSDateInterval)mostRecentQuantityDateIntervalForSource:(HKSource *)source;
- (NSString)description;
- (id)_initAsCopyOf:(id)of;
- (id)asJSONObject;
- (id)baselineRelativeValueState;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_setSources:(id)sources;
- (void)_validateUnit:(id)unit;
- (void)encodeWithCoder:(id)coder;
- (void)quantityType;
- (void)setAverageQuantity:(id)quantity;
- (void)setMaximumQuantity:(id)quantity;
- (void)setMinimumQuantity:(id)quantity;
- (void)setMostRecentQuantity:(id)quantity;
- (void)setSumQuantity:(id)quantity;
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

+ (void)_validateOptions:(unint64_t)options forDataType:(id)type
{
  isKindOfClass = type;
  v6 = isKindOfClass;
  if (options != 0x10000000)
  {
    v8 = isKindOfClass;
    if ([isKindOfClass conformsToProtocol:&unk_1F06B3968])
    {
      v7 = v8;
      if (([v7 supportsStatisticOptions:options] & 1) == 0)
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
    if (options != 0xFFFFFFFF80000000 && options != 64 && options != 0x40000000)
    {
      isKindOfClass = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Statistics option is not compatible with non-quantity data type %@", v8}];
LABEL_12:
      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v6);
}

- (HKStatistics)initWithDataType:(id)type startDate:(id)date endDate:(id)endDate
{
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  v15.receiver = self;
  v15.super_class = HKStatistics;
  v12 = [(HKStatistics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataType, type);
    objc_storeStrong(&v13->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
  }

  return v13;
}

- (HKQuantity)averageQuantityForSource:(HKSource *)source
{
  averageQuantityBySource = self->_averageQuantityBySource;
  bundleIdentifier = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)averageQuantityBySource objectForKeyedSubscript:bundleIdentifier];

  return v5;
}

- (HKQuantity)minimumQuantityForSource:(HKSource *)source
{
  minimumQuantityBySource = self->_minimumQuantityBySource;
  bundleIdentifier = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)minimumQuantityBySource objectForKeyedSubscript:bundleIdentifier];

  return v5;
}

- (HKQuantity)maximumQuantityForSource:(HKSource *)source
{
  maximumQuantityBySource = self->_maximumQuantityBySource;
  bundleIdentifier = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)maximumQuantityBySource objectForKeyedSubscript:bundleIdentifier];

  return v5;
}

- (HKQuantity)mostRecentQuantityForSource:(HKSource *)source
{
  mostRecentQuantityBySource = self->_mostRecentQuantityBySource;
  bundleIdentifier = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)mostRecentQuantityBySource objectForKeyedSubscript:bundleIdentifier];

  return v5;
}

- (NSDateInterval)mostRecentQuantityDateIntervalForSource:(HKSource *)source
{
  mostRecentQuantityDateIntervalBySource = self->_mostRecentQuantityDateIntervalBySource;
  bundleIdentifier = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)mostRecentQuantityDateIntervalBySource objectForKeyedSubscript:bundleIdentifier];

  return v5;
}

- (HKQuantity)sumQuantityForSource:(HKSource *)source
{
  sumQuantityBySource = self->_sumQuantityBySource;
  bundleIdentifier = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)sumQuantityBySource objectForKeyedSubscript:bundleIdentifier];

  return v5;
}

- (HKQuantity)durationForSource:(HKSource *)source
{
  durationBySource = self->_durationBySource;
  bundleIdentifier = [(HKSource *)source bundleIdentifier];
  v5 = [(NSDictionary *)durationBySource objectForKeyedSubscript:bundleIdentifier];

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
    _unitForChangeInCanonicalUnit = [(HKObjectType *)v4 _unitForChangeInCanonicalUnit];
    [(HKQuantity *)v6 doubleValueForUnit:_unitForChangeInCanonicalUnit];
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

- (void)setAverageQuantity:(id)quantity
{
  quantityCopy = quantity;
  dataType = self->_dataType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    quantityType = [(HKStatistics *)self quantityType];
    aggregationStyle = [quantityType aggregationStyle];

    if ((aggregationStyle - 1) <= 2)
    {
      if (quantityCopy)
      {
        _unit = [quantityCopy _unit];
        [(HKStatistics *)self _validateUnit:_unit];
      }

      objc_storeStrong(&self->_averageQuantity, quantity);
    }
  }
}

- (void)setMinimumQuantity:(id)quantity
{
  quantityCopy = quantity;
  dataType = self->_dataType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    quantityType = [(HKStatistics *)self quantityType];
    aggregationStyle = [quantityType aggregationStyle];

    if ((aggregationStyle - 1) <= 2)
    {
      if (quantityCopy)
      {
        _unit = [quantityCopy _unit];
        [(HKStatistics *)self _validateUnit:_unit];
      }

      objc_storeStrong(&self->_minimumQuantity, quantity);
    }
  }
}

- (void)setMaximumQuantity:(id)quantity
{
  quantityCopy = quantity;
  dataType = self->_dataType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    quantityType = [(HKStatistics *)self quantityType];
    aggregationStyle = [quantityType aggregationStyle];

    if ((aggregationStyle - 1) <= 2)
    {
      if (quantityCopy)
      {
        _unit = [quantityCopy _unit];
        [(HKStatistics *)self _validateUnit:_unit];
      }

      objc_storeStrong(&self->_maximumQuantity, quantity);
    }
  }
}

- (void)setMostRecentQuantity:(id)quantity
{
  quantityCopy = quantity;
  v5 = quantityCopy;
  if (quantityCopy)
  {
    _unit = [(HKQuantity *)quantityCopy _unit];
    [(HKStatistics *)self _validateUnit:_unit];
  }

  mostRecentQuantity = self->_mostRecentQuantity;
  self->_mostRecentQuantity = v5;
}

- (void)setSumQuantity:(id)quantity
{
  quantityCopy = quantity;
  if ([(HKObjectType *)self->_dataType conformsToProtocol:&unk_1F06B3968])
  {
    v5 = self->_dataType;
    v6 = v5;
    if (v5 && ![(HKObjectType *)v5 aggregationStyleForStatistics])
    {
      if (quantityCopy)
      {
        _unit = [quantityCopy _unit];
        [(HKStatistics *)self _validateUnit:_unit];
      }

      objc_storeStrong(&self->_sumQuantity, quantity);
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)_validateUnit:(id)unit
{
  unitCopy = unit;
  if ([(HKObjectType *)self->_dataType conformsToProtocol:&unk_1F06B3968])
  {
    [(HKObjectType *)self->_dataType validateUnitForStatistic:unitCopy];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ %@ is not able to determine compatibility of unit %@", objc_opt_class(), self->_dataType, unitCopy}];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 _initAsCopyOf:self];
}

- (id)_initAsCopyOf:(id)of
{
  ofCopy = of;
  v5 = ofCopy[1];
  startDate = [ofCopy startDate];
  endDate = [ofCopy endDate];
  v8 = [(HKStatistics *)self initWithDataType:v5 startDate:startDate endDate:endDate];

  if (v8)
  {
    -[HKStatistics setDataCount:](v8, "setDataCount:", [ofCopy dataCount]);
    v8->_dataCount = [ofCopy dataCount];
    averageQuantity = [ofCopy averageQuantity];
    averageQuantity = v8->_averageQuantity;
    v8->_averageQuantity = averageQuantity;

    minimumQuantity = [ofCopy minimumQuantity];
    minimumQuantity = v8->_minimumQuantity;
    v8->_minimumQuantity = minimumQuantity;

    maximumQuantity = [ofCopy maximumQuantity];
    maximumQuantity = v8->_maximumQuantity;
    v8->_maximumQuantity = maximumQuantity;

    mostRecentQuantity = [ofCopy mostRecentQuantity];
    mostRecentQuantity = v8->_mostRecentQuantity;
    v8->_mostRecentQuantity = mostRecentQuantity;

    mostRecentQuantityDateInterval = [ofCopy mostRecentQuantityDateInterval];
    mostRecentQuantityDateInterval = v8->_mostRecentQuantityDateInterval;
    v8->_mostRecentQuantityDateInterval = mostRecentQuantityDateInterval;

    sumQuantity = [ofCopy sumQuantity];
    sumQuantity = v8->_sumQuantity;
    v8->_sumQuantity = sumQuantity;

    duration = [ofCopy duration];
    duration = v8->_duration;
    v8->_duration = duration;

    averageQuantityBySource = [ofCopy averageQuantityBySource];
    averageQuantityBySource = v8->_averageQuantityBySource;
    v8->_averageQuantityBySource = averageQuantityBySource;

    minimumQuantityBySource = [ofCopy minimumQuantityBySource];
    minimumQuantityBySource = v8->_minimumQuantityBySource;
    v8->_minimumQuantityBySource = minimumQuantityBySource;

    maximumQuantityBySource = [ofCopy maximumQuantityBySource];
    maximumQuantityBySource = v8->_maximumQuantityBySource;
    v8->_maximumQuantityBySource = maximumQuantityBySource;

    mostRecentQuantityBySource = [ofCopy mostRecentQuantityBySource];
    mostRecentQuantityBySource = v8->_mostRecentQuantityBySource;
    v8->_mostRecentQuantityBySource = mostRecentQuantityBySource;

    mostRecentQuantityDateIntervalBySource = [ofCopy mostRecentQuantityDateIntervalBySource];
    mostRecentQuantityDateIntervalBySource = v8->_mostRecentQuantityDateIntervalBySource;
    v8->_mostRecentQuantityDateIntervalBySource = mostRecentQuantityDateIntervalBySource;

    sumQuantityBySource = [ofCopy sumQuantityBySource];
    sumQuantityBySource = v8->_sumQuantityBySource;
    v8->_sumQuantityBySource = sumQuantityBySource;

    dataCountBySource = [ofCopy dataCountBySource];
    dataCountBySource = v8->_dataCountBySource;
    v8->_dataCountBySource = dataCountBySource;

    durationBySource = [ofCopy durationBySource];
    durationBySource = v8->_durationBySource;
    v8->_durationBySource = durationBySource;

    sources = [ofCopy sources];
    v40 = [sources copy];
    sources = v8->_sources;
    v8->_sources = v40;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  dataType = self->_dataType;
  coderCopy = coder;
  [coderCopy encodeObject:dataType forKey:@"dataType"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_dataCount forKey:@"dataCount"];
  [coderCopy encodeObject:self->_sources forKey:@"sources"];
  [coderCopy encodeObject:self->_averageQuantity forKey:@"average"];
  [coderCopy encodeObject:self->_minimumQuantity forKey:@"min"];
  [coderCopy encodeObject:self->_maximumQuantity forKey:@"max"];
  [coderCopy encodeObject:self->_mostRecentQuantity forKey:@"mostRecent"];
  [coderCopy encodeObject:self->_mostRecentQuantityDateInterval forKey:@"mostRecentDateInterval"];
  [coderCopy encodeObject:self->_sumQuantity forKey:@"sum"];
  [coderCopy encodeObject:self->_duration forKey:@"duration"];
  [coderCopy encodeObject:self->_averageQuantityBySource forKey:@"averageBySource"];
  [coderCopy encodeObject:self->_minimumQuantityBySource forKey:@"minBySource"];
  [coderCopy encodeObject:self->_maximumQuantityBySource forKey:@"maxBySource"];
  [coderCopy encodeObject:self->_mostRecentQuantityBySource forKey:@"mostRecentBySource"];
  [coderCopy encodeObject:self->_mostRecentQuantityDateIntervalBySource forKey:@"mostRecentDateIntervalBySource"];
  [coderCopy encodeObject:self->_sumQuantityBySource forKey:@"sumBySource"];
  [coderCopy encodeObject:self->_dataCountBySource forKey:@"countBySource"];
  [coderCopy encodeObject:self->_durationBySource forKey:@"durationBySource"];
  [coderCopy encodeObject:self->_categoryValue forKey:@"categoryValueKey"];
  [coderCopy encodeObject:self->_categoryValueBySource forKey:@"categoryValueBySourceKey"];
}

- (HKStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v8 = [(HKStatistics *)self initWithDataType:v5 startDate:v6 endDate:v7];
  if (v8)
  {
    v8->_dataCount = [coderCopy decodeIntegerForKey:@"dataCount"];
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v36 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v36 forKey:@"sources"];
    sources = v8->_sources;
    v8->_sources = v11;

    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [coderCopy decodeObjectOfClass:v14 forKey:@"average"];
    [(HKStatistics *)v8 setAverageQuantity:v17];

    v18 = [coderCopy decodeObjectOfClass:v14 forKey:@"min"];
    [(HKStatistics *)v8 setMinimumQuantity:v18];

    v19 = [coderCopy decodeObjectOfClass:v14 forKey:@"max"];
    [(HKStatistics *)v8 setMaximumQuantity:v19];

    v20 = [coderCopy decodeObjectOfClass:v14 forKey:@"mostRecent"];
    [(HKStatistics *)v8 setMostRecentQuantity:v20];

    v21 = [coderCopy decodeObjectOfClass:v13 forKey:@"mostRecentDateInterval"];
    [(HKStatistics *)v8 setMostRecentQuantityDateInterval:v21];

    v22 = [coderCopy decodeObjectOfClass:v14 forKey:@"sum"];
    [(HKStatistics *)v8 setSumQuantity:v22];

    v23 = [coderCopy decodeObjectOfClass:v14 forKey:@"duration"];
    [(HKStatistics *)v8 setDuration:v23];

    v24 = [coderCopy decodeObjectOfClass:v16 forKey:@"categoryValueKey"];
    [(HKStatistics *)v8 setCategoryValue:v24];

    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), v15, v16, v13, v14, 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"averageBySource"];
    [(HKStatistics *)v8 setAverageQuantityBySource:v26];

    v27 = [coderCopy decodeObjectOfClasses:v25 forKey:@"minBySource"];
    [(HKStatistics *)v8 setMinimumQuantityBySource:v27];

    v28 = [coderCopy decodeObjectOfClasses:v25 forKey:@"maxBySource"];
    [(HKStatistics *)v8 setMaximumQuantityBySource:v28];

    v29 = [coderCopy decodeObjectOfClasses:v25 forKey:@"mostRecentBySource"];
    [(HKStatistics *)v8 setMostRecentQuantityBySource:v29];

    v30 = [coderCopy decodeObjectOfClasses:v25 forKey:@"mostRecentDateIntervalBySource"];
    [(HKStatistics *)v8 setMostRecentQuantityDateIntervalBySource:v30];

    v31 = [coderCopy decodeObjectOfClasses:v25 forKey:@"sumBySource"];
    [(HKStatistics *)v8 setSumQuantityBySource:v31];

    v32 = [coderCopy decodeObjectOfClasses:v25 forKey:@"countBySource"];
    [(HKStatistics *)v8 setDataCountBySource:v32];

    v33 = [coderCopy decodeObjectOfClasses:v25 forKey:@"durationBySource"];
    [(HKStatistics *)v8 setDurationBySource:v33];

    v34 = [coderCopy decodeObjectOfClasses:v25 forKey:@"categoryValueBySourceKey"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  if (![(HKObjectType *)self->_dataType isEqual:equalCopy[1]])
  {
    goto LABEL_60;
  }

  if (![(NSDate *)self->_startDate isEqual:equalCopy[2]])
  {
    goto LABEL_60;
  }

  if (![(NSDate *)self->_endDate isEqual:equalCopy[3]])
  {
    goto LABEL_60;
  }

  if (self->_dataCount != equalCopy[7])
  {
    goto LABEL_60;
  }

  averageQuantity = self->_averageQuantity;
  v6 = equalCopy[8];
  if (averageQuantity != v6 && (!v6 || ![(HKQuantity *)averageQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  minimumQuantity = self->_minimumQuantity;
  v8 = equalCopy[9];
  if (minimumQuantity != v8 && (!v8 || ![(HKQuantity *)minimumQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  maximumQuantity = self->_maximumQuantity;
  v10 = equalCopy[10];
  if (maximumQuantity != v10 && (!v10 || ![(HKQuantity *)maximumQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  mostRecentQuantity = self->_mostRecentQuantity;
  v12 = equalCopy[11];
  if (mostRecentQuantity != v12 && (!v12 || ![(HKQuantity *)mostRecentQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  mostRecentQuantityDateInterval = self->_mostRecentQuantityDateInterval;
  v14 = equalCopy[12];
  if (mostRecentQuantityDateInterval != v14 && (!v14 || ![(NSDateInterval *)mostRecentQuantityDateInterval isEqual:?]))
  {
    goto LABEL_60;
  }

  sumQuantity = self->_sumQuantity;
  v16 = equalCopy[23];
  if (sumQuantity != v16 && (!v16 || ![(HKQuantity *)sumQuantity isEqual:?]))
  {
    goto LABEL_60;
  }

  duration = self->_duration;
  v18 = equalCopy[13];
  if (duration != v18 && (!v18 || ![(HKQuantity *)duration isEqual:?]))
  {
    goto LABEL_60;
  }

  sources = self->_sources;
  v20 = equalCopy[4];
  if (sources != v20 && (!v20 || ![(NSArray *)sources isEqual:?]))
  {
    goto LABEL_60;
  }

  dataCountBySource = self->_dataCountBySource;
  v22 = equalCopy[20];
  if (dataCountBySource != v22 && (!v22 || ![(NSDictionary *)dataCountBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  averageQuantityBySource = self->_averageQuantityBySource;
  v24 = equalCopy[15];
  if (averageQuantityBySource != v24 && (!v24 || ![(NSDictionary *)averageQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  minimumQuantityBySource = self->_minimumQuantityBySource;
  v26 = equalCopy[16];
  if (minimumQuantityBySource != v26 && (!v26 || ![(NSDictionary *)minimumQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  maximumQuantityBySource = self->_maximumQuantityBySource;
  v28 = equalCopy[17];
  if (maximumQuantityBySource != v28 && (!v28 || ![(NSDictionary *)maximumQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  mostRecentQuantityBySource = self->_mostRecentQuantityBySource;
  v30 = equalCopy[18];
  if (mostRecentQuantityBySource != v30 && (!v30 || ![(NSDictionary *)mostRecentQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  mostRecentQuantityDateIntervalBySource = self->_mostRecentQuantityDateIntervalBySource;
  v32 = equalCopy[19];
  if (mostRecentQuantityDateIntervalBySource != v32 && (!v32 || ![(NSDictionary *)mostRecentQuantityDateIntervalBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  sumQuantityBySource = self->_sumQuantityBySource;
  v34 = equalCopy[24];
  if (sumQuantityBySource != v34 && (!v34 || ![(NSDictionary *)sumQuantityBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  durationBySource = self->_durationBySource;
  v36 = equalCopy[21];
  if (durationBySource != v36 && (!v36 || ![(NSDictionary *)durationBySource isEqual:?]))
  {
    goto LABEL_60;
  }

  categoryValue = self->_categoryValue;
  v38 = equalCopy[5];
  if (categoryValue != v38 && (!v38 || ![(NSNumber *)categoryValue isEqual:?]))
  {
    goto LABEL_60;
  }

  categoryValueBySource = self->_categoryValueBySource;
  v40 = equalCopy[6];
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

- (void)_setSources:(id)sources
{
  v4 = [sources copy];
  sources = self->_sources;
  self->_sources = v4;

  MEMORY[0x1EEE66BB8](v4, sources);
}

- (BOOL)getData:(id *)data error:(id *)error
{
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:error];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    *data = v8;
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogInfrastructure();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HKStatistics *)self getData:error error:v10];
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
  averageQuantity = [(HKStatistics *)self averageQuantity];
  quantityType = [(HKStatistics *)self quantityType];
  canonicalUnit = [quantityType canonicalUnit];
  v7 = [averageQuantity asJSONObjectForUnit:canonicalUnit];
  [v3 setObject:v7 forKeyedSubscript:@"averageQuantity"];

  minimumQuantity = [(HKStatistics *)self minimumQuantity];
  quantityType2 = [(HKStatistics *)self quantityType];
  canonicalUnit2 = [quantityType2 canonicalUnit];
  v11 = [minimumQuantity asJSONObjectForUnit:canonicalUnit2];
  [v3 setObject:v11 forKeyedSubscript:@"minimumQuantity"];

  maximumQuantity = [(HKStatistics *)self maximumQuantity];
  quantityType3 = [(HKStatistics *)self quantityType];
  canonicalUnit3 = [quantityType3 canonicalUnit];
  v15 = [maximumQuantity asJSONObjectForUnit:canonicalUnit3];
  [v3 setObject:v15 forKeyedSubscript:@"maximumQuantity"];

  mostRecentQuantity = [(HKStatistics *)self mostRecentQuantity];
  quantityType4 = [(HKStatistics *)self quantityType];
  canonicalUnit4 = [quantityType4 canonicalUnit];
  v19 = [mostRecentQuantity asJSONObjectForUnit:canonicalUnit4];
  [v3 setObject:v19 forKeyedSubscript:@"mostRecentQuantity"];

  return v3;
}

- (void)quantityType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKStatistics.m" lineNumber:441 description:@"Data type is not a quantity"];
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