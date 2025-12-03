@interface HMCharacteristic
+ (HMCharacteristic)characteristicWithCharacteristicReference:(id)reference home:(id)home;
+ (HMCharacteristic)characteristicWithSerializedDictionaryRepresentation:(id)representation home:(id)home;
+ (id)__localizedDescriptionForCharacteristicType:(id)type;
+ (id)_characteristicTypeAsString:(id)string;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)hasAuthorizationData;
- (BOOL)hasFixedValue;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNotificationEnabled;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)requiresDeviceUnlock;
- (HMCharacteristic)init;
- (HMCharacteristic)initWithCoder:(id)coder;
- (HMCharacteristic)initWithInstanceID:(id)d characteristicType:(id)type service:(id)service metadata:(id)metadata;
- (HMService)service;
- (NSArray)attributeDescriptions;
- (NSArray)properties;
- (NSDate)notificationEnabledTime;
- (NSDate)valueUpdatedTime;
- (NSDictionary)serializedDictionaryRepresentation;
- (NSString)characteristicType;
- (NSString)localizedDescription;
- (NSString)shortDescription;
- (NSUUID)uniqueIdentifier;
- (_HMContext)context;
- (id)_characteristicTypeDescription;
- (id)logIdentifier;
- (id)value;
- (unint64_t)hash;
- (void)__configureWithContext:(id)context service:(id)service;
- (void)_readValueWithCompletionHandler:(id)handler;
- (void)_unconfigure;
- (void)_updateAuthorizationData:(id)data completionHandler:(id)handler;
- (void)_updateValue:(id)value valueUpdatedDate:(id)date;
- (void)_writeValue:(id)value completionHandler:(id)handler;
- (void)enableNotification:(BOOL)enable completionHandler:(void *)completion;
- (void)readValueWithCompletionHandler:(void *)completion;
- (void)setCharacteristicType:(id)type;
- (void)setHasAuthorizationData:(BOOL)data;
- (void)setHasFixedValue:(BOOL)value;
- (void)setNotificationEnabled:(BOOL)enabled;
- (void)setNotificationEnabledTime:(id)time;
- (void)setRequiresDeviceUnlock:(BOOL)unlock;
- (void)setValue:(id)value;
- (void)setValueUpdateTime:(id)time;
- (void)updateAuthorizationData:(NSData *)data completionHandler:(void *)completion;
- (void)writeValue:(id)value completionHandler:(void *)completion;
@end

@implementation HMCharacteristic

- (HMService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (NSString)localizedDescription
{
  v3 = objc_opt_class();
  characteristicType = [(HMCharacteristic *)self characteristicType];
  v5 = [v3 __localizedDescriptionForCharacteristicType:characteristicType];

  return v5;
}

- (id)_characteristicTypeDescription
{
  characteristicType = [(HMCharacteristic *)self characteristicType];
  v3 = [HMCharacteristic _characteristicTypeAsString:characteristicType];

  return v3;
}

- (void)_updateAuthorizationData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  service = [(HMCharacteristic *)self service];
  accessory = [service accessory];
  v9 = accessory;
  if (service && accessory)
  {
    [accessory _updateAuthorizationData:dataCopy forService:service characteristic:self completionHandler:handlerCopy];
  }

  else
  {
    context = [(HMCharacteristic *)self context];
    delegateCaller = [context delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v12];
  }
}

