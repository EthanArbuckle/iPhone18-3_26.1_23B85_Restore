@interface ASDUpdatePollMetrics
- (ASDUpdatePollMetrics)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionary;
@end

@implementation ASDUpdatePollMetrics

- (ASDUpdatePollMetrics)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASDUpdatePollMetrics;
  v5 = [(ASDUpdatePollMetrics *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"date"];
    if (objc_opt_respondsToSelector())
    {
      v7 = MEMORY[0x1E695DF00];
      [v6 doubleValue];
      v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
      pollTime = v5->_pollTime;
      v5->_pollTime = v8;
    }

    v10 = [v4 objectForKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v10;

    v12 = [v4 objectForKey:@"bundleIDs"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v12;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ASDUpdatePollMetrics *)self pollTime];
  v5 = [(ASDUpdatePollMetrics *)self reason];
  v6 = [(ASDUpdatePollMetrics *)self bundleIDs];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"{ %@: %@, %@: %@, %@ : [%@] }", @"date", v4, @"reason", v5, @"bundleIDs", v7];

  return v8;
}

- (id)dictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(ASDUpdatePollMetrics *)self pollTime];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"date"];

  v7 = [(ASDUpdatePollMetrics *)self reason];
  [v3 setObject:v7 forKeyedSubscript:@"reason"];

  v8 = [(ASDUpdatePollMetrics *)self bundleIDs];
  [v3 setObject:v8 forKeyedSubscript:@"bundleIDs"];

  return v3;
}

@end