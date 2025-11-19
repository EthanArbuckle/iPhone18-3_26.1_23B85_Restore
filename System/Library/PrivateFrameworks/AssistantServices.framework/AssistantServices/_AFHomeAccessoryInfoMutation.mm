@interface _AFHomeAccessoryInfoMutation
- (BOOL)getHasActiveThirdPartyMusicSubscription;
- (BOOL)getIsSpeaker;
- (_AFHomeAccessoryInfoMutation)initWithBase:(id)a3;
- (id)getAssistantIdentifier;
- (id)getCategoryType;
- (id)getLoggingUniqueIdentifier;
- (id)getManufacturer;
- (id)getModel;
- (id)getName;
- (id)getRoomName;
- (id)getUniqueIdentifier;
- (int64_t)getSchemaCategoryType;
@end

@implementation _AFHomeAccessoryInfoMutation

- (int64_t)getSchemaCategoryType
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    return self->_schemaCategoryType;
  }

  else
  {
    return [(AFHomeAccessoryInfo *)self->_base schemaCategoryType];
  }
}

- (id)getCategoryType
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_categoryType;
  }

  else
  {
    v2 = [(AFHomeAccessoryInfo *)self->_base categoryType];
  }

  return v2;
}

- (id)getManufacturer
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_manufacturer;
  }

  else
  {
    v2 = [(AFHomeAccessoryInfo *)self->_base manufacturer];
  }

  return v2;
}

- (BOOL)getHasActiveThirdPartyMusicSubscription
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_hasActiveThirdPartyMusicSubscription;
  }

  else
  {
    return [(AFHomeAccessoryInfo *)self->_base hasActiveThirdPartyMusicSubscription];
  }
}

- (BOOL)getIsSpeaker
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_isSpeaker;
  }

  else
  {
    return [(AFHomeAccessoryInfo *)self->_base isSpeaker];
  }
}

- (id)getAssistantIdentifier
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_assistantIdentifier;
  }

  else
  {
    v2 = [(AFHomeAccessoryInfo *)self->_base assistantIdentifier];
  }

  return v2;
}

- (id)getRoomName
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_roomName;
  }

  else
  {
    v2 = [(AFHomeAccessoryInfo *)self->_base roomName];
  }

  return v2;
}

- (id)getModel
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_model;
  }

  else
  {
    v2 = [(AFHomeAccessoryInfo *)self->_base model];
  }

  return v2;
}

- (id)getName
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_name;
  }

  else
  {
    v2 = [(AFHomeAccessoryInfo *)self->_base name];
  }

  return v2;
}

- (id)getLoggingUniqueIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_loggingUniqueIdentifier;
  }

  else
  {
    v2 = [(AFHomeAccessoryInfo *)self->_base loggingUniqueIdentifier];
  }

  return v2;
}

- (id)getUniqueIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_uniqueIdentifier;
  }

  else
  {
    v2 = [(AFHomeAccessoryInfo *)self->_base uniqueIdentifier];
  }

  return v2;
}

- (_AFHomeAccessoryInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFHomeAccessoryInfoMutation;
  v6 = [(_AFHomeAccessoryInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end