@interface _ADDeviceCirclePeerDataMutation
- (_ADDeviceCirclePeerDataMutation)initWithBase:(id)a3;
- (id)getAceVersion;
- (id)getAssistantIdentifier;
- (id)getBuildVersion;
- (id)getHomeAccessoryInfo;
- (id)getIsLocationSharingDevice;
- (id)getIsSiriCloudSyncEnabled;
- (id)getMyriadTrialTreatment;
- (id)getProductType;
- (id)getSharedUserIdentifier;
- (id)getUserAssignedDeviceName;
- (id)getUserInterfaceIdiom;
@end

@implementation _ADDeviceCirclePeerDataMutation

- (id)getMyriadTrialTreatment
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    v2 = self->_myriadTrialTreatment;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base myriadTrialTreatment];
  }

  return v2;
}

- (id)getIsSiriCloudSyncEnabled
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_isSiriCloudSyncEnabled;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base isSiriCloudSyncEnabled];
  }

  return v2;
}

- (id)getHomeAccessoryInfo
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_homeAccessoryInfo;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base homeAccessoryInfo];
  }

  return v2;
}

- (id)getIsLocationSharingDevice
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_isLocationSharingDevice;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base isLocationSharingDevice];
  }

  return v2;
}

- (id)getUserInterfaceIdiom
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_userInterfaceIdiom;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base userInterfaceIdiom];
  }

  return v2;
}

- (id)getUserAssignedDeviceName
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_userAssignedDeviceName;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base userAssignedDeviceName];
  }

  return v2;
}

- (id)getSharedUserIdentifier
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_sharedUserIdentifier;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base sharedUserIdentifier];
  }

  return v2;
}

- (id)getProductType
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_productType;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base productType];
  }

  return v2;
}

- (id)getBuildVersion
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_buildVersion;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base buildVersion];
  }

  return v2;
}

- (id)getAssistantIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_assistantIdentifier;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base assistantIdentifier];
  }

  return v2;
}

- (id)getAceVersion
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_aceVersion;
  }

  else
  {
    v2 = [(ADDeviceCirclePeerData *)self->_base aceVersion];
  }

  return v2;
}

- (_ADDeviceCirclePeerDataMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceCirclePeerDataMutation;
  v6 = [(_ADDeviceCirclePeerDataMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end