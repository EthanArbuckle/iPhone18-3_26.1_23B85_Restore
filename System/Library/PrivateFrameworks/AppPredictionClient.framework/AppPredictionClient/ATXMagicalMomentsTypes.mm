@interface ATXMagicalMomentsTypes
+ (id)consumerMapping;
+ (id)mmConsumerMapping;
+ (id)mmEventTypeMapping;
+ (id)predictionReasonMapping;
+ (id)stringForConsumerType:(unint64_t)a3;
+ (id)stringForMMConsumerType:(unint64_t)a3;
+ (id)stringForMMEventType:(unint64_t)a3;
+ (id)stringForPredictionReason:(int64_t)a3;
+ (int64_t)selectSingleReason:(int64_t)a3;
+ (unint64_t)mmConsumerTypeOfConsumerType:(unint64_t)a3 consumerSubType:(unsigned __int8)a4;
@end

@implementation ATXMagicalMomentsTypes

+ (id)stringForConsumerType:(unint64_t)a3
{
  if (a3 <= 7)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        return @"Spotlight";
      }

      if (a3 == 4)
      {
        return @"CarPlay";
      }
    }

    else
    {
      if (!a3)
      {
        return @"Unknown";
      }

      if (a3 == 1)
      {
        return @"SpringBoard";
      }
    }
  }

  else if (a3 <= 31)
  {
    if (a3 == 8)
    {
      return @"Phone";
    }

    if (a3 == 16)
    {
      return @"Maps";
    }
  }

  else
  {
    switch(a3)
    {
      case ' ':
        return @"Widget";
      case '@':
        return @"AppConnectionExpert";
      case '\x7F':
        return @"All";
    }
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:a1 file:@"ATXMagicalMomentsTypes.m" lineNumber:41 description:{@"stringForConsumerType called with invalid ATXMagicalMomentsConsumerType value of %lu", a3}];

  return @"Error";
}

+ (id)predictionReasonMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:12];
  v4 = [a1 stringForPredictionReason:0];
  [v3 setObject:v4 forKeyedSubscript:&unk_1F3E5FDD8];

  for (i = 0; i != 12; ++i)
  {
    v6 = [a1 stringForPredictionReason:(1 << i)];
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
    v5 = [a1 stringForMMEventType:i];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)consumerMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:7];
  v4 = [a1 stringForConsumerType:0];
  [v3 setObject:v4 forKeyedSubscript:&unk_1F3E5FDF0];

  for (i = 0; i != 7; ++i)
  {
    v6 = [a1 stringForConsumerType:(1 << i)];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(1 << i)];
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  return v3;
}

+ (int64_t)selectSingleReason:(int64_t)a3
{
  v3 = 1;
  v4 = 32;
  v5 = a3 & 0x400;
  if ((a3 & 0x10) != 0)
  {
    v5 = 16;
  }

  if ((a3 & 0x20) == 0)
  {
    v4 = v5;
  }

  if ((a3 & 1) == 0)
  {
    v3 = v4;
  }

  if ((a3 & 2) != 0)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

+ (id)stringForPredictionReason:(int64_t)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_new();
    v5 = v4;
    if ((v3 & 0x40) != 0)
    {
      [v4 appendString:@"Application_"];
      if ((v3 & 0x10) == 0)
      {
LABEL_4:
        if ((v3 & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((v3 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    [v5 appendString:@"Location_"];
    if ((v3 & 8) == 0)
    {
LABEL_5:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v5 appendString:@"Motion_"];
    if ((v3 & 0x200) == 0)
    {
LABEL_6:
      if ((v3 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v5 appendString:@"Other_"];
    if ((v3 & 1) == 0)
    {
LABEL_7:
      if ((v3 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v5 appendString:@"Headphones_"];
    if ((v3 & 2) == 0)
    {
LABEL_8:
      if ((v3 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v5 appendString:@"Bluetooth_"];
    if ((v3 & 4) == 0)
    {
LABEL_9:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    [v5 appendString:@"CarPlay_"];
    if ((v3 & 0x20) == 0)
    {
LABEL_10:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    [v5 appendString:@"FirstWakeup_"];
    if ((v3 & 0x400) == 0)
    {
LABEL_11:
      if ((v3 & 0x800) == 0)
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
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = @"Unknown";
LABEL_28:

  return v6;
}

+ (id)stringForMMEventType:(unint64_t)a3
{
  v3 = @"suggested";
  if (a3 <= 3)
  {
    v4 = @"suppressed";
    if (a3 == 3)
    {
      v3 = @"shown";
    }

    if (a3 == 2)
    {
      v3 = @"served";
    }

    v5 = a3 == 1;
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

  if (a3 != 6)
  {
    v4 = @"abandoned";
    if (a3 == 4)
    {
      v3 = @"converted";
    }

    v5 = a3 == 5;
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
  v4 = [a1 stringForMMConsumerType:0];
  [v3 setObject:v4 forKeyedSubscript:&unk_1F3E5FDF0];

  for (i = 0; i != 7; ++i)
  {
    v6 = [a1 stringForMMConsumerType:(1 << i)];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(1 << i)];
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [objc_opt_class() mmConsumerTypeOfConsumerType:1 consumerSubType:2];
  v9 = [a1 stringForMMConsumerType:v8];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [v3 setObject:v9 forKeyedSubscript:v10];

  return v3;
}

+ (id)stringForMMConsumerType:(unint64_t)a3
{
  v5 = a3 & 0x7F;
  if (v5 > 7)
  {
    if ((a3 & 0x7F) <= 0x1F)
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

  if ((a3 & 0x7F) > 1)
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

  if ((a3 & 0x7F) == 0)
  {
    return @"Unknown";
  }

  if (v5 != 1)
  {
LABEL_24:
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"ATXMagicalMomentsTypes.m" lineNumber:206 description:{@"stringForMMConsumerType called with invalid ATXMagicalMomentsConsumerType value of %lu", v5}];

    return @"Error";
  }

  if ((a3 & 0x80) != 0)
  {
    return @"SpringBoardAppSwitcher";
  }

  else
  {
    return @"SpringBoardLock";
  }
}

+ (unint64_t)mmConsumerTypeOfConsumerType:(unint64_t)a3 consumerSubType:(unsigned __int8)a4
{
  if (a4 == 2 && a3 == 1)
  {
    return 129;
  }

  else
  {
    return a3;
  }
}

@end