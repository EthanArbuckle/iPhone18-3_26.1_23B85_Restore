@interface ADTimeProfiler
- (ADTimeProfiler)init;
- (id)log;
- (id)stringLog;
- (id)valueDictForOperationName:(id)a3;
- (void)printLog;
- (void)reset;
- (void)startForOperationWithName:(id)a3;
- (void)startWithUTFString:(const char *)a3;
- (void)stopForOperationWithName:(id)a3;
- (void)stopWithUTFString:(const char *)a3;
@end

@implementation ADTimeProfiler

- (id)stringLog
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = [(ADTimeProfiler *)self log];
  v2 = [MEMORY[0x277CCAB68] string];
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
        v8 = [v7 allKeys];
        if ([v8 count])
        {
          v9 = [v7 allKeys];
          v10 = [v9 objectAtIndexedSubscript:0];

          v11 = [v7 valueForKey:v10];
          [v11 doubleValue];
          [v2 appendFormat:@"%@: %.02fms\n", v10, v12];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v13 = [v2 copy];

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
        v7 = [v6 allKeys];
        if ([v7 count])
        {
          v8 = [v6 allKeys];
          v9 = [v8 objectAtIndexedSubscript:0];

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

- (id)valueDictForOperationName:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(ADTimeProfiler *)self logArray];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {
LABEL_11:

LABEL_13:
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v16 = [(ADTimeProfiler *)self logArray];
    [v16 addObject:v15];
    goto LABEL_15;
  }

  v7 = *v19;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v19 != v7)
    {
      objc_enumerationMutation(v5);
    }

    v9 = *(*(&v18 + 1) + 8 * v8);
    v10 = [v9 allKeys];
    if (![v10 count])
    {
      goto LABEL_9;
    }

    v11 = [v9 allKeys];
    v12 = [v11 objectAtIndexedSubscript:0];

    if ([v12 isEqualToString:v4])
    {
      break;
    }

LABEL_9:
    if (v6 == ++v8)
    {
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  v13 = [(ADTimeProfiler *)self logArray];
  v14 = [v13 indexOfObject:v9];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  v16 = [(ADTimeProfiler *)self logArray];
  v15 = [v16 objectAtIndex:v14];
LABEL_15:

  return v15;
}

- (void)stopForOperationWithName:(id)a3
{
  v9 = a3;
  v4 = +[ADTimeProfiler currentTimeUsec];
  v5 = [(ADTimeProfiler *)self valueDictForOperationName:v9];
  v6 = [v5 valueForKey:v9];
  v7 = [v6 longValue];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:(v4 - v7) / 1000.0];
  [v5 setObject:v8 forKey:v9];
}

- (void)startForOperationWithName:(id)a3
{
  v7 = a3;
  v4 = +[ADTimeProfiler currentTimeUsec];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:v4];
  v6 = [(ADTimeProfiler *)self valueDictForOperationName:v7];
  [v6 setObject:v5 forKey:v7];
}

- (id)log
{
  v2 = [(ADTimeProfiler *)self logArray];
  v3 = [v2 copy];

  return v3;
}

- (void)stopWithUTFString:(const char *)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  [(ADTimeProfiler *)self stopForOperationWithName:?];
}

- (void)startWithUTFString:(const char *)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  [(ADTimeProfiler *)self startForOperationWithName:?];
}

- (void)reset
{
  v3 = [MEMORY[0x277CBEB18] array];
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