@interface _AFCompanionDeviceInfoMutation
- (BOOL)getMeDevice;
- (BOOL)getMuxSupportCapability;
- (BOOL)getPeerToPeerHandoffCapability;
- (BOOL)getSyncMetadataCapability;
- (_AFCompanionDeviceInfoMutation)initWithBase:(id)a3;
- (id)getAceHost;
- (id)getAssistantID;
- (id)getCompanionName;
- (id)getIdsIdentifier;
- (id)getProductPrefix;
- (id)getSiriLanguage;
- (id)getSpeechID;
- (id)getSyncMetadata;
@end

@implementation _AFCompanionDeviceInfoMutation

- (id)getCompanionName
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    v2 = self->_companionName;
  }

  else
  {
    v2 = [(AFCompanionDeviceInfo *)self->_base companionName];
  }

  return v2;
}

- (id)getSiriLanguage
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    v2 = self->_siriLanguage;
  }

  else
  {
    v2 = [(AFCompanionDeviceInfo *)self->_base siriLanguage];
  }

  return v2;
}

- (BOOL)getMeDevice
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    return self->_meDevice;
  }

  else
  {
    return [(AFCompanionDeviceInfo *)self->_base meDevice];
  }
}

- (BOOL)getMuxSupportCapability
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    return self->_muxSupportCapability;
  }

  else
  {
    return [(AFCompanionDeviceInfo *)self->_base muxSupportCapability];
  }
}

- (BOOL)getPeerToPeerHandoffCapability
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_peerToPeerHandoffCapability;
  }

  else
  {
    return [(AFCompanionDeviceInfo *)self->_base peerToPeerHandoffCapability];
  }
}

- (BOOL)getSyncMetadataCapability
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_syncMetadataCapability;
  }

  else
  {
    return [(AFCompanionDeviceInfo *)self->_base syncMetadataCapability];
  }
}

- (id)getSyncMetadata
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_syncMetadata;
  }

  else
  {
    v2 = [(AFCompanionDeviceInfo *)self->_base syncMetadata];
  }

  return v2;
}

- (id)getAceHost
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_aceHost;
  }

  else
  {
    v2 = [(AFCompanionDeviceInfo *)self->_base aceHost];
  }

  return v2;
}

- (id)getProductPrefix
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_productPrefix;
  }

  else
  {
    v2 = [(AFCompanionDeviceInfo *)self->_base productPrefix];
  }

  return v2;
}

- (id)getIdsIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_idsIdentifier;
  }

  else
  {
    v2 = [(AFCompanionDeviceInfo *)self->_base idsIdentifier];
  }

  return v2;
}

- (id)getSpeechID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_speechID;
  }

  else
  {
    v2 = [(AFCompanionDeviceInfo *)self->_base speechID];
  }

  return v2;
}

- (id)getAssistantID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_assistantID;
  }

  else
  {
    v2 = [(AFCompanionDeviceInfo *)self->_base assistantID];
  }

  return v2;
}

- (_AFCompanionDeviceInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFCompanionDeviceInfoMutation;
  v6 = [(_AFCompanionDeviceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end