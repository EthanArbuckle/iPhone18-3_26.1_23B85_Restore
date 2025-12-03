@interface ATAudioTapDescription
- (ATAudioTapDescription)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)setProcessIdentifiersChecked:(id)checked;
- (id)description;
- (id)initBaseTapInternalWithFormat:(id)format;
- (id)initPreSpatialSessionTypeTapWithFormat:(id)format sessionType:(unsigned int)type;
- (id)initPreSpatialTapInternalWithFormat:(id)format PIDs:(id)ds sessionID:(unsigned int)d sessionType:(unsigned int)type sceneID:(id)iD;
- (id)initProcessTapWithFormat:(id)format PID:(int)d deviceUID:(id)iD;
- (id)initScreenSharingTapWithFormat:(id)format;
- (id)initSystemTapWithFormat:(id)format;
- (id)initSystemTapWithFormat:(id)format excludePIDs:(id)ds;
- (id)initTapInternalWithFormat:(id)format PIDs:(id)ds;
- (int)processIdentifier;
- (void)encodeWithCoder:(id)coder;
- (void)setProcessIdentifiers:(id)identifiers;
@end

@implementation ATAudioTapDescription

- (id)description
{
  tapType = [(ATAudioTapDescription *)self tapType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (tapType > 2)
  {
    if (tapType == 3)
    {
      sceneIdentifier = [(ATAudioTapDescription *)self sceneIdentifier];
      name = [(ATAudioTapDescription *)self name];
      uUID = [(ATAudioTapDescription *)self UUID];
      format = [(ATAudioTapDescription *)self format];
      excludedPIDs = [(ATAudioTapDescription *)self excludedPIDs];
      v15 = [v4 stringWithFormat:@"<%@@%p: scene identifier tap - sceneID:%@, name:%@, UUID:%@, format:%@, excluded pids:%@>", v6, self, sceneIdentifier, name, uUID, format, excludedPIDs];
      goto LABEL_12;
    }

    if (tapType == 4)
    {
      sessionType = [(ATAudioTapDescription *)self sessionType];
      sceneIdentifier = [(ATAudioTapDescription *)self name];
      name = [(ATAudioTapDescription *)self UUID];
      uUID = [(ATAudioTapDescription *)self format];
      format = [(ATAudioTapDescription *)self excludedPIDs];
      v12 = [v4 stringWithFormat:@"<%@@%p: session type tap - session type:%u, name:%@, UUID:%@, format:%@, excluded pids:%@>", v6, self, sessionType, sceneIdentifier, name, uUID, format];
      goto LABEL_10;
    }
  }

  else
  {
    if (tapType == 1)
    {
      sceneIdentifier = [(ATAudioTapDescription *)self name];
      name = [(ATAudioTapDescription *)self UUID];
      uUID = [(ATAudioTapDescription *)self format];
      format = [(ATAudioTapDescription *)self excludedPIDs];
      v12 = [v4 stringWithFormat:@"<%@@%p: system tap - name:%@, UUID:%@, format:%@, excluded pids:%@>", v6, self, sceneIdentifier, name, uUID, format];
      goto LABEL_10;
    }

    if (tapType == 2)
    {
      audioSessionID = [(ATAudioTapDescription *)self audioSessionID];
      sceneIdentifier = [(ATAudioTapDescription *)self name];
      name = [(ATAudioTapDescription *)self UUID];
      uUID = [(ATAudioTapDescription *)self format];
      format = [(ATAudioTapDescription *)self excludedPIDs];
      v12 = [v4 stringWithFormat:@"<%@@%p: audio session tap - sessionID:0x%x name:%@, UUID:%@, format:%@, excluded pids:%@>", v6, self, audioSessionID, sceneIdentifier, name, uUID, format];
LABEL_10:
      v16 = v12;
      goto LABEL_13;
    }
  }

  sceneIdentifier = [(ATAudioTapDescription *)self processIdentifiers];
  name = [(ATAudioTapDescription *)self name];
  uUID = [(ATAudioTapDescription *)self UUID];
  format = [(ATAudioTapDescription *)self format];
  excludedPIDs = [(ATAudioTapDescription *)self excludedPIDs];
  v15 = [v4 stringWithFormat:@"<%@@%p: process tap - pids:%@, name:%@, UUID:%@, format:%@, excluded pids:%@", v6, self, sceneIdentifier, name, uUID, format, excludedPIDs];
LABEL_12:
  v16 = v15;

LABEL_13:

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x1E695DFD8];
      processIdentifiers = [(ATAudioTapDescription *)v5 processIdentifiers];
      v8 = [v6 setWithArray:processIdentifiers];

      v9 = MEMORY[0x1E695DFD8];
      processIdentifiers2 = [(ATAudioTapDescription *)self processIdentifiers];
      v11 = [v9 setWithArray:processIdentifiers2];

      tapType = [(ATAudioTapDescription *)v5 tapType];
      if (tapType == -[ATAudioTapDescription tapType](self, "tapType") && [v8 isEqual:v11])
      {
        name = [(ATAudioTapDescription *)v5 name];
        name2 = [(ATAudioTapDescription *)self name];
        if (![name isEqual:name2])
        {
LABEL_13:
          v19 = 0;
LABEL_14:

LABEL_19:
          goto LABEL_20;
        }

        uUID = [(ATAudioTapDescription *)v5 UUID];
        uUID2 = [(ATAudioTapDescription *)self UUID];
        if (![uUID isEqual:uUID2])
        {
LABEL_12:

          goto LABEL_13;
        }

        format = [(ATAudioTapDescription *)v5 format];
        format2 = [(ATAudioTapDescription *)self format];
        if (![format isEqual:?] || (v16 = -[ATAudioTapDescription audioSessionID](v5, "audioSessionID"), v16 != -[ATAudioTapDescription audioSessionID](self, "audioSessionID")) || (v17 = -[ATAudioTapDescription sessionType](v5, "sessionType"), v17 != -[ATAudioTapDescription sessionType](self, "sessionType")) || (v18 = -[ATAudioTapDescription isPreSpatial](v5, "isPreSpatial"), v18 != -[ATAudioTapDescription isPreSpatial](self, "isPreSpatial")))
        {

          goto LABEL_12;
        }

        sceneIdentifier = [(ATAudioTapDescription *)v5 sceneIdentifier];
        sceneIdentifier2 = [(ATAudioTapDescription *)self sceneIdentifier];
        v32 = (sceneIdentifier != 0) ^ (sceneIdentifier2 != 0);

        if ((v32 & 1) == 0)
        {
          sceneIdentifier3 = [(ATAudioTapDescription *)v5 sceneIdentifier];
          if (!sceneIdentifier3)
          {
            goto LABEL_24;
          }

          sceneIdentifier4 = [(ATAudioTapDescription *)self sceneIdentifier];

          if (!sceneIdentifier4 || (-[ATAudioTapDescription sceneIdentifier](v5, "sceneIdentifier"), v25 = objc_claimAutoreleasedReturnValue(), -[ATAudioTapDescription sceneIdentifier](self, "sceneIdentifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v25 isEqual:v26], v26, v25, (v27 & 1) != 0))
          {
LABEL_24:
            v28 = MEMORY[0x1E695DFD8];
            excludedPIDs = [(ATAudioTapDescription *)v5 excludedPIDs];
            name = [v28 setWithArray:excludedPIDs];

            v30 = MEMORY[0x1E695DFD8];
            excludedPIDs2 = [(ATAudioTapDescription *)self excludedPIDs];
            name2 = [v30 setWithArray:excludedPIDs2];

            v19 = [name isEqual:name2];
            goto LABEL_14;
          }
        }
      }

      v19 = 0;
      goto LABEL_19;
    }

    v19 = 0;
  }

LABEL_20:

  return v19;
}

- (ATAudioTapDescription)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = ATAudioTapDescription;
  v5 = [(ATAudioTapDescription *)&v25 init];
  if (v5)
  {
    v5->_tapType = [coderCopy decodeIntForKey:@"tapType"];
    v6 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"processIdentifiers"];
    processIdentifiers = v5->_processIdentifiers;
    v5->_processIdentifiers = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"excludedPIDs"];
    excludedPIDs = v5->_excludedPIDs;
    v5->_excludedPIDs = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v15;

    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v17 = getAVAudioFormatClass(void)::softClass;
    v30 = getAVAudioFormatClass(void)::softClass;
    if (!getAVAudioFormatClass(void)::softClass)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___ZL21getAVAudioFormatClassv_block_invoke_12022;
      v26[3] = &unk_1E7ED08E8;
      v26[4] = &v27;
      ___ZL21getAVAudioFormatClassv_block_invoke_12022(v26);
      v17 = v28[3];
    }

    v18 = v17;
    _Block_object_dispose(&v27, 8);
    v19 = [coderCopy decodeObjectOfClass:v17 forKey:@"format"];
    format = v5->_format;
    v5->_format = v19;

    v5->_audioSessionID = [coderCopy decodeInt32ForKey:@"audioSessionID"];
    v5->_sessionType = [coderCopy decodeInt32ForKey:@"sessionType"];
    v5->_preSpatial = [coderCopy decodeBoolForKey:@"preSpatial"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v21;

    v5->_muteBehavior = [coderCopy decodeInt32ForKey:@"muteBehavior"];
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:LODWORD(self->_tapType) forKey:@"tapType"];
  [coderCopy encodeObject:self->_processIdentifiers forKey:@"processIdentifiers"];
  [coderCopy encodeObject:self->_excludedPIDs forKey:@"excludedPIDs"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_format forKey:@"format"];
  [coderCopy encodeInt32:self->_audioSessionID forKey:@"audioSessionID"];
  [coderCopy encodeInt32:self->_sessionType forKey:@"sessionType"];
  [coderCopy encodeBool:self->_preSpatial forKey:@"preSpatial"];
  [coderCopy encodeObject:self->_sceneIdentifier forKey:@"sceneIdentifier"];
  [coderCopy encodeInt32:LODWORD(self->_muteBehavior) forKey:@"muteBehavior"];
}

