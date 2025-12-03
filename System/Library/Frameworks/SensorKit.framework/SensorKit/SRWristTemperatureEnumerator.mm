@interface SRWristTemperatureEnumerator
- (SRWristTemperatureEnumerator)init;
- (SRWristTemperatureEnumerator)initWithHAWristTemperatureEnumerator:(id)enumerator;
- (id)allObjects;
- (id)nextObject;
- (void)dealloc;
@end

@implementation SRWristTemperatureEnumerator

- (SRWristTemperatureEnumerator)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRWristTemperatureEnumerator)initWithHAWristTemperatureEnumerator:(id)enumerator
{
  v6.receiver = self;
  v6.super_class = SRWristTemperatureEnumerator;
  v4 = [(SRWristTemperatureEnumerator *)&v6 init];
  if (v4)
  {
    v4->_enumerableHAWristTemperature = enumerator;
  }

  return v4;
}

- (id)nextObject
{
  result = [(HAWristTemperatureEnumerator *)self->_enumerableHAWristTemperature nextObject];
  if (result)
  {
    v3 = -[SRWristTemperature initWithTimestamp:temperature:condition:errorEstimate:temperatureT1:temperatureT2:]([SRWristTemperature alloc], "initWithTimestamp:temperature:condition:errorEstimate:temperatureT1:temperatureT2:", [result timestamp], objc_msgSend(result, "computedTemperature"), objc_msgSend(result, "dataValidity"), objc_msgSend(result, "computedTemperatureErrorEstimate"), objc_msgSend(result, "sensor1Temperature"), objc_msgSend(result, "sensor2Temperature"));

    return v3;
  }

  return result;
}

- (id)allObjects
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_enumerableHAWristTemperature;
  v3 = [(HAWristTemperatureEnumerator *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = -[SRWristTemperature initWithTimestamp:temperature:condition:errorEstimate:temperatureT1:temperatureT2:]([SRWristTemperature alloc], "initWithTimestamp:temperature:condition:errorEstimate:temperatureT1:temperatureT2:", [v7 timestamp], objc_msgSend(v7, "computedTemperature"), objc_msgSend(v7, "dataValidity"), objc_msgSend(v7, "computedTemperatureErrorEstimate"), objc_msgSend(v7, "sensor1Temperature"), objc_msgSend(v7, "sensor2Temperature"));
        [array addObject:v8];
      }

      v4 = [(HAWristTemperatureEnumerator *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  result = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRWristTemperatureEnumerator;
  [(SRWristTemperatureEnumerator *)&v3 dealloc];
}

@end