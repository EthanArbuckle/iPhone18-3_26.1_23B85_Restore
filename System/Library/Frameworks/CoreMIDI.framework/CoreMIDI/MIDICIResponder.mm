@interface MIDICIResponder
- (BOOL)containsValidChannels:(id)channels;
- (MIDICIResponder)init;
- (MIDICIResponder)initWithDeviceInfo:(MIDICIDeviceInfo *)deviceInfo profileDelegate:(id)delegate profileStates:(MIDICIProfileStateList *)profileList supportProperties:(BOOL)propertiesSupported;
- (id)description;
- (void)registerProfiles:(id)profiles;
@end

@implementation MIDICIResponder

- (void)registerProfiles:(id)profiles
{
  v66 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = profilesCopy;
  v4 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v4)
  {
    v43 = *v56;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v56 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v55 + 1) + 8 * i);
        midiChannel = [v6 midiChannel];
        if (midiChannel < 0x10 || midiChannel == 127)
        {
          v44.__r_.__value_.__s.__data_[0] = midiChannel;
          enabledProfiles = [v6 enabledProfiles];
          v9 = [enabledProfiles count];

          v54 = v9;
          disabledProfiles = [v6 disabledProfiles];
          v11 = [disabledProfiles count];

          v53 = v11;
          [v3 appendBytes:&v44 length:1];
          [v3 appendBytes:&v54 length:1];
          v52 = 0u;
          v50 = 0u;
          v51 = 0u;
          v49 = 0u;
          enabledProfiles2 = [v6 enabledProfiles];
          v13 = [enabledProfiles2 countByEnumeratingWithState:&v49 objects:v64 count:16];
          if (v13)
          {
            v14 = *v50;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v50 != v14)
                {
                  objc_enumerationMutation(enabledProfiles2);
                }

                v16 = *(*(&v49 + 1) + 8 * j);
                BYTE4(v59) = 0;
                LODWORD(v59) = 0;
                profileID = [v16 profileID];
                v18 = profileID;
                bytes = [profileID bytes];
                v20 = *bytes;
                BYTE4(v59) = *(bytes + 4);
                LODWORD(v59) = v20;

                [v3 appendBytes:&v59 length:5];
              }

              v13 = [enabledProfiles2 countByEnumeratingWithState:&v49 objects:v64 count:16];
            }

            while (v13);
          }

          [v3 appendBytes:&v53 length:1];
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          disabledProfiles2 = [v6 disabledProfiles];
          v22 = [disabledProfiles2 countByEnumeratingWithState:&v45 objects:v63 count:16];
          if (v22)
          {
            v23 = *v46;
            do
            {
              for (k = 0; k != v22; ++k)
              {
                if (*v46 != v23)
                {
                  objc_enumerationMutation(disabledProfiles2);
                }

                v25 = *(*(&v45 + 1) + 8 * k);
                BYTE4(v59) = 0;
                LODWORD(v59) = 0;
                profileID2 = [v25 profileID];
                v27 = profileID2;
                bytes2 = [profileID2 bytes];
                v29 = *bytes2;
                BYTE4(v59) = *(bytes2 + 4);
                LODWORD(v59) = v29;

                [v3 appendBytes:&v59 length:5];
              }

              v22 = [disabledProfiles2 countByEnumeratingWithState:&v45 objects:v63 count:16];
            }

            while (v22);
          }
        }

        else
        {
          NSLog(&cfstr_Registerprofil.isa, [v6 midiChannel]);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v4);
  }

  v30 = v3;
  bytes3 = [v3 bytes];
  v32 = [v3 length];
  memset(&v44, 0, sizeof(v44));
  __s = 0;
  v61 = 0;
  v62 = 0;
  v33 = funopen(&v59, 0, CAMemoryStream::Write, 0, 0);
  v59 = v33;
  if (v32 >= 1)
  {
    do
    {
      if (v32 >= 0x10)
      {
        v34 = 16;
      }

      else
      {
        v34 = v32;
      }

      fprintf(v33, "%08lX:  ", bytes3);
      for (m = 0; m != 16; ++m)
      {
        if (m >= v34)
        {
          fwrite("   ", 3uLL, 1uLL, v33);
        }

        else
        {
          fprintf(v33, "%02X ", *(bytes3 + m));
        }
      }

      for (n = 0; n != 16; ++n)
      {
        if (n >= v34)
        {
          v37 = 32;
        }

        else if (*(bytes3 + n) - 32 >= 0x5F)
        {
          v37 = 46;
        }

        else
        {
          v37 = *(bytes3 + n);
        }

        fputc(v37, v33);
      }

      fputc(10, v33);
      bytes3 += 16;
      v38 = v32 <= 16;
      v32 -= 16;
    }

    while (!v38);
    v33 = v59;
  }

  fflush(v33);
  v39 = __s;
  if (!__s)
  {
    v39 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
    __s = v39;
    v62 = 1;
  }

  v39[v61] = 0;
  std::string::__assign_external(&v44, __s);
  fclose(v59);
  free(__s);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v44;
  }

  else
  {
    v40 = v44.__r_.__value_.__r.__words[0];
  }

  NSLog(&cfstr_Registerprofil_0.isa, v40);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

- (BOOL)containsValidChannels:(id)channels
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  channelsCopy = channels;
  v4 = [channelsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(channelsCopy);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        midiChannel = [v7 midiChannel];
        v10 = midiChannel < 0x10 || midiChannel == 127;

        if (v10)
        {
          LOBYTE(v4) = 1;
          goto LABEL_17;
        }
      }

      v4 = [channelsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  profileDelegate = self->_profileDelegate;
  initiators = [(MIDICIResponder *)self initiators];
  v6 = [v3 stringWithFormat:@"<MIDICIResponder(%p): delegate:%@ initiators:%@> ", self, profileDelegate, initiators];

  return v6;
}

- (MIDICIResponder)initWithDeviceInfo:(MIDICIDeviceInfo *)deviceInfo profileDelegate:(id)delegate profileStates:(MIDICIProfileStateList *)profileList supportProperties:(BOOL)propertiesSupported
{
  v6 = propertiesSupported;
  v11 = deviceInfo;
  v12 = delegate;
  v13 = profileList;
  v14 = [(MIDICIResponder *)self containsValidChannels:v13];
  if (v11 && (v15 = v14, [(MIDICIDeviceInfo *)v11 midiDestination]) && (v6 || v15))
  {
    v19.receiver = self;
    v19.super_class = MIDICIResponder;
    v16 = [(MIDICIResponder *)&v19 init];
    selfCopy = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_profileDelegate, delegate);
      selfCopy->_isStarted = 0;
      selfCopy->_propertiesSupported = v6;
      objc_storeStrong(&selfCopy->_deviceInfo, deviceInfo);
    }
  }

  else
  {
    selfCopy = self;
  }

  return 0;
}

- (MIDICIResponder)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MIDICIResponder init]"];
  [v3 raise:*MEMORY[0x277CBE660] format:{@"Unsupported! Don't call %@.", v4}];

  return 0;
}

@end