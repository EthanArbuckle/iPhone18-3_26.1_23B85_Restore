@interface MTREventReport
- (MTREventReport)initWithPath:(const ConcreteEventPath *)path error:(id)error;
- (MTREventReport)initWithPath:(const ConcreteEventPath *)path eventNumber:(id)number priority:(unsigned __int8)priority timestamp:(const Timestamp *)timestamp value:(id)value;
- (MTREventReport)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
@end

@implementation MTREventReport

- (MTREventReport)initWithPath:(const ConcreteEventPath *)path eventNumber:(id)number priority:(unsigned __int8)priority timestamp:(const Timestamp *)timestamp value:(id)value
{
  priorityCopy = priority;
  numberCopy = number;
  valueCopy = value;
  v29.receiver = self;
  v29.super_class = MTREventReport;
  v15 = [(MTREventReport *)&v29 init];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = [[MTREventPath alloc] initWithPath:path];
  path = v15->_path;
  v15->_path = v16;

  objc_storeStrong(&v15->_eventNumber, number);
  if (priorityCopy < 3)
  {
    v18 = 1;
    if (priorityCopy != 1)
    {
      v18 = 2;
    }

    if (priorityCopy)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    priority = v15->_priority;
    v15->_priority = v20;

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:timestamp->var1];
    timestampValue = v15->_timestampValue;
    v15->_timestampValue = v22;

    if (timestamp->var0 == 1)
    {
      v15->_eventTimeType = 1;
      v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(timestamp->var1 % 0x3E8) / 1000.0 + (timestamp->var1 / 0x3E8)];
      timestampDate = v15->_timestampDate;
      v15->_timestampDate = v25;

      goto LABEL_13;
    }

    if (!timestamp->var0)
    {
      v15->_eventTimeType = 0;
      v15->_systemUpTime = (timestamp->var1 % 0x3E8) / 1000.0 + (timestamp->var1 / 0x3E8);
LABEL_13:
      objc_storeStrong(&v15->_value, value);
      error = v15->_error;
      v15->_error = 0;

LABEL_14:
      v24 = v15;
      goto LABEL_15;
    }
  }

  v24 = 0;
LABEL_15:

  return v24;
}

- (MTREventReport)initWithPath:(const ConcreteEventPath *)path error:(id)error
{
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = MTREventReport;
  v8 = [(MTREventReport *)&v16 init];
  if (v8)
  {
    v9 = [[MTREventPath alloc] initWithPath:path];
    path = v8->_path;
    v8->_path = v9;

    eventNumber = v8->_eventNumber;
    v8->_eventNumber = &unk_284C3E5A0;

    priority = v8->_priority;
    v8->_priority = &unk_284C3E618;

    v8->_eventTimeType = 0;
    v8->_systemUpTime = 0.0;
    timestampDate = v8->_timestampDate;
    v8->_timestampDate = 0;

    value = v8->_value;
    v8->_value = 0;

    objc_storeStrong(&v8->_error, error);
  }

  return v8;
}

- (MTREventReport)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v43.receiver = self;
  v43.super_class = MTREventReport;
  v7 = [(MTREventReport *)&v43 init];
  if (v7)
  {
    v8 = objc_opt_class();
    if (sub_238EEE250(v6, @"eventPath", v8, @"response-value event path is not an MTREventPath.", error))
    {
      v9 = [(NSDictionary *)v6 objectForKeyedSubscript:@"eventPath"];
      v10 = [(NSDictionary *)v6 objectForKeyedSubscript:@"error"];
      if (v10)
      {
        v11 = objc_opt_class();
        if (sub_238EEE250(v6, @"error", v11, @"response-value error is not an NSError.", error))
        {
          _asConcretePath = [v9 _asConcretePath];
          v40 = v12;
          v7 = [(MTREventReport *)v7 initWithPath:&_asConcretePath error:v10];
          v13 = v7;
LABEL_26:

          goto LABEL_27;
        }

LABEL_18:
        v13 = 0;
        goto LABEL_26;
      }

      v14 = objc_opt_class();
      if (!sub_238EEE250(v6, @"data", v14, @"response-value data is not a data-value dictionary.", error))
      {
        goto LABEL_18;
      }

      v15 = [(NSDictionary *)v6 objectForKeyedSubscript:@"data"];
      v41 = 0;
      v42 = 0;
      sub_2393C5AAC(&_asConcretePath);
      if ((sub_238EF2604(&v42, &v41, v15, &_asConcretePath, error) & 1) == 0)
      {
        v13 = 0;
LABEL_25:
        sub_238DCCA48(&v41);
        sub_238EA1758(&v42);

        goto LABEL_26;
      }

      _asConcretePath2 = [v9 _asConcretePath];
      v38 = v16;
      v36 = xmmword_278A72F50;
      v17 = sub_2392D45E0(&_asConcretePath2, &_asConcretePath, &v36);
      if (v36 == 182)
      {
        v29 = @"No known schema for decoding event payload.";
        v30 = 12;
      }

      else
      {
        if (!v36)
        {
          v18 = objc_opt_class();
          if (sub_238EEE250(v6, @"eventNumber", v18, @"response-value event number is not an NSNumber", error))
          {
            v19 = [(NSDictionary *)v6 objectForKeyedSubscript:@"eventNumber"];
            eventNumber = v7->_eventNumber;
            v7->_eventNumber = v19;

            v21 = objc_opt_class();
            if (sub_238EEE250(v6, @"eventPriority", v21, @"response-value event priority is not an NSNumber", error))
            {
              v22 = [(NSDictionary *)v6 objectForKeyedSubscript:@"eventPriority"];
              priority = v7->_priority;
              v7->_priority = v22;

              v24 = objc_opt_class();
              if (sub_238EEE250(v6, @"eventTimeType", v24, @"response-value event time type is not an NSNumber", error))
              {
                v25 = [(NSDictionary *)v6 objectForKeyedSubscript:@"eventTimeType"];
                if ([v25 unsignedIntegerValue])
                {
                  if ([v25 unsignedIntegerValue] == 1)
                  {
                    v26 = objc_opt_class();
                    if (sub_238EEE250(v6, @"eventTimestampDate", v26, @"response-value event timestampe is not an NSDate", error))
                    {
                      v27 = [(NSDictionary *)v6 objectForKeyedSubscript:@"eventTimestampDate"];
                      timestampDate = v7->_timestampDate;
                      v7->_timestampDate = v27;
LABEL_30:

                      v7->_eventTimeType = [v25 unsignedIntegerValue];
                      objc_storeStrong(&v7->_path, v9);
                      objc_storeStrong(&v7->_value, v17);
                      v34 = v7->_error;
                      v7->_error = 0;

                      v13 = v7;
LABEL_33:

                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid event time type: %lu", objc_msgSend(v25, "unsignedLongValue")];
                    sub_238EEE368(v35, 4, error);
                  }
                }

                else
                {
                  v32 = objc_opt_class();
                  if (sub_238EEE250(v6, @"eventSystemUpTime", v32, @"response-value event system uptime time is not an NSNumber", error))
                  {
                    timestampDate = [(NSDictionary *)v6 objectForKeyedSubscript:@"eventSystemUpTime"];
                    [timestampDate doubleValue];
                    v7->_systemUpTime = v33;
                    goto LABEL_30;
                  }
                }

                v13 = 0;
                goto LABEL_33;
              }
            }
          }

LABEL_23:
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v29 = @"Event payload decoding failed schema check.";
        v30 = 13;
      }

      sub_238EEE368(v29, v30, error);
      goto LABEL_23;
    }
  }

  v13 = 0;
LABEL_27:

  return v13;
}

@end