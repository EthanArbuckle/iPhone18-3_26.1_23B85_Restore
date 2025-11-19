@interface CPAccNavUpdate
+ (BOOL)isUpdate:(id)a3 equalTo:(id)a4;
+ (id)_descriptionArray:(id)a3 resolveEnums:(BOOL)a4 showNils:(BOOL)a5 prefix:(id)a6;
+ (id)_dictionaryFormat:(id)a3 resolveEnums:(BOOL)a4;
+ (id)_formattedDistanceString:(double)a3;
+ (id)_valueFromChargePrecondition:(id)a3 forParamKey:(id)a4;
+ (id)_valueFromCollection:(id)a3 forParamKey:(id)a4;
+ (id)_valueFromMeasurement:(id)a3 forParamKey:(id)a4;
+ (id)accNavInfoWithUpdate:(id)a3 component:(id)a4 customValueBlock:(id)a5;
+ (id)accNavParameterKeysIndexedForUpdate:(Class)a3;
+ (id)accNavParametersIndexedForUpdate:(Class)a3;
+ (id)copyUpdate:(id)a3;
+ (id)description:(id)a3;
+ (id)iapDescription:(id)a3;
+ (id)update:(id)a3 valueForParam:(id)a4;
+ (id)update:(id)a3 valueForParamKey:(id)a4;
+ (id)update:(id)a3 valueForProperty:(id)a4;
+ (id)updateClass:(Class)a3 paramForProperty:(id)a4;
+ (void)_update:(id)a3 resetValueForParameter:(id)a4;
+ (void)configureTypesForUpdateClass:(Class)a3;
+ (void)decodeUpdate:(id)a3 withCoder:(id)a4;
+ (void)encodeUpdate:(id)a3 withCoder:(id)a4;
+ (void)enumerateUpdate:(id)a3 paramKeysAndValuesWithBlock:(id)a4;
+ (void)enumerateUpdate:(id)a3 paramsAndValuesWithBlock:(id)a4;
+ (void)enumerateUpdateClass:(Class)a3 paramKeysWithBlock:(id)a4;
+ (void)enumerateUpdateClass:(Class)a3 paramsWithBlock:(id)a4;
+ (void)resetUpdate:(id)a3;
+ (void)update:(id)a3 resetValueForProperty:(id)a4;
@end

@implementation CPAccNavUpdate

+ (void)configureTypesForUpdateClass:(Class)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(objc_class *)a3 accNavParameters];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) configureTypesForUpdate:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)accNavParametersIndexedForUpdate:(Class)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(objc_class *)a3 accNavParameters];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 property];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)accNavParameterKeysIndexedForUpdate:(Class)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(objc_class *)a3 accNavParameters];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v8 keys];
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v14, "key")}];
              [v4 setObject:v14 forKeyedSubscript:v15];
            }

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)updateClass:(Class)a3 paramForProperty:(id)a4
{
  v5 = a4;
  v6 = [(objc_class *)a3 accNavParametersIndexed];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

+ (BOOL)isUpdate:(id)a3 equalTo:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    [objc_opt_class() accNavParameters];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v25 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 property];
          v16 = [v5 valueForKey:v15];

          v17 = [v14 property];
          v18 = [v6 valueForKey:v17];

          if (v16 | v18)
          {
            v19 = !v16 || v18 == 0;
            if (v19 || v16 != v18 && ([v16 isEqual:v18] & 1) == 0)
            {

              v8 = 0;
              goto LABEL_19;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_19:
  }

  else
  {
    v8 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (void)resetUpdate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 configureTypesForUpdateClass:objc_opt_class()];
  v5 = [objc_opt_class() accNavParameters];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [a1 _update:v4 resetValueForParameter:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)update:(id)a3 resetValueForProperty:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() accNavParametersIndexed];
  v9 = [v8 objectForKeyedSubscript:v6];

  [a1 _update:v7 resetValueForParameter:v9];
}

