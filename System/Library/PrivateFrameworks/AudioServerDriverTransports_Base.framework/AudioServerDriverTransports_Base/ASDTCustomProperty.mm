@interface ASDTCustomProperty
+ (id)consolidatePList:(id)list;
+ (id)customPropertyForConfig:(id)config;
- (BOOL)checkAndSetPropertyValue:(id)value;
- (NSData)dataNoCopy;
- (NSString)name;
- (id)propertyName;
- (id)propertyValue;
- (int)checkPropertyValue:(id)value;
- (void)cachePropertyValue:(id)value;
- (void)doCachePropertyValue:(id)value;
- (void)releasePropertyValueCache;
- (void)setUseCache:(BOOL)cache;
@end

@implementation ASDTCustomProperty

+ (id)customPropertyForConfig:(id)config
{
  configCopy = config;
  asdtSubclass = [configCopy asdtSubclass];
  if ([(objc_class *)asdtSubclass isSubclassOfClass:objc_opt_class()]&& ([(objc_class *)asdtSubclass conformsToProtocol:&unk_2853557D8]& 1) != 0)
  {
    v5 = [[asdtSubclass alloc] initWithConfig:configCopy];
  }

  else
  {
    v6 = ASDTBaseLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ASDTCustomProperty customPropertyForConfig:configCopy];
    }

    v5 = 0;
  }

  return v5;
}

- (id)propertyName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(ASDCustomProperty *)self selector]>> 29 && [(ASDCustomProperty *)self selector]>> 24 <= 0x7E)
  {
    v6 = [(ASDCustomProperty *)self selector]>> 24;
  }

  else
  {
    v6 = 32;
  }

  if (([(ASDCustomProperty *)self selector]& 0xE00000) != 0 && ([(ASDCustomProperty *)self selector]>> 16) <= 0x7Eu)
  {
    v7 = ([(ASDCustomProperty *)self selector]>> 16);
  }

  else
  {
    v7 = 32;
  }

  if (([(ASDCustomProperty *)self selector]& 0xE000) != 0 && ([(ASDCustomProperty *)self selector]>> 8) <= 0x7Eu)
  {
    v8 = ([(ASDCustomProperty *)self selector]>> 8);
  }

  else
  {
    v8 = 32;
  }

  if (([(ASDCustomProperty *)self selector]& 0xE0) != 0 && [(ASDCustomProperty *)self selector]<= 0x7Eu)
  {
    selector = [(ASDCustomProperty *)self selector];
  }

  else
  {
    selector = 32;
  }

  v10 = [v3 stringWithFormat:@"%@(%c%c%c%c)", v5, v6, v7, v8, selector];

  return v10;
}

- (NSString)name
{
  name = self->_name;
  if (!name)
  {
    propertyName = [(ASDTCustomProperty *)self propertyName];
    v5 = self->_name;
    self->_name = propertyName;

    name = self->_name;
  }

  return name;
}

- (int)checkPropertyValue:(id)value
{
  valueCopy = value;
  propertyDataType = [(ASDCustomProperty *)self propertyDataType];
  if (propertyDataType == 1667658612 || propertyDataType == 1918990199)
  {
    goto LABEL_9;
  }

  if (propertyDataType != 1886155636)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_9:
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_10;
            }

LABEL_13:
            v7 = 2;
            goto LABEL_18;
          }
        }
      }
    }
  }

LABEL_10:
  v7 = 0;
  if ([(ASDTCustomProperty *)self propertyValueWasCached])
  {
    propertyValue = self->_propertyValue;
    if (!(valueCopy | propertyValue) || valueCopy && propertyValue && ([propertyValue isEqual:valueCopy] & 1) != 0)
    {
      v7 = 1;
    }
  }

LABEL_18:

  return v7;
}

- (void)doCachePropertyValue:(id)value
{
  valueCopy = value;
  [(ASDTCustomProperty *)self setPropertyValueWasCached:1];
  propertyValue = self->_propertyValue;
  self->_propertyValue = valueCopy;
}

