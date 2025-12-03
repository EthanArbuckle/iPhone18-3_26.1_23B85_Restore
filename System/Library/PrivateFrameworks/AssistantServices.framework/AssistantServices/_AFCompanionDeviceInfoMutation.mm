@interface _AFCompanionDeviceInfoMutation
- (BOOL)getMeDevice;
- (BOOL)getMuxSupportCapability;
- (BOOL)getPeerToPeerHandoffCapability;
- (BOOL)getSyncMetadataCapability;
- (_AFCompanionDeviceInfoMutation)initWithBase:(id)base;
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
    companionName = self->_companionName;
  }

  else
  {
    companionName = [(AFCompanionDeviceInfo *)self->_base companionName];
  }

  return companionName;
}

- (id)getSiriLanguage
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    siriLanguage = self->_siriLanguage;
  }

  else
  {
    siriLanguage = [(AFCompanionDeviceInfo *)self->_base siriLanguage];
  }

  return siriLanguage;
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
    syncMetadata = self->_syncMetadata;
  }

  else
  {
    syncMetadata = [(AFCompanionDeviceInfo *)self->_base syncMetadata];
  }

  return syncMetadata;
}

- (id)getAceHost
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    aceHost = self->_aceHost;
  }

  else
  {
    aceHost = [(AFCompanionDeviceInfo *)self->_base aceHost];
  }

  return aceHost;
}

- (id)getProductPrefix
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    productPrefix = self->_productPrefix;
  }

  else
  {
    productPrefix = [(AFCompanionDeviceInfo *)self->_base productPrefix];
  }

  return productPrefix;
}

- (id)getIdsIdentifier
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    idsIdentifier = self->_idsIdentifier;
  }

  else
  {
    idsIdentifier = [(AFCompanionDeviceInfo *)self->_base idsIdentifier];
  }

  return idsIdentifier;
}

- (id)getSpeechID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    speechID = self->_speechID;
  }

  else
  {
    speechID = [(AFCompanionDeviceInfo *)self->_base speechID];
  }

  return speechID;
}

- (id)getAssistantID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    assistantID = self->_assistantID;
  }

  else
  {
    assistantID = [(AFCompanionDeviceInfo *)self->_base assistantID];
  }

  return assistantID;
}

- (_AFCompanionDeviceInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFCompanionDeviceInfoMutation;
  v6 = [(_AFCompanionDeviceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end