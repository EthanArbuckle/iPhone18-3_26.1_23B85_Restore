@interface HMCharacteristic
+ (HMCharacteristic)characteristicWithCharacteristicReference:(id)a3 home:(id)a4;
+ (HMCharacteristic)characteristicWithSerializedDictionaryRepresentation:(id)a3 home:(id)a4;
+ (id)__localizedDescriptionForCharacteristicType:(id)a3;
+ (id)_characteristicTypeAsString:(id)a3;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)hasAuthorizationData;
- (BOOL)hasFixedValue;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNotificationEnabled;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)requiresDeviceUnlock;
- (HMCharacteristic)init;
- (HMCharacteristic)initWithCoder:(id)a3;
- (HMCharacteristic)initWithInstanceID:(id)a3 characteristicType:(id)a4 service:(id)a5 metadata:(id)a6;
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
- (void)__configureWithContext:(id)a3 service:(id)a4;
- (void)_readValueWithCompletionHandler:(id)a3;
- (void)_unconfigure;
- (void)_updateAuthorizationData:(id)a3 completionHandler:(id)a4;
- (void)_updateValue:(id)a3 valueUpdatedDate:(id)a4;
- (void)_writeValue:(id)a3 completionHandler:(id)a4;
- (void)enableNotification:(BOOL)enable completionHandler:(void *)completion;
- (void)readValueWithCompletionHandler:(void *)completion;
- (void)setCharacteristicType:(id)a3;
- (void)setHasAuthorizationData:(BOOL)a3;
- (void)setHasFixedValue:(BOOL)a3;
- (void)setNotificationEnabled:(BOOL)a3;
- (void)setNotificationEnabledTime:(id)a3;
- (void)setRequiresDeviceUnlock:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)setValueUpdateTime:(id)a3;
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
  v4 = [(HMCharacteristic *)self characteristicType];
  v5 = [v3 __localizedDescriptionForCharacteristicType:v4];

  return v5;
}

- (id)_characteristicTypeDescription
{
  v2 = [(HMCharacteristic *)self characteristicType];
  v3 = [HMCharacteristic _characteristicTypeAsString:v2];

  return v3;
}

- (void)_updateAuthorizationData:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(HMCharacteristic *)self service];
  v8 = [v7 accessory];
  v9 = v8;
  if (v7 && v8)
  {
    [v8 _updateAuthorizationData:v13 forService:v7 characteristic:self completionHandler:v6];
  }

  else
  {
    v10 = [(HMCharacteristic *)self context];
    v11 = [v10 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
    [v11 callCompletion:v6 error:v12];
  }
}

