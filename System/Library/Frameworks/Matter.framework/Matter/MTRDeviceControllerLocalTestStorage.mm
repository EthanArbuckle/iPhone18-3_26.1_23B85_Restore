@interface MTRDeviceControllerLocalTestStorage
+ (BOOL)localTestStorageEnabled;
- (BOOL)controller:(id)a3 removeValueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6;
- (BOOL)controller:(id)a3 storeValue:(id)a4 forKey:(id)a5 securityLevel:(unint64_t)a6 sharingType:(unint64_t)a7;
- (BOOL)controller:(id)a3 storeValues:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6;
- (MTRDeviceControllerLocalTestStorage)initWithPassThroughStorage:(id)a3;
- (id)controller:(id)a3 valueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6;
- (id)valuesForController:(id)a3 securityLevel:(unint64_t)a4 sharingType:(unint64_t)a5;
@end

@implementation MTRDeviceControllerLocalTestStorage

+ (BOOL)localTestStorageEnabled
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"enableTestStorage"];

  return v3;
}

- (MTRDeviceControllerLocalTestStorage)initWithPassThroughStorage:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MTRDeviceControllerLocalTestStorage;
  v6 = [(MTRDeviceControllerLocalTestStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passThroughStorage, a3);
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
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

- (id)controller:(id)a3 valueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (a6)
  {
    passThroughStorage = self->_passThroughStorage;
    if (passThroughStorage)
    {
      v13 = [(MTRDeviceControllerStorageDelegate *)passThroughStorage controller:v10 valueForKey:v11 securityLevel:a5 sharingType:a6];
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
    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [v14 dataForKey:v11];
    v16 = MEMORY[0x277CCAAC8];
    v17 = MTRDeviceControllerStorageClasses();
    v21 = 0;
    v13 = [v16 unarchivedObjectOfClasses:v17 fromData:v15 error:&v21];
  }

  return v13;
}

- (BOOL)controller:(id)a3 storeValue:(id)a4 forKey:(id)a5 securityLevel:(unint64_t)a6 sharingType:(unint64_t)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a7)
  {
    passThroughStorage = self->_passThroughStorage;
    if (passThroughStorage)
    {
      LOBYTE(a7) = [(MTRDeviceControllerStorageDelegate *)passThroughStorage controller:v12 storeValue:v13 forKey:v14 securityLevel:a6 sharingType:a7];
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

      LOBYTE(a7) = 0;
    }
  }

  else
  {
    v23 = 0;
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v23];
    v17 = v23;
    a7 = v17 == 0;
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
      v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v20 setObject:v16 forKey:v14];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return a7;
}

- (BOOL)controller:(id)a3 removeValueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (a6)
  {
    passThroughStorage = self->_passThroughStorage;
    if (passThroughStorage)
    {
      v13 = [(MTRDeviceControllerStorageDelegate *)passThroughStorage controller:v10 removeValueForKey:v11 securityLevel:a5 sharingType:a6];
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
    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v14 removeObjectForKey:v11];

    v13 = 1;
  }

  return v13;
}

- (id)valuesForController:(id)a3 securityLevel:(unint64_t)a4 sharingType:(unint64_t)a5
{
  v8 = a3;
  if (a5)
  {
    if (self->_passThroughStorage && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9 = [(MTRDeviceControllerStorageDelegate *)self->_passThroughStorage valuesForController:v8 securityLevel:a4 sharingType:a5];
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

      v9 = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v11 dictionaryRepresentation];
  }

  return v9;
}

- (BOOL)controller:(id)a3 storeValues:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = a4;
  if (a6)
  {
    if (self->_passThroughStorage && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = [(MTRDeviceControllerStorageDelegate *)self->_passThroughStorage controller:v25 storeValues:v26 securityLevel:a5 sharingType:a6];
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
    v27 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v26;
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
            [v27 setObject:v19 forKey:v16];
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