- (void)updateAuthorizationData:(NSData *)data completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = data;
  v7 = completion;
  context = [(HMCharacteristic *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristic updateAuthorizationData:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMCharacteristic_updateAuthorizationData_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMCharacteristic updateAuthorizationData:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)enableNotification:(BOOL)enable completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = completion;
  context = [(HMCharacteristic *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristic enableNotification:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HMCharacteristic_enableNotification_completionHandler___block_invoke;
    block[3] = &unk_1E7548108;
    block[4] = self;
    v24 = enable;
    v23 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMCharacteristic enableNotification:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_readValueWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  service = [(HMCharacteristic *)self service];
  accessory = [service accessory];
  v6 = accessory;
  if (service && accessory)
  {
    if (([(HMCharacteristic *)self hapProperties]& 2) != 0)
    {
      [v6 _readValueForCharacteristic:self completionHandler:handlerCopy];
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:48 userInfo:0];
      context = [(HMCharacteristic *)self context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:v7];
    }
  }

  else
  {
    context2 = [(HMCharacteristic *)self context];
    delegateCaller2 = [context2 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
    [delegateCaller2 callCompletion:handlerCopy error:v12];
  }
}

- (void)readValueWithCompletionHandler:(void *)completion
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = completion;
  context = [(HMCharacteristic *)self context];
  if (!v4)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristic readValueWithCompletionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v6 = context;
  if (context)
  {
    if ([(HMCharacteristic *)self hasFixedValue])
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        characteristicType = selfCopy2->_characteristicType;
        *buf = 138543618;
        v32 = v10;
        v33 = 2112;
        v34 = characteristicType;
        _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Characteristics of type %@ has fixed value. So skipping reads to the accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      context2 = [(HMCharacteristic *)selfCopy2 context];
      delegateCaller = [context2 delegateCaller];
      [delegateCaller callCompletion:v4 error:0];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"CharacteristicRead"];
      queue = [v6 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__HMCharacteristic_readValueWithCompletionHandler___block_invoke;
      block[3] = &unk_1E754E0F8;
      v28 = v18;
      selfCopy3 = self;
      v30 = v4;
      context2 = v18;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v17;
      v33 = 2080;
      v34 = "[HMCharacteristic readValueWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, context2);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __51__HMCharacteristic_readValueWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  [*(a1 + 40) _readValueWithCompletionHandler:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 end];
}

- (void)_writeValue:(id)value completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  handlerCopy = handler;
  if (valueCopy)
  {
    service = [(HMCharacteristic *)self service];
    if (service)
    {
      context4 = service;
      accessory = [service accessory];
      if (accessory)
      {
        context3 = accessory;
        if (([(HMCharacteristic *)self hapProperties]& 4) != 0)
        {
          [context3 _writeValue:valueCopy forCharacteristic:self service:context4 completionHandler:handlerCopy];
        }

        else
        {
          hapProperties = [(HMCharacteristic *)self hapProperties];
          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          if ((hapProperties & 2) != 0)
          {
            if (v16)
            {
              v37 = HMFGetLogIdentifier();
              v42 = 138543362;
              v43 = v37;
              _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic: characteristic is readonly", &v42, 0xCu);
            }

            v18 = 5;
          }

          else
          {
            if (v16)
            {
              v17 = HMFGetLogIdentifier();
              v42 = 138543362;
              v43 = v17;
              _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic: characteristic is not writeable", &v42, 0xCu);
            }

            v18 = 48;
          }

          objc_autoreleasePoolPop(v13);
          v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v18];
          context = [(HMCharacteristic *)selfCopy context];
          delegateCaller = [context delegateCaller];
          [delegateCaller callCompletion:handlerCopy error:v38];
        }
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          v42 = 138543362;
          v43 = v33;
          _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic: service's accessory is nil", &v42, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        context2 = [(HMCharacteristic *)selfCopy2 context];
        delegateCaller2 = [context2 delegateCaller];
        v36 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
        [delegateCaller2 callCompletion:handlerCopy error:v36];

        context3 = 0;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v42 = 138543362;
        v43 = v27;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic: service is nil", &v42, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      context3 = [(HMCharacteristic *)selfCopy3 context];
      delegateCaller3 = [context3 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      [delegateCaller3 callCompletion:handlerCopy error:v29];

      context4 = 0;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v22;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic: value is nil", &v42, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    context4 = [(HMCharacteristic *)selfCopy4 context];
    context3 = [context4 delegateCaller];
    v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [context3 callCompletion:handlerCopy error:v23];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)writeValue:(id)value completionHandler:(void *)completion
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = value;
  v7 = completion;
  context = [(HMCharacteristic *)self context];
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristic writeValue:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v9 = context;
  if (context)
  {
    v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"CharacteristicWrite"];
    queue = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__HMCharacteristic_writeValue_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    v25 = v10;
    selfCopy2 = self;
    v27 = v6;
    v28 = v7;
    v12 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2080;
      v32 = "[HMCharacteristic writeValue:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __49__HMCharacteristic_writeValue_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  [*(a1 + 40) _writeValue:*(a1 + 48) completionHandler:*(a1 + 56)];
  v2 = *(a1 + 32);

  return [v2 end];
}

- (void)_updateValue:(id)value valueUpdatedDate:(id)date
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  dateCopy = date;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    value = [(HMCharacteristic *)selfCopy value];
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = value;
    v19 = 2112;
    v20 = valueCopy;
    v21 = 2112;
    v22 = dateCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating characteristic value from %@ -> %@ with value updated date: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  [(HMCharacteristic *)selfCopy setValue:valueCopy];
  if (dateCopy)
  {
    [(HMCharacteristic *)selfCopy setValueUpdatedTime:dateCopy];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    [(HMCharacteristic *)selfCopy setValueUpdatedTime:date];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)object
{
  v81 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_40;
  }

  v6 = objectCopy;
  metadata = [(HMCharacteristic *)self metadata];
  metadata2 = [v6 metadata];
  v9 = [metadata mergeFromNewObject:metadata2];

  -[HMCharacteristic setHapProperties:](self, "setHapProperties:", [v6 hapProperties]);
  characteristicType = [v6 characteristicType];
  [(HMCharacteristic *)self setCharacteristicType:characteristicType];

  -[HMCharacteristic setHasFixedValue:](self, "setHasFixedValue:", [v6 hasFixedValue]);
  [v6 setNotificationEnabledByThisClient:{-[HMCharacteristic notificationEnabledByThisClient](self, "notificationEnabledByThisClient")}];
  -[HMCharacteristic setRequiresDeviceUnlock:](self, "setRequiresDeviceUnlock:", [v6 requiresDeviceUnlock]);
  LODWORD(characteristicType) = [(HMCharacteristic *)self hasAuthorizationData];
  if (characteristicType != [v6 hasAuthorizationData])
  {
    -[HMCharacteristic setHasAuthorizationData:](self, "setHasAuthorizationData:", [v6 hasAuthorizationData]);
    service = [(HMCharacteristic *)self service];
    accessory = [service accessory];
    delegate = [accessory delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v14 = delegate;
    }

    else
    {
      v14 = 0;
    }

    value2 = v14;

    if (value2 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      context = [(HMCharacteristic *)self context];
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__HMCharacteristic_mergeFromNewObject___block_invoke;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v71 = value2;
      v72 = accessory;
      dispatch_async(queue, block);
    }
  }

  value = [(HMCharacteristic *)self value];
  valueUpdatedTime = [(HMCharacteristic *)self valueUpdatedTime];
  v65 = value;
  if (!valueUpdatedTime)
  {
    value2 = [v6 value];
    if ((HMFEqualObjects() & 1) == 0)
    {

LABEL_19:
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        value3 = [v6 value];
        valueUpdatedTime2 = [v6 valueUpdatedTime];
        *buf = 138543874;
        v74 = v26;
        v75 = 2112;
        v76 = value3;
        v77 = 2112;
        v78 = valueUpdatedTime2;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Updating value and value updated time via merge to %@ and %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      value4 = [v6 value];
      [(HMCharacteristic *)selfCopy setValue:value4];

      valueUpdatedTime3 = [v6 valueUpdatedTime];
      [(HMCharacteristic *)selfCopy setValueUpdatedTime:valueUpdatedTime3];

      v22 = 1;
      goto LABEL_22;
    }
  }

  valueUpdatedTime4 = [v6 valueUpdatedTime];
  valueUpdatedTime5 = [(HMCharacteristic *)self valueUpdatedTime];
  v21 = [valueUpdatedTime4 compare:valueUpdatedTime5];

  if (valueUpdatedTime)
  {
  }

  else
  {
  }

  if (v21 == 1)
  {
    goto LABEL_19;
  }

  v22 = 0;
LABEL_22:
  isNotificationEnabled = [(HMCharacteristic *)self isNotificationEnabled];
  if (isNotificationEnabled != [v6 isNotificationEnabled])
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      isNotificationEnabled2 = [v6 isNotificationEnabled];
      *buf = 138543618;
      v74 = v35;
      v75 = 1024;
      LODWORD(v76) = isNotificationEnabled2;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_INFO, "%{public}@Updating notification enabled via merge to %{BOOL}d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v32);
    -[HMCharacteristic setNotificationEnabled:](selfCopy2, "setNotificationEnabled:", [v6 isNotificationEnabled]);
    v22 = 1;
  }

  notificationEnabledTime = [(HMCharacteristic *)self notificationEnabledTime];
  notificationEnabledTime2 = [v6 notificationEnabledTime];
  v39 = HMFEqualObjects();

  if ((v39 & 1) == 0)
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      notificationEnabledTime3 = [v6 notificationEnabledTime];
      *buf = 138543618;
      v74 = v43;
      v75 = 2112;
      v76 = notificationEnabledTime3;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_INFO, "%{public}@Updating notification enabled time via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    notificationEnabledTime4 = [v6 notificationEnabledTime];
    [(HMCharacteristic *)selfCopy3 setNotificationEnabledTime:notificationEnabledTime4];

    v22 = 1;
  }

  v46 = +[HMHAPMetadata getSharedInstance];
  if (v22)
  {
    characteristicType2 = [(HMCharacteristic *)self characteristicType];
    v48 = [v46 shouldNotCacheCharacteristicOfType:characteristicType2];

    if ((v48 & 1) == 0)
    {
      value5 = [(HMCharacteristic *)self value];
      v50 = HMFEqualObjects();

      if ((v50 & 1) == 0)
      {
        v51 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v54 = v64 = v51;
          value6 = [(HMCharacteristic *)selfCopy4 value];
          valueUpdatedTime6 = [(HMCharacteristic *)selfCopy4 valueUpdatedTime];
          *buf = 138544130;
          v74 = v54;
          v75 = 2112;
          v76 = v65;
          v77 = 2112;
          v78 = value6;
          v79 = 2112;
          v80 = valueUpdatedTime6;
          _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_INFO, "%{public}@Merge updated characteristic value from %@ -> %@ with value updated date: %@", buf, 0x2Au);

          v51 = v64;
        }

        objc_autoreleasePoolPop(v51);
      }

      service2 = [(HMCharacteristic *)self service];
      accessory2 = [service2 accessory];
      delegate2 = [accessory2 delegate];
      if (objc_opt_respondsToSelector())
      {
        context2 = [(HMCharacteristic *)self context];
        queue2 = [context2 queue];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __39__HMCharacteristic_mergeFromNewObject___block_invoke_258;
        v66[3] = &unk_1E754DE30;
        v66[4] = self;
        v67 = delegate2;
        v68 = accessory2;
        v69 = service2;
        dispatch_async(queue2, v66);
      }
    }
  }

