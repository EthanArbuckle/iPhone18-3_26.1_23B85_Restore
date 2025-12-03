@interface MIDIUMPMutableCIProfile
- (BOOL)setProfileState:(BOOL)state enabledChannelCount:(unsigned __int16)count error:(id *)error;
- (MIDIUMPMutableCIProfile)initWithProfileID:(id)d name:(id)name profileType:(unsigned __int8)type groupOffset:(unsigned __int8)offset firstChannel:(unsigned __int8)channel enabledChannelCount:(unsigned __int16)count totalChannelCount:(unsigned __int16)channelCount;
- (void)dealloc;
@end

@implementation MIDIUMPMutableCIProfile

- (BOOL)setProfileState:(BOOL)state enabledChannelCount:(unsigned __int16)count error:(id *)error
{
  countCopy = count;
  stateCopy = state;
  os_unfair_recursive_lock_lock_with_options();
  self->super._isEnabled = stateCopy;
  self->super._enabledChannelCount = countCopy;
  os_unfair_recursive_lock_unlock();
  v11.receiver = self;
  v11.super_class = MIDIUMPMutableCIProfile;
  ciDevice = [(MIDIUMPCIProfile *)&v11 ciDevice];
  LOBYTE(error) = [ciDevice setProfile:self newState:stateCopy enabledChannelCount:countCopy error:error];

  return error;
}

- (void)dealloc
{
  UMPCIObjectDispose([(MIDIUMPCIProfile *)self objectRef]);
  v3.receiver = self;
  v3.super_class = MIDIUMPMutableCIProfile;
  [(MIDIUMPMutableCIProfile *)&v3 dealloc];
}

- (MIDIUMPMutableCIProfile)initWithProfileID:(id)d name:(id)name profileType:(unsigned __int8)type groupOffset:(unsigned __int8)offset firstChannel:(unsigned __int8)channel enabledChannelCount:(unsigned __int16)count totalChannelCount:(unsigned __int16)channelCount
{
  typeCopy = type;
  dCopy = d;
  nameCopy = name;
  if (CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed < 0)
  {
    CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 0;
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle && (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes"), (v17 = ValueForInfoDictionaryKey) != 0) && (v18 = CFGetTypeID(ValueForInfoDictionaryKey), v18 == CFArrayGetTypeID()) && (v26.length = CFArrayGetCount(v17), v26.location = 0, CFArrayContainsValue(v17, v26, @"audio")))
    {
      CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 1;
    }

    else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
    {
LABEL_12:
      selfCopy = 0;
      goto LABEL_17;
    }
  }

  else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
  {
    goto LABEL_12;
  }

  v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&dCopy length:5];
  profileID = self->super._profileID;
  self->super._profileID = v19;

  if (nameCopy)
  {
    name = [MEMORY[0x277CCACA8] stringWithString:nameCopy];
    objc_storeStrong(&self->super._name, name);
  }

  else
  {
    name = self->super._name;
    self->super._name = 0;
  }

  self->super._profileType = typeCopy;
  self->super._groupOffset = offset;
  self->super._firstChannel = channel;
  self->super._enabledChannelCount = count;
  self->super._totalChannelCount = channelCount;
  self->super._isEnabled = 0;
  UMPCIClients::instance(v23);
  self->super._ownerClientRef = UMPCIClients::instance(void)::all;
  if (typeCopy == 2)
  {
    *&self->super._enabledChannelCount = 1048592;
  }

  selfCopy = self;
LABEL_17:

  return selfCopy;
}

@end