+ (void)_update:(id)a3 resetValueForParameter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 primaryKey];
  v8 = [v7 enumType];

  v9 = [v6 primaryKey];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 enumType];
    v12 = [v6 primaryKey];
    v13 = NotSetFromCPNavEnum(v11, [v12 accNavType]);
    v14 = [v6 property];
    [v5 setValue:v13 forKey:v14];

    goto LABEL_16;
  }

  v15 = [v9 isIntegerValue];

  v16 = [v6 primaryKey];
  v17 = v16;
  if (!v15)
  {
    v19 = [v16 isTimeIntervalValue];

    if (v19)
    {
      v10 = [v6 property];
      v20 = &unk_284A044C0;
    }

    else
    {
      v21 = [v6 primaryKey];
      v22 = [v21 isBoolValue];

      v10 = [v6 property];
      if (!v22)
      {
        v23 = v5;
        v20 = 0;
        goto LABEL_15;
      }

      v20 = MEMORY[0x277CBEC28];
    }

    v23 = v5;
LABEL_15:
    [v23 setValue:v20 forKey:v10];
    goto LABEL_16;
  }

  v10 = NotSetFromCPAccNavType([v16 accNavType]);

  if (v10)
  {
    v18 = [v6 property];
    [v5 setValue:v10 forKey:v18];
  }

  else
  {
    v18 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CPAccNavUpdate _update:v6 resetValueForParameter:v18];
    }
  }

LABEL_16:
}

+ (id)update:(id)a3 valueForProperty:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() accNavParametersIndexed];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [CPAccNavUpdate update:v6 valueForParam:v8];

  return v9;
}

+ (id)update:(id)a3 valueForParam:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 property];
  v8 = [v6 valueForKey:v7];

  v9 = [v5 primaryKey];
  v10 = [v9 enumType];
  if (v10 || ([v5 primaryKey], v7 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v7, "isIntegerValue") & 1) != 0))
  {
    v11 = [v5 primaryKey];
    v12 = [v11 unsetValue];
    v13 = [v8 isEqual:v12];

    if (!v10)
    {
    }

    if (v13)
    {
LABEL_12:
      v14 = v8;
      v8 = 0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v14 = [v5 primaryKey];
  if ([v14 isTimeIntervalValue])
  {
    if ([v8 isEqual:&unk_284A044C0])
    {
    }

    else
    {
      v15 = [v5 primaryKey];
      v16 = [v15 unsetValue];
      v17 = [v8 isEqual:v16];

      if (!v17)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_12;
  }

LABEL_13:

LABEL_14:

  return v8;
}

+ (id)update:(id)a3 valueForParamKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 param];
  v9 = [v8 property];
  v10 = [v7 valueForKey:v9];

  if (v10)
  {
    v11 = [v6 param];
    v12 = [v11 objcType];
    v13 = objc_opt_class();

    if (v12 == v13)
    {
      v17 = [a1 _valueFromMeasurement:v10 forParamKey:v6];
    }

    else
    {
      if ([v6 enumType] || objc_msgSend(v6, "isIntegerValue")) && (NotSetFromCPAccNavType(objc_msgSend(v6, "accNavType")), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v10, "isEqual:", v14), v14, (v15) || objc_msgSend(v6, "isTimeIntervalValue") && (objc_msgSend(v10, "isEqual:", &unk_284A044C0))
      {
        v16 = 0;
LABEL_19:

        v10 = v16;
        goto LABEL_20;
      }

      v18 = [v6 param];
      v19 = [v18 objcType];
      v20 = objc_opt_class();

      if (v19 == v20)
      {
        v29 = [v6 accNavType];
        [v10 timeIntervalSince1970];
        v17 = NSNumberForCPAccNavTypeFromDouble(v29, v30);
      }

      else
      {
        v21 = [v6 param];
        v22 = [v21 objcType];
        if (v22 == objc_opt_class())
        {
        }

        else
        {
          v23 = [v6 param];
          v24 = [v23 objcType];
          v25 = objc_opt_class();

          if (v24 != v25)
          {
            v26 = [v6 param];
            v27 = [v26 objcType];
            v28 = objc_opt_class();

            if (v27 != v28)
            {
              goto LABEL_20;
            }

            v17 = [a1 _valueFromChargePrecondition:v10 forParamKey:v6];
            goto LABEL_18;
          }
        }

        v17 = [a1 _valueFromCollection:v10 forParamKey:v6];
      }
    }

LABEL_18:
    v16 = v17;
    goto LABEL_19;
  }

LABEL_20:

  return v10;
}