- (void)updateAuthorizationData:(NSData *)data completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = data;
  v7 = completion;
  v8 = [(HMCharacteristic *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristic updateAuthorizationData:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMCharacteristic_updateAuthorizationData_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
  v7 = [(HMCharacteristic *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristic enableNotification:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
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

  v8 = v7;
  if (v7)
  {
    v9 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HMCharacteristic_enableNotification_completionHandler___block_invoke;
    block[3] = &unk_1E7548108;
    block[4] = self;
    v24 = enable;
    v23 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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

- (void)_readValueWithCompletionHandler:(id)a3
{
  v13 = a3;
  v4 = [(HMCharacteristic *)self service];
  v5 = [v4 accessory];
  v6 = v5;
  if (v4 && v5)
  {
    if (([(HMCharacteristic *)self hapProperties]& 2) != 0)
    {
      [v6 _readValueForCharacteristic:self completionHandler:v13];
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:48 userInfo:0];
      v8 = [(HMCharacteristic *)self context];
      v9 = [v8 delegateCaller];
      [v9 callCompletion:v13 error:v7];
    }
  }

  else
  {
    v10 = [(HMCharacteristic *)self context];
    v11 = [v10 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
    [v11 callCompletion:v13 error:v12];
  }
}

- (void)readValueWithCompletionHandler:(void *)completion
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = completion;
  v5 = [(HMCharacteristic *)self context];
  if (!v4)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristic readValueWithCompletionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
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

  v6 = v5;
  if (v5)
  {
    if ([(HMCharacteristic *)self hasFixedValue])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        characteristicType = v8->_characteristicType;
        *buf = 138543618;
        v32 = v10;
        v33 = 2112;
        v34 = characteristicType;
        _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Characteristics of type %@ has fixed value. So skipping reads to the accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [(HMCharacteristic *)v8 context];
      v13 = [v12 delegateCaller];
      [v13 callCompletion:v4 error:0];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"CharacteristicRead"];
      v19 = [v6 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__HMCharacteristic_readValueWithCompletionHandler___block_invoke;
      block[3] = &unk_1E754E0F8;
      v28 = v18;
      v29 = self;
      v30 = v4;
      v12 = v18;
      dispatch_async(v19, block);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
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

- (void)_writeValue:(id)a3 completionHandler:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMCharacteristic *)self service];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 accessory];
      if (v10)
      {
        v11 = v10;
        if (([(HMCharacteristic *)self hapProperties]& 4) != 0)
        {
          [v11 _writeValue:v6 forCharacteristic:self service:v9 completionHandler:v7];
        }

        else
        {
          v12 = [(HMCharacteristic *)self hapProperties];
          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          if ((v12 & 2) != 0)
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
          v39 = [(HMCharacteristic *)v14 context];
          v40 = [v39 delegateCaller];
          [v40 callCompletion:v7 error:v38];
        }
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          v42 = 138543362;
          v43 = v33;
          _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic: service's accessory is nil", &v42, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        v34 = [(HMCharacteristic *)v31 context];
        v35 = [v34 delegateCaller];
        v36 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
        [v35 callCompletion:v7 error:v36];

        v11 = 0;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v42 = 138543362;
        v43 = v27;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic: service is nil", &v42, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v11 = [(HMCharacteristic *)v25 context];
      v28 = [v11 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      [v28 callCompletion:v7 error:v29];

      v9 = 0;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v22;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic: value is nil", &v42, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v9 = [(HMCharacteristic *)v20 context];
    v11 = [v9 delegateCaller];
    v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v11 callCompletion:v7 error:v23];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)writeValue:(id)value completionHandler:(void *)completion
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = value;
  v7 = completion;
  v8 = [(HMCharacteristic *)self context];
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristic writeValue:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"CharacteristicWrite"];
    v11 = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__HMCharacteristic_writeValue_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    v25 = v10;
    v26 = self;
    v27 = v6;
    v28 = v7;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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

- (void)_updateValue:(id)a3 valueUpdatedDate:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMCharacteristic *)v9 value];
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating characteristic value from %@ -> %@ with value updated date: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  [(HMCharacteristic *)v9 setValue:v6];
  if (v7)
  {
    [(HMCharacteristic *)v9 setValueUpdatedTime:v7];
  }

  else
  {
    v13 = [MEMORY[0x1E695DF00] date];
    [(HMCharacteristic *)v9 setValueUpdatedTime:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_40;
  }

  v6 = v5;
  v7 = [(HMCharacteristic *)self metadata];
  v8 = [v6 metadata];
  v9 = [v7 mergeFromNewObject:v8];

  -[HMCharacteristic setHapProperties:](self, "setHapProperties:", [v6 hapProperties]);
  v10 = [v6 characteristicType];
  [(HMCharacteristic *)self setCharacteristicType:v10];

  -[HMCharacteristic setHasFixedValue:](self, "setHasFixedValue:", [v6 hasFixedValue]);
  [v6 setNotificationEnabledByThisClient:{-[HMCharacteristic notificationEnabledByThisClient](self, "notificationEnabledByThisClient")}];
  -[HMCharacteristic setRequiresDeviceUnlock:](self, "setRequiresDeviceUnlock:", [v6 requiresDeviceUnlock]);
  LODWORD(v10) = [(HMCharacteristic *)self hasAuthorizationData];
  if (v10 != [v6 hasAuthorizationData])
  {
    -[HMCharacteristic setHasAuthorizationData:](self, "setHasAuthorizationData:", [v6 hasAuthorizationData]);
    v11 = [(HMCharacteristic *)self service];
    v12 = [v11 accessory];
    v13 = [v12 delegate];
    if ([v13 conformsToProtocol:&unk_1F0F63E80])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v3 = v14;

    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v15 = [(HMCharacteristic *)self context];
      v16 = [v15 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__HMCharacteristic_mergeFromNewObject___block_invoke;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v71 = v3;
      v72 = v12;
      dispatch_async(v16, block);
    }
  }

  v17 = [(HMCharacteristic *)self value];
  v18 = [(HMCharacteristic *)self valueUpdatedTime];
  v65 = v17;
  if (!v18)
  {
    v3 = [v6 value];
    if ((HMFEqualObjects() & 1) == 0)
    {

LABEL_19:
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v6 value];
        v28 = [v6 valueUpdatedTime];
        *buf = 138543874;
        v74 = v26;
        v75 = 2112;
        v76 = v27;
        v77 = 2112;
        v78 = v28;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Updating value and value updated time via merge to %@ and %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v29 = [v6 value];
      [(HMCharacteristic *)v24 setValue:v29];

      v30 = [v6 valueUpdatedTime];
      [(HMCharacteristic *)v24 setValueUpdatedTime:v30];

      v22 = 1;
      goto LABEL_22;
    }
  }

  v19 = [v6 valueUpdatedTime];
  v20 = [(HMCharacteristic *)self valueUpdatedTime];
  v21 = [v19 compare:v20];

  if (v18)
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
  v31 = [(HMCharacteristic *)self isNotificationEnabled];
  if (v31 != [v6 isNotificationEnabled])
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v6 isNotificationEnabled];
      *buf = 138543618;
      v74 = v35;
      v75 = 1024;
      LODWORD(v76) = v36;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_INFO, "%{public}@Updating notification enabled via merge to %{BOOL}d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v32);
    -[HMCharacteristic setNotificationEnabled:](v33, "setNotificationEnabled:", [v6 isNotificationEnabled]);
    v22 = 1;
  }

  v37 = [(HMCharacteristic *)self notificationEnabledTime];
  v38 = [v6 notificationEnabledTime];
  v39 = HMFEqualObjects();

  if ((v39 & 1) == 0)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      v44 = [v6 notificationEnabledTime];
      *buf = 138543618;
      v74 = v43;
      v75 = 2112;
      v76 = v44;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_INFO, "%{public}@Updating notification enabled time via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v45 = [v6 notificationEnabledTime];
    [(HMCharacteristic *)v41 setNotificationEnabledTime:v45];

    v22 = 1;
  }

  v46 = +[HMHAPMetadata getSharedInstance];
  if (v22)
  {
    v47 = [(HMCharacteristic *)self characteristicType];
    v48 = [v46 shouldNotCacheCharacteristicOfType:v47];

    if ((v48 & 1) == 0)
    {
      v49 = [(HMCharacteristic *)self value];
      v50 = HMFEqualObjects();

      if ((v50 & 1) == 0)
      {
        v51 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v54 = v64 = v51;
          v55 = [(HMCharacteristic *)v52 value];
          v56 = [(HMCharacteristic *)v52 valueUpdatedTime];
          *buf = 138544130;
          v74 = v54;
          v75 = 2112;
          v76 = v65;
          v77 = 2112;
          v78 = v55;
          v79 = 2112;
          v80 = v56;
          _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_INFO, "%{public}@Merge updated characteristic value from %@ -> %@ with value updated date: %@", buf, 0x2Au);

          v51 = v64;
        }

        objc_autoreleasePoolPop(v51);
      }

      v57 = [(HMCharacteristic *)self service];
      v58 = [v57 accessory];
      v59 = [v58 delegate];
      if (objc_opt_respondsToSelector())
      {
        v60 = [(HMCharacteristic *)self context];
        v61 = [v60 queue];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __39__HMCharacteristic_mergeFromNewObject___block_invoke_258;
        v66[3] = &unk_1E754DE30;
        v66[4] = self;
        v67 = v59;
        v68 = v58;
        v69 = v57;
        dispatch_async(v61, v66);
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

- (HMCharacteristic)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characteristicInstanceID"];
  v6 = [v4 hm_decodeAndCacheStringForKey:@"characteristicType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
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
    v14 = 0;
  }

  else
  {
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characteristicMetadata"];
    v16 = [(HMCharacteristic *)self initWithInstanceID:v5 characteristicType:v6 service:v8 metadata:v15];
    if ([v4 containsValueForKey:@"characteristicValue"])
    {
      v17 = allowedCharValueTypes();
      v18 = [v4 decodeObjectOfClasses:v17 forKey:@"characteristicValue"];
      [(HMCharacteristic *)v16 setValue:v18];
    }

    -[HMCharacteristic setHapProperties:](v16, "setHapProperties:", [v4 decodeInt32ForKey:@"characteristicProperties"]);
    if ([v4 containsValueForKey:@"characteristicValueUpdateTime"])
    {
      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characteristicValueUpdateTime"];
      [(HMCharacteristic *)v16 setValueUpdatedTime:v19];
    }

    if ([v4 containsValueForKey:@"characteristicNotificationEnableTime"])
    {
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characteristicNotificationEnableTime"];
      [(HMCharacteristic *)v16 setNotificationEnabledTime:v20];
    }

    -[HMCharacteristic setNotificationEnabled:](v16, "setNotificationEnabled:", [v4 decodeBoolForKey:@"characteristicNotificationEnabled"]);
    -[HMCharacteristic setHasAuthorizationData:](v16, "setHasAuthorizationData:", [v4 decodeBoolForKey:@"HM.characteristicAuthDataPresent"]);
    -[HMCharacteristic setRequiresDeviceUnlock:](v16, "setRequiresDeviceUnlock:", [v4 decodeBoolForKey:@"HM.requiresDeviceUnlock"]);
    -[HMCharacteristic setHasFixedValue:](v16, "setHasFixedValue:", [v4 decodeBoolForKey:@"kCharacteristicHasFixedValueKey"]);
    self = v16;

    v14 = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMCharacteristic *)self uniqueIdentifier];
  v6 = [v4 initWithName:@"Unique ID" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMCharacteristic *)self characteristicType];
  v9 = [(HMCharacteristic *)self characteristicType];
  v10 = [v9 hasSuffix:@"-0000-1000-8000-0026BB765291"];

  if (v10)
  {
    v11 = [(HMCharacteristic *)self characteristicType];
    v12 = [(HMCharacteristic *)self characteristicType];
    v13 = [v11 substringToIndex:{objc_msgSend(v12, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

    v8 = v13;
  }

  v14 = [v7 initWithName:@"Type" value:v8];
  [v3 addObject:v14];

  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  v16 = [(HMCharacteristic *)self instanceID];
  v17 = [v15 initWithName:@"Instance ID" value:v16];
  [v3 addObject:v17];

  v18 = [v3 copy];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  v2 = [(HMCharacteristic *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)setHasFixedValue:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasFixedValue = a3;

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
    v5 = [(HMCharacteristic *)self serviceUniqueIdentifier];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_instanceID];
    v13[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [v4 hm_deriveUUIDFromBaseUUID:v5 withSalts:v7];
    v9 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v8;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v10 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setHasAuthorizationData:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasAuthorizationData = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasAuthorizationData
{
  os_unfair_lock_lock_with_options();
  hasAuthorizationData = self->_hasAuthorizationData;
  os_unfair_lock_unlock(&self->_lock);
  return hasAuthorizationData;
}

- (void)setNotificationEnabledTime:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setValueUpdateTime:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setRequiresDeviceUnlock:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_requiresDeviceUnlock = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresDeviceUnlock
{
  os_unfair_lock_lock_with_options();
  requiresDeviceUnlock = self->_requiresDeviceUnlock;
  os_unfair_lock_unlock(&self->_lock);
  return requiresDeviceUnlock;
}

- (void)setNotificationEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_notificationEnabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isNotificationEnabled
{
  os_unfair_lock_lock_with_options();
  notificationEnabled = self->_notificationEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return notificationEnabled;
}

- (void)setValue:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  hapProperties = self->_hapProperties;
  if ((hapProperties & 4) != 0)
  {
    [v3 addObject:@"HMCharacteristicPropertyWritable"];
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

- (void)setCharacteristicType:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
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
  v3 = [(HMCharacteristic *)self service];

  if (v3)
  {
    [(HMCharacteristic *)self setService:0];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 removeObserver:self];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
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

- (void)__configureWithContext:(id)a3 service:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@, service: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMCharacteristic *)v9 setService:v7];

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMCharacteristic *)self uniqueIdentifier];
      v8 = [(HMCharacteristic *)v6 uniqueIdentifier];
      v9 = [v7 isEqual:v8];
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
  v2 = [(HMCharacteristic *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (_HMContext)context
{
  v2 = [(HMCharacteristic *)self service];
  v3 = [v2 accessory];
  v4 = [v3 home];
  v5 = [v4 context];

  return v5;
}

- (HMCharacteristic)initWithInstanceID:(id)a3 characteristicType:(id)a4 service:(id)a5 metadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = HMCharacteristic;
  v14 = [(HMCharacteristic *)&v28 init];
  if (v14)
  {
    v15 = [v10 copy];
    instanceID = v14->_instanceID;
    v14->_instanceID = v15;

    v17 = [v11 copy];
    characteristicType = v14->_characteristicType;
    v14->_characteristicType = v17;

    objc_storeWeak(&v14->_service, v12);
    v19 = [v12 uniqueIdentifier];
    serviceUniqueIdentifier = v14->_serviceUniqueIdentifier;
    v14->_serviceUniqueIdentifier = v19;

    v21 = [v13 copy];
    metadata = v14->_metadata;
    v14->_metadata = v21;

    v14->_lock._os_unfair_lock_opaque = 0;
    v23 = [MEMORY[0x1E695DF00] distantPast];
    valueUpdatedTime = v14->_valueUpdatedTime;
    v14->_valueUpdatedTime = v23;

    v25 = [MEMORY[0x1E695DF00] distantFuture];
    notificationEnabledTime = v14->_notificationEnabledTime;
    v14->_notificationEnabledTime = v25;
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

+ (id)__localizedDescriptionForCharacteristicType:(id)a3
{
  v3 = localizationKeyForCharacteristicType(a3);
  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedOrCustomString:v3];

  return v5;
}

+ (id)_characteristicTypeAsString:(id)a3
{
  v3 = a3;
  v4 = +[HMHAPMetadata getSharedInstance];
  v5 = [v4 characteristicTypeDescription:v3];

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
  v3 = [v2 data];
  v8[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (HMCharacteristic)characteristicWithCharacteristicReference:(id)a3 home:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 hasUniqueIdentifier] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
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

  if (([v6 hasServiceReference] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
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

  v8 = [v6 serviceReference];
  v9 = [HMService serviceWithServiceReference:v8 home:v7];

  if (v9)
  {
    v10 = MEMORY[0x1E696AFB0];
    v11 = [v6 uniqueIdentifier];
    v12 = [v10 hmf_UUIDWithBytesAsData:v11];

    v13 = [v9 _findCharacteristicWithUniqueIdentifier:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a1;
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

+ (HMCharacteristic)characteristicWithSerializedDictionaryRepresentation:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = [a3 hmf_dataForKey:@"HMCharacteristicSerializedDataKey"];
  v8 = [HMPBCharacteristicReference characteristicReferenceWithData:v7];
  v9 = [a1 characteristicWithCharacteristicReference:v8 home:v6];

  return v9;
}

@end