LABEL_40:
  v62 = *MEMORY[0x1E69E9840];
  return v9;
}

void __39__HMCharacteristic_mergeFromNewObject___block_invoke(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__HMCharacteristic_mergeFromNewObject___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

void __39__HMCharacteristic_mergeFromNewObject___block_invoke_258(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] context];
  v4 = [v3 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__HMCharacteristic_mergeFromNewObject___block_invoke_2_259;
  v9[3] = &unk_1E754DE30;
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = a1[7];
  *(&v7 + 1) = *v2;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v4 invokeBlock:v9];
}

- (HMCharacteristic)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"characteristicInstanceID"];
  v6 = [coderCopy hm_decodeAndCacheStringForKey:@"characteristicType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138544130;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize from instanceID: %@, characteristicType: %@, service: %@", &v23, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    selfCopy = 0;
  }

  else
  {
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"characteristicMetadata"];
    v16 = [(HMCharacteristic *)self initWithInstanceID:v5 characteristicType:v6 service:v8 metadata:v15];
    if ([coderCopy containsValueForKey:@"characteristicValue"])
    {
      v17 = allowedCharValueTypes();
      v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"characteristicValue"];
      [(HMCharacteristic *)v16 setValue:v18];
    }

    -[HMCharacteristic setHapProperties:](v16, "setHapProperties:", [coderCopy decodeInt32ForKey:@"characteristicProperties"]);
    if ([coderCopy containsValueForKey:@"characteristicValueUpdateTime"])
    {
      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"characteristicValueUpdateTime"];
      [(HMCharacteristic *)v16 setValueUpdatedTime:v19];
    }

    if ([coderCopy containsValueForKey:@"characteristicNotificationEnableTime"])
    {
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"characteristicNotificationEnableTime"];
      [(HMCharacteristic *)v16 setNotificationEnabledTime:v20];
    }

    -[HMCharacteristic setNotificationEnabled:](v16, "setNotificationEnabled:", [coderCopy decodeBoolForKey:@"characteristicNotificationEnabled"]);
    -[HMCharacteristic setHasAuthorizationData:](v16, "setHasAuthorizationData:", [coderCopy decodeBoolForKey:@"HM.characteristicAuthDataPresent"]);
    -[HMCharacteristic setRequiresDeviceUnlock:](v16, "setRequiresDeviceUnlock:", [coderCopy decodeBoolForKey:@"HM.requiresDeviceUnlock"]);
    -[HMCharacteristic setHasFixedValue:](v16, "setHasFixedValue:", [coderCopy decodeBoolForKey:@"kCharacteristicHasFixedValueKey"]);
    self = v16;

    selfCopy = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMCharacteristic *)self uniqueIdentifier];
  v6 = [v4 initWithName:@"Unique ID" value:uniqueIdentifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  characteristicType = [(HMCharacteristic *)self characteristicType];
  characteristicType2 = [(HMCharacteristic *)self characteristicType];
  v10 = [characteristicType2 hasSuffix:@"-0000-1000-8000-0026BB765291"];

  if (v10)
  {
    characteristicType3 = [(HMCharacteristic *)self characteristicType];
    characteristicType4 = [(HMCharacteristic *)self characteristicType];
    v13 = [characteristicType3 substringToIndex:{objc_msgSend(characteristicType4, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

    characteristicType = v13;
  }

  v14 = [v7 initWithName:@"Type" value:characteristicType];
  [array addObject:v14];

  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  instanceID = [(HMCharacteristic *)self instanceID];
  v17 = [v15 initWithName:@"Instance ID" value:instanceID];
  [array addObject:v17];

  v18 = [array copy];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  uniqueIdentifier = [(HMCharacteristic *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)setHasFixedValue:(BOOL)value
{
  os_unfair_lock_lock_with_options();
  self->_hasFixedValue = value;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasFixedValue
{
  os_unfair_lock_lock_with_options();
  hasFixedValue = self->_hasFixedValue;
  os_unfair_lock_unlock(&self->_lock);
  return hasFixedValue;
}

- (NSUUID)uniqueIdentifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = MEMORY[0x1E696AFB0];
    serviceUniqueIdentifier = [(HMCharacteristic *)self serviceUniqueIdentifier];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_instanceID];
    v13[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [v4 hm_deriveUUIDFromBaseUUID:serviceUniqueIdentifier withSalts:v7];
    v9 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v8;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v10 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setHasAuthorizationData:(BOOL)data
{
  os_unfair_lock_lock_with_options();
  self->_hasAuthorizationData = data;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasAuthorizationData
{
  os_unfair_lock_lock_with_options();
  hasAuthorizationData = self->_hasAuthorizationData;
  os_unfair_lock_unlock(&self->_lock);
  return hasAuthorizationData;
}

- (void)setNotificationEnabledTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock_with_options();
  v4 = [timeCopy copy];
  notificationEnabledTime = self->_notificationEnabledTime;
  self->_notificationEnabledTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)notificationEnabledTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationEnabledTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setValueUpdateTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock_with_options();
  v4 = [timeCopy copy];
  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)valueUpdatedTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_valueUpdatedTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRequiresDeviceUnlock:(BOOL)unlock
{
  os_unfair_lock_lock_with_options();
  self->_requiresDeviceUnlock = unlock;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresDeviceUnlock
{
  os_unfair_lock_lock_with_options();
  requiresDeviceUnlock = self->_requiresDeviceUnlock;
  os_unfair_lock_unlock(&self->_lock);
  return requiresDeviceUnlock;
}

- (void)setNotificationEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_notificationEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isNotificationEnabled
{
  os_unfair_lock_lock_with_options();
  notificationEnabled = self->_notificationEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return notificationEnabled;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  v4 = [valueCopy copy];
  value = self->_value;
  self->_value = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)value
{
  os_unfair_lock_lock_with_options();
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)properties
{
  os_unfair_lock_lock_with_options();
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  hapProperties = self->_hapProperties;
  if ((hapProperties & 4) != 0)
  {
    [array addObject:@"HMCharacteristicPropertyWritable"];
    hapProperties = self->_hapProperties;
  }

  if ((hapProperties & 2) != 0)
  {
    [v4 addObject:@"HMCharacteristicPropertyReadable"];
    hapProperties = self->_hapProperties;
  }

  if (hapProperties)
  {
    [v4 addObject:@"HMCharacteristicPropertySupportsEventNotification"];
    hapProperties = self->_hapProperties;
  }

  if ((hapProperties & 0x40) != 0)
  {
    [v4 addObject:@"HMCharacteristicPropertyHidden"];
    hapProperties = self->_hapProperties;
  }

  if ((hapProperties & 0x10) != 0)
  {
    [v4 addObject:@"HMCharacteristicPropertyRequiresAuthorizationData"];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setCharacteristicType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:typeCopy];
  characteristicType = self->_characteristicType;
  self->_characteristicType = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)characteristicType
{
  os_unfair_lock_lock_with_options();
  v3 = self->_characteristicType;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_unconfigure
{
  v13 = *MEMORY[0x1E69E9840];
  service = [(HMCharacteristic *)self service];

  if (service)
  {
    [(HMCharacteristic *)self setService:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)__configureWithContext:(id)context service:(id)service
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  serviceCopy = service;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = contextCopy;
    v17 = 2112;
    v18 = serviceCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@, service: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMCharacteristic *)selfCopy setService:serviceCopy];

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      uniqueIdentifier = [(HMCharacteristic *)self uniqueIdentifier];
      uniqueIdentifier2 = [(HMCharacteristic *)v6 uniqueIdentifier];
      v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HMCharacteristic *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (_HMContext)context
{
  service = [(HMCharacteristic *)self service];
  accessory = [service accessory];
  home = [accessory home];
  context = [home context];

  return context;
}

- (HMCharacteristic)initWithInstanceID:(id)d characteristicType:(id)type service:(id)service metadata:(id)metadata
{
  dCopy = d;
  typeCopy = type;
  serviceCopy = service;
  metadataCopy = metadata;
  v28.receiver = self;
  v28.super_class = HMCharacteristic;
  v14 = [(HMCharacteristic *)&v28 init];
  if (v14)
  {
    v15 = [dCopy copy];
    instanceID = v14->_instanceID;
    v14->_instanceID = v15;

    v17 = [typeCopy copy];
    characteristicType = v14->_characteristicType;
    v14->_characteristicType = v17;

    objc_storeWeak(&v14->_service, serviceCopy);
    uniqueIdentifier = [serviceCopy uniqueIdentifier];
    serviceUniqueIdentifier = v14->_serviceUniqueIdentifier;
    v14->_serviceUniqueIdentifier = uniqueIdentifier;

    v21 = [metadataCopy copy];
    metadata = v14->_metadata;
    v14->_metadata = v21;

    v14->_lock._os_unfair_lock_opaque = 0;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    valueUpdatedTime = v14->_valueUpdatedTime;
    v14->_valueUpdatedTime = distantPast;

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    notificationEnabledTime = v14->_notificationEnabledTime;
    v14->_notificationEnabledTime = distantFuture;
  }

  return v14;
}

- (HMCharacteristic)init
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v5;
    v12 = 2080;
    v13 = "[HMCharacteristic init]";
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@%s is unsupported and will be removed in a future release", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v6 = objc_alloc_init(HMService);
  v7 = [(HMCharacteristic *)self initWithInstanceID:&unk_1F0EFCB78 characteristicType:@"000000B0-0000-1000-8000-0026BB765291" service:v6 metadata:0];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)__localizedDescriptionForCharacteristicType:(id)type
{
  v3 = localizationKeyForCharacteristicType(type);
  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedOrCustomString:v3];

  return v5;
}

+ (id)_characteristicTypeAsString:(id)string
{
  stringCopy = string;
  v4 = +[HMHAPMetadata getSharedInstance];
  v5 = [v4 characteristicTypeDescription:stringCopy];

  return v5;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22, &__block_literal_global_1166);
  }

  v3 = logCategory__hmf_once_v23;

  return v3;
}

uint64_t __31__HMCharacteristic_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v23 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)serializedDictionaryRepresentation
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [HMPBCharacteristicReference characteristicReferenceWithCharacteristic:self];
  v7[0] = @"HMShortcutsSerializedDictionaryVersion";
  v7[1] = @"HMShortcutsSerializedDictionaryProtocol";
  v8[0] = @"1.0";
  v8[1] = @"ProtoBuf";
  v7[2] = @"HMCharacteristicSerializedDataKey";
  data = [v2 data];
  v8[2] = data;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (HMCharacteristic)characteristicWithCharacteristicReference:(id)reference home:(id)home
{
  v31 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  homeCopy = home;
  if (([referenceCopy hasUniqueIdentifier] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v19;
      v20 = "%{public}@CharacteristicReference uniqueIdentifier not set";
LABEL_10:
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, v20, &v27, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v16);
    v14 = 0;
    goto LABEL_18;
  }

  if (([referenceCopy hasServiceReference] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v19;
      v20 = "%{public}@ServiceReference not set in characteristicReference";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  serviceReference = [referenceCopy serviceReference];
  v9 = [HMService serviceWithServiceReference:serviceReference home:homeCopy];

  if (v9)
  {
    v10 = MEMORY[0x1E696AFB0];
    uniqueIdentifier = [referenceCopy uniqueIdentifier];
    v12 = [v10 hmf_UUIDWithBytesAsData:uniqueIdentifier];

    v13 = [v9 _findCharacteristicWithUniqueIdentifier:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v24;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Can't find characteristic %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_18:
  v25 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (HMCharacteristic)characteristicWithSerializedDictionaryRepresentation:(id)representation home:(id)home
{
  homeCopy = home;
  v7 = [representation hmf_dataForKey:@"HMCharacteristicSerializedDataKey"];
  v8 = [HMPBCharacteristicReference characteristicReferenceWithData:v7];
  v9 = [self characteristicWithCharacteristicReference:v8 home:homeCopy];

  return v9;
}

@end