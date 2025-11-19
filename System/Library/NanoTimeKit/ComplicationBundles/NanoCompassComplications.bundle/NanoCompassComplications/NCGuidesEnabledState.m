@interface NCGuidesEnabledState
+ (id)sharedInstance;
- (BOOL)isEnabledForGuideType:(int64_t)a3;
- (NCGuidesEnabledState)init;
- (id)NSStringFromNCGuideType:(int64_t)a3;
- (void)_lock_saveGuideEnabledStatesToDefaults;
- (void)_withLock:(id)a3;
- (void)setEnabled:(BOOL)a3 forGuideType:(int64_t)a4;
@end

@implementation NCGuidesEnabledState

+ (id)sharedInstance
{
  if (qword_27E1C4B68 != -1)
  {
    sub_23BD656E4();
  }

  v3 = qword_27E1C4B60;

  return v3;
}

- (id)NSStringFromNCGuideType:(int64_t)a3
{
  if (a3 < 4)
  {
    return off_278B940C8[a3];
  }

  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BD656F8(a3, v5);
  }

  return 0;
}

- (NCGuidesEnabledState)init
{
  v61 = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = NCGuidesEnabledState;
  v2 = [(NCGuidesEnabledState *)&v54 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    guideTypeName = v3->_guideTypeName;
    v3->_guideTypeName = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    globalGuideTypeEnabledStates = v3->_globalGuideTypeEnabledStates;
    v3->_globalGuideTypeEnabledStates = v6;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_284E8B0A0, v8, &v50, v60, 16);
    if (v9)
    {
      v13 = v9;
      v14 = *v51;
      v15 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(&unk_284E8B0A0);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          v18 = objc_msgSend_integerValue(v17, v10, v11, v12);
          v22 = objc_msgSend_NSStringFromNCGuideType_(v3, v19, v18, v20);
          if (v22)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v3->_guideTypeName, v21, v22, v17);
            objc_msgSend_setObject_forKeyedSubscript_(v3->_globalGuideTypeEnabledStates, v23, v15, v22);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_284E8B0A0, v10, &v50, v60, 16);
      }

      while (v13);
    }

    v24 = objc_alloc(MEMORY[0x277CBEBD0]);
    v27 = objc_msgSend_initWithSuiteName_(v24, v25, @"com.apple.compass", v26);
    v30 = objc_msgSend_dictionaryForKey_(v27, v28, @"GlobalGuideTypeEnabledStates", v29);
    v32 = v30;
    if (v30)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v46, v59, 16);
      if (v33)
      {
        v36 = v33;
        v37 = *v47;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v47 != v37)
            {
              objc_enumerationMutation(v32);
            }

            v39 = *(*(&v46 + 1) + 8 * j);
            v40 = v3->_globalGuideTypeEnabledStates;
            v41 = objc_msgSend_objectForKeyedSubscript_(v32, v34, v39, v35);
            objc_msgSend_setObject_forKey_(v40, v42, v41, v39);
          }

          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v46, v59, 16);
        }

        while (v36);
      }
    }

    v43 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v3->_globalGuideTypeEnabledStates;
      *buf = 136315394;
      v56 = "[NCGuidesEnabledState init]";
      v57 = 2112;
      v58 = v44;
      _os_log_impl(&dword_23BD26000, v43, OS_LOG_TYPE_DEFAULT, "%s: Initialized guide enabled states: %@", buf, 0x16u);
    }
  }

  return v3;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_saveGuideEnabledStatesToDefaults
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v10 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass", v5);
  objc_msgSend_setObject_forKey_(v10, v6, self->_globalGuideTypeEnabledStates, @"GlobalGuideTypeEnabledStates");
  objc_msgSend_synchronize(v10, v7, v8, v9);
}

- (void)setEnabled:(BOOL)a3 forGuideType:(int64_t)a4
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a4, a4);
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_guideTypeName, v7, v6, v8);
  v10 = v9;
  if (v9)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_23BD2DAB4;
    v16[3] = &unk_278B94080;
    v16[4] = self;
    v17 = v9;
    v18 = a3;
    objc_msgSend__withLock_(self, v11, v16, v12);
    objc_msgSend__backupEnabledStates(self, v13, v14, v15);
  }
}

- (BOOL)isEnabledForGuideType:(int64_t)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3, v3);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_guideTypeName, v6, v5, v7);
  v9 = v8;
  if (v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23BD2DC30;
    v14[3] = &unk_278B940A8;
    v14[4] = self;
    v15 = v8;
    v16 = &v17;
    objc_msgSend__withLock_(self, v10, v14, v11);
  }

  v12 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v12;
}

@end