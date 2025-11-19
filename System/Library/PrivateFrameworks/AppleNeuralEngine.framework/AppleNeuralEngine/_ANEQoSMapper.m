@interface _ANEQoSMapper
+ (id)dispatchQueueArrayByMappingPrioritiesWithTag:(id)a3;
+ (int)programPriorityForQoS:(unsigned int)a3;
+ (unint64_t)queueIndexForQoS:(unsigned int)a3;
+ (unsigned)qosForProgramPriority:(int)a3;
@end

@implementation _ANEQoSMapper

+ (unint64_t)queueIndexForQoS:(unsigned int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a1 aneRealTimeTaskQoS] == a3)
  {
    result = 2;
  }

  else
  {
    HIDWORD(v7) = a3 - 9;
    LODWORD(v7) = a3 - 9;
    v6 = v7 >> 2;
    if (v6 < 7 && ((0x5Du >> v6) & 1) != 0)
    {
      result = qword_1AD28F120[v6];
    }

    else
    {
      v8 = +[_ANELog daemon];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        v11 = 138412546;
        v12 = v9;
        v13 = 1024;
        v14 = a3;
        _os_log_impl(&dword_1AD246000, v8, OS_LOG_TYPE_INFO, "%@: %d => Invalid qos requested", &v11, 0x12u);
      }

      result = 5;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int)programPriorityForQoS:(unsigned int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a1 aneRealTimeTaskQoS] == a3)
  {
    result = 2;
  }

  else
  {
    HIDWORD(v7) = a3 - 9;
    LODWORD(v7) = a3 - 9;
    v6 = v7 >> 2;
    if (v6 < 7 && ((0x5Du >> v6) & 1) != 0)
    {
      result = dword_1AD28F158[v6];
    }

    else
    {
      v8 = +[_ANELog daemon];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        v11 = 138412546;
        v12 = v9;
        v13 = 1024;
        v14 = a3;
        _os_log_impl(&dword_1AD246000, v8, OS_LOG_TYPE_INFO, "%@: %d => Invalid qos requested", &v11, 0x12u);
      }

      result = 5;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unsigned)qosForProgramPriority:(int)a3
{
  v3 = a3 - 4;
  if (a3 < 4)
  {
    return 33;
  }

  if (v3 > 2)
  {
    return 21;
  }

  return dword_1AD28F174[v3];
}

+ (id)dispatchQueueArrayByMappingPrioritiesWithTag:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695E0F0] mutableCopy];
  for (i = 0; i != 8; ++i)
  {
    v7 = [v3 stringByAppendingFormat:@".p%d", i];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, [_ANEQoSMapper qosForProgramPriority:i], 0);

    v10 = dispatch_queue_create([v7 UTF8String], v9);
    [v5 setObject:v10 atIndexedSubscript:i];
  }

  v11 = [v5 copy];

  objc_autoreleasePoolPop(v4);

  return v11;
}

@end