@interface MIDIUMPMutableFunctionBlock
- (BOOL)reconfigureWithFirstGroup:(unsigned __int8)group direction:(int)direction MIDI1Info:(int)info UIHint:(int)hint error:(id *)error;
- (BOOL)registerWithServer;
- (BOOL)setEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setName:(id)name error:(id *)error;
- (MIDIUMPMutableEndpoint)UMPEndpoint;
- (MIDIUMPMutableFunctionBlock)initWithName:(id)name direction:(int)direction firstGroup:(unsigned __int8)group totalGroupsSpanned:(unsigned __int8)spanned maxSysEx8Streams:(unsigned __int8)streams MIDI1Info:(int)info UIHint:(int)hint isEnabled:(BOOL)self0;
- (void)dealloc;
@end

@implementation MIDIUMPMutableFunctionBlock

- (MIDIUMPMutableEndpoint)UMPEndpoint
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->super._UMPEndpoint);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->super._UMPEndpoint);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (BOOL)reconfigureWithFirstGroup:(unsigned __int8)group direction:(int)direction MIDI1Info:(int)info UIHint:(int)hint error:(id *)error
{
  groupCopy = group;
  os_unfair_recursive_lock_lock_with_options();
  if ([(MIDIUMPFunctionBlock *)self totalGroupsSpanned]+ groupCopy >= 0x11)
  {
    if (error)
    {
      goto LABEL_7;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  if (direction == 3 || ([(MIDIUMPFunctionBlock *)self midiCIDevice], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    self->super._firstGroup = groupCopy;
    self->super._direction = direction;
    self->super._MIDI1Info = info;
    self->super._UIHint = hint;
    serializeDescription = [(MIDIUMPFunctionBlock *)self serializeDescription];
    v16 = UMPCIObjectSetDescription([(MIDIUMPFunctionBlock *)self objectRef], serializeDescription);
    v15 = v16 == 0;
    if (error && v16)
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v16 userInfo:0];
      *error = v17;

      v15 = 0;
    }

    goto LABEL_11;
  }

  if (!error)
  {
    goto LABEL_12;
  }

LABEL_7:
  serializeDescription = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10845 userInfo:0];
  v15 = 0;
  *error = serializeDescription;
LABEL_11:

LABEL_13:
  os_unfair_recursive_lock_unlock();
  return v15;
}

- (BOOL)setName:(id)name error:(id *)error
{
  nameCopy = name;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [nameCopy copy];
  name = self->super._name;
  self->super._name = v7;

  serializeDescription = [(MIDIUMPFunctionBlock *)self serializeDescription];
  v10 = UMPCIObjectSetDescription([(MIDIUMPFunctionBlock *)self objectRef], serializeDescription);
  v11 = v10;
  if (error && v10)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
    *error = v12;
  }

  os_unfair_recursive_lock_unlock();
  return v11 == 0;
}

- (BOOL)setEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  os_unfair_recursive_lock_lock_with_options();
  if ([(MIDIUMPFunctionBlock *)self objectRef]|| [(MIDIUMPMutableFunctionBlock *)self registerWithServer])
  {
    v7 = UMPCIObjectSetEnableState([(MIDIUMPFunctionBlock *)self objectRef], enabledCopy);
    if (v7)
    {
      if (error)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
LABEL_9:
        v9 = v8;
        *error = v9;

        LOBYTE(error) = 0;
      }
    }

    else
    {
      self->super._isEnabled = enabledCopy;
      LOBYTE(error) = 1;
    }
  }

  else if (error)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
    goto LABEL_9;
  }

  os_unfair_recursive_lock_unlock();
  return error;
}

- (BOOL)registerWithServer
{
  serializeDescription = [(MIDIUMPFunctionBlock *)self serializeDescription];
  v6 = 0;
  v4 = UMPCIObjectCreate(1, serializeDescription, &v6);
  if (!v4)
  {
    os_unfair_recursive_lock_lock_with_options();
    [(MIDIUMPFunctionBlock *)self setObjectRef:v6];
    os_unfair_recursive_lock_unlock();
  }

  return v4 == 0;
}

- (void)dealloc
{
  UMPCIObjectDispose([(MIDIUMPFunctionBlock *)self objectRef]);
  v3.receiver = self;
  v3.super_class = MIDIUMPMutableFunctionBlock;
  [(MIDIUMPMutableFunctionBlock *)&v3 dealloc];
}

- (MIDIUMPMutableFunctionBlock)initWithName:(id)name direction:(int)direction firstGroup:(unsigned __int8)group totalGroupsSpanned:(unsigned __int8)spanned maxSysEx8Streams:(unsigned __int8)streams MIDI1Info:(int)info UIHint:(int)hint isEnabled:(BOOL)self0
{
  nameCopy = name;
  if (CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed < 0)
  {
    CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 0;
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle && (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes"), (v20 = ValueForInfoDictionaryKey) != 0) && (v23 = CFGetTypeID(ValueForInfoDictionaryKey), v23 == CFArrayGetTypeID()) && (v24.length = CFArrayGetCount(v20), v24.location = 0, CFArrayContainsValue(v20, v24, @"audio")))
    {
      CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 1;
    }

    else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
    {
LABEL_11:
      selfCopy = 0;
      goto LABEL_12;
    }
  }

  else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&self->super._name, name);
  self->super._direction = direction;
  self->super._firstGroup = group;
  self->super._totalGroupsSpanned = spanned;
  self->super._maxSysEx8Streams = streams;
  self->super._MIDI1Info = info;
  self->super._UIHint = hint;
  self->super._isEnabled = enabled;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

@end