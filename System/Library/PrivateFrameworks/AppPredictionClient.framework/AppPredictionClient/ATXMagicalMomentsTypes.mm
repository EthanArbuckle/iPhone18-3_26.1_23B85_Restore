@interface ATXMagicalMomentsTypes
+ (id)consumerMapping;
+ (id)mmConsumerMapping;
+ (id)mmEventTypeMapping;
+ (id)predictionReasonMapping;
+ (id)stringForConsumerType:(unint64_t)type;
+ (id)stringForMMConsumerType:(unint64_t)type;
+ (id)stringForMMEventType:(unint64_t)type;
+ (id)stringForPredictionReason:(int64_t)reason;
+ (int64_t)selectSingleReason:(int64_t)reason;
+ (unint64_t)mmConsumerTypeOfConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType;
@end

@implementation ATXMagicalMomentsTypes

+ (id)stringForConsumerType:(unint64_t)type
{
  if (type <= 7)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        return @"Spotlight";
      }

      if (type == 4)
      {
        return @"CarPlay";
      }
    }

    else
    {
      if (!type)
      {
        return @"Unknown";
      }

      if (type == 1)
      {
        return @"SpringBoard";
      }
    }
  }

  else if (type <= 31)
  {
    if (type == 8)
    {
      return @"Phone";
    }

    if (type == 16)
    {
      return @"Maps";
    }
  }

  else
  {
    switch(type)
    {
      case ' ':
        return @"Widget";
      case '@':
        return @"AppConnectionExpert";
      case '\x7F':
        return @"All";
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMagicalMomentsTypes.m" lineNumber:41 description:{@"stringForConsumerType called with invalid ATXMagicalMomentsConsumerType value of %lu", type}];

  return @"Error";
}

+ (id)predictionReasonMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:12];
  v4 = [self stringForPredictionReason:0];
  [v3 setObject:v4 forKeyedSubscript:&unk_1F3E5FDD8];

  for (i = 0; i != 12; ++i)
  {
    v6 = [self stringForPredictionReason:(1 << i)];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:(1 << i)];
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  return v3;
}

+ (id)mmEventTypeMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
  for (i = 0; i != 6; ++i)
  {
    v5 = [self stringForMMEventType:i];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)consumerMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:7];
  v4 = [self stringForConsumerType:0];
  [v3 setObject:v4 forKeyedSubscript:&unk_1F3E5FDF0];

  for (i = 0; i != 7; ++i)
  {
    v6 = [self stringForConsumerType:(1 << i)];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(1 << i)];
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  return v3;
}

+ (int64_t)selectSingleReason:(int64_t)reason
{
  v3 = 1;
  v4 = 32;
  v5 = reason & 0x400;
  if ((reason & 0x10) != 0)
  {
    v5 = 16;
  }

  if ((reason & 0x20) == 0)
  {
    v4 = v5;
  }

  if ((reason & 1) == 0)
  {
    v3 = v4;
  }

  if ((reason & 2) != 0)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

+ (id)stringForPredictionReason:(int64_t)reason
{
  if (reason)
  {
    reasonCopy = reason;
    v4 = objc_opt_new();
    v5 = v4;
    if ((reasonCopy & 0x40) != 0)
    {
      [v4 appendString:@"Application_"];
      if ((reasonCopy & 0x10) == 0)
      {
LABEL_4:
        if ((reasonCopy & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((reasonCopy & 0x10) == 0)
    {
      goto LABEL_4;
    }

    [v5 appendString:@"Location_"];
    if ((reasonCopy & 8) == 0)
    {
LABEL_5:
      if ((reasonCopy & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v5 appendString:@"Motion_"];
    if ((reasonCopy & 0x200) == 0)
    {
LABEL_6:
      if ((reasonCopy & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v5 appendString:@"Other_"];
    if ((reasonCopy & 1) == 0)
    {
LABEL_7:
      if ((reasonCopy & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v5 appendString:@"Headphones_"];
    if ((reasonCopy & 2) == 0)
    {
LABEL_8:
      if ((reasonCopy & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v5 appendString:@"Bluetooth_"];
    if ((reasonCopy & 4) == 0)
    {
LABEL_9:
      if ((reasonCopy & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    [v5 appendString:@"CarPlay_"];
    if ((reasonCopy & 0x20) == 0)
    {
LABEL_10:
      if ((reasonCopy & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    [v5 appendString:@"FirstWakeup_"];
    if ((reasonCopy & 0x400) == 0)
    {
LABEL_11:
      if ((reasonCopy & 0x800) == 0)
      {
LABEL_13:
        if ([v5 length])
        {
          v6 = v5;
        }

        else
        {
          v6 = @"Unknown_";
        }

        goto LABEL_28;
      }

LABEL_12:
      [v5 appendString:@"HeroApp_"];
      goto LABEL_13;
    }

LABEL_24:
    [v5 appendString:@"MicroLocation_"];
    if ((reasonCopy & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = @"Unknown";
LABEL_28:

  return v6;
}

+ (id)stringForMMEventType:(unint64_t)type
{
  v3 = @"suggested";
  if (type <= 3)
  {
    v4 = @"suppressed";
    if (type == 3)
    {
      v3 = @"shown";
    }

    if (type == 2)
    {
      v3 = @"served";
    }

    v5 = type == 1;
LABEL_11:
    if (v5)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  if (type != 6)
  {
    v4 = @"abandoned";
    if (type == 4)
    {
      v3 = @"converted";
    }

    v5 = type == 5;
    goto LABEL_11;
  }

  v7 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [ATXMagicalMomentsTypes stringForMMEventType:v7];
  }

  return @"max";
}

+ (id)mmConsumerMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:7];
  v4 = [self stringForMMConsumerType:0];
  [v3 setObject:v4 forKeyedSubscript:&unk_1F3E5FDF0];

  for (i = 0; i != 7; ++i)
  {
    v6 = [self stringForMMConsumerType:(1 << i)];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(1 << i)];
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [objc_opt_class() mmConsumerTypeOfConsumerType:1 consumerSubType:2];
  v9 = [self stringForMMConsumerType:v8];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [v3 setObject:v9 forKeyedSubscript:v10];

  return v3;
}

+ (id)stringForMMConsumerType:(unint64_t)type
{
  v5 = type & 0x7F;
  if (v5 > 7)
  {
    if ((type & 0x7F) <= 0x1F)
    {
      if (v5 == 8)
      {
        return @"Phone";
      }

      if (v5 == 16)
      {
        return @"Maps";
      }
    }

    else
    {
      switch(v5)
      {
        case ' ':
          return @"Widget";
        case '@':
          return @"AppConnectionExpert";
        case '\x7F':
          return @"All";
      }
    }

    goto LABEL_24;
  }

  if ((type & 0x7F) > 1)
  {
    if (v5 == 2)
    {
      return @"Spotlight";
    }

    if (v5 == 4)
    {
      return @"CarPlay";
    }

    goto LABEL_24;
  }

  if ((type & 0x7F) == 0)
  {
    return @"Unknown";
  }

  if (v5 != 1)
  {
LABEL_24:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMagicalMomentsTypes.m" lineNumber:206 description:{@"stringForMMConsumerType called with invalid ATXMagicalMomentsConsumerType value of %lu", v5}];

    return @"Error";
  }

  if ((type & 0x80) != 0)
  {
    return @"SpringBoardAppSwitcher";
  }

  else
  {
    return @"SpringBoardLock";
  }
}

+ (unint64_t)mmConsumerTypeOfConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType
{
  if (subType == 2 && type == 1)
  {
    return 129;
  }

  else
  {
    return type;
  }
}

@end