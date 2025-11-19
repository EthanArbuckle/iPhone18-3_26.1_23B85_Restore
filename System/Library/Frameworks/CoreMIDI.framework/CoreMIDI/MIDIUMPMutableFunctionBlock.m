@interface MIDIUMPMutableFunctionBlock
- (BOOL)reconfigureWithFirstGroup:(unsigned __int8)a3 direction:(int)a4 MIDI1Info:(int)a5 UIHint:(int)a6 error:(id *)a7;
- (BOOL)registerWithServer;
- (BOOL)setEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setName:(id)a3 error:(id *)a4;
- (MIDIUMPMutableEndpoint)UMPEndpoint;
- (MIDIUMPMutableFunctionBlock)initWithName:(id)a3 direction:(int)a4 firstGroup:(unsigned __int8)a5 totalGroupsSpanned:(unsigned __int8)a6 maxSysEx8Streams:(unsigned __int8)a7 MIDI1Info:(int)a8 UIHint:(int)a9 isEnabled:(BOOL)a10;
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

- (BOOL)reconfigureWithFirstGroup:(unsigned __int8)a3 direction:(int)a4 MIDI1Info:(int)a5 UIHint:(int)a6 error:(id *)a7
{
  v11 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if ([(MIDIUMPFunctionBlock *)self totalGroupsSpanned]+ v11 >= 0x11)
  {
    if (a7)
    {
      goto LABEL_7;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  if (a4 == 3 || ([(MIDIUMPFunctionBlock *)self midiCIDevice], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    self->super._firstGroup = v11;
    self->super._direction = a4;
    self->super._MIDI1Info = a5;
    self->super._UIHint = a6;
    v14 = [(MIDIUMPFunctionBlock *)self serializeDescription];
    v16 = UMPCIObjectSetDescription([(MIDIUMPFunctionBlock *)self objectRef], v14);
    v15 = v16 == 0;
    if (a7 && v16)
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v16 userInfo:0];
      *a7 = v17;

      v15 = 0;
    }

    goto LABEL_11;
  }

  if (!a7)
  {
    goto LABEL_12;
  }

LABEL_7:
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10845 userInfo:0];
  v15 = 0;
  *a7 = v14;
LABEL_11:

LABEL_13:
  os_unfair_recursive_lock_unlock();
  return v15;
}

- (BOOL)setName:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [v6 copy];
  name = self->super._name;
  self->super._name = v7;

  v9 = [(MIDIUMPFunctionBlock *)self serializeDescription];
  v10 = UMPCIObjectSetDescription([(MIDIUMPFunctionBlock *)self objectRef], v9);
  v11 = v10;
  if (a4 && v10)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
    *a4 = v12;
  }

  os_unfair_recursive_lock_unlock();
  return v11 == 0;
}

- (BOOL)setEnabled:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if ([(MIDIUMPFunctionBlock *)self objectRef]|| [(MIDIUMPMutableFunctionBlock *)self registerWithServer])
  {
    v7 = UMPCIObjectSetEnableState([(MIDIUMPFunctionBlock *)self objectRef], v5);
    if (v7)
    {
      if (a4)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
LABEL_9:
        v9 = v8;
        *a4 = v9;

        LOBYTE(a4) = 0;
      }
    }

    else
    {
      self->super._isEnabled = v5;
      LOBYTE(a4) = 1;
    }
  }

  else if (a4)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10844 userInfo:0];
    goto LABEL_9;
  }

  os_unfair_recursive_lock_unlock();
  return a4;
}

- (BOOL)registerWithServer
{
  v3 = [(MIDIUMPFunctionBlock *)self serializeDescription];
  v6 = 0;
  v4 = UMPCIObjectCreate(1, v3, &v6);
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

- (MIDIUMPMutableFunctionBlock)initWithName:(id)a3 direction:(int)a4 firstGroup:(unsigned __int8)a5 totalGroupsSpanned:(unsigned __int8)a6 maxSysEx8Streams:(unsigned __int8)a7 MIDI1Info:(int)a8 UIHint:(int)a9 isEnabled:(BOOL)a10
{
  v17 = a3;
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
      v21 = 0;
      goto LABEL_12;
    }
  }

  else if (!CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&self->super._name, a3);
  self->super._direction = a4;
  self->super._firstGroup = a5;
  self->super._totalGroupsSpanned = a6;
  self->super._maxSysEx8Streams = a7;
  self->super._MIDI1Info = a8;
  self->super._UIHint = a9;
  self->super._isEnabled = a10;
  v21 = self;
LABEL_12:

  return v21;
}

@end