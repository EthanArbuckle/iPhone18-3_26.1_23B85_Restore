@interface HKFeatureAvailabilityOnboardingEligibility
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityOnboardingEligibility)initWithCoder:(id)a3;
- (HKFeatureAvailabilityOnboardingEligibility)initWithIneligibilityReasons:(unint64_t)a3 countryAvailabilityVersion:(id)a4;
- (id)description;
- (id)eligibilityRespectingOverridesForFeatureIdentifier:(id)a3;
- (id)ineligibilityReasonsDescription;
- (int64_t)onboardedCountrySupportedState;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAvailabilityOnboardingEligibility

- (HKFeatureAvailabilityOnboardingEligibility)initWithIneligibilityReasons:(unint64_t)a3 countryAvailabilityVersion:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKFeatureAvailabilityOnboardingEligibility;
  v7 = [(HKFeatureAvailabilityOnboardingEligibility *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_ineligibilityReasons = a3;
    v9 = [v6 copy];
    countryAvailabilityVersion = v8->_countryAvailabilityVersion;
    v8->_countryAvailabilityVersion = v9;
  }

  return v8;
}

- (id)eligibilityRespectingOverridesForFeatureIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[HKFeatureAvailabilityRequirementSatisfactionOverrides alloc] initWithFeatureIdentifier:v4];

  ineligibilityReasons = self->_ineligibilityReasons;
  v7 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 overriddenSatisfactionOfRequirementWithIdentifier:@"ActiveRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapability"];
  v8 = v7;
  if (v7)
  {
    if ([v7 BOOLValue])
    {
      ineligibilityReasons &= ~2uLL;
    }

    else
    {
      ineligibilityReasons |= 2uLL;
    }
  }

  v9 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 overriddenSatisfactionOfRequirementWithIdentifier:@"CapabilityIsSupportedOnActiveRemoteDevice"];
  v10 = v9;
  if (v9)
  {
    if ([v9 BOOLValue])
    {
      ineligibilityReasons &= ~4uLL;
    }

    else
    {
      ineligibilityReasons |= 4uLL;
    }
  }

  v11 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 overriddenSatisfactionOfRequirementWithIdentifier:@"CountryIsSupportedOnLocalDevice"];
  v12 = v11;
  if (v11)
  {
    if ([v11 BOOLValue])
    {
      ineligibilityReasons &= ~8uLL;
    }

    else
    {
      ineligibilityReasons |= 8uLL;
    }
  }

  v13 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 overriddenSatisfactionOfRequirementWithIdentifier:@"CountryIsSupportedOnActiveRemoteDevice"];
  v14 = v13;
  if (v13)
  {
    if ([v13 BOOLValue])
    {
      ineligibilityReasons &= ~0x10uLL;
    }

    else
    {
      ineligibilityReasons |= 0x10uLL;
    }
  }

  v15 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 overriddenSatisfactionOfRequirementWithIdentifier:@"CountryIsSupportedOnActiveRemoteDevice"];
  v16 = v15;
  if (v15)
  {
    if ([v15 BOOLValue])
    {
      ineligibilityReasons &= ~0x20uLL;
    }

    else
    {
      ineligibilityReasons |= 0x20uLL;
    }
  }

  v17 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 overriddenSatisfactionOfRequirementWithIdentifier:@"FeatureIsNotRemotelyDisabled"];
  v18 = v17;
  if (v17)
  {
    if ([v17 BOOLValue])
    {
      ineligibilityReasons &= ~0x40uLL;
    }

    else
    {
      ineligibilityReasons |= 0x40uLL;
    }
  }

  v19 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 overriddenSatisfactionOfRequirementWithIdentifier:@"SeedIsNotExpired"];
  v20 = v19;
  if (v19)
  {
    if ([v19 BOOLValue])
    {
      ineligibilityReasons &= ~0x80uLL;
    }

    else
    {
      ineligibilityReasons |= 0x80uLL;
    }
  }

  v21 = [[HKFeatureAvailabilityOnboardingEligibility alloc] initWithIneligibilityReasons:ineligibilityReasons countryAvailabilityVersion:self->_countryAvailabilityVersion];

  return v21;
}

