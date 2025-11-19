@interface ATAudioTapDescription
- (ATAudioTapDescription)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)setProcessIdentifiersChecked:(id)a3;
- (id)description;
- (id)initBaseTapInternalWithFormat:(id)a3;
- (id)initPreSpatialSessionTypeTapWithFormat:(id)a3 sessionType:(unsigned int)a4;
- (id)initPreSpatialTapInternalWithFormat:(id)a3 PIDs:(id)a4 sessionID:(unsigned int)a5 sessionType:(unsigned int)a6 sceneID:(id)a7;
- (id)initProcessTapWithFormat:(id)a3 PID:(int)a4 deviceUID:(id)a5;
- (id)initScreenSharingTapWithFormat:(id)a3;
- (id)initSystemTapWithFormat:(id)a3;
- (id)initSystemTapWithFormat:(id)a3 excludePIDs:(id)a4;
- (id)initTapInternalWithFormat:(id)a3 PIDs:(id)a4;
- (int)processIdentifier;
- (void)encodeWithCoder:(id)a3;
- (void)setProcessIdentifiers:(id)a3;
@end

@implementation ATAudioTapDescription

- (id)description
{
  v3 = [(ATAudioTapDescription *)self tapType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = [(ATAudioTapDescription *)self sceneIdentifier];
      v9 = [(ATAudioTapDescription *)self name];
      v10 = [(ATAudioTapDescription *)self UUID];
      v11 = [(ATAudioTapDescription *)self format];
      v14 = [(ATAudioTapDescription *)self excludedPIDs];
      v15 = [v4 stringWithFormat:@"<%@@%p: scene identifier tap - sceneID:%@, name:%@, UUID:%@, format:%@, excluded pids:%@>", v6, self, v8, v9, v10, v11, v14];
      goto LABEL_12;
    }

    if (v3 == 4)
    {
      v13 = [(ATAudioTapDescription *)self sessionType];
      v8 = [(ATAudioTapDescription *)self name];
      v9 = [(ATAudioTapDescription *)self UUID];
      v10 = [(ATAudioTapDescription *)self format];
      v11 = [(ATAudioTapDescription *)self excludedPIDs];
      v12 = [v4 stringWithFormat:@"<%@@%p: session type tap - session type:%u, name:%@, UUID:%@, format:%@, excluded pids:%@>", v6, self, v13, v8, v9, v10, v11];
      goto LABEL_10;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v8 = [(ATAudioTapDescription *)self name];
      v9 = [(ATAudioTapDescription *)self UUID];
      v10 = [(ATAudioTapDescription *)self format];
      v11 = [(ATAudioTapDescription *)self excludedPIDs];
      v12 = [v4 stringWithFormat:@"<%@@%p: system tap - name:%@, UUID:%@, format:%@, excluded pids:%@>", v6, self, v8, v9, v10, v11];
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v7 = [(ATAudioTapDescription *)self audioSessionID];
      v8 = [(ATAudioTapDescription *)self name];
      v9 = [(ATAudioTapDescription *)self UUID];
      v10 = [(ATAudioTapDescription *)self format];
      v11 = [(ATAudioTapDescription *)self excludedPIDs];
      v12 = [v4 stringWithFormat:@"<%@@%p: audio session tap - sessionID:0x%x name:%@, UUID:%@, format:%@, excluded pids:%@>", v6, self, v7, v8, v9, v10, v11];
LABEL_10:
      v16 = v12;
      goto LABEL_13;
    }
  }

  v8 = [(ATAudioTapDescription *)self processIdentifiers];
  v9 = [(ATAudioTapDescription *)self name];
  v10 = [(ATAudioTapDescription *)self UUID];
  v11 = [(ATAudioTapDescription *)self format];
  v14 = [(ATAudioTapDescription *)self excludedPIDs];
  v15 = [v4 stringWithFormat:@"<%@@%p: process tap - pids:%@, name:%@, UUID:%@, format:%@, excluded pids:%@", v6, self, v8, v9, v10, v11, v14];
LABEL_12:
  v16 = v15;

