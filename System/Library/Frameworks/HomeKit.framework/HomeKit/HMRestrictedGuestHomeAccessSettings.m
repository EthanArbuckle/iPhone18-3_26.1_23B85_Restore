@interface HMRestrictedGuestHomeAccessSettings
+ (BOOL)doesAccessoryHaveRestrictedGuestCapableServiceTypes:(id)a3;
+ (id)secureClassServices;
+ (id)shortDescription;
- (BOOL)doAllAccessoriesBelongToHome:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMRestrictedGuestHomeAccessSettings)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)locksWithReducedFunctionalityDueToSchedule;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)fixupAccessoriesForHome:(id)a3;
@end

@implementation HMRestrictedGuestHomeAccessSettings

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
  v5 = [v3 initWithName:@"allowedAccessories" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];
  v8 = [v6 initWithName:@"schedule" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)fixupAccessoriesForHome:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMRestrictedGuestHomeAccessSettings *)self identifiersOfAccessAllowedToAccessories];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__HMRestrictedGuestHomeAccessSettings_fixupAccessoriesForHome___block_invoke;
  v15[3] = &unk_1E754AD90;
  v6 = v4;
  v16 = v6;
  v7 = [v5 na_map:v15];
  [(HMRestrictedGuestHomeAccessSettings *)self setAccessAllowedToAccessories:v7];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMRestrictedGuestHomeAccessSettings *)v9 accessAllowedToAccessories];
    v13 = [(HMRestrictedGuestHomeAccessSettings *)v9 guestAccessSchedule];
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@AllowedAccessories: %@, AccessSchedules: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x1E69E9840];
}

- (HMRestrictedGuestHomeAccessSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMRestrictedGuestHomeAccessSettings;
  v5 = [(HMRestrictedGuestHomeAccessSettings *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HM.RG.Allowed.Accessory.Identifiers"];

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    [(HMRestrictedGuestHomeAccessSettings *)v5 setIdentifiersOfAccessAllowedToAccessories:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.RG.Schedule"];
    [(HMRestrictedGuestHomeAccessSettings *)v5 setGuestAccessSchedule:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];

  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__35562;
    v17 = __Block_byref_object_dispose__35563;
    v6 = MEMORY[0x1E695DF70];
    v7 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
    v18 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

    v8 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__HMRestrictedGuestHomeAccessSettings_encodeWithCoder___block_invoke;
    v12[3] = &unk_1E754AD68;
    v12[4] = &v13;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

    v9 = [v14[5] copy];
    [v4 encodeObject:v9 forKey:@"HM.RG.Allowed.Accessory.Identifiers"];

    _Block_object_dispose(&v13, 8);
  }

  v10 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];

  if (v10)
  {
    v11 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];
    [v4 encodeObject:v11 forKey:@"HM.RG.Schedule"];
  }
}

void __55__HMRestrictedGuestHomeAccessSettings_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[HMRestrictedGuestHomeAccessSettings allocWithZone:?]];
  v5 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
  [(HMRestrictedGuestHomeAccessSettings *)v4 setAccessAllowedToAccessories:v5];

  v6 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];
  [(HMRestrictedGuestHomeAccessSettings *)v4 setGuestAccessSchedule:v6];

  return v4;
}

