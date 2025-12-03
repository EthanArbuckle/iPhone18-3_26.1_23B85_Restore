@interface CorrectionsProfilesSyncHandler
- (void)_loadCorrectionProfiles;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation CorrectionsProfilesSyncHandler

- (void)_loadCorrectionProfiles
{
  v44 = *MEMORY[0x277D85DE8];
  defaultSynchedKnowledgeStore = [MEMORY[0x277CFFE70] defaultSynchedKnowledgeStore];
  v34 = 0;
  v29 = [defaultSynchedKnowledgeStore dictionaryRepresentationAndReturnError:&v34];
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
      name = [defaultSynchedKnowledgeStore name];
      *buf = 136315650;
      v36 = "[CorrectionsProfilesSyncHandler _loadCorrectionProfiles]";
      v37 = 2112;
      v38 = v4;
      v39 = 2112;
      v40 = name;
      _os_log_error_impl(&dword_2334CB000, v24, OS_LOG_TYPE_ERROR, "%s Failed to load corrections profiles %@ for name %@", buf, 0x20u);
    }

    v7 = 0;
    goto LABEL_21;
  }

  selfCopy = self;
  v27 = defaultSynchedKnowledgeStore;
  v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v29, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [v29 allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v30 objects:v43 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v13];
        scheme = [v14 scheme];
        v16 = [scheme isEqualToString:@"Correction"];

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
      v10 = [allKeys countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v10);
  }

  self = selfCopy;
  defaultSynchedKnowledgeStore = v27;
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

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  infoCopy = info;
  p_correctionProfileKeysToSync = &self->_correctionProfileKeysToSync;
  correctionProfileKeysToSync = self->_correctionProfileKeysToSync;
  anchorCopy = anchor;
  v9 = [(NSMutableArray *)correctionProfileKeysToSync count];
  p_correctionProfileKeysToDelete = &self->_correctionProfileKeysToDelete;
  if (v9 + [(NSMutableArray *)self->_correctionProfileKeysToDelete count])
  {
    v11 = [anchorCopy componentsSeparatedByString:@"Correction"];

    lastObject = [v11 lastObject];
    digest = [(CorrectionsProfilesLastState *)self->_lastState digest];
    if (digest && ([lastObject isEqualToString:digest] & 1) != 0 || !objc_msgSend(lastObject, "length"))
    {
      v14 = 0;
    }

    else
    {
      v14 = [lastObject integerValue] + 1;
    }

    lastObject2 = [(NSMutableArray *)*p_correctionProfileKeysToSync lastObject];
    if (lastObject2)
    {
      lastObject3 = [(NSDictionary *)self->_correctionProfiles objectForKey:lastObject2];
      v17 = objc_alloc_init(MEMORY[0x277D47130]);
      [v17 setIdentifier:lastObject2];
      [v17 setCorrectionEntryData:lastObject3];
      [infoCopy setObject:v17];
      v18 = &self->_correctionProfileKeysToSync;
    }

    else
    {
      lastObject3 = [(NSMutableArray *)*p_correctionProfileKeysToDelete lastObject];
      v17 = objc_alloc_init(MEMORY[0x277D47130]);
      [v17 setIdentifier:lastObject3];
      [infoCopy setObject:v17];
      [infoCopy setIsDelete:1];
      v18 = &self->_correctionProfileKeysToDelete;
    }

    [(NSMutableArray *)*v18 removeLastObject];

    if ([(NSMutableArray *)*p_correctionProfileKeysToSync count]|| [(NSMutableArray *)*p_correctionProfileKeysToDelete count])
    {
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      firstObject = [v11 firstObject];
      v21 = [v19 initWithFormat:@"%@%@%tu", firstObject, @"Correction", v14];
    }

    else
    {
      v21 = CorrectionsProfilesDigest(self->_correctionProfiles);
    }

    [infoCopy setPostAnchor:v21];
  }

  else
  {
    [infoCopy setPostAnchor:anchorCopy];

    [infoCopy setObject:0];
  }
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info
{
  v46 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  keyCopy = key;
  infoCopy = info;
  if (self->_lastState)
  {
    loadLastState = 1;
  }

  else
  {
    v17 = objc_alloc_init(CorrectionsProfilesLastState);
    lastState = self->_lastState;
    self->_lastState = v17;

    loadLastState = [(CorrectionsProfilesLastState *)self->_lastState loadLastState];
  }

  [(CorrectionsProfilesSyncHandler *)self _loadCorrectionProfiles];
  v19 = count <= 0 && [(NSDictionary *)self->_correctionProfiles count]== 0;
  if (([validityCopy isEqualToString:@"CorrectionsProfiles-2.0"] & loadLastState) != 1 || -[CorrectionsProfilesLastState count](self->_lastState, "count") != count)
  {
    goto LABEL_14;
  }

  digest = [(CorrectionsProfilesLastState *)self->_lastState digest];
  if (([digest isEqualToString:anchorCopy] | v19))
  {
    if (count <= 0)
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
    allKeys = v30;

    correctionKeys = [(CorrectionsProfilesLastState *)self->_lastState correctionKeys];
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(correctionKeys, "count")}];
    correctionProfileKeysToDelete = self->_correctionProfileKeysToDelete;
    self->_correctionProfileKeysToDelete = v33;

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2334CC8D8;
    v35[3] = &unk_2789D9898;
    v35[4] = self;
    [correctionKeys enumerateObjectsUsingBlock:v35];

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
    v41 = validityCopy;
    v42 = 2112;
    v43 = v23;
    v44 = 1024;
    v45 = loadLastState;
    _os_log_impl(&dword_2334CB000, v22, OS_LOG_TYPE_INFO, "%s Reset sync for validity %@, last state: %@, loaded last state? %d", buf, 0x26u);
  }

  [infoCopy resetWithValidity:@"CorrectionsProfiles-2.0"];
  allKeys = [(NSDictionary *)self->_correctionProfiles allKeys];
  v25 = [(NSMutableArray *)allKeys mutableCopy];
  v26 = self->_correctionProfileKeysToSync;
  self->_correctionProfileKeysToSync = v25;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
}

@end