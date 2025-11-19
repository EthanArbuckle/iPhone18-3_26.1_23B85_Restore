@interface CorrectionsProfilesSyncHandler
- (void)_loadCorrectionProfiles;
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 count:(int64_t)a5 forKey:(id)a6 beginInfo:(id)a7;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)syncDidEnd;
@end

@implementation CorrectionsProfilesSyncHandler

- (void)_loadCorrectionProfiles
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFFE70] defaultSynchedKnowledgeStore];
  v34 = 0;
  v29 = [v3 dictionaryRepresentationAndReturnError:&v34];
  v4 = v34;
  v5 = *MEMORY[0x277CEF0D0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v36 = "[CorrectionsProfilesSyncHandler _loadCorrectionProfiles]";
    v37 = 2112;
    v38 = v29;
    _os_log_debug_impl(&dword_2334CB000, v5, OS_LOG_TYPE_DEBUG, "%s Loaded data from db: %@", buf, 0x16u);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    v6 = *MEMORY[0x277CEF0D0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
    {
      v24 = v6;
      v25 = [v3 name];
      *buf = 136315650;
      v36 = "[CorrectionsProfilesSyncHandler _loadCorrectionProfiles]";
      v37 = 2112;
      v38 = v4;
      v39 = 2112;
      v40 = v25;
      _os_log_error_impl(&dword_2334CB000, v24, OS_LOG_TYPE_ERROR, "%s Failed to load corrections profiles %@ for name %@", buf, 0x20u);
    }

    v7 = 0;
    goto LABEL_21;
  }

  v26 = self;
  v27 = v3;
  v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v29, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v29 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v13];
        v15 = [v14 scheme];
        v16 = [v15 isEqualToString:@"Correction"];

        if (v16)
        {
          v17 = [v29 objectForKey:v13];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v28 setObject:v17 forKey:v14];
          }

          else
          {
            v18 = *MEMORY[0x277CEF0D0];
            if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
            {
              v19 = v18;
              v20 = objc_opt_class();
              *buf = 136315906;
              v36 = "[CorrectionsProfilesSyncHandler _loadCorrectionProfiles]";
              v37 = 2112;
              v38 = v13;
              v39 = 2112;
              v40 = v17;
              v41 = 2112;
              v42 = v20;
              v21 = v20;
              _os_log_error_impl(&dword_2334CB000, v19, OS_LOG_TYPE_ERROR, "%s Unexpected value type for key %@: %@ of type %@", buf, 0x2Au);
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v10);
  }

  self = v26;
  v3 = v27;
  v7 = v28;
LABEL_21:
  correctionProfiles = self->_correctionProfiles;
  self->_correctionProfiles = v7;

  v23 = *MEMORY[0x277D85DE8];
}

