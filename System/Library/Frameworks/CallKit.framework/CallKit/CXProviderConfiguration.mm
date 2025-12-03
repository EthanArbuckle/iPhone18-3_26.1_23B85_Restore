@interface CXProviderConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (CXProviderConfiguration)init;
- (CXProviderConfiguration)initWithCoder:(id)coder;
- (CXProviderConfiguration)initWithLocalizedName:(NSString *)localizedName;
- (NSSet)senderIdentities;
- (NSString)description;
- (NSString)ringtoneSound;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setRingtoneSound:(NSString *)ringtoneSound;
- (void)setSenderIdentities:(id)identities;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
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

    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    prioritizedSenderIdentities = v3->_prioritizedSenderIdentities;
    v3->_prioritizedSenderIdentities = orderedSet;

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
  localizedName = [(CXProviderConfiguration *)self localizedName];
  [v3 appendFormat:@" localizedName=%@", localizedName];

  ringtoneSoundURL = [(CXProviderConfiguration *)self ringtoneSoundURL];
  [v3 appendFormat:@" ringtoneSoundURL=%@", ringtoneSoundURL];

  iconTemplateImageData = [(CXProviderConfiguration *)self iconTemplateImageData];
  [v3 appendFormat:@" iconTemplateImageData=%p", iconTemplateImageData];

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
  supportedHandleTypes = [(CXProviderConfiguration *)self supportedHandleTypes];
  allObjects = [supportedHandleTypes allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  [v3 appendFormat:@" supportedHandleTypes=%@", v9];

  [v3 appendFormat:@" supportsAudioTranslation=%d", -[CXProviderConfiguration supportsAudioTranslation](self, "supportsAudioTranslation")];
  emergencyHandles = [(CXProviderConfiguration *)self emergencyHandles];
  v11 = [emergencyHandles count];

  if (v11)
  {
    emergencyHandles2 = [(CXProviderConfiguration *)self emergencyHandles];
    v13 = [emergencyHandles2 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" emergencyHandles=%@", v13];
  }

  emergencyLabeledHandles = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  v15 = [emergencyLabeledHandles count];

  if (v15)
  {
    emergencyLabeledHandles2 = [(CXProviderConfiguration *)self emergencyLabeledHandles];
    v17 = [emergencyLabeledHandles2 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" emergencyLabeledHandles=%@", v17];
  }

  handoffIdentifiers = [(CXProviderConfiguration *)self handoffIdentifiers];
  v19 = [handoffIdentifiers count];

  if (v19)
  {
    handoffIdentifiers2 = [(CXProviderConfiguration *)self handoffIdentifiers];
    v21 = [handoffIdentifiers2 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" handoffIdentifiers=%@", v21];
  }

  prioritizedSenderIdentities = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v23 = [prioritizedSenderIdentities count];

  if (v23)
  {
    prioritizedSenderIdentities2 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
    array = [prioritizedSenderIdentities2 array];
    v26 = [array componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" prioritizedSenderIdentities=%@", v26];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)setSenderIdentities:(id)identities
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithSet:identities];
  [(CXProviderConfiguration *)self setPrioritizedSenderIdentities:v4];
}

- (NSSet)senderIdentities
{
  prioritizedSenderIdentities = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v3 = [prioritizedSenderIdentities set];

  return v3;
}

- (NSString)ringtoneSound
{
  ringtoneSoundURL = [(CXProviderConfiguration *)self ringtoneSoundURL];
  v3 = [ringtoneSoundURL URL];
  lastPathComponent = [v3 lastPathComponent];

  return lastPathComponent;
}

