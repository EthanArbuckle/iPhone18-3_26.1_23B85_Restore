@interface MTRDeviceControllerLocalTestStorage
+ (BOOL)localTestStorageEnabled;
- (BOOL)controller:(id)controller removeValueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (BOOL)controller:(id)controller storeValue:(id)value forKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (BOOL)controller:(id)controller storeValues:(id)values securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (MTRDeviceControllerLocalTestStorage)initWithPassThroughStorage:(id)storage;
- (id)controller:(id)controller valueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (id)valuesForController:(id)controller securityLevel:(unint64_t)level sharingType:(unint64_t)type;
@end

@implementation MTRDeviceControllerLocalTestStorage

+ (BOOL)localTestStorageEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableTestStorage"];

  return v3;
}

- (MTRDeviceControllerLocalTestStorage)initWithPassThroughStorage:(id)storage
{
  v14 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v11.receiver = self;
  v11.super_class = MTRDeviceControllerLocalTestStorage;
  v6 = [(MTRDeviceControllerLocalTestStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passThroughStorage, storage);
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = storageCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "MTRDeviceControllerLocalTestStorage initialized with pass-through storage %@", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)controller:(id)controller valueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  controllerCopy = controller;
  keyCopy = key;
  if (type)
  {
    passThroughStorage = self->_passThroughStorage;
    if (passThroughStorage)
    {
      v13 = [(MTRDeviceControllerStorageDelegate *)passThroughStorage controller:controllerCopy valueForKey:keyCopy securityLevel:level sharingType:type];
    }

    else
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTRDeviceControllerLocalTestStorage valueForKey: shared type but no pass-through storage", v20, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v13 = 0;
    }
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [standardUserDefaults dataForKey:keyCopy];
    v16 = MEMORY[0x277CCAAC8];
    v17 = MTRDeviceControllerStorageClasses();
    v21 = 0;
    v13 = [v16 unarchivedObjectOfClasses:v17 fromData:v15 error:&v21];
  }

  return v13;
}

- (BOOL)controller:(id)controller storeValue:(id)value forKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  valueCopy = value;
  keyCopy = key;
  if (type)
  {
    passThroughStorage = self->_passThroughStorage;
    if (passThroughStorage)
    {
      LOBYTE(type) = [(MTRDeviceControllerStorageDelegate *)passThroughStorage controller:controllerCopy storeValue:valueCopy forKey:keyCopy securityLevel:level sharingType:type];
    }

    else
    {
      v19 = sub_2393D9044(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "MTRDeviceControllerLocalTestStorage storeValue: shared type but no pass-through storage", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      LOBYTE(type) = 0;
    }
  }

  else
  {
    v23 = 0;
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:&v23];
    v17 = v23;
    type = v17 == 0;
    if (v17)
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v17;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTRDeviceControllerLocalTestStorage storeValue: failed to convert value object to data %@", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    else
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults setObject:v16 forKey:keyCopy];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return type;
}

- (BOOL)controller:(id)controller removeValueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  controllerCopy = controller;
  keyCopy = key;
  if (type)
  {
    passThroughStorage = self->_passThroughStorage;
    if (passThroughStorage)
    {
      v13 = [(MTRDeviceControllerStorageDelegate *)passThroughStorage controller:controllerCopy removeValueForKey:keyCopy securityLevel:level sharingType:type];
    }

    else
    {
      v15 = sub_2393D9044(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "MTRDeviceControllerLocalTestStorage removeValueForKey: shared type but no pass-through storage", v17, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v13 = 0;
    }
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:keyCopy];

    v13 = 1;
  }

  return v13;
}

- (id)valuesForController:(id)controller securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  controllerCopy = controller;
  if (type)
  {
    if (self->_passThroughStorage && (objc_opt_respondsToSelector() & 1) != 0)
    {
      dictionaryRepresentation = [(MTRDeviceControllerStorageDelegate *)self->_passThroughStorage valuesForController:controllerCopy securityLevel:level sharingType:type];
    }

    else
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRDeviceControllerLocalTestStorage valuesForController: shared type but no pass-through storage", v13, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      dictionaryRepresentation = 0;
    }
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
  }

  return dictionaryRepresentation;
}

- (BOOL)controller:(id)controller storeValues:(id)values securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  v36 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  valuesCopy = values;
  if (type)
  {
    if (self->_passThroughStorage && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = [(MTRDeviceControllerStorageDelegate *)self->_passThroughStorage controller:controllerCopy storeValues:valuesCopy securityLevel:level sharingType:type];
    }

    else
    {
      v11 = sub_2393D9044(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRDeviceControllerLocalTestStorage valuesForController: shared type but no pass-through storage", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v10 = 0;
    }
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = valuesCopy;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v13)
    {
      v14 = *v30;
      v10 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = MEMORY[0x277CCAAB0];
          v18 = [v12 objectForKeyedSubscript:{v16, v24}];
          v28 = 0;
          v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v28];
          v20 = v28;

          if (v20)
          {
            v21 = sub_2393D9044(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v20;
              _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "MTRDeviceControllerLocalTestStorage storeValues: failed to convert value object to data %@", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              v24 = v20;
              sub_2393D5320(0, 1);
            }

            v10 = 0;
          }

          else
          {
            [standardUserDefaults setObject:v19 forKey:v16];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v13);
    }

    else
    {
      v10 = 1;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

@end