- (void)syncDidEnd
{
  [(CorrectionsProfilesLastState *)self->_lastState saveNewState:self->_correctionProfiles];
  correctionProfiles = self->_correctionProfiles;
  self->_correctionProfiles = 0;

  correctionProfileKeysToSync = self->_correctionProfileKeysToSync;
  self->_correctionProfileKeysToSync = 0;
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v22 = a4;
  p_correctionProfileKeysToSync = &self->_correctionProfileKeysToSync;
  correctionProfileKeysToSync = self->_correctionProfileKeysToSync;
  v8 = a3;
  v9 = [(NSMutableArray *)correctionProfileKeysToSync count];
  p_correctionProfileKeysToDelete = &self->_correctionProfileKeysToDelete;
  if (v9 + [(NSMutableArray *)self->_correctionProfileKeysToDelete count])
  {
    v11 = [v8 componentsSeparatedByString:@"Correction"];

    v12 = [v11 lastObject];
    v13 = [(CorrectionsProfilesLastState *)self->_lastState digest];
    if (v13 && ([v12 isEqualToString:v13] & 1) != 0 || !objc_msgSend(v12, "length"))
    {
      v14 = 0;
    }

    else
    {
      v14 = [v12 integerValue] + 1;
    }

    v15 = [(NSMutableArray *)*p_correctionProfileKeysToSync lastObject];
    if (v15)
    {
      v16 = [(NSDictionary *)self->_correctionProfiles objectForKey:v15];
      v17 = objc_alloc_init(MEMORY[0x277D47130]);
      [v17 setIdentifier:v15];
      [v17 setCorrectionEntryData:v16];
      [v22 setObject:v17];
      v18 = &self->_correctionProfileKeysToSync;
    }

    else
    {
      v16 = [(NSMutableArray *)*p_correctionProfileKeysToDelete lastObject];
      v17 = objc_alloc_init(MEMORY[0x277D47130]);
      [v17 setIdentifier:v16];
      [v22 setObject:v17];
      [v22 setIsDelete:1];
      v18 = &self->_correctionProfileKeysToDelete;
    }

    [(NSMutableArray *)*v18 removeLastObject];

    if ([(NSMutableArray *)*p_correctionProfileKeysToSync count]|| [(NSMutableArray *)*p_correctionProfileKeysToDelete count])
    {
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = [v11 firstObject];
      v21 = [v19 initWithFormat:@"%@%@%tu", v20, @"Correction", v14];
    }

    else
    {
      v21 = CorrectionsProfilesDigest(self->_correctionProfiles);
    }

    [v22 setPostAnchor:v21];
  }

  else
  {
    [v22 setPostAnchor:v8];

    [v22 setObject:0];
  }
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 count:(int64_t)a5 forKey:(id)a6 beginInfo:(id)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (self->_lastState)
  {
    v16 = 1;
  }

  else
  {
    v17 = objc_alloc_init(CorrectionsProfilesLastState);
    lastState = self->_lastState;
    self->_lastState = v17;

    v16 = [(CorrectionsProfilesLastState *)self->_lastState loadLastState];
  }

  [(CorrectionsProfilesSyncHandler *)self _loadCorrectionProfiles];
  v19 = a5 <= 0 && [(NSDictionary *)self->_correctionProfiles count]== 0;
  if (([v13 isEqualToString:@"CorrectionsProfiles-2.0"] & v16) != 1 || -[CorrectionsProfilesLastState count](self->_lastState, "count") != a5)
  {
    goto LABEL_14;
  }

  v20 = [(CorrectionsProfilesLastState *)self->_lastState digest];
  if (([v20 isEqualToString:v12] | v19))
  {
    if (a5 <= 0)
    {
    }

    else
    {
      v21 = [(NSDictionary *)self->_correctionProfiles count];

      if (!v21)
      {
        goto LABEL_14;
      }
    }

    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSDictionary count](self->_correctionProfiles, "count")}];
    correctionProfiles = self->_correctionProfiles;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2334CC840;
    v36[3] = &unk_2789D9870;
    v36[4] = self;
    v30 = v28;
    v37 = v30;
    [(NSDictionary *)correctionProfiles enumerateKeysAndObjectsUsingBlock:v36];
    correctionProfileKeysToSync = self->_correctionProfileKeysToSync;
    self->_correctionProfileKeysToSync = v30;
    v24 = v30;

    v32 = [(CorrectionsProfilesLastState *)self->_lastState correctionKeys];
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v32, "count")}];
    correctionProfileKeysToDelete = self->_correctionProfileKeysToDelete;
    self->_correctionProfileKeysToDelete = v33;

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2334CC8D8;
    v35[3] = &unk_2789D9898;
    v35[4] = self;
    [v32 enumerateObjectsUsingBlock:v35];

    v26 = v37;
    goto LABEL_17;
  }

LABEL_14:
  v22 = *MEMORY[0x277CEF0D0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_INFO))
  {
    v23 = self->_lastState;
    *buf = 136315906;
    v39 = "[CorrectionsProfilesSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:]";
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v23;
    v44 = 1024;
    v45 = v16;
    _os_log_impl(&dword_2334CB000, v22, OS_LOG_TYPE_INFO, "%s Reset sync for validity %@, last state: %@, loaded last state? %d", buf, 0x26u);
  }

  [v15 resetWithValidity:@"CorrectionsProfiles-2.0"];
  v24 = [(NSDictionary *)self->_correctionProfiles allKeys];
  v25 = [(NSMutableArray *)v24 mutableCopy];
  v26 = self->_correctionProfileKeysToSync;
  self->_correctionProfileKeysToSync = v25;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
}

@end