@interface MIDICIProfileState
- (MIDICIProfileState)initWithChannel:(MIDIChannelNumber)midiChannelNum enabledProfiles:(NSArray *)enabled disabledProfiles:(NSArray *)disabled;
- (MIDICIProfileState)initWithCoder:(id)coder;
- (id)bytesWithChannel:(unsigned __int8)channel;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithEnabledProfiles:(id)profiles disabledProfiles:(id)disabledProfiles;
@end

@implementation MIDICIProfileState

- (id)bytesWithChannel:(unsigned __int8)channel
{
  v33 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v29 = [(NSArray *)self->enabledProfiles count];
  v28 = [(NSArray *)self->disabledProfiles count];
  [v4 appendBytes:&channelCopy length:1];
  [v4 appendBytes:&v29 length:1];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->enabledProfiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        profileID = [v9 profileID];
        v11 = profileID;
        [v4 appendBytes:objc_msgSend(profileID length:{"bytes"), 5}];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  [v4 appendBytes:&v28 length:1];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->disabledProfiles;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        profileID2 = [v16 profileID];
        v18 = profileID2;
        [v4 appendBytes:objc_msgSend(profileID2 length:{"bytes"), 5}];
      }

      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v13);
  }

  return v4;
}

- (void)updateWithEnabledProfiles:(id)profiles disabledProfiles:(id)disabledProfiles
{
  profilesCopy = profiles;
  disabledProfilesCopy = disabledProfiles;
  enabledProfiles = self->enabledProfiles;
  self->enabledProfiles = profilesCopy;
  v10 = profilesCopy;

  disabledProfiles = self->disabledProfiles;
  self->disabledProfiles = disabledProfilesCopy;
}

- (id)description
{
  disabledProfiles = @"NONE";
  enabledProfiles = self->enabledProfiles;
  if (!enabledProfiles)
  {
    enabledProfiles = @"NONE";
  }

  if (self->disabledProfiles)
  {
    disabledProfiles = self->disabledProfiles;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<MIDICIProfileState(%p) midiChannel:0x%x enabledProfiles: %@ disabledProfiles: %@>", self, self->midiChannel, enabledProfiles, disabledProfiles];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->midiChannel forKey:@"midiChannel"];
  [coderCopy encodeObject:self->enabledProfiles forKey:@"enabledProfiles"];
  [coderCopy encodeObject:self->disabledProfiles forKey:@"disabledProfiles"];
}

- (MIDICIProfileState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MIDICIProfileState;
  v5 = [(MIDICIProfileState *)&v19 init];
  if (v5)
  {
    v5->midiChannel = [coderCopy decodeIntForKey:@"midiChannel"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"enabledProfiles"];
    enabledProfiles = v5->enabledProfiles;
    v5->enabledProfiles = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = [v12 setWithObjects:{v13, v14, 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"disabledProfiles"];
    disabledProfiles = v5->disabledProfiles;
    v5->disabledProfiles = v16;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MIDICIProfileState;
  [(MIDICIProfileState *)&v2 dealloc];
}

- (MIDICIProfileState)initWithChannel:(MIDIChannelNumber)midiChannelNum enabledProfiles:(NSArray *)enabled disabledProfiles:(NSArray *)disabled
{
  v9 = enabled;
  v10 = disabled;
  v14.receiver = self;
  v14.super_class = MIDICIProfileState;
  v11 = [(MIDICIProfileState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->midiChannel = midiChannelNum;
    objc_storeStrong(&v11->enabledProfiles, enabled);
    objc_storeStrong(&v12->disabledProfiles, disabled);
  }

  return v12;
}

@end