- (void)setRingtoneSound:(NSString *)ringtoneSound
{
  v4 = ringtoneSound;
  [(CXProviderConfiguration *)self setRingtoneSoundURL:0];
  if ([(NSString *)v4 length])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [defaultManager URLsForDirectory:5 inDomains:1];
    firstObject = [v6 firstObject];

    v8 = [firstObject URLByAppendingPathComponent:@"Sounds"];
    v9 = [v8 URLByAppendingPathComponent:v4];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    path = [v9 path];
    v12 = [defaultManager2 fileExistsAtPath:path];

    if (v12)
    {
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [v9 path];
      v25 = 0;
      v15 = [defaultManager3 attributesOfItemAtPath:path2 error:&v25];
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

    ringtoneSoundURL = [(CXProviderConfiguration *)self ringtoneSoundURL];

    if (!ringtoneSoundURL)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v23 = [mainBundle URLForResource:v4 withExtension:0];

      if (v23)
      {
        v24 = [[CXSandboxExtendedURL alloc] initWithURL:v23];
        [(CXProviderConfiguration *)self setRingtoneSoundURL:v24];
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXProviderConfiguration *)self isEqualToConfiguration:equalCopy];

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  emergencyHandles = [(CXProviderConfiguration *)self emergencyHandles];
  emergencyHandles2 = [configurationCopy emergencyHandles];
  if ([emergencyHandles isEqualToArray:emergencyHandles2])
  {
    emergencyLabeledHandles = [(CXProviderConfiguration *)self emergencyLabeledHandles];
    emergencyLabeledHandles2 = [configurationCopy emergencyLabeledHandles];
    if ([emergencyLabeledHandles isEqualToArray:emergencyLabeledHandles2])
    {
      handoffIdentifiers = [(CXProviderConfiguration *)self handoffIdentifiers];
      handoffIdentifiers2 = [configurationCopy handoffIdentifiers];
      if ([handoffIdentifiers isEqualToArray:handoffIdentifiers2])
      {
        prioritizedSenderIdentities = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
        prioritizedSenderIdentities2 = [configurationCopy prioritizedSenderIdentities];
        if ([prioritizedSenderIdentities isEqualToOrderedSet:prioritizedSenderIdentities2])
        {
          v35 = prioritizedSenderIdentities2;
          ringtoneSoundURL = [(CXProviderConfiguration *)self ringtoneSoundURL];
          ringtoneSoundURL2 = [configurationCopy ringtoneSoundURL];
          v37 = ringtoneSoundURL;
          if (ringtoneSoundURL | ringtoneSoundURL2 && ![ringtoneSoundURL isEqual:ringtoneSoundURL2])
          {
            LOBYTE(v25) = 0;
            prioritizedSenderIdentities2 = v35;
          }

          else
          {
            iconTemplateImageData = [(CXProviderConfiguration *)self iconTemplateImageData];
            iconTemplateImageData2 = [configurationCopy iconTemplateImageData];
            v34 = iconTemplateImageData;
            v15 = [iconTemplateImageData isEqualToData:?];
            prioritizedSenderIdentities2 = v35;
            if (v15)
            {
              v32 = prioritizedSenderIdentities;
              maximumCallGroups = [(CXProviderConfiguration *)self maximumCallGroups];
              if (maximumCallGroups != [configurationCopy maximumCallGroups])
              {
                goto LABEL_17;
              }

              maximumCallsPerCallGroup = [(CXProviderConfiguration *)self maximumCallsPerCallGroup];
              if (maximumCallsPerCallGroup != [configurationCopy maximumCallsPerCallGroup])
              {
                goto LABEL_17;
              }

              supportsAudioOnly = [(CXProviderConfiguration *)self supportsAudioOnly];
              if (supportsAudioOnly == [configurationCopy supportsAudioOnly] && (v19 = -[CXProviderConfiguration supportsVideo](self, "supportsVideo"), v19 == objc_msgSend(configurationCopy, "supportsVideo")) && (v20 = -[CXProviderConfiguration supportsEmergency](self, "supportsEmergency"), v20 == objc_msgSend(configurationCopy, "supportsEmergency")) && (v21 = -[CXProviderConfiguration supportsCurrentPlatform](self, "supportsCurrentPlatform"), v21 == objc_msgSend(configurationCopy, "supportsCurrentPlatform")) && (v22 = -[CXProviderConfiguration supportsVoicemail](self, "supportsVoicemail"), v22 == objc_msgSend(configurationCopy, "supportsVoicemail")) && (v23 = -[CXProviderConfiguration supportsRinging](self, "supportsRinging"), v23 == objc_msgSend(configurationCopy, "supportsRinging")) && (v24 = -[CXProviderConfiguration includesCallsInRecents](self, "includesCallsInRecents"), v24 == objc_msgSend(configurationCopy, "includesCallsInRecents")))
              {
                audioSessionID = [(CXProviderConfiguration *)self audioSessionID];
                if (audioSessionID == [configurationCopy audioSessionID] && (v28 = -[CXProviderConfiguration supportsDynamicSystemUI](self, "supportsDynamicSystemUI"), v28 == objc_msgSend(configurationCopy, "supportsDynamicSystemUI")))
                {
                  supportedHandleTypes = [(CXProviderConfiguration *)self supportedHandleTypes];
                  supportedHandleTypes2 = [configurationCopy supportedHandleTypes];
                  if ([supportedHandleTypes isEqualToSet:?])
                  {
                    supportsAudioTranslation = [(CXProviderConfiguration *)self supportsAudioTranslation];
                    v25 = supportsAudioTranslation ^ [configurationCopy supportsAudioTranslation] ^ 1;
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

                prioritizedSenderIdentities = v32;
                prioritizedSenderIdentities2 = v35;
              }

              else
              {
LABEL_17:
                LOBYTE(v25) = 0;
                prioritizedSenderIdentities = v32;
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
  emergencyHandles = [(CXProviderConfiguration *)self emergencyHandles];
  v3 = [emergencyHandles hash];
  emergencyLabeledHandles = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  v5 = [emergencyLabeledHandles hash] ^ v3;
  handoffIdentifiers = [(CXProviderConfiguration *)self handoffIdentifiers];
  v7 = [handoffIdentifiers hash];
  prioritizedSenderIdentities = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v9 = v5 ^ v7 ^ [prioritizedSenderIdentities hash];
  ringtoneSoundURL = [(CXProviderConfiguration *)self ringtoneSoundURL];
  v11 = [ringtoneSoundURL hash];
  iconTemplateImageData = [(CXProviderConfiguration *)self iconTemplateImageData];
  v13 = v11 ^ [iconTemplateImageData hash];
  v14 = v9 ^ v13 ^ [(CXProviderConfiguration *)self maximumCallGroups];
  maximumCallsPerCallGroup = [(CXProviderConfiguration *)self maximumCallsPerCallGroup];
  if ([(CXProviderConfiguration *)self supportsAudioOnly])
  {
    v16 = 1231;
  }

  else
  {
    v16 = 1237;
  }

  v17 = maximumCallsPerCallGroup ^ v16;
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
  supportedHandleTypes = [(CXProviderConfiguration *)self supportedHandleTypes];
  v33 = v31 ^ [supportedHandleTypes hash];

  return v26 ^ v33;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [copyCopy setAudioSessionID:{-[CXProviderConfiguration audioSessionID](self, "audioSessionID")}];
  ringtoneSoundURL = [(CXProviderConfiguration *)self ringtoneSoundURL];
  [copyCopy setRingtoneSoundURL:ringtoneSoundURL];

  iconTemplateImageData = [(CXProviderConfiguration *)self iconTemplateImageData];
  [copyCopy setIconTemplateImageData:iconTemplateImageData];

  [copyCopy setMaximumCallGroups:{-[CXProviderConfiguration maximumCallGroups](self, "maximumCallGroups")}];
  [copyCopy setMaximumCallsPerCallGroup:{-[CXProviderConfiguration maximumCallsPerCallGroup](self, "maximumCallsPerCallGroup")}];
  [copyCopy setSupportsVideo:{-[CXProviderConfiguration supportsVideo](self, "supportsVideo")}];
  [copyCopy setIncludesCallsInRecents:{-[CXProviderConfiguration includesCallsInRecents](self, "includesCallsInRecents")}];
  supportedHandleTypes = [(CXProviderConfiguration *)self supportedHandleTypes];
  [copyCopy setSupportedHandleTypes:supportedHandleTypes];

  [copyCopy setSupportsDynamicSystemUI:{-[CXProviderConfiguration supportsDynamicSystemUI](self, "supportsDynamicSystemUI")}];
  [copyCopy setSupportsAudioTranslation:{-[CXProviderConfiguration supportsAudioTranslation](self, "supportsAudioTranslation")}];
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXProviderConfiguration *)self updateSanitizedCopy:v5 withZone:zone];

  return v5;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [(CXProviderConfiguration *)self updateSanitizedCopy:copyCopy withZone:zone];
  emergencyHandles = [(CXProviderConfiguration *)self emergencyHandles];
  [copyCopy setEmergencyHandles:emergencyHandles];

  emergencyLabeledHandles = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  [copyCopy setEmergencyLabeledHandles:emergencyLabeledHandles];

  handoffIdentifiers = [(CXProviderConfiguration *)self handoffIdentifiers];
  [copyCopy setHandoffIdentifiers:handoffIdentifiers];

  prioritizedSenderIdentities = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  [copyCopy setPrioritizedSenderIdentities:prioritizedSenderIdentities];

  [copyCopy setSupportsAudioOnly:{-[CXProviderConfiguration supportsAudioOnly](self, "supportsAudioOnly")}];
  [copyCopy setSupportsEmergency:{-[CXProviderConfiguration supportsEmergency](self, "supportsEmergency")}];
  [copyCopy setSupportsVoicemail:{-[CXProviderConfiguration supportsVoicemail](self, "supportsVoicemail")}];
  [copyCopy setSupportsCurrentPlatform:{-[CXProviderConfiguration supportsCurrentPlatform](self, "supportsCurrentPlatform")}];
  [copyCopy setSupportsRinging:{-[CXProviderConfiguration supportsRinging](self, "supportsRinging")}];
  [copyCopy setSupportsAudioTranslation:{-[CXProviderConfiguration supportsAudioTranslation](self, "supportsAudioTranslation")}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXProviderConfiguration *)self updateCopy:v5 withZone:zone];
  return v5;
}

- (CXProviderConfiguration)initWithCoder:(id)coder
{
  v68 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v65 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"CXProviderConfiguration cannot be decoded by non-XPC coders." userInfo:0];
    objc_exception_throw(v65);
  }

  connection = [coderCopy connection];
  v6 = [(CXProviderConfiguration *)self init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = NSStringFromSelector(sel_emergencyHandles);
    v11 = [coderCopy decodeObjectOfClasses:v9 forKey:v10];
    emergencyHandles = v6->_emergencyHandles;
    v6->_emergencyHandles = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = NSStringFromSelector(sel_emergencyLabeledHandles);
    v17 = [coderCopy decodeObjectOfClasses:v15 forKey:v16];
    emergencyLabeledHandles = v6->_emergencyLabeledHandles;
    v6->_emergencyLabeledHandles = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = NSStringFromSelector(sel_handoffIdentifiers);
    v23 = [coderCopy decodeObjectOfClasses:v21 forKey:v22];
    handoffIdentifiers = v6->_handoffIdentifiers;
    v6->_handoffIdentifiers = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_localizedName);
    v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];
    localizedName = v6->_localizedName;
    v6->_localizedName = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = NSStringFromSelector(sel_prioritizedSenderIdentities);
    v33 = [coderCopy decodeObjectOfClasses:v31 forKey:v32];
    prioritizedSenderIdentities = v6->_prioritizedSenderIdentities;
    v6->_prioritizedSenderIdentities = v33;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_iconTemplateImageData);
    v37 = [coderCopy decodeObjectOfClass:v35 forKey:v36];
    iconTemplateImageData = v6->_iconTemplateImageData;
    v6->_iconTemplateImageData = v37;

    v39 = NSStringFromSelector(sel_maximumCallGroups);
    v6->_maximumCallGroups = [coderCopy decodeIntegerForKey:v39];

    v40 = NSStringFromSelector(sel_maximumCallsPerCallGroup);
    v6->_maximumCallsPerCallGroup = [coderCopy decodeIntegerForKey:v40];

    v41 = NSStringFromSelector(sel_supportsAudioOnly);
    v6->_supportsAudioOnly = [coderCopy decodeBoolForKey:v41];

    v42 = NSStringFromSelector(sel_supportsVideo);
    v6->_supportsVideo = [coderCopy decodeBoolForKey:v42];

    v43 = NSStringFromSelector(sel_supportsEmergency);
    v6->_supportsEmergency = [coderCopy decodeBoolForKey:v43];

    v44 = NSStringFromSelector(sel_supportsCurrentPlatform);
    v6->_supportsCurrentPlatform = [coderCopy decodeBoolForKey:v44];

    v45 = NSStringFromSelector(sel_supportsVoicemail);
    v6->_supportsVoicemail = [coderCopy decodeBoolForKey:v45];

    v46 = NSStringFromSelector(sel_supportsRinging);
    v6->_supportsRinging = [coderCopy decodeBoolForKey:v46];

    v47 = NSStringFromSelector(sel_supportsDynamicSystemUI);
    v6->_supportsDynamicSystemUI = [coderCopy decodeBoolForKey:v47];

    v48 = NSStringFromSelector(sel_includesCallsInRecents);
    v6->_includesCallsInRecents = [coderCopy decodeBoolForKey:v48];

    v49 = NSStringFromSelector(sel_audioSessionID);
    v6->_audioSessionID = [coderCopy decodeInt32ForKey:v49];

    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = NSStringFromSelector(sel_supportedHandleTypes);
    v54 = [coderCopy decodeObjectOfClasses:v52 forKey:v53];
    supportedHandleTypes = v6->_supportedHandleTypes;
    v6->_supportedHandleTypes = v54;

    v56 = NSStringFromSelector(sel_supportsAudioTranslation);
    v6->_supportsAudioTranslation = [coderCopy decodeBoolForKey:v56];

    v57 = objc_opt_class();
    v58 = NSStringFromSelector(sel_ringtoneSoundURL);
    v59 = [coderCopy decodeObjectOfClass:v57 forKey:v58];

    if (v59 && connection)
    {
      v60 = [v59 URL];
      v61 = [connection cx_clientSandboxCanAccessFileURL:v60];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedName = [(CXProviderConfiguration *)self localizedName];
  v6 = NSStringFromSelector(sel_localizedName);
  [coderCopy encodeObject:localizedName forKey:v6];

  emergencyHandles = [(CXProviderConfiguration *)self emergencyHandles];
  v8 = NSStringFromSelector(sel_emergencyHandles);
  [coderCopy encodeObject:emergencyHandles forKey:v8];

  emergencyLabeledHandles = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  v10 = NSStringFromSelector(sel_emergencyLabeledHandles);
  [coderCopy encodeObject:emergencyLabeledHandles forKey:v10];

  handoffIdentifiers = [(CXProviderConfiguration *)self handoffIdentifiers];
  v12 = NSStringFromSelector(sel_handoffIdentifiers);
  [coderCopy encodeObject:handoffIdentifiers forKey:v12];

  prioritizedSenderIdentities = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v14 = NSStringFromSelector(sel_prioritizedSenderIdentities);
  [coderCopy encodeObject:prioritizedSenderIdentities forKey:v14];

  ringtoneSoundURL = [(CXProviderConfiguration *)self ringtoneSoundURL];
  v16 = NSStringFromSelector(sel_ringtoneSoundURL);
  [coderCopy encodeObject:ringtoneSoundURL forKey:v16];

  iconTemplateImageData = [(CXProviderConfiguration *)self iconTemplateImageData];
  v18 = NSStringFromSelector(sel_iconTemplateImageData);
  [coderCopy encodeObject:iconTemplateImageData forKey:v18];

  maximumCallGroups = [(CXProviderConfiguration *)self maximumCallGroups];
  v20 = NSStringFromSelector(sel_maximumCallGroups);
  [coderCopy encodeInteger:maximumCallGroups forKey:v20];

  maximumCallsPerCallGroup = [(CXProviderConfiguration *)self maximumCallsPerCallGroup];
  v22 = NSStringFromSelector(sel_maximumCallsPerCallGroup);
  [coderCopy encodeInteger:maximumCallsPerCallGroup forKey:v22];

  supportsAudioOnly = [(CXProviderConfiguration *)self supportsAudioOnly];
  v24 = NSStringFromSelector(sel_supportsAudioOnly);
  [coderCopy encodeBool:supportsAudioOnly forKey:v24];

  supportsVideo = [(CXProviderConfiguration *)self supportsVideo];
  v26 = NSStringFromSelector(sel_supportsVideo);
  [coderCopy encodeBool:supportsVideo forKey:v26];

  supportsEmergency = [(CXProviderConfiguration *)self supportsEmergency];
  v28 = NSStringFromSelector(sel_supportsEmergency);
  [coderCopy encodeBool:supportsEmergency forKey:v28];

  supportsVoicemail = [(CXProviderConfiguration *)self supportsVoicemail];
  v30 = NSStringFromSelector(sel_supportsVoicemail);
  [coderCopy encodeBool:supportsVoicemail forKey:v30];

  supportsCurrentPlatform = [(CXProviderConfiguration *)self supportsCurrentPlatform];
  v32 = NSStringFromSelector(sel_supportsCurrentPlatform);
  [coderCopy encodeBool:supportsCurrentPlatform forKey:v32];

  supportsRinging = [(CXProviderConfiguration *)self supportsRinging];
  v34 = NSStringFromSelector(sel_supportsRinging);
  [coderCopy encodeBool:supportsRinging forKey:v34];

  includesCallsInRecents = [(CXProviderConfiguration *)self includesCallsInRecents];
  v36 = NSStringFromSelector(sel_includesCallsInRecents);
  [coderCopy encodeBool:includesCallsInRecents forKey:v36];

  audioSessionID = [(CXProviderConfiguration *)self audioSessionID];
  v38 = NSStringFromSelector(sel_audioSessionID);
  [coderCopy encodeInt32:audioSessionID forKey:v38];

  supportedHandleTypes = [(CXProviderConfiguration *)self supportedHandleTypes];
  v40 = NSStringFromSelector(sel_supportedHandleTypes);
  [coderCopy encodeObject:supportedHandleTypes forKey:v40];

  supportsDynamicSystemUI = [(CXProviderConfiguration *)self supportsDynamicSystemUI];
  v42 = NSStringFromSelector(sel_supportsDynamicSystemUI);
  [coderCopy encodeBool:supportsDynamicSystemUI forKey:v42];

  supportsAudioTranslation = [(CXProviderConfiguration *)self supportsAudioTranslation];
  v44 = NSStringFromSelector(sel_supportsAudioTranslation);
  [coderCopy encodeBool:supportsAudioTranslation forKey:v44];
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