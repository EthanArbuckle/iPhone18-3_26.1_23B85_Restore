@interface HKAllowedCountries
+ (id)allowedCountriesInIntersectionOfLocalAndRemoteSetPendingSync:(id)a3;
+ (id)allowedCountriesInIntersectionOfLocalSet:(id)a3 remoteSet:(id)a4;
+ (id)allowedCountriesInLocalSet:(id)a3;
+ (id)capabilityNotSupportedOnRemoteDevice:(id)a3;
+ (id)noRemoteDevice:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)someRegionIsSupported;
- (HKAllowedCountries)initWithCoder:(id)a3;
- (NSString)prettyPrintedDescription;
- (unint64_t)hash;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3;
- (void)_initWithCategory:(void *)a3 version:(void *)a4 localCountrySet:(uint64_t)a5 remoteState:(void *)a6 remoteCountrySet:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAllowedCountries

+ (id)allowedCountriesInLocalSet:(id)a3
{
  v3 = a3;
  v4 = [[_HKAllowedCountriesInLocalSet alloc] initWithLocalCountrySet:v3];

  return v4;
}

+ (id)noRemoteDevice:(id)a3
{
  v3 = a3;
  v4 = [[_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction alloc] initWithLocalCountrySet:v3 remoteState:2];

  return v4;
}

+ (id)capabilityNotSupportedOnRemoteDevice:(id)a3
{
  v3 = a3;
  v4 = [[_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction alloc] initWithLocalCountrySet:v3 remoteState:3];

  return v4;
}

+ (id)allowedCountriesInIntersectionOfLocalAndRemoteSetPendingSync:(id)a3
{
  v3 = a3;
  v4 = [[_HKAllowedCountriesInLocalAndRemoteIntersectionMissingRemoteRestriction alloc] initWithLocalCountrySet:v3 remoteState:4];

  return v4;
}

+ (id)allowedCountriesInIntersectionOfLocalSet:(id)a3 remoteSet:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_HKAllowedCountriesInIntersectionOfLocalAndRemoteSet alloc] initWithLocalCountrySet:v6 remoteCountrySet:v5];

  return v7;
}

- (NSString)prettyPrintedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(HKAllowedCountries *)self localCountrySet];
  v5 = [v4 allCountryCodes];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  v7 = [v6 componentsJoinedByString:{@", "}];

  v8 = [(HKAllowedCountries *)self category];
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      goto LABEL_18;
    }

    [v3 appendString:@"Available only in countries specified by this device:\n"];
    [v3 appendFormat:@"%@\n", v7];
    v9 = [(HKAllowedCountries *)self localCountrySet];
    v10 = NSStringFromHKCountrySetProvenance([v9 provenance]);
    [v3 appendFormat:@"(Provenance: %@)\n", v10];
    goto LABEL_4;
  }

  [v3 appendString:@"Available based on the intersection of countries specified by the local and remote devices:\n"];
  [v3 appendFormat:@"Local : %@\n", v7];
  v11 = [(HKAllowedCountries *)self localCountrySet];
  v12 = NSStringFromHKCountrySetProvenance([v11 provenance]);
  [v3 appendFormat:@"(Provenance: %@)\n", v12];

  [v3 appendString:@"Remote: "];
  v13 = [(HKAllowedCountries *)self remoteState];
  if (v13 <= 3)
  {
    if (v13 == 2)
    {
      v14 = @"No device";
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_18;
      }

      v14 = @"Device capability not supported";
    }

    goto LABEL_17;
  }

  if (v13 == 4)
  {
    v14 = @"Awaiting sync of countries";
LABEL_17:
    [v3 appendString:v14];
    goto LABEL_18;
  }

  if (v13 == 5)
  {
    v15 = [(HKAllowedCountries *)self remoteCountrySet];
    v16 = [v15 allCountryCodes];
    v17 = [v16 sortedArrayUsingSelector:sel_compare_];
    v18 = [v17 componentsJoinedByString:{@", "}];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1F05FF230;
    }

    [v3 appendString:v20];

    v9 = [(HKAllowedCountries *)self remoteCountrySet];
    v10 = NSStringFromHKCountrySetProvenance([v9 provenance]);
    [v3 appendFormat:@"\n(Provenance: %@)\n", v10];
LABEL_4:
  }

