@interface HKRegionAvailability
+ (id)allowedInSomeCountries:(id)a3;
+ (id)anyCountryAvailability;
+ (id)uncheckedAvailability;
- (BOOL)isEqual:(id)a3;
- (HKRegionAvailability)initWithCoder:(id)a3;
- (NSString)prettyPrintedDescription;
- (id)onboardingEligibilityForCountryCode:(id)a3;
- (unint64_t)hash;
- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3;
- (void)_initWithCategory:(void *)a3 version:(void *)a4 allowedCountries:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKRegionAvailability

+ (id)uncheckedAvailability
{
  v2 = objc_alloc_init(_HKUncheckedRegionAvailability);

  return v2;
}

+ (id)anyCountryAvailability
{
  v2 = objc_alloc_init(_HKAnyCountryAvailability);

  return v2;
}

+ (id)allowedInSomeCountries:(id)a3
{
  v3 = a3;
  v4 = [[_HKAllowedInSomeCountriesAvailability alloc] initWithAllowedCountries:v3];

  return v4;
}

- (id)onboardingEligibilityForCountryCode:(id)a3
{
  v4 = a3;
  v5 = [HKFeatureAvailabilityOnboardingEligibility alloc];
  v6 = [(HKRegionAvailability *)self ineligibilityReasonsForOnboardingCountryCode:v4];

  v7 = [(HKRegionAvailability *)self version];
  v8 = [(HKFeatureAvailabilityOnboardingEligibility *)v5 initWithIneligibilityReasons:v6 countryAvailabilityVersion:v7];

  return v8;
}

- (NSString)prettyPrintedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(HKRegionAvailability *)self version];
  [v3 appendFormat:@"Version: %@\n", v4];

  v5 = [(HKRegionAvailability *)self category];
  switch(v5)
  {
    case 3:
      v7 = [(HKRegionAvailability *)self allowedCountries];
      v8 = [v7 prettyPrintedDescription];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = &stru_1F05FF230;
      }

      [v3 appendString:v10];

      goto LABEL_11;
    case 2:
      v6 = @"All countries";
      break;
    case 1:
      v6 = @"Unchecked";
      break;
    default:
      goto LABEL_11;
  }

  [v3 appendString:v6];
LABEL_11:
  v11 = [v3 copy];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKRegionAvailability;
  if (![(HKRegionAvailability *)&v12 isEqual:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_14;
    }

    v6 = v4;
    allowedCountries = self->_allowedCountries;
    v8 = v6[3];
    if (allowedCountries != v8 && (!v8 || ![(HKAllowedCountries *)allowedCountries isEqual:?]) || self->_category != v6[1])
    {
      goto LABEL_12;
    }

    version = self->_version;
    v10 = v6[2];
    if (version == v10)
    {
      v5 = 1;
      goto LABEL_13;
    }

    if (v10)
    {
      v5 = [(NSString *)version isEqual:?];
    }

    else
    {
LABEL_12:
      v5 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HKAllowedCountries *)self->_allowedCountries hash];
  version = self->_version;
  v5 = self->_category ^ v3;
  return v5 ^ [(NSString *)version hash];
}

- (void)encodeWithCoder:(id)a3
{
  allowedCountries = self->_allowedCountries;
  v5 = a3;
  [v5 encodeObject:allowedCountries forKey:@"allowedCountries"];
  [v5 encodeInteger:self->_category forKey:@"category"];
  [v5 encodeObject:self->_version forKey:@"version"];
}

- (HKRegionAvailability)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"category"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowedCountries"];

  if (v6)
  {
    self = [(HKRegionAvailability *)self _initWithCategory:v5 version:v6 allowedCountries:v7];
    v9 = self;
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HKRegionAvailability *)self initWithCoder:v8];
    }

    v9 = 0;
  }

  return v9;
}

- (void)_initWithCategory:(void *)a3 version:(void *)a4 allowedCountries:
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = HKRegionAvailability;
    v9 = objc_msgSendSuper2(&v24, sel_init);
    a1 = v9;
    if (v9)
    {
      if ((a2 - 4) > 0xFFFFFFFFFFFFFFFCLL)
      {
        if (a2 != 3 || v8)
        {
          v9[1] = a2;
          v13 = [v7 copy];
          v14 = a1[2];
          a1[2] = v13;

          v15 = [v8 copy];
          v12 = a1[3];
          a1[3] = v15;
          goto LABEL_14;
        }

        _HKInitializeLogging();
        v11 = HKLogInfrastructure();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          *buf = 138543362;
          v26 = v22;
          v23 = v22;
          _os_log_error_impl(&dword_19197B000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Allowed countries is required when category is HKRegionAvailabilityCategoryAllowedInSomeCountries", buf, 0xCu);
        }
      }

      else
      {
        _HKInitializeLogging();
        v10 = HKLogInfrastructure();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          v19 = MEMORY[0x1E696AD98];
          v20 = v18;
          v21 = [v19 numberWithInteger:a2];
          *buf = 138543618;
          v26 = v18;
          v27 = 2114;
          v28 = v21;
          _os_log_error_impl(&dword_19197B000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Unknown category value: %{public}@", buf, 0x16u);
        }
      }

      v12 = a1;
      a1 = 0;
LABEL_14:
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

- (unint64_t)ineligibilityReasonsForOnboardingCountryCode:(id)a3
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Version is required", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end