+ (id)_valueFromMeasurement:(id)a3 forParamKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 dimension];

  if (v8)
  {
    v9 = [v7 dimension];
    v10 = [v6 accNav_safeToBeConvertedToUnit:v9];

    if (!v10)
    {
      v18 = 0;
      goto LABEL_9;
    }

    v11 = [v7 dimension];
    v12 = [v6 measurementByConvertingToUnit:v11];
    [v12 doubleValue];
    v14 = v13;

    v15 = NSNumberForCPAccNavTypeFromDouble([v7 accNavType], v14);
  }

  else
  {
    if ([v7 enumType] == 5)
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = [v6 unit];
      v18 = [v16 numberWithUnsignedChar:CPDistanceUnitsFromNSUnitLength(v17)];

      goto LABEL_9;
    }

    [v6 doubleValue];
    v15 = [a1 _formattedDistanceString:?];
  }

  v18 = v15;
LABEL_9:

  return v18;
}

+ (id)_valueFromCollection:(id)a3 forParamKey:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 param];
  v8 = [v7 objcType];
  v9 = objc_opt_class();

  if (v8 == v9)
  {
LABEL_7:
    v15 = v5;
    goto LABEL_8;
  }

  v10 = [v6 param];
  v11 = [v10 objcType];
  v12 = objc_opt_class();

  if (v11 == v12)
  {
    v15 = [v5 allObjects];
LABEL_8:
    v17 = v15;
    goto LABEL_10;
  }

  v13 = [v6 param];
  v14 = [v13 objcType];
  if (v14 == objc_opt_class())
  {
    v16 = [v6 key];

    if (v16 != 23)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  v17 = 0;
LABEL_10:
  if ([v17 count])
  {
    v31 = v5;
    v18 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v17;
    obj = v17;
    v19 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v34 + 1) + 8 * i);
          v24 = [v6 param];
          v25 = [v24 collectionGeneric];
          v26 = objc_opt_class();

          if (v25 == v26)
          {
            v27 = [a1 _valueFromMeasurement:v23 forParamKey:v6];
            [v18 addObject:v27];
          }

          else
          {
            [v18 addObject:v23];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v20);
    }

    v17 = v30;
    v5 = v31;
  }

  else
  {
    v18 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_valueFromChargePrecondition:(id)a3 forParamKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 key];
  v9 = 0;
  if (v8 > 24)
  {
    if (v8 == 25)
    {
      v10 = [v6 departureBatteryLevel];
    }

    else
    {
      if (v8 != 26)
      {
        goto LABEL_12;
      }

      v10 = [v6 finalWaypointBatteryLevel];
    }

    goto LABEL_10;
  }

  if (v8 != 23)
  {
    if (v8 != 24)
    {
      goto LABEL_12;
    }

    v10 = [v6 arrivalBatteryLevel];
LABEL_10:
    v11 = v10;
    v12 = [a1 _valueFromMeasurement:v10 forParamKey:v7];
    goto LABEL_11;
  }

  v11 = [v6 connectors];
  v12 = [a1 _valueFromCollection:v11 forParamKey:v7];
LABEL_11:
  v9 = v12;

LABEL_12:

  return v9;
}

