@interface CXProviderConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (CXProviderConfiguration)init;
- (CXProviderConfiguration)initWithCoder:(id)a3;
- (CXProviderConfiguration)initWithLocalizedName:(NSString *)localizedName;
- (NSSet)senderIdentities;
- (NSString)description;
- (NSString)ringtoneSound;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setRingtoneSound:(NSString *)ringtoneSound;
- (void)setSenderIdentities:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXProviderConfiguration

- (CXProviderConfiguration)init
{
  v19 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CXProviderConfiguration;
  v2 = [(CXProviderConfiguration *)&v16 init];
  v3 = v2;
  if (v2)
  {
    emergencyHandles = v2->_emergencyHandles;
    v5 = MEMORY[0x1E695E0F0];
    v2->_emergencyHandles = MEMORY[0x1E695E0F0];

    emergencyLabeledHandles = v3->_emergencyLabeledHandles;
    v3->_emergencyLabeledHandles = v5;

    handoffIdentifiers = v3->_handoffIdentifiers;
    v3->_handoffIdentifiers = v5;

    v8 = [MEMORY[0x1E695DFB8] orderedSet];
    prioritizedSenderIdentities = v3->_prioritizedSenderIdentities;
    v3->_prioritizedSenderIdentities = v8;

    *&v3->_maximumCallGroups = xmmword_1B4865C10;
    v3->_supportsAudioOnly = 1;
    v3->_includesCallsInRecents = 1;
    v10 = [MEMORY[0x1E695DFD8] set];
    supportedHandleTypes = v3->_supportedHandleTypes;
    v3->_supportedHandleTypes = v10;

    *&v3->_supportsCurrentPlatform = 257;
    if (os_variant_has_internal_diagnostics())
    {
      v3->_supportsAudioTranslation = 1;
      v12 = CXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        supportsAudioTranslation = v3->_supportsAudioTranslation;
        *buf = 67109120;
        v18 = supportsAudioTranslation;
        _os_log_impl(&dword_1B47F3000, v12, OS_LOG_TYPE_DEFAULT, "internal build: _supportsAudioTranslation: %d", buf, 8u);
      }
    }

    else
    {
      v3->_supportsAudioTranslation = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

- (CXProviderConfiguration)initWithLocalizedName:(NSString *)localizedName
{
  v4 = localizedName;
  v5 = [(CXProviderConfiguration *)self init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXProviderConfiguration initWithLocalizedName:]", @"localizedName"}];
    }

    v6 = [(NSString *)v4 copy];
    v7 = v5->_localizedName;
    v5->_localizedName = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXProviderConfiguration *)self localizedName];
  [v3 appendFormat:@" localizedName=%@", v4];

  v5 = [(CXProviderConfiguration *)self ringtoneSoundURL];
  [v3 appendFormat:@" ringtoneSoundURL=%@", v5];

  v6 = [(CXProviderConfiguration *)self iconTemplateImageData];
  [v3 appendFormat:@" iconTemplateImageData=%p", v6];

  [v3 appendFormat:@" maximumCallGroups=%lu", -[CXProviderConfiguration maximumCallGroups](self, "maximumCallGroups")];
  [v3 appendFormat:@" maximumCallsPerCallGroup=%lu", -[CXProviderConfiguration maximumCallsPerCallGroup](self, "maximumCallsPerCallGroup")];
  [v3 appendFormat:@" supportsAudioOnly=%d", -[CXProviderConfiguration supportsAudioOnly](self, "supportsAudioOnly")];
  [v3 appendFormat:@" supportsVideo=%d", -[CXProviderConfiguration supportsVideo](self, "supportsVideo")];
  [v3 appendFormat:@" supportsEmergency=%d", -[CXProviderConfiguration supportsEmergency](self, "supportsEmergency")];
  [v3 appendFormat:@" supportsVoicemail=%d", -[CXProviderConfiguration supportsVoicemail](self, "supportsVoicemail")];
  [v3 appendFormat:@" supportsCurrentPlatform=%d", -[CXProviderConfiguration supportsCurrentPlatform](self, "supportsCurrentPlatform")];
  [v3 appendFormat:@" supportsRinging=%d", -[CXProviderConfiguration supportsRinging](self, "supportsRinging")];
  [v3 appendFormat:@" includesCallsInRecents=%d", -[CXProviderConfiguration includesCallsInRecents](self, "includesCallsInRecents")];
  [v3 appendFormat:@" audioSessionID=%u", -[CXProviderConfiguration audioSessionID](self, "audioSessionID")];
  [v3 appendFormat:@" supportsDynamicSystemUI=%d", -[CXProviderConfiguration supportsDynamicSystemUI](self, "supportsDynamicSystemUI")];
  v7 = [(CXProviderConfiguration *)self supportedHandleTypes];
  v8 = [v7 allObjects];
  v9 = [v8 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@" supportedHandleTypes=%@", v9];

  [v3 appendFormat:@" supportsAudioTranslation=%d", -[CXProviderConfiguration supportsAudioTranslation](self, "supportsAudioTranslation")];
  v10 = [(CXProviderConfiguration *)self emergencyHandles];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(CXProviderConfiguration *)self emergencyHandles];
    v13 = [v12 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" emergencyHandles=%@", v13];
  }

  v14 = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(CXProviderConfiguration *)self emergencyLabeledHandles];
    v17 = [v16 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" emergencyLabeledHandles=%@", v17];
  }

  v18 = [(CXProviderConfiguration *)self handoffIdentifiers];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(CXProviderConfiguration *)self handoffIdentifiers];
    v21 = [v20 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" handoffIdentifiers=%@", v21];
  }

  v22 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
    v25 = [v24 array];
    v26 = [v25 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" prioritizedSenderIdentities=%@", v26];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)setSenderIdentities:(id)a3
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithSet:a3];
  [(CXProviderConfiguration *)self setPrioritizedSenderIdentities:v4];
}

