@interface ADTimeProfiler
- (ADTimeProfiler)init;
- (id)log;
- (id)stringLog;
- (id)valueDictForOperationName:(id)name;
- (void)printLog;
- (void)reset;
- (void)startForOperationWithName:(id)name;
- (void)startWithUTFString:(const char *)string;
- (void)stopForOperationWithName:(id)name;
- (void)stopWithUTFString:(const char *)string;
@end

@implementation ADTimeProfiler

- (id)stringLog
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = [(ADTimeProfiler *)self log];
  string = [MEMORY[0x277CCAB68] string];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v15;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        allKeys = [v7 allKeys];
        if ([allKeys count])
        {
          allKeys2 = [v7 allKeys];
          v10 = [allKeys2 objectAtIndexedSubscript:0];

          v11 = [v7 valueForKey:v10];
          [v11 doubleValue];
          [string appendFormat:@"%@: %.02fms\n", v10, v12];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v13 = [string copy];

  return v13;
}

- (void)printLog
{
  v17 = *MEMORY[0x277D85DE8];
  [(ADTimeProfiler *)self log];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        allKeys = [v6 allKeys];
        if ([allKeys count])
        {
          allKeys2 = [v6 allKeys];
          v9 = [allKeys2 objectAtIndexedSubscript:0];

          v10 = [v6 valueForKey:v9];
          [v10 doubleValue];
          NSLog(&cfstr_F_0.isa, v9, v11, v12);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (id)valueDictForOperationName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  logArray = [(ADTimeProfiler *)self logArray];
  v6 = [logArray countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {
LABEL_11:

LABEL_13:
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    logArray2 = [(ADTimeProfiler *)self logArray];
    [logArray2 addObject:dictionary];
    goto LABEL_15;
  }

  v7 = *v19;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v19 != v7)
    {
      objc_enumerationMutation(logArray);
    }

    v9 = *(*(&v18 + 1) + 8 * v8);
    allKeys = [v9 allKeys];
    if (![allKeys count])
    {
      goto LABEL_9;
    }

    allKeys2 = [v9 allKeys];
    v12 = [allKeys2 objectAtIndexedSubscript:0];

    if ([v12 isEqualToString:nameCopy])
    {
      break;
    }

LABEL_9:
    if (v6 == ++v8)
    {
      v6 = [logArray countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  logArray3 = [(ADTimeProfiler *)self logArray];
  v14 = [logArray3 indexOfObject:v9];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  logArray2 = [(ADTimeProfiler *)self logArray];
  dictionary = [logArray2 objectAtIndex:v14];
LABEL_15:

  return dictionary;
}

- (void)stopForOperationWithName:(id)name
{
  nameCopy = name;
  v4 = +[ADTimeProfiler currentTimeUsec];
  v5 = [(ADTimeProfiler *)self valueDictForOperationName:nameCopy];
  v6 = [v5 valueForKey:nameCopy];
  longValue = [v6 longValue];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:(v4 - longValue) / 1000.0];
  [v5 setObject:v8 forKey:nameCopy];
}

- (void)startForOperationWithName:(id)name
{
  nameCopy = name;
  v4 = +[ADTimeProfiler currentTimeUsec];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:v4];
  v6 = [(ADTimeProfiler *)self valueDictForOperationName:nameCopy];
  [v6 setObject:v5 forKey:nameCopy];
}

- (id)log
{
  logArray = [(ADTimeProfiler *)self logArray];
  v3 = [logArray copy];

  return v3;
}

- (void)stopWithUTFString:(const char *)string
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  [(ADTimeProfiler *)self stopForOperationWithName:?];
}

- (void)startWithUTFString:(const char *)string
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  [(ADTimeProfiler *)self startForOperationWithName:?];
}

- (void)reset
{
  array = [MEMORY[0x277CBEB18] array];
  [(ADTimeProfiler *)self setLogArray:?];
}

- (ADTimeProfiler)init
{
  v4.receiver = self;
  v4.super_class = ADTimeProfiler;
  result = [(ADTimeProfiler *)&v4 init];
  if (result)
  {
    v3 = result;
    [(ADTimeProfiler *)result reset];
    return v3;
  }

  return result;
}

@end