- (void)cachePropertyValue:(id)value
{
  valueCopy = value;
  if ([(ASDTCustomProperty *)self cacheMode]== 2 || [(ASDTCustomProperty *)self cacheMode]== 1 && [(ASDTCustomProperty *)self useCache])
  {
    if (valueCopy)
    {
      dataNoCopy = [(ASDTCustomProperty *)self dataNoCopy];

      if (dataNoCopy == valueCopy)
      {
        v6 = [MEMORY[0x277CBEA90] dataWithData:valueCopy];

        if (!v6)
        {
          v7 = ASDTBaseLogType();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [ASDTCustomProperty cachePropertyValue:?];
          }
        }

        [(ASDTCustomProperty *)self setDataNoCopy:0];
        valueCopy = v6;
      }
    }

    [(ASDTCustomProperty *)self doCachePropertyValue:valueCopy];
  }
}

- (void)releasePropertyValueCache
{
  if ([(ASDTCustomProperty *)self propertyValueWasCached])
  {
    propertyValue = self->_propertyValue;
    self->_propertyValue = 0;

    [(ASDTCustomProperty *)self setPropertyValueWasCached:0];
  }
}

- (BOOL)checkAndSetPropertyValue:(id)value
{
  valueCopy = value;
  v5 = [(ASDTCustomProperty *)self checkPropertyValue:valueCopy];
  if (v5 == 1)
  {
    goto LABEL_14;
  }

  if (v5 == 3)
  {
    v6 = ASDTBaseLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ASDTCustomProperty checkAndSetPropertyValue:];
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    v8 = NSStringFromSelector(sel_value);
    [(ASDTCustomProperty *)self willChangeValueForKey:v8];

    v9 = NSStringFromSelector(sel_propertyValue);
    [(ASDTCustomProperty *)self willChangeValueForKey:v9];

    LODWORD(v9) = [(ASDTCustomProperty *)self storePropertyValue:valueCopy];
    v10 = NSStringFromSelector(sel_value);
    [(ASDTCustomProperty *)self didChangeValueForKey:v10];

    v11 = NSStringFromSelector(sel_propertyValue);
    [(ASDTCustomProperty *)self didChangeValueForKey:v11];

    if (!v9)
    {
      goto LABEL_9;
    }

    propertyChangeBlock = [(ASDTCustomProperty *)self propertyChangeBlock];
    v13 = propertyChangeBlock;
    if (propertyChangeBlock)
    {
      (*(propertyChangeBlock + 16))(propertyChangeBlock, valueCopy);
    }

    [(ASDCustomProperty *)self sendPropertyChangeNotification];

LABEL_14:
    v7 = 1;
    goto LABEL_15;
  }

  v6 = ASDTBaseLogType();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ASDTCustomProperty checkAndSetPropertyValue:];
  }

LABEL_8:

LABEL_9:
  v7 = 0;
LABEL_15:

  return v7;
}

- (id)propertyValue
{
  cacheMode = [(ASDTCustomProperty *)self cacheMode];
  if (cacheMode == 1)
  {
    if (![(ASDTCustomProperty *)self useCache])
    {
      goto LABEL_3;
    }
  }

  else if (!cacheMode)
  {
LABEL_3:
    retrievePropertyValue = [(ASDTCustomProperty *)self retrievePropertyValue];
LABEL_7:
    retrievePropertyValue2 = retrievePropertyValue;
    goto LABEL_9;
  }

  if ([(ASDTCustomProperty *)self propertyValueWasCached])
  {
    retrievePropertyValue = [(ASDTCustomProperty *)self cachedPropertyValue];
    goto LABEL_7;
  }

  retrievePropertyValue2 = [(ASDTCustomProperty *)self retrievePropertyValue];
  [(ASDTCustomProperty *)self cachePropertyValue:retrievePropertyValue2];
LABEL_9:

  return retrievePropertyValue2;
}

- (void)setUseCache:(BOOL)cache
{
  cacheCopy = cache;
  if ([(ASDTCustomProperty *)self cacheMode]== 1)
  {
    if (cacheCopy)
    {
      retrievePropertyValue = [(ASDTCustomProperty *)self retrievePropertyValue];
      [(ASDTCustomProperty *)self doCachePropertyValue:retrievePropertyValue];
    }

    else
    {
      [(ASDTCustomProperty *)self releasePropertyValueCache];
    }
  }

  self->_useCache = cacheCopy;
}