- (NSSet)senderIdentities
{
  v2 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v3 = [v2 set];

  return v3;
}

- (NSString)ringtoneSound
{
  v2 = [(CXProviderConfiguration *)self ringtoneSoundURL];
  v3 = [v2 URL];
  v4 = [v3 lastPathComponent];

  return v4;
}

- (void)setRingtoneSound:(NSString *)ringtoneSound
{
  v4 = ringtoneSound;
  [(CXProviderConfiguration *)self setRingtoneSoundURL:0];
  if ([(NSString *)v4 length])
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 URLsForDirectory:5 inDomains:1];
    v7 = [v6 firstObject];

    v8 = [v7 URLByAppendingPathComponent:@"Sounds"];
    v9 = [v8 URLByAppendingPathComponent:v4];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v9 path];
    v12 = [v10 fileExistsAtPath:v11];

    if (v12)
    {
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [v9 path];
      v25 = 0;
      v15 = [v13 attributesOfItemAtPath:v14 error:&v25];
      v16 = v25;

      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696A3D8]];
        v18 = *MEMORY[0x1E696A3F0];

        if (v17 != v18)
        {
          v19 = [[CXSandboxExtendedURL alloc] initWithURL:v9];
          [(CXProviderConfiguration *)self setRingtoneSoundURL:v19];
        }
      }

      if (v16)
      {
        v20 = CXDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(CXProviderConfiguration *)v16 setRingtoneSound:v20];
        }
      }
    }

    v21 = [(CXProviderConfiguration *)self ringtoneSoundURL];

    if (!v21)
    {
      v22 = [MEMORY[0x1E696AAE8] mainBundle];
      v23 = [v22 URLForResource:v4 withExtension:0];

      if (v23)
      {
        v24 = [[CXSandboxExtendedURL alloc] initWithURL:v23];
        [(CXProviderConfiguration *)self setRingtoneSoundURL:v24];
      }
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXProviderConfiguration *)self isEqualToConfiguration:v4];

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CXProviderConfiguration *)self emergencyHandles];
  v6 = [v4 emergencyHandles];
  if ([v5 isEqualToArray:v6])
  {
    v7 = [(CXProviderConfiguration *)self emergencyLabeledHandles];
    v8 = [v4 emergencyLabeledHandles];
    if ([v7 isEqualToArray:v8])
    {
      v9 = [(CXProviderConfiguration *)self handoffIdentifiers];
      v10 = [v4 handoffIdentifiers];
      if ([v9 isEqualToArray:v10])
      {
        v11 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
        v12 = [v4 prioritizedSenderIdentities];
        if ([v11 isEqualToOrderedSet:v12])
        {
          v35 = v12;
          v13 = [(CXProviderConfiguration *)self ringtoneSoundURL];
          v36 = [v4 ringtoneSoundURL];
          v37 = v13;
          if (v13 | v36 && ![v13 isEqual:v36])
          {
            LOBYTE(v25) = 0;
            v12 = v35;
          }

          else
          {
            v14 = [(CXProviderConfiguration *)self iconTemplateImageData];
            v33 = [v4 iconTemplateImageData];
            v34 = v14;
            v15 = [v14 isEqualToData:?];
            v12 = v35;
            if (v15)
            {
              v32 = v11;
              v16 = [(CXProviderConfiguration *)self maximumCallGroups];
              if (v16 != [v4 maximumCallGroups])
              {
                goto LABEL_17;
              }

              v17 = [(CXProviderConfiguration *)self maximumCallsPerCallGroup];
              if (v17 != [v4 maximumCallsPerCallGroup])
              {
                goto LABEL_17;
              }

              v18 = [(CXProviderConfiguration *)self supportsAudioOnly];
              if (v18 == [v4 supportsAudioOnly] && (v19 = -[CXProviderConfiguration supportsVideo](self, "supportsVideo"), v19 == objc_msgSend(v4, "supportsVideo")) && (v20 = -[CXProviderConfiguration supportsEmergency](self, "supportsEmergency"), v20 == objc_msgSend(v4, "supportsEmergency")) && (v21 = -[CXProviderConfiguration supportsCurrentPlatform](self, "supportsCurrentPlatform"), v21 == objc_msgSend(v4, "supportsCurrentPlatform")) && (v22 = -[CXProviderConfiguration supportsVoicemail](self, "supportsVoicemail"), v22 == objc_msgSend(v4, "supportsVoicemail")) && (v23 = -[CXProviderConfiguration supportsRinging](self, "supportsRinging"), v23 == objc_msgSend(v4, "supportsRinging")) && (v24 = -[CXProviderConfiguration includesCallsInRecents](self, "includesCallsInRecents"), v24 == objc_msgSend(v4, "includesCallsInRecents")))
              {
                v27 = [(CXProviderConfiguration *)self audioSessionID];
                if (v27 == [v4 audioSessionID] && (v28 = -[CXProviderConfiguration supportsDynamicSystemUI](self, "supportsDynamicSystemUI"), v28 == objc_msgSend(v4, "supportsDynamicSystemUI")))
                {
                  v29 = [(CXProviderConfiguration *)self supportedHandleTypes];
                  v30 = [v4 supportedHandleTypes];
                  if ([v29 isEqualToSet:?])
                  {
                    v31 = [(CXProviderConfiguration *)self supportsAudioTranslation];
                    v25 = v31 ^ [v4 supportsAudioTranslation] ^ 1;
                  }

                  else
                  {
                    LOBYTE(v25) = 0;
                  }
                }

                else
                {
                  LOBYTE(v25) = 0;
                }

                v11 = v32;
                v12 = v35;
              }

              else
              {
LABEL_17:
                LOBYTE(v25) = 0;
                v11 = v32;
              }
            }

            else
            {
              LOBYTE(v25) = 0;
            }
          }
        }

        else
        {
          LOBYTE(v25) = 0;
        }
      }

      else
      {
        LOBYTE(v25) = 0;
      }
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  else
  {
    LOBYTE(v25) = 0;
  }

  return v25;
}

- (unint64_t)hash
{
  v35 = [(CXProviderConfiguration *)self emergencyHandles];
  v3 = [v35 hash];
  v4 = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  v5 = [v4 hash] ^ v3;
  v6 = [(CXProviderConfiguration *)self handoffIdentifiers];
  v7 = [v6 hash];
  v8 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(CXProviderConfiguration *)self ringtoneSoundURL];
  v11 = [v10 hash];
  v12 = [(CXProviderConfiguration *)self iconTemplateImageData];
  v13 = v11 ^ [v12 hash];
  v14 = v9 ^ v13 ^ [(CXProviderConfiguration *)self maximumCallGroups];
  v15 = [(CXProviderConfiguration *)self maximumCallsPerCallGroup];
  if ([(CXProviderConfiguration *)self supportsAudioOnly])
  {
    v16 = 1231;
  }

  else
  {
    v16 = 1237;
  }

  v17 = v15 ^ v16;
  if ([(CXProviderConfiguration *)self supportsVideo])
  {
    v18 = 1231;
  }

  else
  {
    v18 = 1237;
  }

  v19 = v14 ^ v17 ^ v18;
  if ([(CXProviderConfiguration *)self supportsEmergency])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  if ([(CXProviderConfiguration *)self supportsCurrentPlatform])
  {
    v21 = 1231;
  }

  else
  {
    v21 = 1237;
  }

  v22 = v20 ^ v21;
  if ([(CXProviderConfiguration *)self supportsVoicemail])
  {
    v23 = 1231;
  }

  else
  {
    v23 = 1237;
  }

  v24 = v22 ^ v23;
  if ([(CXProviderConfiguration *)self supportsRinging])
  {
    v25 = 1231;
  }

  else
  {
    v25 = 1237;
  }

  v26 = v19 ^ v24 ^ v25;
  if ([(CXProviderConfiguration *)self includesCallsInRecents])
  {
    v27 = 1231;
  }

  else
  {
    v27 = 1237;
  }

  if ([(CXProviderConfiguration *)self supportsDynamicSystemUI])
  {
    v28 = 1231;
  }

  else
  {
    v28 = 1237;
  }

  v29 = v27 ^ v28;
  if ([(CXProviderConfiguration *)self supportsAudioTranslation])
  {
    v30 = 1231;
  }

  else
  {
    v30 = 1237;
  }

  v31 = v29 ^ v30 ^ [(CXProviderConfiguration *)self audioSessionID];
  v32 = [(CXProviderConfiguration *)self supportedHandleTypes];
  v33 = v31 ^ [v32 hash];

  return v26 ^ v33;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v8 = a3;
  [v8 setAudioSessionID:{-[CXProviderConfiguration audioSessionID](self, "audioSessionID")}];
  v5 = [(CXProviderConfiguration *)self ringtoneSoundURL];
  [v8 setRingtoneSoundURL:v5];

  v6 = [(CXProviderConfiguration *)self iconTemplateImageData];
  [v8 setIconTemplateImageData:v6];

  [v8 setMaximumCallGroups:{-[CXProviderConfiguration maximumCallGroups](self, "maximumCallGroups")}];
  [v8 setMaximumCallsPerCallGroup:{-[CXProviderConfiguration maximumCallsPerCallGroup](self, "maximumCallsPerCallGroup")}];
  [v8 setSupportsVideo:{-[CXProviderConfiguration supportsVideo](self, "supportsVideo")}];
  [v8 setIncludesCallsInRecents:{-[CXProviderConfiguration includesCallsInRecents](self, "includesCallsInRecents")}];
  v7 = [(CXProviderConfiguration *)self supportedHandleTypes];
  [v8 setSupportedHandleTypes:v7];

  [v8 setSupportsDynamicSystemUI:{-[CXProviderConfiguration supportsDynamicSystemUI](self, "supportsDynamicSystemUI")}];
  [v8 setSupportsAudioTranslation:{-[CXProviderConfiguration supportsAudioTranslation](self, "supportsAudioTranslation")}];
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXProviderConfiguration *)self updateSanitizedCopy:v5 withZone:a3];

  return v5;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v10 = a3;
  [(CXProviderConfiguration *)self updateSanitizedCopy:v10 withZone:a4];
  v6 = [(CXProviderConfiguration *)self emergencyHandles];
  [v10 setEmergencyHandles:v6];

  v7 = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  [v10 setEmergencyLabeledHandles:v7];

  v8 = [(CXProviderConfiguration *)self handoffIdentifiers];
  [v10 setHandoffIdentifiers:v8];

  v9 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  [v10 setPrioritizedSenderIdentities:v9];

  [v10 setSupportsAudioOnly:{-[CXProviderConfiguration supportsAudioOnly](self, "supportsAudioOnly")}];
  [v10 setSupportsEmergency:{-[CXProviderConfiguration supportsEmergency](self, "supportsEmergency")}];
  [v10 setSupportsVoicemail:{-[CXProviderConfiguration supportsVoicemail](self, "supportsVoicemail")}];
  [v10 setSupportsCurrentPlatform:{-[CXProviderConfiguration supportsCurrentPlatform](self, "supportsCurrentPlatform")}];
  [v10 setSupportsRinging:{-[CXProviderConfiguration supportsRinging](self, "supportsRinging")}];
  [v10 setSupportsAudioTranslation:{-[CXProviderConfiguration supportsAudioTranslation](self, "supportsAudioTranslation")}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXProviderConfiguration *)self updateCopy:v5 withZone:a3];
  return v5;
}

