@interface _DKEvent(ATXMode)
- (double)atx_eventDuration;
- (id)atx_bundleID;
- (id)atx_endDate;
- (id)atx_mode;
- (id)atx_startDate;
@end

@implementation _DKEvent(ATXMode)

- (id)atx_startDate
{
  metadata = [self metadata];

  if (metadata && ([self metadata], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKeyedSubscript:", @"start"), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    startDate = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    startDate = [self startDate];
  }

  return startDate;
}

- (id)atx_endDate
{
  metadata = [self metadata];

  if (metadata && ([self metadata], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKeyedSubscript:", @"end"), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    endDate = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    endDate = [self endDate];
  }

  return endDate;
}

- (id)atx_mode
{
  value = [self value];
  stringValue = [value stringValue];

  return stringValue;
}

- (id)atx_bundleID
{
  value = [self value];
  stringValue = [value stringValue];

  return stringValue;
}

- (double)atx_eventDuration
{
  atx_endDate = [self atx_endDate];
  atx_startDate = [self atx_startDate];
  [atx_endDate timeIntervalSinceDate:atx_startDate];
  v5 = v4;

  return v5;
}

@end