@interface CPAccNavUpdate
+ (BOOL)isUpdate:(id)update equalTo:(id)to;
+ (id)_descriptionArray:(id)array resolveEnums:(BOOL)enums showNils:(BOOL)nils prefix:(id)prefix;
+ (id)_dictionaryFormat:(id)format resolveEnums:(BOOL)enums;
+ (id)_formattedDistanceString:(double)string;
+ (id)_valueFromChargePrecondition:(id)precondition forParamKey:(id)key;
+ (id)_valueFromCollection:(id)collection forParamKey:(id)key;
+ (id)_valueFromMeasurement:(id)measurement forParamKey:(id)key;
+ (id)accNavInfoWithUpdate:(id)update component:(id)component customValueBlock:(id)block;
+ (id)accNavParameterKeysIndexedForUpdate:(Class)update;
+ (id)accNavParametersIndexedForUpdate:(Class)update;
+ (id)copyUpdate:(id)update;
+ (id)description:(id)description;
+ (id)iapDescription:(id)description;
+ (id)update:(id)update valueForParam:(id)param;
+ (id)update:(id)update valueForParamKey:(id)key;
+ (id)update:(id)update valueForProperty:(id)property;
+ (id)updateClass:(Class)class paramForProperty:(id)property;
+ (void)_update:(id)_update resetValueForParameter:(id)parameter;
+ (void)configureTypesForUpdateClass:(Class)class;
+ (void)decodeUpdate:(id)update withCoder:(id)coder;
+ (void)encodeUpdate:(id)update withCoder:(id)coder;
+ (void)enumerateUpdate:(id)update paramKeysAndValuesWithBlock:(id)block;
+ (void)enumerateUpdate:(id)update paramsAndValuesWithBlock:(id)block;
+ (void)enumerateUpdateClass:(Class)class paramKeysWithBlock:(id)block;
+ (void)enumerateUpdateClass:(Class)class paramsWithBlock:(id)block;
+ (void)resetUpdate:(id)update;
+ (void)update:(id)update resetValueForProperty:(id)property;
@end

@implementation CPAccNavUpdate

+ (void)configureTypesForUpdateClass:(Class)class
{
  v15 = *MEMORY[0x277D85DE8];
  accNavParameters = [(objc_class *)class accNavParameters];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [accNavParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(accNavParameters);
        }

        [*(*(&v10 + 1) + 8 * v8++) configureTypesForUpdate:class];
      }

      while (v6 != v8);
      v6 = [accNavParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)accNavParametersIndexedForUpdate:(Class)update
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accNavParameters = [(objc_class *)update accNavParameters];
  v6 = [accNavParameters countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(accNavParameters);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        property = [v10 property];
        [v4 setObject:v10 forKeyedSubscript:property];
      }

      v7 = [accNavParameters countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)accNavParameterKeysIndexedForUpdate:(Class)update
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(objc_class *)update accNavParameters];
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
        keys = [v8 keys];
        v10 = [keys countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(keys);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v14, "key")}];
              [v4 setObject:v14 forKeyedSubscript:v15];
            }

            v11 = [keys countByEnumeratingWithState:&v20 objects:v28 count:16];
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

+ (id)updateClass:(Class)class paramForProperty:(id)property
{
  propertyCopy = property;
  accNavParametersIndexed = [(objc_class *)class accNavParametersIndexed];
  v7 = [accNavParametersIndexed objectForKeyedSubscript:propertyCopy];

  return v7;
}