- (void)setProcessIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (![(ATAudioTapDescription *)self setProcessIdentifiersChecked:identifiersCopy])
  {
    v5 = gATAudioTapLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ATAudioTap.mm";
      v9 = 1024;
      v10 = 275;
      v11 = 2112;
      v12 = identifiersCopy;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting processIdentifiers: %@", &v7, 0x1Cu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (int)processIdentifier
{
  if (![(NSArray *)self->_processIdentifiers count])
  {
    return 0;
  }

  firstObject = [(NSArray *)self->_processIdentifiers firstObject];
  intValue = [firstObject intValue];

  return intValue;
}

- (id)initScreenSharingTapWithFormat:(id)format
{
  result = [(ATAudioTapDescription *)self initBaseTapInternalWithFormat:format];
  if (result)
  {
    *(result + 3) = 5;
    *(result + 8) = 0;
  }

  return result;
}

- (id)initPreSpatialSessionTypeTapWithFormat:(id)format sessionType:(unsigned int)type
{
  formatCopy = format;
  if (type == 1)
  {
    self = [(ATAudioTapDescription *)self initPreSpatialTapInternalWithFormat:formatCopy PIDs:0 sessionID:0 sessionType:1 sceneID:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initPreSpatialTapInternalWithFormat:(id)format PIDs:(id)ds sessionID:(unsigned int)d sessionType:(unsigned int)type sceneID:(id)iD
{
  v28 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  dsCopy = ds;
  iDCopy = iD;
  v15 = [(ATAudioTapDescription *)self initBaseTapInternalWithFormat:formatCopy];
  if (v15)
  {
    if (dsCopy)
    {
      if (ValidatePIDs(dsCopy))
      {
        firstObject = [(NSArray *)dsCopy firstObject];
        intValue = [firstObject intValue];

        if (intValue != -1)
        {
          v18 = [(NSArray *)dsCopy copy];
          v19 = *(v15 + 4);
          *(v15 + 4) = v18;

          v20 = 0;
LABEL_20:
          *(v15 + 3) = v20;
          *(v15 + 3) = d;
          *(v15 + 4) = type;
          objc_storeStrong(v15 + 9, iD);
          *(v15 + 8) = 1;
          goto LABEL_23;
        }

        v21 = gATAudioTapLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v24 = 136315394;
          v25 = "ATAudioTap.mm";
          v26 = 1024;
          v27 = 140;
          _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Pre-spatial sytstem tap is not supported", &v24, 0x12u);
        }

LABEL_22:
        v15 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (!(type | d) && iDCopy)
      {
        v20 = 3;
        goto LABEL_20;
      }

      if (d - 1 <= 0xFFFFFFFD && !type && !iDCopy)
      {
        v20 = 2;
        goto LABEL_20;
      }

      if (!d && type && !iDCopy)
      {
        v20 = 4;
        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)initSystemTapWithFormat:(id)format excludePIDs:(id)ds
{
  dsCopy = ds;
  v8 = [(ATAudioTapDescription *)self initSystemTapWithFormat:format];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, ds);
  }

  return v9;
}

- (id)initSystemTapWithFormat:(id)format
{
  v3 = [(ATAudioTapDescription *)self initBaseTapInternalWithFormat:format];
  v4 = v3;
  if (v3)
  {
    v5 = v3[4];
    v3[3] = 1;
    v3[4] = &unk_1F37D45A0;
  }

  return v4;
}

- (id)initTapInternalWithFormat:(id)format PIDs:(id)ds
{
  formatCopy = format;
  dsCopy = ds;
  v8 = [(ATAudioTapDescription *)self initBaseTapInternalWithFormat:formatCopy];
  v9 = v8;
  if (v8 && ([v8 setProcessIdentifiersChecked:dsCopy] & 1) == 0)
  {

    v9 = 0;
  }

  return v9;
}

- (BOOL)setProcessIdentifiersChecked:(id)checked
{
  checkedCopy = checked;
  v5 = ValidatePIDs(checkedCopy);
  if (v5)
  {
    firstObject = [(NSArray *)checkedCopy firstObject];
    v7 = [firstObject intValue] == -1;

    self->_tapType = v7;
    v8 = [(NSArray *)checkedCopy copy];
    processIdentifiers = self->_processIdentifiers;
    self->_processIdentifiers = v8;
  }

  return v5;
}

- (id)initBaseTapInternalWithFormat:(id)format
{
  formatCopy = format;
  v16.receiver = self;
  v16.super_class = ATAudioTapDescription;
  v6 = [(ATAudioTapDescription *)&v16 init];
  v7 = v6;
  if (v6)
  {
    processIdentifiers = v6->_processIdentifiers;
    v9 = MEMORY[0x1E695E0F0];
    v6->_tapType = 0;
    v6->_processIdentifiers = v9;

    objc_storeStrong(&v7->_format, format);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v7->_UUID;
    v7->_UUID = uUID;

    uUIDString = [(NSUUID *)v7->_UUID UUIDString];
    name = v7->_name;
    v7->_name = uUIDString;

    v7->_audioSessionID = 0;
    v7->_sessionType = 0;
    sceneIdentifier = v7->_sceneIdentifier;
    v7->_sceneIdentifier = 0;

    v7->_preSpatial = 0;
    v7->_muteBehavior = 0;
  }

  return v7;
}

- (id)initProcessTapWithFormat:(id)format PID:(int)d deviceUID:(id)iD
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = gATAudioTapLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "ATAudioTap.mm";
    v11 = 1024;
    v12 = 34;
    _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [ATAudioTapDescription initProcessTapWithFormat:PID:deviceUID] not implemented yet!", &v9, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

@end