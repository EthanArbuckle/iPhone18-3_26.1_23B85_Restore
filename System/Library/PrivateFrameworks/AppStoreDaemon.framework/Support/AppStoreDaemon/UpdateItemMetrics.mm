@interface UpdateItemMetrics
- (UpdateItemMetrics)init;
- (UpdateItemMetrics)initWithData:(id)data;
- (id)description;
@end

@implementation UpdateItemMetrics

- (UpdateItemMetrics)init
{
  v6.receiver = self;
  v6.super_class = UpdateItemMetrics;
  v2 = [(UpdateItemMetrics *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    metricsData = v2->_metricsData;
    v2->_metricsData = v3;
  }

  return v2;
}

- (UpdateItemMetrics)initWithData:(id)data
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = UpdateItemMetrics;
  v5 = [(UpdateItemMetrics *)&v13 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  if (dataCopy)
  {
    v6 = [dataCopy mutableCopy];
    metricsData = v5->_metricsData;
    v5->_metricsData = v6;

LABEL_4:
    v8 = v5;
    goto LABEL_8;
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    *buf = 138543362;
    v15 = v11;
    v12 = v11;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to initialze with data", buf, 0xCu);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)description
{
  keyEnumerator = [(NSMutableDictionary *)self->_metricsData keyEnumerator];
  v4 = [[NSMutableString alloc] initWithString:@"{"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = keyEnumerator;
  v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_metricsData valueForKey:v9];
        v11 = [NSString stringWithFormat:@" %@: %@", v9, v10];
        [v4 appendString:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v4 appendString:@" }"];

  return v4;
}

@end