+ (BOOL)isUpdate:(id)update equalTo:(id)to
{
  v27 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  toCopy = to;
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
          property = [v14 property];
          v16 = [updateCopy valueForKey:property];

          property2 = [v14 property];
          v18 = [toCopy valueForKey:property2];

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

+ (void)resetUpdate:(id)update
{
  v16 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  [self configureTypesForUpdateClass:objc_opt_class()];
  accNavParameters = [objc_opt_class() accNavParameters];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [accNavParameters countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accNavParameters);
        }

        [self _update:updateCopy resetValueForParameter:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [accNavParameters countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)update:(id)update resetValueForProperty:(id)property
{
  propertyCopy = property;
  updateCopy = update;
  accNavParametersIndexed = [objc_opt_class() accNavParametersIndexed];
  v9 = [accNavParametersIndexed objectForKeyedSubscript:propertyCopy];

  [self _update:updateCopy resetValueForParameter:v9];
}

+ (void)_update:(id)_update resetValueForParameter:(id)parameter
{
  _updateCopy = _update;
  parameterCopy = parameter;
  primaryKey = [parameterCopy primaryKey];
  enumType = [primaryKey enumType];

  primaryKey2 = [parameterCopy primaryKey];
  property2 = primaryKey2;
  if (enumType)
  {
    enumType2 = [primaryKey2 enumType];
    primaryKey3 = [parameterCopy primaryKey];
    v13 = NotSetFromCPNavEnum(enumType2, [primaryKey3 accNavType]);
    property = [parameterCopy property];
    [_updateCopy setValue:v13 forKey:property];

    goto LABEL_16;
  }

  isIntegerValue = [primaryKey2 isIntegerValue];

  primaryKey4 = [parameterCopy primaryKey];
  v17 = primaryKey4;
  if (!isIntegerValue)
  {
    isTimeIntervalValue = [primaryKey4 isTimeIntervalValue];

    if (isTimeIntervalValue)
    {
      property2 = [parameterCopy property];
      v20 = &unk_284A044C0;
    }

    else
    {
      primaryKey5 = [parameterCopy primaryKey];
      isBoolValue = [primaryKey5 isBoolValue];

      property2 = [parameterCopy property];
      if (!isBoolValue)
      {
        v23 = _updateCopy;
        v20 = 0;
        goto LABEL_15;
      }

      v20 = MEMORY[0x277CBEC28];
    }

    v23 = _updateCopy;
LABEL_15:
    [v23 setValue:v20 forKey:property2];
    goto LABEL_16;
  }

  property2 = NotSetFromCPAccNavType([primaryKey4 accNavType]);

  if (property2)
  {
    property3 = [parameterCopy property];
    [_updateCopy setValue:property2 forKey:property3];
  }

  else
  {
    property3 = CarPlayFrameworkACCNavLogging();
    if (os_log_type_enabled(property3, OS_LOG_TYPE_ERROR))
    {
      [CPAccNavUpdate _update:parameterCopy resetValueForParameter:property3];
    }
  }

LABEL_16:
}

+ (id)update:(id)update valueForProperty:(id)property
{
  propertyCopy = property;
  updateCopy = update;
  accNavParametersIndexed = [objc_opt_class() accNavParametersIndexed];
  v8 = [accNavParametersIndexed objectForKeyedSubscript:propertyCopy];

  v9 = [CPAccNavUpdate update:updateCopy valueForParam:v8];

  return v9;
}

+ (id)update:(id)update valueForParam:(id)param
{
  paramCopy = param;
  updateCopy = update;
  property = [paramCopy property];
  v8 = [updateCopy valueForKey:property];

  primaryKey = [paramCopy primaryKey];
  enumType = [primaryKey enumType];
  if (enumType || ([paramCopy primaryKey], property = objc_claimAutoreleasedReturnValue(), (objc_msgSend(property, "isIntegerValue") & 1) != 0))
  {
    primaryKey2 = [paramCopy primaryKey];
    unsetValue = [primaryKey2 unsetValue];
    v13 = [v8 isEqual:unsetValue];

    if (!enumType)
    {
    }

    if (v13)
    {
LABEL_12:
      primaryKey3 = v8;
      v8 = 0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  primaryKey3 = [paramCopy primaryKey];
  if ([primaryKey3 isTimeIntervalValue])
  {
    if ([v8 isEqual:&unk_284A044C0])
    {
    }

    else
    {
      primaryKey4 = [paramCopy primaryKey];
      unsetValue2 = [primaryKey4 unsetValue];
      v17 = [v8 isEqual:unsetValue2];

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

+ (id)update:(id)update valueForParamKey:(id)key
{
  keyCopy = key;
  updateCopy = update;
  param = [keyCopy param];
  property = [param property];
  v10 = [updateCopy valueForKey:property];

  if (v10)
  {
    param2 = [keyCopy param];
    objcType = [param2 objcType];
    v13 = objc_opt_class();

    if (objcType == v13)
    {
      v17 = [self _valueFromMeasurement:v10 forParamKey:keyCopy];
    }

    else
    {
      if ([keyCopy enumType] || objc_msgSend(keyCopy, "isIntegerValue")) && (NotSetFromCPAccNavType(objc_msgSend(keyCopy, "accNavType")), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v10, "isEqual:", v14), v14, (v15) || objc_msgSend(keyCopy, "isTimeIntervalValue") && (objc_msgSend(v10, "isEqual:", &unk_284A044C0))
      {
        v16 = 0;
LABEL_19:

        v10 = v16;
        goto LABEL_20;
      }

      param3 = [keyCopy param];
      objcType2 = [param3 objcType];
      v20 = objc_opt_class();

      if (objcType2 == v20)
      {
        accNavType = [keyCopy accNavType];
        [v10 timeIntervalSince1970];
        v17 = NSNumberForCPAccNavTypeFromDouble(accNavType, v30);
      }

      else
      {
        param4 = [keyCopy param];
        objcType3 = [param4 objcType];
        if (objcType3 == objc_opt_class())
        {
        }

        else
        {
          param5 = [keyCopy param];
          objcType4 = [param5 objcType];
          v25 = objc_opt_class();

          if (objcType4 != v25)
          {
            param6 = [keyCopy param];
            objcType5 = [param6 objcType];
            v28 = objc_opt_class();

            if (objcType5 != v28)
            {
              goto LABEL_20;
            }

            v17 = [self _valueFromChargePrecondition:v10 forParamKey:keyCopy];
            goto LABEL_18;
          }
        }

        v17 = [self _valueFromCollection:v10 forParamKey:keyCopy];
      }
    }

LABEL_18:
    v16 = v17;
    goto LABEL_19;
  }

LABEL_20:

  return v10;
}

+ (id)_valueFromMeasurement:(id)measurement forParamKey:(id)key
{
  measurementCopy = measurement;
  keyCopy = key;
  dimension = [keyCopy dimension];

  if (dimension)
  {
    dimension2 = [keyCopy dimension];
    v10 = [measurementCopy accNav_safeToBeConvertedToUnit:dimension2];

    if (!v10)
    {
      v18 = 0;
      goto LABEL_9;
    }

    dimension3 = [keyCopy dimension];
    v12 = [measurementCopy measurementByConvertingToUnit:dimension3];
    [v12 doubleValue];
    v14 = v13;

    v15 = NSNumberForCPAccNavTypeFromDouble([keyCopy accNavType], v14);
  }

  else
  {
    if ([keyCopy enumType] == 5)
    {
      v16 = MEMORY[0x277CCABB0];
      unit = [measurementCopy unit];
      v18 = [v16 numberWithUnsignedChar:CPDistanceUnitsFromNSUnitLength(unit)];

      goto LABEL_9;
    }

    [measurementCopy doubleValue];
    v15 = [self _formattedDistanceString:?];
  }

  v18 = v15;
LABEL_9:

  return v18;
}

+ (id)_valueFromCollection:(id)collection forParamKey:(id)key
{
  v39 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  keyCopy = key;
  param = [keyCopy param];
  objcType = [param objcType];
  v9 = objc_opt_class();

  if (objcType == v9)
  {
LABEL_7:
    allObjects = collectionCopy;
    goto LABEL_8;
  }

  param2 = [keyCopy param];
  objcType2 = [param2 objcType];
  v12 = objc_opt_class();

  if (objcType2 == v12)
  {
    allObjects = [collectionCopy allObjects];
LABEL_8:
    v17 = allObjects;
    goto LABEL_10;
  }

  param3 = [keyCopy param];
  objcType3 = [param3 objcType];
  if (objcType3 == objc_opt_class())
  {
    v16 = [keyCopy key];

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
    v31 = collectionCopy;
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
          param4 = [keyCopy param];
          collectionGeneric = [param4 collectionGeneric];
          v26 = objc_opt_class();

          if (collectionGeneric == v26)
          {
            v27 = [self _valueFromMeasurement:v23 forParamKey:keyCopy];
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
    collectionCopy = v31;
  }

  else
  {
    v18 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_valueFromChargePrecondition:(id)precondition forParamKey:(id)key
{
  preconditionCopy = precondition;
  keyCopy = key;
  v8 = [keyCopy key];
  v9 = 0;
  if (v8 > 24)
  {
    if (v8 == 25)
    {
      departureBatteryLevel = [preconditionCopy departureBatteryLevel];
    }

    else
    {
      if (v8 != 26)
      {
        goto LABEL_12;
      }

      departureBatteryLevel = [preconditionCopy finalWaypointBatteryLevel];
    }

    goto LABEL_10;
  }

  if (v8 != 23)
  {
    if (v8 != 24)
    {
      goto LABEL_12;
    }

    departureBatteryLevel = [preconditionCopy arrivalBatteryLevel];
LABEL_10:
    connectors = departureBatteryLevel;
    v12 = [self _valueFromMeasurement:departureBatteryLevel forParamKey:keyCopy];
    goto LABEL_11;
  }

  connectors = [preconditionCopy connectors];
  v12 = [self _valueFromCollection:connectors forParamKey:keyCopy];
LABEL_11:
  v9 = v12;

LABEL_12:

  return v9;
}

+ (void)enumerateUpdateClass:(Class)class paramsWithBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if ([(objc_class *)class conformsToProtocol:&unk_284A05938])
  {
    accNavParameters = [(objc_class *)class accNavParameters];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [accNavParameters countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(accNavParameters);
          }

          blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [accNavParameters countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)enumerateUpdateClass:(Class)class paramKeysWithBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if ([(objc_class *)class conformsToProtocol:&unk_284A05938])
  {
    accNavParameters = [(objc_class *)class accNavParameters];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [accNavParameters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(accNavParameters);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          keys = [v11 keys];
          v13 = [keys countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                  objc_enumerationMutation(keys);
                }

                blockCopy[2](blockCopy, *(*(&v18 + 1) + 8 * v16++));
              }

              while (v14 != v16);
              v14 = [keys countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v14);
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [accNavParameters countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)enumerateUpdate:(id)update paramsAndValuesWithBlock:(id)block
{
  updateCopy = update;
  blockCopy = block;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CPAccNavUpdate_enumerateUpdate_paramsAndValuesWithBlock___block_invoke;
  v10[3] = &unk_278A11898;
  v11 = updateCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = updateCopy;
  [CPAccNavUpdate enumerateUpdateClass:v7 paramsWithBlock:v10];
}

void __59__CPAccNavUpdate_enumerateUpdate_paramsAndValuesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [CPAccNavUpdate update:v3 valueForParam:v4];
  (*(*(a1 + 40) + 16))();
}

+ (void)enumerateUpdate:(id)update paramKeysAndValuesWithBlock:(id)block
{
  updateCopy = update;
  blockCopy = block;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__CPAccNavUpdate_enumerateUpdate_paramKeysAndValuesWithBlock___block_invoke;
  v10[3] = &unk_278A118C0;
  v11 = updateCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = updateCopy;
  [CPAccNavUpdate enumerateUpdateClass:v7 paramKeysWithBlock:v10];
}

void __62__CPAccNavUpdate_enumerateUpdate_paramKeysAndValuesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [CPAccNavUpdate update:v3 valueForParamKey:v4];
  (*(*(a1 + 40) + 16))();
}

+ (id)_dictionaryFormat:(id)format resolveEnums:(BOOL)enums
{
  formatCopy = format;
  v6 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__CPAccNavUpdate__dictionaryFormat_resolveEnums___block_invoke;
  v11[3] = &unk_278A118E8;
  enumsCopy = enums;
  v12 = formatCopy;
  v13 = v6;
  v7 = v6;
  v8 = formatCopy;
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

+ (id)iapDescription:(id)description
{
  v3 = [self _descriptionArray:description resolveEnums:0 showNils:1 prefix:@"     "];
  v4 = [v3 componentsJoinedByString:@"\n"];

  return v4;
}

+ (id)description:(id)description
{
  v3 = [self _descriptionArray:description resolveEnums:1 showNils:1 prefix:@"     "];
  v4 = [v3 componentsJoinedByString:@"\n"];

  return v4;
}

+ (id)_descriptionArray:(id)array resolveEnums:(BOOL)enums showNils:(BOOL)nils prefix:(id)prefix
{
  arrayCopy = array;
  prefixCopy = prefix;
  v11 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__CPAccNavUpdate__descriptionArray_resolveEnums_showNils_prefix___block_invoke;
  v18[3] = &unk_278A11910;
  enumsCopy = enums;
  nilsCopy = nils;
  v19 = prefixCopy;
  v20 = arrayCopy;
  v12 = v11;
  v21 = v12;
  v13 = arrayCopy;
  v14 = prefixCopy;
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

+ (id)_formattedDistanceString:(double)string
{
  v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v4 setNumberStyle:1];
  [v4 setMaximumFractionDigits:string < 100.0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:string];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

+ (id)copyUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  objc_opt_class();
  v4 = objc_opt_new();
  accNavParameters = [objc_opt_class() accNavParameters];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [accNavParameters countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(accNavParameters);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 encodeable])
        {
          property = [v10 property];
          v12 = [updateCopy valueForKey:property];

          property2 = [v10 property];
          [v4 setValue:v12 forKey:property2];
        }
      }

      v7 = [accNavParameters countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (void)decodeUpdate:(id)update withCoder:(id)coder
{
  v35 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  coderCopy = coder;
  accNavParameters = [objc_opt_class() accNavParameters];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [accNavParameters countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(accNavParameters);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        if ([v12 encodeable])
        {
          objcType = [v12 objcType];
          v14 = *(v9 + 2656);
          if ((objcType == objc_opt_class() || (v15 = *(v10 + 2968), objcType == objc_opt_class())) && [v12 collectionGeneric])
          {
            v16 = v8;
            v17 = *(v10 + 2968);
            v33[0] = objcType;
            v33[1] = [v12 collectionGeneric];
            property = [*(v9 + 2656) arrayWithObjects:v33 count:2];
            v19 = [v17 setWithArray:property];
            [v12 property];
            v20 = v10;
            v22 = v21 = v9;
            v23 = [coderCopy decodeObjectOfClasses:v19 forKey:v22];

            v9 = v21;
            v10 = v20;

            v8 = v16;
            v7 = v26;
          }

          else
          {
            property = [v12 property];
            v23 = [coderCopy decodeObjectOfClass:objcType forKey:property];
          }

          if (v23)
          {
            property2 = [v12 property];
            [updateCopy setValue:v23 forKey:property2];
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v7 = [accNavParameters countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)encodeUpdate:(id)update withCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  coderCopy = coder;
  accNavParameters = [objc_opt_class() accNavParameters];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [accNavParameters countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(accNavParameters);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 encodeable])
        {
          property = [v12 property];
          v14 = [updateCopy valueForKey:property];

          property2 = [v12 property];
          [coderCopy encodeObject:v14 forKey:property2];
        }
      }

      v9 = [accNavParameters countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)accNavInfoWithUpdate:(id)update component:(id)component customValueBlock:(id)block
{
  updateCopy = update;
  blockCopy = block;
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
  v21 = blockCopy;
  v19 = updateCopy;
  v12 = v10;
  v20 = v12;
  v13 = updateCopy;
  v14 = blockCopy;
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