+ (void)enumerateUpdateClass:(Class)a3 paramsWithBlock:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(objc_class *)a3 conformsToProtocol:&unk_284A05938])
  {
    v6 = [(objc_class *)a3 accNavParameters];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v5[2](v5, *(*(&v12 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)enumerateUpdateClass:(Class)a3 paramKeysWithBlock:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(objc_class *)a3 conformsToProtocol:&unk_284A05938])
  {
    v6 = [(objc_class *)a3 accNavParameters];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v12 = [v11 keys];
          v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v19;
            do
            {
              v16 = 0;
              do
              {
                if (*v19 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v5[2](v5, *(*(&v18 + 1) + 8 * v16++));
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v14);
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)enumerateUpdate:(id)a3 paramsAndValuesWithBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CPAccNavUpdate_enumerateUpdate_paramsAndValuesWithBlock___block_invoke;
  v10[3] = &unk_278A11898;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [CPAccNavUpdate enumerateUpdateClass:v7 paramsWithBlock:v10];
}

void __59__CPAccNavUpdate_enumerateUpdate_paramsAndValuesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [CPAccNavUpdate update:v3 valueForParam:v4];
  (*(*(a1 + 40) + 16))();
}

+ (void)enumerateUpdate:(id)a3 paramKeysAndValuesWithBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__CPAccNavUpdate_enumerateUpdate_paramKeysAndValuesWithBlock___block_invoke;
  v10[3] = &unk_278A118C0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [CPAccNavUpdate enumerateUpdateClass:v7 paramKeysWithBlock:v10];
}

void __62__CPAccNavUpdate_enumerateUpdate_paramKeysAndValuesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [CPAccNavUpdate update:v3 valueForParamKey:v4];
  (*(*(a1 + 40) + 16))();
}

+ (id)_dictionaryFormat:(id)a3 resolveEnums:(BOOL)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__CPAccNavUpdate__dictionaryFormat_resolveEnums___block_invoke;
  v11[3] = &unk_278A118E8;
  v14 = a4;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  [CPAccNavUpdate enumerateUpdate:v8 paramKeysAndValuesWithBlock:v11];
  v9 = [v7 copy];

  return v9;
}

void __49__CPAccNavUpdate__dictionaryFormat_resolveEnums___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 hasVariants])
  {
    v7 = [v6 firstObject];
  }

  else
  {
    v8 = [v5 param];
    v9 = [objc_msgSend(v8 "collectionGeneric")];

    v7 = v6;
    if (v9)
    {
      v10 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          v15 = 0;
          do
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [CPAccNavUpdate _dictionaryFormat:*(*(&v25 + 1) + 8 * v15) resolveEnums:*(a1 + 48), v25];
            [v10 addObject:v16];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      if ([v10 count])
      {
        v7 = [v10 copy];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  if (*(a1 + 48) == 1)
  {
    if ([v5 enumType])
    {
      v17 = +[CPNavigationEnum stringForEnum:navEnum:](CPNavigationEnum, "stringForEnum:navEnum:", [v7 integerValue], objc_msgSend(v5, "enumType"));
    }

    else
    {
      if (![v5 isBoolValue])
      {
        goto LABEL_23;
      }

      v18 = [v7 BOOLValue];
      v19 = @"NO";
      if (v18)
      {
        v19 = @"YES";
      }

      v17 = v19;
    }

    v20 = v17;

    v7 = v20;
  }

LABEL_23:
  if (*(a1 + 48))
  {
    v21 = *(a1 + 32);
    +[CPAccNavInfoType stringForUpdateClass:infoType:](CPAccNavInfoType, "stringForUpdateClass:infoType:", objc_opt_class(), [v5 key]);
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v5, "key")}];
  }
  v22 = ;
  v23 = [v7 copy];
  [*(a1 + 40) setObject:v23 forKeyedSubscript:v22];

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)iapDescription:(id)a3
{
  v3 = [a1 _descriptionArray:a3 resolveEnums:0 showNils:1 prefix:@"     "];
  v4 = [v3 componentsJoinedByString:@"\n"];

  return v4;
}

+ (id)description:(id)a3
{
  v3 = [a1 _descriptionArray:a3 resolveEnums:1 showNils:1 prefix:@"     "];
  v4 = [v3 componentsJoinedByString:@"\n"];

  return v4;
}