- (unint64_t)hash
{
  v4 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
  if (v4)
  {
    v2 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
    v5 = [v2 hash];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];
  if (v6)
  {
    v7 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];
    v8 = [v7 hash];
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
  }

  return v8 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  if (v6 && (-[HMRestrictedGuestHomeAccessSettings accessAllowedToAccessories](self, "accessAllowedToAccessories"), v7 = objc_claimAutoreleasedReturnValue(), [v6 accessAllowedToAccessories], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
  {
    v10 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];
    v11 = [v6 guestAccessSchedule];
    v12 = HMFEqualObjects();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)locksWithReducedFunctionalityDueToSchedule
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(HMRestrictedGuestHomeAccessSettings *)self guestAccessSchedule];

  if (v3)
  {
    v4 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__HMRestrictedGuestHomeAccessSettings_locksWithReducedFunctionalityDueToSchedule__block_invoke;
    v12[3] = &unk_1E754AD00;
    v12[4] = self;
    v5 = [v4 na_filter:v12];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Configured Schedule is unrestricted so no locks have reduced functionality", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

BOOL __81__HMRestrictedGuestHomeAccessSettings_locksWithReducedFunctionalityDueToSchedule__block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 supportsWalletKey] & 1) != 0 || (objc_msgSend(v3, "supportsAccessCodes") & 1) != 0 || (objc_msgSend(v3, "supportsUWBUnlock"))
  {
    v4 = [*(a1 + 32) guestAccessSchedule];
    v5 = [v4 weekDayRules];
    v6 = [v5 count];
    v7 = [v3 weekDaySchedulesPerUserCapacity];
    if (v6 <= [v7 integerValue])
    {
      v9 = [*(a1 + 32) guestAccessSchedule];
      v10 = [v9 yearDayRules];
      v11 = [v10 count];
      v12 = [v3 yearDaySchedulesPerUserCapacity];
      v8 = v11 <= [v12 integerValue];
    }

    else
    {
      v8 = 0;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 32) guestAccessSchedule];
      v18 = [v3 uuid];
      if (v8)
      {
        v19 = &stru_1F0E92498;
      }

      else
      {
        v19 = @"not ";
      }

      [v3 weekDaySchedulesPerUserCapacity];
      v20 = v30 = v8;
      v21 = [v3 yearDaySchedulesPerUserCapacity];
      *buf = 138544642;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Schedule %@ does %@fit on accessory: [%@] with week day schedule capacity: %@ and year day schedule capacity: %@", buf, 0x3Eu);

      v8 = v30;
    }

    objc_autoreleasePoolPop(v13);
    v22 = !v8;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = [v3 uuid];
      *buf = 138543618;
      v32 = v28;
      v33 = 2112;
      v34 = v29;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Allowed Accessory: [%@] does not have any physical access credentials", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)doAllAccessoriesBelongToHome:(id)a3
{
  v4 = a3;
  v5 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
  if (v5 && (v6 = v5, -[HMRestrictedGuestHomeAccessSettings accessAllowedToAccessories](self, "accessAllowedToAccessories"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, v8))
  {
    v9 = [(HMRestrictedGuestHomeAccessSettings *)self accessAllowedToAccessories];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__HMRestrictedGuestHomeAccessSettings_doAllAccessoriesBelongToHome___block_invoke;
    v12[3] = &unk_1E754AD00;
    v13 = v4;
    v10 = [v9 na_allObjectsPassTest:v12];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __68__HMRestrictedGuestHomeAccessSettings_doAllAccessoriesBelongToHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 home];
  v4 = [v3 uuid];
  v5 = [*(a1 + 32) uuid];
  v6 = HMFEqualObjects();

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)secureClassServices
{
  if (secureClassServices_onceToken != -1)
  {
    dispatch_once(&secureClassServices_onceToken, &__block_literal_global_35585);
  }

  v3 = secureClassServices_secureClassServices;

  return v3;
}

void __58__HMRestrictedGuestHomeAccessSettings_secureClassServices__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"00000081-0000-1000-8000-0026BB765291";
  v5[1] = @"00000041-0000-1000-8000-0026BB765291";
  v5[2] = @"00000045-0000-1000-8000-0026BB765291";
  v5[3] = @"0000007E-0000-1000-8000-0026BB765291";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = secureClassServices_secureClassServices;
  secureClassServices_secureClassServices = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (BOOL)doesAccessoryHaveRestrictedGuestCapableServiceTypes:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91__HMRestrictedGuestHomeAccessSettings_doesAccessoryHaveRestrictedGuestCapableServiceTypes___block_invoke;
  v4[3] = &__block_descriptor_40_e18_B16__0__NSString_8l;
  v4[4] = a1;
  return [a3 na_any:v4];
}

uint64_t __91__HMRestrictedGuestHomeAccessSettings_doesAccessoryHaveRestrictedGuestCapableServiceTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 secureClassServices];
  v5 = [v4 containsObject:v3];

  return v5;
}

@end