- (int64_t)onboardedCountrySupportedState
{
  ineligibilityReasons = self->_ineligibilityReasons;
  v3 = 5;
  v4 = 3;
  if ((ineligibilityReasons & 0x40) != 0)
  {
    v4 = 4;
  }

  if ((ineligibilityReasons & 0x80) == 0)
  {
    v3 = v4;
  }

  if (ineligibilityReasons)
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

- (id)ineligibilityReasonsDescription
{
  if (self->_ineligibilityReasons)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = v3;
    ineligibilityReasons = self->_ineligibilityReasons;
    if (ineligibilityReasons)
    {
      [v3 addObject:@"A country code is required"];
      ineligibilityReasons = self->_ineligibilityReasons;
      if ((ineligibilityReasons & 2) == 0)
      {
LABEL_4:
        if ((ineligibilityReasons & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((ineligibilityReasons & 2) == 0)
    {
      goto LABEL_4;
    }

    [v4 addObject:@"An active remote device is required"];
    ineligibilityReasons = self->_ineligibilityReasons;
    if ((ineligibilityReasons & 4) == 0)
    {
LABEL_5:
      if ((ineligibilityReasons & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v4 addObject:@"Active remote device is unsupported"];
    ineligibilityReasons = self->_ineligibilityReasons;
    if ((ineligibilityReasons & 8) == 0)
    {
LABEL_6:
      if ((ineligibilityReasons & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v4 addObject:@"Country is not supported on this device"];
    ineligibilityReasons = self->_ineligibilityReasons;
    if ((ineligibilityReasons & 0x10) == 0)
    {
LABEL_7:
      if ((ineligibilityReasons & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v4 addObject:@"Country list is missing for the active remote device"];
    ineligibilityReasons = self->_ineligibilityReasons;
    if ((ineligibilityReasons & 0x20) == 0)
    {
LABEL_8:
      if ((ineligibilityReasons & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v4 addObject:@"Country is not supported on the active remote device"];
    ineligibilityReasons = self->_ineligibilityReasons;
    if ((ineligibilityReasons & 0x40) == 0)
    {
LABEL_9:
      if ((ineligibilityReasons & 0x80) == 0)
      {
LABEL_11:
        v6 = [v4 componentsJoinedByString:@" "];;

        goto LABEL_13;
      }

LABEL_10:
      [v4 addObject:@"Seed has expired"];
      goto LABEL_11;
    }

LABEL_22:
    [v4 addObject:@"Feature is remotely disabled"];
    if ((self->_ineligibilityReasons & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = @"None";
LABEL_13:

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self->_ineligibilityReasons != v5[1])
    {
      goto LABEL_7;
    }

    countryAvailabilityVersion = self->_countryAvailabilityVersion;
    v7 = v5[2];
    if (countryAvailabilityVersion == v7)
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v7)
    {
      v8 = [(NSString *)countryAvailabilityVersion isEqual:?];
    }

    else
    {
LABEL_7:
      v8 = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_ineligibilityReasons];
  v6 = [v3 stringWithFormat:@"<%@:%p reasons:%@ version:%@>", v4, self, v5, self->_countryAvailabilityVersion];

  return v6;
}

- (HKFeatureAvailabilityOnboardingEligibility)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"ineligibilityReasons"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryAvailabilityVersion"];

  v7 = [(HKFeatureAvailabilityOnboardingEligibility *)self initWithIneligibilityReasons:v5 countryAvailabilityVersion:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  ineligibilityReasons = self->_ineligibilityReasons;
  v5 = a3;
  [v5 encodeInteger:ineligibilityReasons forKey:@"ineligibilityReasons"];
  [v5 encodeObject:self->_countryAvailabilityVersion forKey:@"countryAvailabilityVersion"];
}

@end