+ (id)_descriptionArray:(id)a3 resolveEnums:(BOOL)a4 showNils:(BOOL)a5 prefix:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__CPAccNavUpdate__descriptionArray_resolveEnums_showNils_prefix___block_invoke;
  v18[3] = &unk_278A11910;
  v22 = a4;
  v23 = a5;
  v19 = v10;
  v20 = v9;
  v12 = v11;
  v21 = v12;
  v13 = v9;
  v14 = v10;
  [CPAccNavUpdate enumerateUpdate:v13 paramKeysAndValuesWithBlock:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

void __65__CPAccNavUpdate__descriptionArray_resolveEnums_showNils_prefix___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = 0x277CBE000uLL;
  if ([v5 hasVariants])
  {
    v8 = [v6 firstObject];

    goto LABEL_22;
  }

  v9 = [v5 param];
  v10 = [objc_msgSend(v9 "collectionGeneric")];

  if (!v10)
  {
    v27 = [v5 param];
    v28 = [v27 objcType];
    v29 = objc_opt_class();

    if (v6 && v28 == v29)
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = [v6 componentsJoinedByString:{@", "}];
      v8 = [v30 stringWithFormat:@"[%@]", v31];
    }

    else
    {
      v32 = [v5 param];
      v33 = [v32 objcType];
      v34 = objc_opt_class();

      v8 = v6;
      if (!v6)
      {
        goto LABEL_22;
      }

      v8 = v6;
      if (v33 != v34)
      {
        goto LABEL_22;
      }

      v35 = MEMORY[0x277CCACA8];
      v31 = [v6 allObjects];
      v36 = [v31 componentsJoinedByString:{@", "}];
      v8 = [v35 stringWithFormat:@"[%@]", v36];
    }

    goto LABEL_22;
  }

  v52 = v5;
  v11 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v51 = v6;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v54 = *v56;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v56 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        v16 = MEMORY[0x277CCACA8];
        v17 = *(a1 + 32);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v16 stringWithFormat:@"%@     %@ {", v17, v19];
        [v11 addObject:v20];

        v21 = *(a1 + 56);
        v22 = *(a1 + 57);
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@          ", *(a1 + 32)];
        v24 = [CPAccNavUpdate _descriptionArray:v15 resolveEnums:v21 showNils:v22 prefix:v23];
        [v11 addObjectsFromArray:v24];

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@     }", *(a1 + 32)];
        [v11 addObject:v25];
      }

      v13 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v13);
  }

  if ([v11 count])
  {
    v26 = v11;
  }

  else
  {
    v26 = 0;
  }

  v8 = v26;

  v6 = v51;
  v5 = v52;
  v7 = 0x277CBE000;
LABEL_22:
  if (*(a1 + 56) != 1)
  {
    goto LABEL_30;
  }

  if ([v5 enumType])
  {
    v37 = +[CPNavigationEnum stringForEnum:navEnum:](CPNavigationEnum, "stringForEnum:navEnum:", [v8 integerValue], objc_msgSend(v5, "enumType"));
  }

  else
  {
    if (![v5 isBoolValue])
    {
      goto LABEL_30;
    }

    v38 = [v8 BOOLValue];
    v39 = @"NO";
    if (v38)
    {
      v39 = @"YES";
    }

    v37 = v39;
  }

  v40 = v37;

  v8 = v40;
