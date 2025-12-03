@interface ASDUpdatePollMetrics
- (ASDUpdatePollMetrics)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionary;
@end

@implementation ASDUpdatePollMetrics

- (ASDUpdatePollMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ASDUpdatePollMetrics;
  v5 = [(ASDUpdatePollMetrics *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"date"];
    if (objc_opt_respondsToSelector())
    {
      v7 = MEMORY[0x1E695DF00];
      [v6 doubleValue];
      v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
      pollTime = v5->_pollTime;
      v5->_pollTime = v8;
    }

    v10 = [dictionaryCopy objectForKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v10;

    v12 = [dictionaryCopy objectForKey:@"bundleIDs"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v12;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  pollTime = [(ASDUpdatePollMetrics *)self pollTime];
  reason = [(ASDUpdatePollMetrics *)self reason];
  bundleIDs = [(ASDUpdatePollMetrics *)self bundleIDs];
  v7 = [bundleIDs componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"{ %@: %@, %@: %@, %@ : [%@] }", @"date", pollTime, @"reason", reason, @"bundleIDs", v7];

  return v8;
}

- (id)dictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  pollTime = [(ASDUpdatePollMetrics *)self pollTime];
  [pollTime timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [dictionary setObject:v6 forKeyedSubscript:@"date"];

  reason = [(ASDUpdatePollMetrics *)self reason];
  [dictionary setObject:reason forKeyedSubscript:@"reason"];

  bundleIDs = [(ASDUpdatePollMetrics *)self bundleIDs];
  [dictionary setObject:bundleIDs forKeyedSubscript:@"bundleIDs"];

  return dictionary;
}

@end