LABEL_18:
  v21 = [v3 copy];

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKAllowedCountries;
  if (![(HKAllowedCountries *)&v14 isEqual:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_18;
    }

    v6 = v4;
    if (self->_category != v6[1])
    {
      goto LABEL_16;
    }

    localCountrySet = self->_localCountrySet;
    v8 = v6[3];
    if (localCountrySet != v8 && (!v8 || ![(HKCountrySet *)localCountrySet isEqual:?]))
    {
      goto LABEL_16;
    }

    remoteCountrySet = self->_remoteCountrySet;
    v10 = v6[5];
    if (remoteCountrySet != v10 && (!v10 || ![(HKCountrySet *)remoteCountrySet isEqual:?]))
    {
      goto LABEL_16;
    }

    if (self->_remoteState != v6[4])
    {
      goto LABEL_16;
    }

    version = self->_version;
    v12 = v6[2];
    if (version == v12)
    {
      v5 = 1;
      goto LABEL_17;
    }

    if (v12)
    {
      v5 = [(NSString *)version isEqual:?];
    }

    else
    {
LABEL_16:
      v5 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v5 = 1;
LABEL_18:

  return v5;
}

- (unint64_t)hash
{
  category = self->_category;
  v4 = [(HKCountrySet *)self->_localCountrySet hash]^ category;
  v5 = v4 ^ [(HKCountrySet *)self->_remoteCountrySet hash]^ self->_remoteState;
  return v5 ^ [(NSString *)self->_version hash];
}

- (void)encodeWithCoder:(id)a3
{
  category = self->_category;
  v5 = a3;
  [v5 encodeInteger:category forKey:@"category"];
  [v5 encodeObject:self->_localCountrySet forKey:@"localCountrySet"];
  [v5 encodeObject:self->_remoteCountrySet forKey:@"remoteCountrySet"];
  [v5 encodeInteger:self->_remoteState forKey:@"remoteState"];
  [v5 encodeObject:self->_version forKey:@"version"];
}

- (HKAllowedCountries)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"category"];
  if ((v5 - 1) >= 2)
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HKAllowedCountries *)self initWithCoder:v5];
    }

    goto LABEL_13;
  }

  v6 = [v4 decodeIntegerForKey:@"remoteState"];
  if ((v6 - 1) >= 5)
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HKAllowedCountries *)self initWithCoder:v6];
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localCountrySet"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteCountrySet"];
  if (v7 && v8)
  {
    self = [(HKAllowedCountries *)self _initWithCategory:v5 version:v7 localCountrySet:v8 remoteState:v6 remoteCountrySet:v9];
    v11 = self;
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogInfrastructure();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      v14 = v16;
      _os_log_error_impl(&dword_19197B000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Missing required fields: %{public}@ %{public}@", &v15, 0x20u);
    }

    v11 = 0;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_initWithCategory:(void *)a3 version:(void *)a4 localCountrySet:(uint64_t)a5 remoteState:(void *)a6 remoteCountrySet:
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = HKAllowedCountries;
    v14 = objc_msgSendSuper2(&v26, sel_init);
    a1 = v14;
    if (v14)
    {
      if (a5 != 5 || v13)
      {
        v14[1] = a2;
        v17 = [v11 copy];
        v18 = a1[2];
        a1[2] = v17;

        v19 = [v12 copy];
        v20 = a1[3];
        a1[3] = v19;

        a1[4] = a5;
        v21 = [v13 copy];
        v16 = a1[5];
        a1[5] = v21;
      }

      else
      {
        _HKInitializeLogging();
        v15 = HKLogInfrastructure();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v24 = objc_opt_class();
          *buf = 138543362;
          v28 = v24;
          v25 = v24;
          _os_log_error_impl(&dword_19197B000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] activeRemoteCountries is required when remoteState is HKRemoteAllowedCountriesStateReady", buf, 0xCu);
        }

        v16 = a1;
        a1 = 0;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return a1;
}

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)someRegionIsSupported
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AD98];
  v5 = v3;
  v6 = [v4 numberWithInteger:a2];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_19197B000, v7, v8, "[%{public}@] Unsupported category: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AD98];
  v5 = v3;
  v6 = [v4 numberWithInteger:a2];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_19197B000, v7, v8, "[%{public}@] Unsupported remote state: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

@end