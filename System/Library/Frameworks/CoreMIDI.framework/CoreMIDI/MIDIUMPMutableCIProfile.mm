@interface MIDIUMPMutableCIProfile
- (BOOL)setProfileState:(BOOL)a3 enabledChannelCount:(unsigned __int16)a4 error:(id *)a5;
- (MIDIUMPMutableCIProfile)initWithProfileID:(id)a3 name:(id)a4 profileType:(unsigned __int8)a5 groupOffset:(unsigned __int8)a6 firstChannel:(unsigned __int8)a7 enabledChannelCount:(unsigned __int16)a8 totalChannelCount:(unsigned __int16)a9;
- (void)dealloc;
@end

@implementation MIDIUMPMutableCIProfile

- (BOOL)setProfileState:(BOOL)a3 enabledChannelCount:(unsigned __int16)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  os_unfair_recursive_lock_lock_with_options();
  self->super._isEnabled = v7;
  self->super._enabledChannelCount = v6;
  os_unfair_recursive_lock_unlock();
  v11.receiver = self;
  v11.super_class = MIDIUMPMutableCIProfile;
  v9 = [(MIDIUMPCIProfile *)&v11 ciDevice];
  LOBYTE(a5) = [v9 setProfile:self newState:v7 enabledChannelCount:v6 error:a5];

  return a5;
}

- (void)dealloc
{
  UMPCIObjectDispose([(MIDIUMPCIProfile *)self objectRef]);
  v3.receiver = self;
  v3.super_class = MIDIUMPMutableCIProfile;
  [(MIDIUMPMutableCIProfile *)&v3 dealloc];
}

- (MIDIUMPMutableCIProfile)initWithProfileID:(id)a3 name:(id)a4 profileType:(unsigned __int8)a5 groupOffset:(unsigned __int8)a6 firstChannel:(unsigned __int8)a7 enabledChannelCount:(unsigned __int16)a8 totalChannelCount:(unsigned __int16)a9
{
  v12 = a5;
  v25 = a3;
  v14 = a4;
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
      v22 = 0;
      goto LABEL_17;
    }
  }

  else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
  {
    goto LABEL_12;
  }

  v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v25 length:5];
  profileID = self->super._profileID;
  self->super._profileID = v19;

  if (v14)
  {
    name = [MEMORY[0x277CCACA8] stringWithString:v14];
    objc_storeStrong(&self->super._name, name);
  }

  else
  {
    name = self->super._name;
    self->super._name = 0;
  }

  self->super._profileType = v12;
  self->super._groupOffset = a6;
  self->super._firstChannel = a7;
  self->super._enabledChannelCount = a8;
  self->super._totalChannelCount = a9;
  self->super._isEnabled = 0;
  UMPCIClients::instance(v23);
  self->super._ownerClientRef = UMPCIClients::instance(void)::all;
  if (v12 == 2)
  {
    *&self->super._enabledChannelCount = 1048592;
  }

  v22 = self;
LABEL_17:

  return v22;
}

@end