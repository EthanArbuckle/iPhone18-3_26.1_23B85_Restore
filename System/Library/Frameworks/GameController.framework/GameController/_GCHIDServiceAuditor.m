@interface _GCHIDServiceAuditor
- (_GCHIDServiceAuditor)initWithServiceInfo:(id)a3;
- (id)serviceInfo;
- (id)state;
- (uint64_t)noteHIDEventPublished:(uint64_t)result;
- (uint64_t)noteHIDEventReceived:(uint64_t)result;
@end

@implementation _GCHIDServiceAuditor

- (_GCHIDServiceAuditor)initWithServiceInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCHIDServiceAuditor;
  v5 = [(_GCHIDServiceAuditor *)&v8 init];
  serviceInfo = v5->_serviceInfo;
  v5->_serviceInfo = v4;

  return v5;
}

- (uint64_t)noteHIDEventReceived:(uint64_t)result
{
  if (result)
  {
    v1 = *(result + 8);
    OUTLINED_FUNCTION_0_11();
    v4 = v2 + 8 * v3;
    *(v2 + 8) = v5 + 1;
    result = IOHIDEventGetTimeStamp();
    *(v4 + 24) = result;
  }

  return result;
}

- (uint64_t)noteHIDEventPublished:(uint64_t)result
{
  if (result)
  {
    ++*(result + 16);
  }

  return result;
}

- (id)state
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = objc_opt_new();
    for (i = 24; i != 64; i += 8)
    {
      if (*(a1 + i))
      {
        v5 = [MEMORY[0x1E695DF00] gc_dateWithMachAbsoluteTime:?];
        if (v5)
        {
          [v3 addObject:v5];
        }
      }
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 16)];
    [v2 setObject:v6 forKeyedSubscript:@"PublishedEventCount"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 8)];
    [v2 setObject:v7 forKeyedSubscript:@"ReceivedEventCount"];

    [v2 setObject:v3 forKeyedSubscript:@"LatestReceivedEventTimes"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)serviceInfo
{
  if (result)
  {
    return objc_getProperty(result, a2, 64, 1);
  }

  return result;
}

@end