+ (id)consolidatePList:(id)list
{
  v62 = *MEMORY[0x277D85DE8];
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    listCopy = listCopy;
    if ([listCopy count])
    {
      v4 = [listCopy objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        v6 = [MEMORY[0x277CBEB28] dataWithCapacity:{-[NSObject count](listCopy, "count") * -[NSObject length](v5, "length")}];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v7 = listCopy;
        v8 = [v7 countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = v4;
          v11 = *v55;
          while (2)
          {
            v12 = 0;
            v13 = v5;
            do
            {
              if (*v55 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v5 = *(*(&v54 + 1) + 8 * v12);

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v27 = ASDTBaseLogType();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  +[ASDTCustomProperty consolidatePList:];
                }

                v4 = v10;
                goto LABEL_61;
              }

              [v6 appendData:v5];
              ++v12;
              v13 = v5;
            }

            while (v9 != v12);
            v9 = [v7 countByEnumeratingWithState:&v54 objects:v61 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          v14 = v5;
          v4 = v10;
        }

        else
        {
          v14 = v5;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v5 = listCopy;
          v28 = [v5 countByEnumeratingWithState:&v42 objects:v58 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v43;
            while (2)
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v43 != v30)
                {
                  objc_enumerationMutation(v5);
                }

                v32 = *(*(&v42 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v6 = ASDTBaseLogType();
                  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                  {
                    +[ASDTCustomProperty consolidatePList:];
                  }

LABEL_61:

                  goto LABEL_62;
                }
              }

              v29 = [v5 countByEnumeratingWithState:&v42 objects:v58 count:16];
              if (v29)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_53;
        }

        v14 = v4;
        v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](listCopy, "count") * -[NSObject count](v14, "count")}];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v17 = listCopy;
        v18 = [v17 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v51;
          v40 = v17;
          v41 = v4;
          v37 = *v51;
          while (2)
          {
            v21 = 0;
            v38 = v19;
            do
            {
              if (*v51 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v39 = v21;
              v5 = *(*(&v50 + 1) + 8 * v21);

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v14 = ASDTBaseLogType();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  +[ASDTCustomProperty consolidatePList:];
                }

LABEL_60:

                goto LABEL_61;
              }

              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v14 = v5;
              v22 = [v14 countByEnumeratingWithState:&v46 objects:v59 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v47;
                while (2)
                {
                  for (j = 0; j != v23; ++j)
                  {
                    if (*v47 != v24)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v26 = *(*(&v46 + 1) + 8 * j);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v34 = ASDTBaseLogType();
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                      {
                        +[ASDTCustomProperty consolidatePList:];
                      }

                      v17 = v40;
                      v4 = v41;
                      goto LABEL_60;
                    }

                    [v6 addObject:v26];
                  }

                  v23 = [v14 countByEnumeratingWithState:&v46 objects:v59 count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }

              v21 = v39 + 1;
              v17 = v40;
              v4 = v41;
              v20 = v37;
            }

            while (v39 + 1 != v38);
            v19 = [v40 countByEnumeratingWithState:&v50 objects:v60 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = v6;
LABEL_53:

      listCopy = v5;
LABEL_54:
      listCopy = listCopy;
      v33 = listCopy;
      goto LABEL_64;
    }

    v16 = ASDTBaseLogType();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[ASDTCustomProperty consolidatePList:];
    }

LABEL_62:
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_54;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_54;
    }

    v15 = ASDTBaseLogType();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ASDTCustomProperty consolidatePList:];
    }
  }

  v33 = 0;
LABEL_64:

  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

- (NSData)dataNoCopy
{
  WeakRetained = objc_loadWeakRetained(&self->_dataNoCopy);

  return WeakRetained;
}

+ (void)customPropertyForConfig:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 objectForKeyedSubscript:@"Subclass"];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getPropertyWithQualifierSize:(uint64_t)a1 qualifierData:(uint64_t)a2 dataSize:andData:forClient:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDTCustomProperty.m" lineNumber:133 description:@"inPropertyValue must be an NSData object"];
}

- (void)getPropertyWithQualifierSize:qualifierData:dataSize:andData:forClient:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 name];
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPropertyWithQualifierSize:(void *)a1 qualifierData:dataSize:andData:forClient:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPropertyWithQualifierSize:(void *)a1 qualifierData:dataSize:andData:forClient:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPropertyWithQualifierSize:(void *)a1 qualifierData:dataSize:andData:forClient:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPropertyWithQualifierSize:(void *)a1 qualifierData:dataSize:andData:forClient:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cachePropertyValue:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkAndSetPropertyValue:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkAndSetPropertyValue:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v9 = *MEMORY[0x277D85DE8];
  v8 = [v0 name];
  v1 = objc_opt_class();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)consolidatePList:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end