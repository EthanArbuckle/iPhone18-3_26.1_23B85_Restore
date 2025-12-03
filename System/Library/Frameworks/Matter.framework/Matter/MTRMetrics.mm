@interface MTRMetrics
- (MTRMetrics)initWithCapacity:(unint64_t)capacity;
- (id)description;
- (id)metricDataForKey:(id)key;
- (void)removeMetricDataForKey:(id)key;
- (void)setMetricData:(id)data forKey:(id)key;
@end

@implementation MTRMetrics

- (MTRMetrics)initWithCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = MTRMetrics;
  v4 = [(MTRMetrics *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:capacity];
    metricsData = v4->_metricsData;
    v4->_metricsData = v5;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v4->_uniqueIdentifier;
    v4->_uniqueIdentifier = uUID;
  }

  return v4;
}

- (id)metricDataForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(NSMutableDictionary *)self->_metricsData objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot get metrics value for nil key", v8, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v5 = 0;
  }

  return v5;
}

- (void)setMetricData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (keyCopy)
  {
    [(NSMutableDictionary *)self->_metricsData setValue:dataCopy forKey:keyCopy];
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Cannot set metrics value for nil key", v9, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }
}

- (void)removeMetricDataForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    [(NSMutableDictionary *)self->_metricsData removeObjectForKey:keyCopy];
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Cannot remove metrics value for nil key", v6, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  uniqueIdentifier = self->_uniqueIdentifier;
  v4 = [(NSMutableDictionary *)self->_metricsData description];
  v5 = [v2 stringWithFormat:@"<MTRMetrics: uuid = %@, data = %@>", uniqueIdentifier, v4];

  return v5;
}

@end