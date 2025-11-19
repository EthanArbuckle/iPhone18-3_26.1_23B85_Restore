@interface HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch)initWithNanoRegistryCapability:(id)a3 supportedOnLocalDevice:(BOOL)a4;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (uint64_t)_isSatisfiedWithDataSource:(uint64_t)a1;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch

- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch)initWithNanoRegistryCapability:(id)a3 supportedOnLocalDevice:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch;
  v7 = [(HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    nanoRegistryCapability = v7->_nanoRegistryCapability;
    v7->_nanoRegistryCapability = v8;

    v7->_supportedOnLocalDevice = a4;
  }

  return v7;
}

- (NSString)requirementDescription
{
  v3 = +[_HKBehavior sharedBehavior];
  v4 = [v3 isCompanionCapable];

  if (v4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"At least one watch must have the the capability %@", self->_nanoRegistryCapability];
  }

  else
  {
    if (self->_supportedOnLocalDevice)
    {
      v5 = @"Supported";
    }

    else
    {
      v5 = @"Not supported";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ on this device", v5];
  }
  v6 = ;

  return v6;
}

- (NSArray)requiredEntitlements
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 isCompanionCapable];

  if (v3)
  {
    v4 = +[HKFeatureAvailabilityRequirementEntitlement nanoRegistryGeneralAccessEntitlement];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __94__HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch__isSatisfiedWithDataSource___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 16))
  {
    return [a2 supportsCapability:?];
  }

  else
  {
    return 1;
  }
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 behavior];
  v9 = [v8 isCompanionCapable];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __98__HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch_registerObserver_forDataSource___block_invoke;
    v10[3] = &unk_1E737D4F8;
    v10[4] = self;
    [v7 registerObserverForDeviceCharacteristicAndPairingChanges:v6 block:v10];
  }
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v5 behavior];
  v7 = [v6 isCompanionCapable];

  if (v7)
  {
    [v5 unregisterObserverForDeviceCharacteristicAndPairingChanges:v8];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    nanoRegistryCapability = self->_nanoRegistryCapability;
    v7 = v5[2];
    v8 = (nanoRegistryCapability == v7 || v7 && [(NSUUID *)nanoRegistryCapability isEqual:?]) && self->_supportedOnLocalDevice == *(v5 + 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() requirementIdentifier];
  v4 = [v3 hash];
  v5 = [(NSUUID *)self->_nanoRegistryCapability hash]^ v4;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportedOnLocalDevice];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (void)encodeWithCoder:(id)a3
{
  nanoRegistryCapability = self->_nanoRegistryCapability;
  v5 = a3;
  [v5 encodeObject:nanoRegistryCapability forKey:@"nanoRegistryCapability"];
  [v5 encodeBool:self->_supportedOnLocalDevice forKey:@"supportedOnLocalDevice"];
}

- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nanoRegistryCapability"];
  v6 = [v4 decodeBoolForKey:@"supportedOnLocalDevice"];

  v7 = [(HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch *)self initWithNanoRegistryCapability:v5 supportedOnLocalDevice:v6];
  return v7;
}

- (uint64_t)_isSatisfiedWithDataSource:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 behavior];
    v6 = [v5 isCompanionCapable];

    if (v6)
    {
      v7 = [v4 devicePairingAndSwitchingNotificationDataSource];
      v8 = [v7 pairedDeviceRegistry];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __94__HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch__isSatisfiedWithDataSource___block_invoke;
      v12[3] = &unk_1E737D4D0;
      v12[4] = a1;
      v9 = [v8 getDevicesMatching:v12];
      v10 = [v9 count] != 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [(HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch *)self _isSatisfiedWithDataSource:a3];

  return [v4 numberWithBool:v5];
}

void __98__HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v5 featureAvailabilityRequirement:v4 didUpdateSatisfaction:{-[HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch _isSatisfiedWithDataSource:](v4, a2)}];
}

@end