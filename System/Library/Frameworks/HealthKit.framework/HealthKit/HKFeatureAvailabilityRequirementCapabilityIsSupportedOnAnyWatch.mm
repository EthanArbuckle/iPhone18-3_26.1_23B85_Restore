@interface HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch)initWithNanoRegistryCapability:(id)capability supportedOnLocalDevice:(BOOL)device;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (uint64_t)_isSatisfiedWithDataSource:(uint64_t)source;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch

- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch)initWithNanoRegistryCapability:(id)capability supportedOnLocalDevice:(BOOL)device
{
  capabilityCopy = capability;
  v11.receiver = self;
  v11.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch;
  v7 = [(HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch *)&v11 init];
  if (v7)
  {
    v8 = [capabilityCopy copy];
    nanoRegistryCapability = v7->_nanoRegistryCapability;
    v7->_nanoRegistryCapability = v8;

    v7->_supportedOnLocalDevice = device;
  }

  return v7;
}

- (NSString)requirementDescription
{
  v3 = +[_HKBehavior sharedBehavior];
  isCompanionCapable = [v3 isCompanionCapable];

  if (isCompanionCapable)
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
  isCompanionCapable = [v2 isCompanionCapable];

  if (isCompanionCapable)
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

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  behavior = [sourceCopy behavior];
  isCompanionCapable = [behavior isCompanionCapable];

  if (isCompanionCapable)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __98__HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch_registerObserver_forDataSource___block_invoke;
    v10[3] = &unk_1E737D4F8;
    v10[4] = self;
    [sourceCopy registerObserverForDeviceCharacteristicAndPairingChanges:observerCopy block:v10];
  }
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  behavior = [sourceCopy behavior];
  isCompanionCapable = [behavior isCompanionCapable];

  if (isCompanionCapable)
  {
    [sourceCopy unregisterObserverForDeviceCharacteristicAndPairingChanges:observerCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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
  requirementIdentifier = [objc_opt_class() requirementIdentifier];
  v4 = [requirementIdentifier hash];
  v5 = [(NSUUID *)self->_nanoRegistryCapability hash]^ v4;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportedOnLocalDevice];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (void)encodeWithCoder:(id)coder
{
  nanoRegistryCapability = self->_nanoRegistryCapability;
  coderCopy = coder;
  [coderCopy encodeObject:nanoRegistryCapability forKey:@"nanoRegistryCapability"];
  [coderCopy encodeBool:self->_supportedOnLocalDevice forKey:@"supportedOnLocalDevice"];
}

- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nanoRegistryCapability"];
  v6 = [coderCopy decodeBoolForKey:@"supportedOnLocalDevice"];

  v7 = [(HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch *)self initWithNanoRegistryCapability:v5 supportedOnLocalDevice:v6];
  return v7;
}

- (uint64_t)_isSatisfiedWithDataSource:(uint64_t)source
{
  v3 = a2;
  v4 = v3;
  if (source)
  {
    behavior = [v3 behavior];
    isCompanionCapable = [behavior isCompanionCapable];

    if (isCompanionCapable)
    {
      devicePairingAndSwitchingNotificationDataSource = [v4 devicePairingAndSwitchingNotificationDataSource];
      pairedDeviceRegistry = [devicePairingAndSwitchingNotificationDataSource pairedDeviceRegistry];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __94__HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch__isSatisfiedWithDataSource___block_invoke;
      v12[3] = &unk_1E737D4D0;
      v12[4] = source;
      v9 = [pairedDeviceRegistry getDevicesMatching:v12];
      v10 = [v9 count] != 0;
    }

    else
    {
      v10 = *(source + 8);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [(HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch *)self _isSatisfiedWithDataSource:source];

  return [v4 numberWithBool:v5];
}

void __98__HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v5 featureAvailabilityRequirement:v4 didUpdateSatisfaction:{-[HKFeatureAvailabilityRequirementCapabilityIsSupportedOnAnyWatch _isSatisfiedWithDataSource:](v4, a2)}];
}

@end