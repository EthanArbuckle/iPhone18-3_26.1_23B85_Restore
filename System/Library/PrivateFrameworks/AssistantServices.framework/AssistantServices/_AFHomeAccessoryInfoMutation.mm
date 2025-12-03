@interface _AFHomeAccessoryInfoMutation
- (BOOL)getHasActiveThirdPartyMusicSubscription;
- (BOOL)getIsSpeaker;
- (_AFHomeAccessoryInfoMutation)initWithBase:(id)base;
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
    categoryType = self->_categoryType;
  }

  else
  {
    categoryType = [(AFHomeAccessoryInfo *)self->_base categoryType];
  }

  return categoryType;
}

- (id)getManufacturer
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    manufacturer = self->_manufacturer;
  }

  else
  {
    manufacturer = [(AFHomeAccessoryInfo *)self->_base manufacturer];
  }

  return manufacturer;
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
    assistantIdentifier = self->_assistantIdentifier;
  }

  else
  {
    assistantIdentifier = [(AFHomeAccessoryInfo *)self->_base assistantIdentifier];
  }

  return assistantIdentifier;
}

- (id)getRoomName
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    roomName = self->_roomName;
  }

  else
  {
    roomName = [(AFHomeAccessoryInfo *)self->_base roomName];
  }

  return roomName;
}

- (id)getModel
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    model = self->_model;
  }

  else
  {
    model = [(AFHomeAccessoryInfo *)self->_base model];
  }

  return model;
}

- (id)getName
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    name = self->_name;
  }

  else
  {
    name = [(AFHomeAccessoryInfo *)self->_base name];
  }

  return name;
}

- (id)getLoggingUniqueIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    loggingUniqueIdentifier = self->_loggingUniqueIdentifier;
  }

  else
  {
    loggingUniqueIdentifier = [(AFHomeAccessoryInfo *)self->_base loggingUniqueIdentifier];
  }

  return loggingUniqueIdentifier;
}

- (id)getUniqueIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    uniqueIdentifier = self->_uniqueIdentifier;
  }

  else
  {
    uniqueIdentifier = [(AFHomeAccessoryInfo *)self->_base uniqueIdentifier];
  }

  return uniqueIdentifier;
}

- (_AFHomeAccessoryInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFHomeAccessoryInfoMutation;
  v6 = [(_AFHomeAccessoryInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end