LABEL_30:
  if (*(a1 + 56))
  {
    v41 = *(a1 + 40);
    +[CPAccNavInfoType stringForUpdateClass:infoType:](CPAccNavInfoType, "stringForUpdateClass:infoType:", objc_opt_class(), [v5 key]);
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v5, "key")}];
  }
  v42 = ;
  if (v8 || *(a1 + 57) == 1)
  {
    v43 = *(v7 + 2656);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
    {
      v44 = *(a1 + 48);
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@: [", *(a1 + 32), v42];
      [v44 addObject:v45];

      [*(a1 + 48) addObjectsFromArray:v8];
      v46 = *(a1 + 48);
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@]", *(a1 + 32), v49, v50];
    }

    else
    {
      v46 = *(a1 + 48);
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@: %@", *(a1 + 32), v42, v8];
    }
    v47 = ;
    [v46 addObject:v47];
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)_formattedDistanceString:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v4 setNumberStyle:1];
  [v4 setMaximumFractionDigits:a3 < 100.0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

+ (id)copyUpdate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [objc_opt_class() accNavParameters];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 encodeable])
        {
          v11 = [v10 property];
          v12 = [v3 valueForKey:v11];

          v13 = [v10 property];
          [v4 setValue:v12 forKey:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (void)decodeUpdate:(id)a3 withCoder:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v28 = a4;
  v5 = [objc_opt_class() accNavParameters];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = 0x277CBE000uLL;
    v10 = 0x277CBE000uLL;
    do
    {
      v11 = 0;
      v26 = v7;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        if ([v12 encodeable])
        {
          v13 = [v12 objcType];
          v14 = *(v9 + 2656);
          if ((v13 == objc_opt_class() || (v15 = *(v10 + 2968), v13 == objc_opt_class())) && [v12 collectionGeneric])
          {
            v16 = v8;
            v17 = *(v10 + 2968);
            v33[0] = v13;
            v33[1] = [v12 collectionGeneric];
            v18 = [*(v9 + 2656) arrayWithObjects:v33 count:2];
            v19 = [v17 setWithArray:v18];
            [v12 property];
            v20 = v10;
            v22 = v21 = v9;
            v23 = [v28 decodeObjectOfClasses:v19 forKey:v22];

            v9 = v21;
            v10 = v20;

            v8 = v16;
            v7 = v26;
          }

          else
          {
            v18 = [v12 property];
            v23 = [v28 decodeObjectOfClass:v13 forKey:v18];
          }

          if (v23)
          {
            v24 = [v12 property];
            [v27 setValue:v23 forKey:v24];
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)encodeUpdate:(id)a3 withCoder:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() accNavParameters];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 encodeable])
        {
          v13 = [v12 property];
          v14 = [v5 valueForKey:v13];

          v15 = [v12 property];
          [v6 encodeObject:v14 forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)accNavInfoWithUpdate:(id)a3 component:(id)a4 customValueBlock:(id)a5
{
  v6 = a3;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0x277CE82F8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0x277CE82E8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 0x277CE82D8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = 0;
          goto LABEL_10;
        }

        v8 = 0x277CE82E0;
      }
    }
  }

  v9 = *v8;
  v10 = objc_opt_new();
LABEL_10:
  v11 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__CPAccNavUpdate_accNavInfoWithUpdate_component_customValueBlock___block_invoke;
  v18[3] = &unk_278A11938;
  v21 = v7;
  v19 = v6;
  v12 = v10;
  v20 = v12;
  v13 = v6;
  v14 = v7;
  [CPAccNavUpdate enumerateUpdateClass:v11 paramKeysWithBlock:v18];
  v15 = v20;
  v16 = v12;

  return v12;
}

void __66__CPAccNavUpdate_accNavInfoWithUpdate_component_customValueBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = (*(*(a1 + 48) + 16))();
  if (v3 || ([CPAccNavUpdate update:*(a1 + 32) valueForParamKey:v5], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [*(a1 + 40) setInfo:objc_msgSend(v5 data:{"key"), v3}];
  }
}

+ (void)_update:(void *)a1 resetValueForParameter:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 property];
  v5 = [a1 primaryKey];
  v6 = [v5 key];
  v7 = [a1 primaryKey];
  v9 = 136315906;
  v10 = "+[CPAccNavUpdate _update:resetValueForParameter:]";
  v11 = 2112;
  v12 = v4;
  v13 = 1024;
  v14 = v6;
  v15 = 2048;
  v16 = [v7 accNavType];
  _os_log_error_impl(&dword_236ED4000, a2, OS_LOG_TYPE_ERROR, "%s unexpected nil for %@ primaryKey=%d accNavType=%ld", &v9, 0x26u);

  v8 = *MEMORY[0x277D85DE8];
}

@end