- (CXProviderConfiguration)initWithCoder:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v65 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"CXProviderConfiguration cannot be decoded by non-XPC coders." userInfo:0];
    objc_exception_throw(v65);
  }

  v5 = [v4 connection];
  v6 = [(CXProviderConfiguration *)self init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = NSStringFromSelector(sel_emergencyHandles);
    v11 = [v4 decodeObjectOfClasses:v9 forKey:v10];
    emergencyHandles = v6->_emergencyHandles;
    v6->_emergencyHandles = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = NSStringFromSelector(sel_emergencyLabeledHandles);
    v17 = [v4 decodeObjectOfClasses:v15 forKey:v16];
    emergencyLabeledHandles = v6->_emergencyLabeledHandles;
    v6->_emergencyLabeledHandles = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = NSStringFromSelector(sel_handoffIdentifiers);
    v23 = [v4 decodeObjectOfClasses:v21 forKey:v22];
    handoffIdentifiers = v6->_handoffIdentifiers;
    v6->_handoffIdentifiers = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_localizedName);
    v27 = [v4 decodeObjectOfClass:v25 forKey:v26];
    localizedName = v6->_localizedName;
    v6->_localizedName = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = NSStringFromSelector(sel_prioritizedSenderIdentities);
    v33 = [v4 decodeObjectOfClasses:v31 forKey:v32];
    prioritizedSenderIdentities = v6->_prioritizedSenderIdentities;
    v6->_prioritizedSenderIdentities = v33;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_iconTemplateImageData);
    v37 = [v4 decodeObjectOfClass:v35 forKey:v36];
    iconTemplateImageData = v6->_iconTemplateImageData;
    v6->_iconTemplateImageData = v37;

    v39 = NSStringFromSelector(sel_maximumCallGroups);
    v6->_maximumCallGroups = [v4 decodeIntegerForKey:v39];

    v40 = NSStringFromSelector(sel_maximumCallsPerCallGroup);
    v6->_maximumCallsPerCallGroup = [v4 decodeIntegerForKey:v40];

    v41 = NSStringFromSelector(sel_supportsAudioOnly);
    v6->_supportsAudioOnly = [v4 decodeBoolForKey:v41];

    v42 = NSStringFromSelector(sel_supportsVideo);
    v6->_supportsVideo = [v4 decodeBoolForKey:v42];

    v43 = NSStringFromSelector(sel_supportsEmergency);
    v6->_supportsEmergency = [v4 decodeBoolForKey:v43];

    v44 = NSStringFromSelector(sel_supportsCurrentPlatform);
    v6->_supportsCurrentPlatform = [v4 decodeBoolForKey:v44];

    v45 = NSStringFromSelector(sel_supportsVoicemail);
    v6->_supportsVoicemail = [v4 decodeBoolForKey:v45];

    v46 = NSStringFromSelector(sel_supportsRinging);
    v6->_supportsRinging = [v4 decodeBoolForKey:v46];

    v47 = NSStringFromSelector(sel_supportsDynamicSystemUI);
    v6->_supportsDynamicSystemUI = [v4 decodeBoolForKey:v47];

    v48 = NSStringFromSelector(sel_includesCallsInRecents);
    v6->_includesCallsInRecents = [v4 decodeBoolForKey:v48];

    v49 = NSStringFromSelector(sel_audioSessionID);
    v6->_audioSessionID = [v4 decodeInt32ForKey:v49];

    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = NSStringFromSelector(sel_supportedHandleTypes);
    v54 = [v4 decodeObjectOfClasses:v52 forKey:v53];
    supportedHandleTypes = v6->_supportedHandleTypes;
    v6->_supportedHandleTypes = v54;

    v56 = NSStringFromSelector(sel_supportsAudioTranslation);
    v6->_supportsAudioTranslation = [v4 decodeBoolForKey:v56];

    v57 = objc_opt_class();
    v58 = NSStringFromSelector(sel_ringtoneSoundURL);
    v59 = [v4 decodeObjectOfClass:v57 forKey:v58];

    if (v59 && v5)
    {
      v60 = [v59 URL];
      v61 = [v5 cx_clientSandboxCanAccessFileURL:v60];

      if (v61)
      {
        objc_storeStrong(&v6->_ringtoneSoundURL, v59);
      }

      else
      {
        v62 = CXDefaultLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = v59;
          _os_log_impl(&dword_1B47F3000, v62, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring ringtone sound URL because CXProviderConfiguration client did not have access to it: %@", buf, 0xCu);
        }
      }
    }
  }

  v63 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXProviderConfiguration *)self localizedName];
  v6 = NSStringFromSelector(sel_localizedName);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXProviderConfiguration *)self emergencyHandles];
  v8 = NSStringFromSelector(sel_emergencyHandles);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  v10 = NSStringFromSelector(sel_emergencyLabeledHandles);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CXProviderConfiguration *)self handoffIdentifiers];
  v12 = NSStringFromSelector(sel_handoffIdentifiers);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v14 = NSStringFromSelector(sel_prioritizedSenderIdentities);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(CXProviderConfiguration *)self ringtoneSoundURL];
  v16 = NSStringFromSelector(sel_ringtoneSoundURL);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(CXProviderConfiguration *)self iconTemplateImageData];
  v18 = NSStringFromSelector(sel_iconTemplateImageData);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(CXProviderConfiguration *)self maximumCallGroups];
  v20 = NSStringFromSelector(sel_maximumCallGroups);
  [v4 encodeInteger:v19 forKey:v20];

  v21 = [(CXProviderConfiguration *)self maximumCallsPerCallGroup];
  v22 = NSStringFromSelector(sel_maximumCallsPerCallGroup);
  [v4 encodeInteger:v21 forKey:v22];

  v23 = [(CXProviderConfiguration *)self supportsAudioOnly];
  v24 = NSStringFromSelector(sel_supportsAudioOnly);
  [v4 encodeBool:v23 forKey:v24];

  v25 = [(CXProviderConfiguration *)self supportsVideo];
  v26 = NSStringFromSelector(sel_supportsVideo);
  [v4 encodeBool:v25 forKey:v26];

  v27 = [(CXProviderConfiguration *)self supportsEmergency];
  v28 = NSStringFromSelector(sel_supportsEmergency);
  [v4 encodeBool:v27 forKey:v28];

  v29 = [(CXProviderConfiguration *)self supportsVoicemail];
  v30 = NSStringFromSelector(sel_supportsVoicemail);
  [v4 encodeBool:v29 forKey:v30];

  v31 = [(CXProviderConfiguration *)self supportsCurrentPlatform];
  v32 = NSStringFromSelector(sel_supportsCurrentPlatform);
  [v4 encodeBool:v31 forKey:v32];

  v33 = [(CXProviderConfiguration *)self supportsRinging];
  v34 = NSStringFromSelector(sel_supportsRinging);
  [v4 encodeBool:v33 forKey:v34];

  v35 = [(CXProviderConfiguration *)self includesCallsInRecents];
  v36 = NSStringFromSelector(sel_includesCallsInRecents);
  [v4 encodeBool:v35 forKey:v36];

  v37 = [(CXProviderConfiguration *)self audioSessionID];
  v38 = NSStringFromSelector(sel_audioSessionID);
  [v4 encodeInt32:v37 forKey:v38];

  v39 = [(CXProviderConfiguration *)self supportedHandleTypes];
  v40 = NSStringFromSelector(sel_supportedHandleTypes);
  [v4 encodeObject:v39 forKey:v40];

  v41 = [(CXProviderConfiguration *)self supportsDynamicSystemUI];
  v42 = NSStringFromSelector(sel_supportsDynamicSystemUI);
  [v4 encodeBool:v41 forKey:v42];

  v43 = [(CXProviderConfiguration *)self supportsAudioTranslation];
  v44 = NSStringFromSelector(sel_supportsAudioTranslation);
  [v4 encodeBool:v43 forKey:v44];
}

- (void)setRingtoneSound:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Error while querying file attributes: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end