LABEL_13:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x1E695DFD8];
      v7 = [(ATAudioTapDescription *)v5 processIdentifiers];
      v8 = [v6 setWithArray:v7];

      v9 = MEMORY[0x1E695DFD8];
      v10 = [(ATAudioTapDescription *)self processIdentifiers];
      v11 = [v9 setWithArray:v10];

      v12 = [(ATAudioTapDescription *)v5 tapType];
      if (v12 == -[ATAudioTapDescription tapType](self, "tapType") && [v8 isEqual:v11])
      {
        v13 = [(ATAudioTapDescription *)v5 name];
        v14 = [(ATAudioTapDescription *)self name];
        if (![v13 isEqual:v14])
        {
LABEL_13:
          v19 = 0;
LABEL_14:

LABEL_19:
          goto LABEL_20;
        }

        v35 = [(ATAudioTapDescription *)v5 UUID];
        v15 = [(ATAudioTapDescription *)self UUID];
        if (![v35 isEqual:v15])
        {
LABEL_12:

          goto LABEL_13;
        }

        v34 = [(ATAudioTapDescription *)v5 format];
        v33 = [(ATAudioTapDescription *)self format];
        if (![v34 isEqual:?] || (v16 = -[ATAudioTapDescription audioSessionID](v5, "audioSessionID"), v16 != -[ATAudioTapDescription audioSessionID](self, "audioSessionID")) || (v17 = -[ATAudioTapDescription sessionType](v5, "sessionType"), v17 != -[ATAudioTapDescription sessionType](self, "sessionType")) || (v18 = -[ATAudioTapDescription isPreSpatial](v5, "isPreSpatial"), v18 != -[ATAudioTapDescription isPreSpatial](self, "isPreSpatial")))
        {

          goto LABEL_12;
        }

        v20 = [(ATAudioTapDescription *)v5 sceneIdentifier];
        v21 = [(ATAudioTapDescription *)self sceneIdentifier];
        v32 = (v20 != 0) ^ (v21 != 0);

        if ((v32 & 1) == 0)
        {
          v23 = [(ATAudioTapDescription *)v5 sceneIdentifier];
          if (!v23)
          {
            goto LABEL_24;
          }

          v24 = [(ATAudioTapDescription *)self sceneIdentifier];

          if (!v24 || (-[ATAudioTapDescription sceneIdentifier](v5, "sceneIdentifier"), v25 = objc_claimAutoreleasedReturnValue(), -[ATAudioTapDescription sceneIdentifier](self, "sceneIdentifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v25 isEqual:v26], v26, v25, (v27 & 1) != 0))
          {
LABEL_24:
            v28 = MEMORY[0x1E695DFD8];
            v29 = [(ATAudioTapDescription *)v5 excludedPIDs];
            v13 = [v28 setWithArray:v29];

            v30 = MEMORY[0x1E695DFD8];
            v31 = [(ATAudioTapDescription *)self excludedPIDs];
            v14 = [v30 setWithArray:v31];

            v19 = [v13 isEqual:v14];
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

- (ATAudioTapDescription)initWithCoder:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ATAudioTapDescription;
  v5 = [(ATAudioTapDescription *)&v25 init];
  if (v5)
  {
    v5->_tapType = [v4 decodeIntForKey:@"tapType"];
    v6 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"processIdentifiers"];
    processIdentifiers = v5->_processIdentifiers;
    v5->_processIdentifiers = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"excludedPIDs"];
    excludedPIDs = v5->_excludedPIDs;
    v5->_excludedPIDs = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
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
    v19 = [v4 decodeObjectOfClass:v17 forKey:@"format"];
    format = v5->_format;
    v5->_format = v19;

    v5->_audioSessionID = [v4 decodeInt32ForKey:@"audioSessionID"];
    v5->_sessionType = [v4 decodeInt32ForKey:@"sessionType"];
    v5->_preSpatial = [v4 decodeBoolForKey:@"preSpatial"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v21;

    v5->_muteBehavior = [v4 decodeInt32ForKey:@"muteBehavior"];
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:LODWORD(self->_tapType) forKey:@"tapType"];
  [v4 encodeObject:self->_processIdentifiers forKey:@"processIdentifiers"];
  [v4 encodeObject:self->_excludedPIDs forKey:@"excludedPIDs"];
  [v4 encodeObject:self->_name forKey:@"name"];
  [v4 encodeObject:self->_UUID forKey:@"UUID"];
  [v4 encodeObject:self->_format forKey:@"format"];
  [v4 encodeInt32:self->_audioSessionID forKey:@"audioSessionID"];
  [v4 encodeInt32:self->_sessionType forKey:@"sessionType"];
  [v4 encodeBool:self->_preSpatial forKey:@"preSpatial"];
  [v4 encodeObject:self->_sceneIdentifier forKey:@"sceneIdentifier"];
  [v4 encodeInt32:LODWORD(self->_muteBehavior) forKey:@"muteBehavior"];
}

- (void)setProcessIdentifiers:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(ATAudioTapDescription *)self setProcessIdentifiersChecked:v4])
  {
    v5 = gATAudioTapLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ATAudioTap.mm";
      v9 = 1024;
      v10 = 275;
      v11 = 2112;
      v12 = v4;
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

  v3 = [(NSArray *)self->_processIdentifiers firstObject];
  v4 = [v3 intValue];

  return v4;
}

- (id)initScreenSharingTapWithFormat:(id)a3
{
  result = [(ATAudioTapDescription *)self initBaseTapInternalWithFormat:a3];
  if (result)
  {
    *(result + 3) = 5;
    *(result + 8) = 0;
  }

  return result;
}

- (id)initPreSpatialSessionTypeTapWithFormat:(id)a3 sessionType:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    self = [(ATAudioTapDescription *)self initPreSpatialTapInternalWithFormat:v6 PIDs:0 sessionID:0 sessionType:1 sceneID:0];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)initPreSpatialTapInternalWithFormat:(id)a3 PIDs:(id)a4 sessionID:(unsigned int)a5 sessionType:(unsigned int)a6 sceneID:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(ATAudioTapDescription *)self initBaseTapInternalWithFormat:v12];
  if (v15)
  {
    if (v13)
    {
      if (ValidatePIDs(v13))
      {
        v16 = [(NSArray *)v13 firstObject];
        v17 = [v16 intValue];

        if (v17 != -1)
        {
          v18 = [(NSArray *)v13 copy];
          v19 = *(v15 + 4);
          *(v15 + 4) = v18;

          v20 = 0;
LABEL_20:
          *(v15 + 3) = v20;
          *(v15 + 3) = a5;
          *(v15 + 4) = a6;
          objc_storeStrong(v15 + 9, a7);
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
      if (!(a6 | a5) && v14)
      {
        v20 = 3;
        goto LABEL_20;
      }

      if (a5 - 1 <= 0xFFFFFFFD && !a6 && !v14)
      {
        v20 = 2;
        goto LABEL_20;
      }

      if (!a5 && a6 && !v14)
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

- (id)initSystemTapWithFormat:(id)a3 excludePIDs:(id)a4
{
  v7 = a4;
  v8 = [(ATAudioTapDescription *)self initSystemTapWithFormat:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a4);
  }

  return v9;
}

- (id)initSystemTapWithFormat:(id)a3
{
  v3 = [(ATAudioTapDescription *)self initBaseTapInternalWithFormat:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3[4];
    v3[3] = 1;
    v3[4] = &unk_1F37D45A0;
  }

  return v4;
}

- (id)initTapInternalWithFormat:(id)a3 PIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATAudioTapDescription *)self initBaseTapInternalWithFormat:v6];
  v9 = v8;
  if (v8 && ([v8 setProcessIdentifiersChecked:v7] & 1) == 0)
  {

    v9 = 0;
  }

  return v9;
}

- (BOOL)setProcessIdentifiersChecked:(id)a3
{
  v4 = a3;
  v5 = ValidatePIDs(v4);
  if (v5)
  {
    v6 = [(NSArray *)v4 firstObject];
    v7 = [v6 intValue] == -1;

    self->_tapType = v7;
    v8 = [(NSArray *)v4 copy];
    processIdentifiers = self->_processIdentifiers;
    self->_processIdentifiers = v8;
  }

  return v5;
}

- (id)initBaseTapInternalWithFormat:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_format, a3);
    v10 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v7->_UUID;
    v7->_UUID = v10;

    v12 = [(NSUUID *)v7->_UUID UUIDString];
    name = v7->_name;
    v7->_name = v12;

    v7->_audioSessionID = 0;
    v7->_sessionType = 0;
    sceneIdentifier = v7->_sceneIdentifier;
    v7->_sceneIdentifier = 0;

    v7->_preSpatial = 0;
    v7->_muteBehavior = 0;
  }

  return v7;
}

- (id)initProcessTapWithFormat:(id)a3 PID:(int)a4 deviceUID:(id)a5
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