@interface _AFBluetoothDeviceInfoMutation
- (BOOL)getIsAdvancedAppleAudioDevice;
- (BOOL)getSupportsAnnounceCall;
- (BOOL)getSupportsConversationAwareness;
- (BOOL)getSupportsInEarDetection;
- (BOOL)getSupportsJustSiri;
- (BOOL)getSupportsListeningModeANC;
- (BOOL)getSupportsListeningModeAutomatic;
- (BOOL)getSupportsListeningModeTransparency;
- (BOOL)getSupportsLiveTranslationCapability;
- (BOOL)getSupportsPersonalVolume;
- (BOOL)getSupportsSpokenNotification;
- (BOOL)getSupportsVoiceTrigger;
- (_AFBluetoothDeviceInfoMutation)initWithBase:(id)a3;
- (id)getAddress;
- (id)getDeviceUID;
- (id)getHeadGestureConfiguration;
- (id)getName;
- (unsigned)getProductID;
- (unsigned)getVendorID;
@end

@implementation _AFBluetoothDeviceInfoMutation

- (id)getHeadGestureConfiguration
{
  if ((*(&self->_mutationFlags + 2) & 4) != 0)
  {
    v2 = self->_headGestureConfiguration;
  }

  else
  {
    v2 = [(AFBluetoothDeviceInfo *)self->_base headGestureConfiguration];
  }

  return v2;
}

- (BOOL)getSupportsLiveTranslationCapability
{
  if ((*(&self->_mutationFlags + 2) & 2) != 0)
  {
    return self->_supportsLiveTranslationCapability;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsLiveTranslationCapability];
  }
}

- (BOOL)getSupportsAnnounceCall
{
  if (*(&self->_mutationFlags + 2))
  {
    return self->_supportsAnnounceCall;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsAnnounceCall];
  }
}

- (BOOL)getSupportsPersonalVolume
{
  if ((*(&self->_mutationFlags + 1) & 0x80) != 0)
  {
    return self->_supportsPersonalVolume;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsPersonalVolume];
  }
}

- (BOOL)getSupportsConversationAwareness
{
  if ((*(&self->_mutationFlags + 1) & 0x40) != 0)
  {
    return self->_supportsConversationAwareness;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsConversationAwareness];
  }
}

- (BOOL)getSupportsListeningModeAutomatic
{
  if ((*(&self->_mutationFlags + 1) & 0x20) != 0)
  {
    return self->_supportsListeningModeAutomatic;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsListeningModeAutomatic];
  }
}

- (BOOL)getSupportsListeningModeTransparency
{
  if ((*(&self->_mutationFlags + 1) & 0x10) != 0)
  {
    return self->_supportsListeningModeTransparency;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsListeningModeTransparency];
  }
}

- (BOOL)getSupportsListeningModeANC
{
  if ((*(&self->_mutationFlags + 1) & 8) != 0)
  {
    return self->_supportsListeningModeANC;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsListeningModeANC];
  }
}

- (BOOL)getSupportsSpokenNotification
{
  if ((*(&self->_mutationFlags + 1) & 4) != 0)
  {
    return self->_supportsSpokenNotification;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsSpokenNotification];
  }
}

- (BOOL)getSupportsJustSiri
{
  if ((*(&self->_mutationFlags + 1) & 2) != 0)
  {
    return self->_supportsJustSiri;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsJustSiri];
  }
}

- (BOOL)getSupportsVoiceTrigger
{
  if (*(&self->_mutationFlags + 1))
  {
    return self->_supportsVoiceTrigger;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsVoiceTrigger];
  }
}

- (BOOL)getSupportsInEarDetection
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_supportsInEarDetection;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base supportsInEarDetection];
  }
}

- (BOOL)getIsAdvancedAppleAudioDevice
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_isAdvancedAppleAudioDevice;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base isAdvancedAppleAudioDevice];
  }
}

- (unsigned)getProductID
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_productID;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base productID];
  }
}

- (unsigned)getVendorID
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_vendorID;
  }

  else
  {
    return [(AFBluetoothDeviceInfo *)self->_base vendorID];
  }
}

- (id)getDeviceUID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_deviceUID;
  }

  else
  {
    v2 = [(AFBluetoothDeviceInfo *)self->_base deviceUID];
  }

  return v2;
}

- (id)getName
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_name;
  }

  else
  {
    v2 = [(AFBluetoothDeviceInfo *)self->_base name];
  }

  return v2;
}

- (id)getAddress
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_address;
  }

  else
  {
    v2 = [(AFBluetoothDeviceInfo *)self->_base address];
  }

  return v2;
}

- (_AFBluetoothDeviceInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFBluetoothDeviceInfoMutation;
  v6 = [(_AFBluetoothDeviceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end