@interface CorrectionsProfilesLastState
- (BOOL)loadLastState;
- (id)_path;
- (id)correctionKeys;
- (id)profileDataForKey:(id)key;
- (void)saveNewState:(id)state;
@end

@implementation CorrectionsProfilesLastState

- (void)saveNewState:(id)state
{
  v28 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _path = [(CorrectionsProfilesLastState *)self _path];
  if (stateCopy)
  {
    persistedState = self->_persistedState;
    if (!persistedState)
    {
      v8 = objc_alloc_init(CorrectionsProfilesPersistedState);
      v9 = self->_persistedState;
      self->_persistedState = v8;

      persistedState = self->_persistedState;
    }

    [(CorrectionsProfilesPersistedState *)persistedState setCorrectionsProfiles:stateCopy];
    v10 = self->_persistedState;
    v11 = CorrectionsProfilesDigest(stateCopy);
    [(CorrectionsProfilesPersistedState *)v10 setDigest:v11];

    digest = [(CorrectionsProfilesPersistedState *)self->_persistedState digest];

    if (!digest)
    {
      [(CorrectionsProfilesPersistedState *)self->_persistedState setCorrectionsProfiles:0];
    }

    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_persistedState requiringSecureCoding:1 error:0];
    v14 = v13;
    if (v13)
    {
      v23 = 0;
      v15 = [v13 writeToFile:_path options:1 error:&v23];
      v16 = v23;
      if ((v15 & 1) == 0)
      {
        v17 = *MEMORY[0x277CEF0D0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "[CorrectionsProfilesLastState saveNewState:]";
          v26 = 2112;
          v27 = stateCopy;
          _os_log_error_impl(&dword_2334CB000, v17, OS_LOG_TYPE_ERROR, "%s Could not save state: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v20 = *MEMORY[0x277CEF0D0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "[CorrectionsProfilesLastState saveNewState:]";
        v26 = 2112;
        v27 = stateCopy;
        _os_log_error_impl(&dword_2334CB000, v20, OS_LOG_TYPE_ERROR, "%s Could not archive state: %@", buf, 0x16u);
      }

      v16 = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v22 = 0;
  v18 = [defaultManager removeItemAtPath:_path error:&v22];
  v16 = v22;
  if (v16 || (v18 & 1) == 0)
  {
    v19 = *MEMORY[0x277CEF0D0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[CorrectionsProfilesLastState saveNewState:]";
      v26 = 2112;
      v27 = v16;
      _os_log_error_impl(&dword_2334CB000, v19, OS_LOG_TYPE_ERROR, "%s Failed to remove previous state:%@", buf, 0x16u);
    }

    goto LABEL_18;
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)profileDataForKey:(id)key
{
  persistedState = self->_persistedState;
  keyCopy = key;
  correctionsProfiles = [(CorrectionsProfilesPersistedState *)persistedState correctionsProfiles];
  v6 = [correctionsProfiles objectForKey:keyCopy];

  return v6;
}

- (id)correctionKeys
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  correctionsProfiles = [(CorrectionsProfilesPersistedState *)self->_persistedState correctionsProfiles];
  allKeys = [correctionsProfiles allKeys];
  v6 = [v3 initWithArray:allKeys];

  return v6;
}

- (BOOL)loadLastState
{
  v26 = *MEMORY[0x277D85DE8];
  _path = [(CorrectionsProfilesLastState *)self _path];
  v21 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:_path options:2 error:&v21];
  v5 = v21;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v12 = MEMORY[0x277CCAAC8];
    v13 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v14 = [v12 unarchivedObjectOfClasses:v13 fromData:v4 error:0];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_persistedState, v14);
        correctionsProfiles = [(CorrectionsProfilesPersistedState *)self->_persistedState correctionsProfiles];
        self->_count = [correctionsProfiles count];

        v16 = 1;
LABEL_18:

        goto LABEL_19;
      }

      v17 = *MEMORY[0x277CEF0D0];
      if (!os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
      {
LABEL_17:
        v16 = 0;
        goto LABEL_18;
      }

      *buf = 136315394;
      v23 = "[CorrectionsProfilesLastState loadLastState]";
      v24 = 2112;
      v25 = v14;
      v18 = "%s Last state data is of unexpected format: %@";
    }

    else
    {
      v17 = *MEMORY[0x277CEF0D0];
      if (!os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136315394;
      v23 = "[CorrectionsProfilesLastState loadLastState]";
      v24 = 2112;
      v25 = v4;
      v18 = "%s Unable to decode data: %@";
    }

    _os_log_error_impl(&dword_2334CB000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
    goto LABEL_17;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:_path];

  v10 = *MEMORY[0x277CEF0D0];
  v11 = *MEMORY[0x277CEF0D0];
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[CorrectionsProfilesLastState loadLastState]";
      _os_log_error_impl(&dword_2334CB000, v10, OS_LOG_TYPE_ERROR, "%s Unable to read last persisted corrections state", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[CorrectionsProfilesLastState loadLastState]";
    _os_log_impl(&dword_2334CB000, v10, OS_LOG_TYPE_INFO, "%s No corrections state has been persisted", buf, 0xCu);
  }

  v16 = 0;
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_path
{
  v2 = AFUserSupportDirectoryPath();
  v3 = [v2 stringByAppendingPathComponent:@"com.apple.siri.corrections.laststate.plist"];

  return v3;
}

@end