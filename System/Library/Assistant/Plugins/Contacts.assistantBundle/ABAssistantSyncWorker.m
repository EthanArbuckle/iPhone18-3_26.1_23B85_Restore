@interface ABAssistantSyncWorker
- (ABAssistantSyncDelegate)delegate;
- (ABAssistantSyncWorker)initWithDelegate:(id)a3;
- (BOOL)validateKey:(id)a3;
- (id)_saDomainObjectWithReadactMeCard:(id)a3;
- (id)getCurrentValidity;
- (id)syncSnapshotForKey:(id)a3;
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6;
- (void)clearSyncCache;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)registerChangeHistoryClientIdentifier:(id)a3;
- (void)syncDidEnd;
- (void)unregisterChangeHistoryClientIdentifier:(id)a3;
@end

@implementation ABAssistantSyncWorker

- (ABAssistantSyncWorker)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ABAssistantSyncWorker;
  v5 = [(ABAssistantSyncWorker *)&v10 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDelegate_(v5, v6, v4);
    objc_msgSend_setSyncAvailable_(v7, v8, 1);
  }

  return v7;
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6
{
  v167 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CEF0D0];
  v15 = *MEMORY[0x277CEF0D0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v160 = "[ABAssistantSyncWorker beginSyncWithAnchor:validity:forKey:beginInfo:]";
    v161 = 2112;
    v162 = v10;
    v163 = 2112;
    v164 = v11;
    v165 = 2112;
    v166 = v12;
    _os_log_debug_impl(&dword_2334BB000, v15, OS_LOG_TYPE_DEBUG, "%s > beginSyncWithAnchor:%@ validity:%@ forKey:%@", buf, 0x2Au);
  }

  v18 = objc_msgSend_delegate(self, v16, v17);
  objc_msgSend_validateKey_(self, v19, v12);
  objc_msgSend_setChangeHistoryClientIdentifier_(v18, v20, v12);
  objc_msgSend_registerChangeHistoryClientIdentifier_(self, v21, v12);
  v25 = objc_msgSend_getCurrentValidity(self, v22, v23);
  if (v25)
  {
    v157 = v11;
    if ((objc_msgSend_isEqualToString_(v11, v24, v25) & 1) == 0)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C2F4C();
      }

      objc_msgSend_resetWithValidity_(v13, v28, v25);
      objc_msgSend_resetCurrentSyncSnapshot(v18, v29, v30);

      v10 = 0;
    }

    v31 = objc_msgSend_contactStore(v18, v26, v27);
    v158 = v10;
    v33 = objc_msgSend_anchorWithString_forContactStore_(ABAssistantSyncAnchor, v32, v10, v31);

    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      sub_2334C2FC8();
    }

    v36 = objc_msgSend_getLastClearedSyncAnchor(v18, v34, v35);
    if ((objc_msgSend_shouldFullSync(v33, v37, v38) & 1) == 0 && objc_msgSend_isOlderThanAnchor_(v33, v39, v36))
    {
      v41 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C3044(v41);
      }

      objc_msgSend_resetSync(v33, v42, v43);
    }

    if (objc_msgSend_shouldResetSync(v33, v39, v40) && objc_msgSend_hasContactsForFullSync(v18, v44, v45))
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C30E8();
      }

      objc_msgSend_resetWithValidity_(v13, v46, v25);
      objc_msgSend_resetCurrentSyncSnapshot(v18, v47, v48);
      objc_msgSend_unregisterChangeHistoryClientIdentifier_(self, v49, v12);
      objc_msgSend_registerChangeHistoryClientIdentifier_(self, v50, v12);
    }

    if (objc_msgSend_shouldClearChangeHistoryForPreviouslySyncedContacts(v33, v44, v45))
    {
      v53 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C3164(v53);
      }

      objc_msgSend_clearChangeHistoryToSyncAnchor_(v18, v54, v33);
    }

    v156 = v36;
    if (objc_msgSend_shouldFullSync(v33, v51, v52))
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C3208();
      }

      v154 = v13;
      if ((objc_msgSend_shouldResumePreviousFullSync(v33, v57, v58) & 1) == 0)
      {
        v61 = objc_msgSend_contactStore(v18, v59, v60);
        v64 = objc_msgSend_saveSequenceCount(v61, v62, v63);

        v66 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v65, v64);
        v69 = objc_msgSend_fullSyncSnapshotProperty(v18, v67, v68);
        objc_msgSend_saveValue_forKey_(ABAssistantSyncInfoPersistence, v70, v66, v69);

        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          sub_2334C3288();
        }

        objc_msgSend_resetCurrentSyncSnapshot(v18, v71, v72, v154, v156);
      }

      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C3310();
      }

      objc_msgSend_clearSyncCache(self, v73, v74, v154);
      v77 = objc_msgSend_contactsForFullSync(v18, v75, v76);
      objc_msgSend_setAllContacts_(self, v78, v77);

      v81 = objc_msgSend_allContacts(self, v79, v80);

      if (v81)
      {
        objc_msgSend_setSyncIndex_(self, v82, 0);
        v86 = objc_msgSend_allContacts(self, v84, v85);
        v89 = objc_msgSend_count(v86, v87, v88);
        objc_msgSend_setSyncCount_(self, v90, v89);

        v91 = *v14;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          sub_2334C3390(self, v91, v92);
        }

        if (objc_msgSend_shouldResumePreviousFullSync(v33, v93, v94))
        {
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
          {
            sub_2334C34A0();
          }

          while (1)
          {
            v97 = objc_msgSend_syncIndex(self, v95, v96);
            if (v97 >= objc_msgSend_syncCount(self, v98, v99))
            {
              break;
            }

            v102 = objc_msgSend_allContacts(self, v100, v101);
            v105 = objc_msgSend_syncIndex(self, v103, v104);
            v107 = objc_msgSend_objectAtIndexedSubscript_(v102, v106, v105);
            v110 = objc_msgSend_iOSLegacyIdentifier(v107, v108, v109);

            if (v110 > objc_msgSend_contactLegacyIdentifier(v33, v111, v112))
            {
              v118 = *v14;
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
              {
                sub_2334C35A0(v118, self, v110);
              }

              goto LABEL_49;
            }

            v115 = objc_msgSend_syncIndex(self, v113, v114);
            objc_msgSend_setSyncIndex_(self, v116, v115 + 1);
          }

          if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
          {
            sub_2334C3520();
          }
        }
      }

LABEL_49:
      v119 = objc_msgSend_allContacts(self, v82, v83);
      if (v119 && (v120 = v119, v121 = objc_msgSend_syncIndex(self, v55, v56), v124 = objc_msgSend_syncCount(self, v122, v123), v120, v121 != v124))
      {
        v117 = v33;
      }

      else
      {
        v125 = objc_msgSend_fullSyncSnapshotProperty(v18, v55, v56);
        v127 = objc_msgSend_valueForKey_(ABAssistantSyncInfoPersistence, v126, v125);
        v130 = objc_msgSend_intValue(v127, v128, v129);

        v131 = [ABAssistantSyncAnchor alloc];
        v134 = objc_msgSend_contactLegacyIdentifier(v33, v132, v133);
        v117 = objc_msgSend_initWithSequenceNumber_contactLegacyIdentifier_(v131, v135, v130, v134);

        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          sub_2334C3660();
        }
      }

      v10 = v158;
      v13 = v155;
    }

    else
    {
      v117 = v33;
      v10 = v158;
    }

    if (!objc_msgSend_syncCount(self, v55, v56))
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C36DC();
      }

      objc_msgSend_clearSyncCache(self, v136, v137);
      v139 = objc_msgSend_copyChangeHistoryAfterSyncAnchor_(v18, v138, v117);
      objc_msgSend_setContactsChanges_(self, v140, v139);

      v143 = objc_msgSend_contactsChanges(self, v141, v142);
      v146 = objc_msgSend_count(v143, v144, v145);
      objc_msgSend_setSyncCount_(self, v147, v146);

      v148 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C375C(v148);
      }

      if (!objc_msgSend_syncCount(self, v149, v150))
      {
        objc_msgSend_clearSyncCache(self, v151, v152);
      }
    }

    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      sub_2334C37F8();
    }

    v11 = v157;
  }

  else if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    sub_2334C3878();
  }

  v153 = *MEMORY[0x277D85DE8];
}

- (id)_saDomainObjectWithReadactMeCard:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_delegate(self, v5, v6);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v4;
  v11 = v9;
  v12 = v9;
  if (isKindOfClass)
  {
    v13 = MEMORY[0x277CFBC48];
    v25[0] = v9;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v25, 1);
    v17 = objc_msgSend_contactStore(v7, v15, v16);
    objc_msgSend_markMeContactInPeople_usingStore_(v13, v18, v14, v17);

    v21 = objc_msgSend_me(v11, v19, v20);

    v12 = v11;
    if (v21)
    {
      v22 = *MEMORY[0x277CEF0D0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
      {
        sub_2334C38F8(v22);
      }

      v12 = _AFRedactedCopyPerson();
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v197 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CEF0D0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    sub_2334C399C();
  }

  v11 = objc_msgSend_delegate(self, v9, v10);
  if (objc_msgSend_syncAvailable(self, v12, v13))
  {
    v16 = objc_msgSend_syncIndex(self, v14, v15);
    v186 = v6;
    if (v16 < objc_msgSend_syncCount(self, v17, v18))
    {
      v21 = objc_msgSend_allContacts(self, v19, v20);

      if (v21)
      {
        v24 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          sub_2334C3B18(v24, self);
        }

        while (1)
        {
          v27 = objc_msgSend_syncIndex(self, v25, v26);
          if (v27 >= objc_msgSend_syncCount(self, v28, v29))
          {
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
            {
              sub_2334C3BD0();
            }

            goto LABEL_44;
          }

          v32 = objc_msgSend_allContacts(self, v30, v31);
          v35 = objc_msgSend_syncIndex(self, v33, v34);
          v37 = objc_msgSend_objectAtIndexedSubscript_(v32, v36, v35);

          v39 = objc_msgSend_newSADomainObjectFromCNContact_(v11, v38, v37);
          v41 = objc_msgSend__saDomainObjectWithReadactMeCard_(self, v40, v39);
          objc_msgSend_setObject_(v7, v42, v41);

          v43 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
          {
            v82 = v43;
            v85 = objc_msgSend_object(v7, v83, v84);
            v88 = objc_msgSend_identifier(v85, v86, v87);
            v91 = objc_msgSend_postAnchor(v7, v89, v90);
            *buf = 136315650;
            v188 = "[ABAssistantSyncWorker getChangeAfterAnchor:changeInfo:]";
            v189 = 2112;
            v190 = v88;
            v191 = 2112;
            v192 = v91;
            _os_log_debug_impl(&dword_2334BB000, v82, OS_LOG_TYPE_DEBUG, "%s change sync found next contact to sync, changeInfo.object=%@, changeInfo.postAnchor=%@", buf, 0x20u);
          }

          v46 = objc_msgSend_syncIndex(self, v44, v45);
          if (v46 >= objc_msgSend_syncCount(self, v47, v48) - 1)
          {
            v64 = objc_msgSend_fullSyncSnapshotProperty(v11, v49, v50);
            v66 = objc_msgSend_valueForKey_(ABAssistantSyncInfoPersistence, v65, v64);
            v69 = objc_msgSend_intValue(v66, v67, v68);

            v72 = objc_msgSend_iOSLegacyIdentifier(v37, v70, v71);
            v74 = objc_msgSend_stringValueWithSequenceNumber_contactLegacyIdentifier_(ABAssistantSyncAnchor, v73, v69, v72);
            objc_msgSend_setPostAnchor_(v7, v75, v74);

            v76 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
            {
              v58 = v76;
              v61 = objc_msgSend_postAnchor(v7, v92, v93);
              *buf = 136315394;
              v188 = "[ABAssistantSyncWorker getChangeAfterAnchor:changeInfo:]";
              v189 = 2112;
              v190 = v61;
              v62 = v58;
              v63 = "%s full sync synthesizing end anchor, changeInfo.postAnchor = %@";
              goto LABEL_18;
            }
          }

          else
          {
            v51 = objc_msgSend_iOSLegacyIdentifier(v37, v49, v50);
            v53 = objc_msgSend_stringValueForFullSyncWithContactLegacyIdentifier_(ABAssistantSyncAnchor, v52, v51);
            objc_msgSend_setPostAnchor_(v7, v54, v53);

            v55 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
            {
              v58 = v55;
              v61 = objc_msgSend_postAnchor(v7, v59, v60);
              *buf = 136315394;
              v188 = "[ABAssistantSyncWorker getChangeAfterAnchor:changeInfo:]";
              v189 = 2112;
              v190 = v61;
              v62 = v58;
              v63 = "%s full sync record anchor, changeInfo.postAnchor = %@";
LABEL_18:
              _os_log_debug_impl(&dword_2334BB000, v62, OS_LOG_TYPE_DEBUG, v63, buf, 0x16u);
            }
          }

          v77 = objc_msgSend_object(v7, v56, v57);

          v80 = objc_msgSend_syncIndex(self, v78, v79);
          objc_msgSend_setSyncIndex_(self, v81, v80 + 1);

          if (v77)
          {
            goto LABEL_44;
          }
        }
      }

      v98 = objc_msgSend_contactsChanges(self, v22, v23);

      if (!v98)
      {
        goto LABEL_44;
      }

      v99 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        sub_2334C3C50(v99, self);
      }

      while (1)
      {
        v102 = objc_msgSend_syncIndex(self, v100, v101);
        if (v102 >= objc_msgSend_syncCount(self, v103, v104))
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
          {
            sub_2334C3D08();
          }

          goto LABEL_44;
        }

        v107 = objc_msgSend_contactsChanges(self, v105, v106);
        v110 = objc_msgSend_syncIndex(self, v108, v109);
        v112 = objc_msgSend_objectAtIndexedSubscript_(v107, v111, v110);

        v113 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          log = v113;
          v163 = objc_msgSend_syncIndex(self, v161, v162);
          v166 = objc_msgSend_contactIdentifier(v112, v164, v165);
          v169 = objc_msgSend_changeType(v112, v167, v168);
          v172 = objc_msgSend_changeAnchor(v112, v170, v171);
          v175 = objc_msgSend_sequenceNumber(v172, v173, v174);
          *buf = 136316162;
          v188 = "[ABAssistantSyncWorker getChangeAfterAnchor:changeInfo:]";
          v189 = 2048;
          v190 = v163;
          v191 = 2112;
          v192 = v166;
          v193 = 2048;
          v194 = v169;
          v195 = 2048;
          v196 = v175;
          _os_log_debug_impl(&dword_2334BB000, log, OS_LOG_TYPE_DEBUG, "%s self.syncIndex = %li, contactIdentifier = %@, changeType = %li, sequenceNumber = %li", buf, 0x34u);
        }

        v116 = objc_msgSend_changeType(v112, v114, v115);
        v120 = objc_msgSend_contactIdentifier(v112, v117, v118);
        if (v116 == 2)
        {
          v121 = objc_msgSend_newSADomainObjectFromDeletedContactIdentifier_(v11, v119, v120);
          v123 = objc_msgSend__saDomainObjectWithReadactMeCard_(self, v122, v121);
          objc_msgSend_setObject_(v7, v124, v123);

          objc_msgSend_setIsDelete_(v7, v125, 1);
          v126 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
          {
            v129 = v126;
            v132 = objc_msgSend_object(v7, v130, v131);
            v135 = objc_msgSend_identifier(v132, v133, v134);
            *buf = 136315394;
            v188 = "[ABAssistantSyncWorker getChangeAfterAnchor:changeInfo:]";
            v189 = 2112;
            v190 = v135;
            v136 = v129;
            v137 = "%s change sync found next contact to sync, changeInfo.isDelete=YES, changeInfo.object=%@";
LABEL_39:
            _os_log_debug_impl(&dword_2334BB000, v136, OS_LOG_TYPE_DEBUG, v137, buf, 0x16u);
          }
        }

        else
        {
          v138 = objc_msgSend_newSADomainObjectFromCNContactWithIdentifier_(v11, v119, v120);
          v140 = objc_msgSend__saDomainObjectWithReadactMeCard_(self, v139, v138);
          objc_msgSend_setObject_(v7, v141, v140);

          v142 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
          {
            v129 = v142;
            v132 = objc_msgSend_object(v7, v180, v181);
            v135 = objc_msgSend_identifier(v132, v182, v183);
            *buf = 136315394;
            v188 = "[ABAssistantSyncWorker getChangeAfterAnchor:changeInfo:]";
            v189 = 2112;
            v190 = v135;
            v136 = v129;
            v137 = "%s change sync found next contact to sync, changeInfo.object=%@";
            goto LABEL_39;
          }
        }

        v143 = objc_msgSend_changeAnchor(v112, v127, v128);
        v146 = objc_msgSend_sequenceNumber(v143, v144, v145);
        v149 = objc_msgSend_iOSLegacyIdentifier(v112, v147, v148);
        v151 = objc_msgSend_stringValueWithSequenceNumber_contactLegacyIdentifier_(ABAssistantSyncAnchor, v150, v146, v149);
        objc_msgSend_setPostAnchor_(v7, v152, v151);

        v153 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v176 = v153;
          v179 = objc_msgSend_postAnchor(v7, v177, v178);
          *buf = 136315394;
          v188 = "[ABAssistantSyncWorker getChangeAfterAnchor:changeInfo:]";
          v189 = 2112;
          v190 = v179;
          _os_log_debug_impl(&dword_2334BB000, v176, OS_LOG_TYPE_DEBUG, "%s change sync anchor, changeInfo.postAnchor = %@", buf, 0x16u);
        }

        v156 = objc_msgSend_object(v7, v154, v155);

        v159 = objc_msgSend_syncIndex(self, v157, v158);
        objc_msgSend_setSyncIndex_(self, v160, v159 + 1);

        if (v156)
        {
          goto LABEL_44;
        }
      }
    }

    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      sub_2334C3A98();
    }

    objc_msgSend_setPostAnchor_(v7, v94, v6);
    objc_msgSend_setObject_(v7, v95, 0);
    objc_msgSend_clearSyncCache(self, v96, v97);
LABEL_44:
    v6 = v186;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      sub_2334C3D88();
    }
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
  {
    sub_2334C3A18();
  }

  v184 = *MEMORY[0x277D85DE8];
}

- (void)syncDidEnd
{
  if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    sub_2334C3E08();
  }

  objc_msgSend_clearSyncCache(self, v3, v4);
}

- (id)syncSnapshotForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_delegate(self, v5, v6);
  objc_msgSend_setChangeHistoryClientIdentifier_(v7, v8, v4);
  v9 = objc_alloc_init(MEMORY[0x277CEF4C8]);
  v12 = objc_msgSend_getCurrentValidity(self, v10, v11);
  objc_msgSend_setValidity_(v9, v13, v12);

  v16 = objc_msgSend_currentSyncSnapshotCount(v7, v14, v15);
  objc_msgSend_setCount_(v9, v17, v16);
  v20 = objc_msgSend_currentSyncSnapshotAnchorString(v7, v18, v19);
  objc_msgSend_setAnchor_(v9, v21, v20);

  v22 = *MEMORY[0x277CEF0D0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    sub_2334C3E88(v4, v22, v9);
  }

  return v9;
}

- (void)clearSyncCache
{
  objc_msgSend_setSyncIndex_(self, a2, 0);
  objc_msgSend_setSyncCount_(self, v3, 0);
  objc_msgSend_setAllContacts_(self, v4, 0);

  objc_msgSend_setContactsChanges_(self, v5, 0);
}

- (id)getCurrentValidity
{
  v4 = objc_msgSend_delegate(self, a2, v2);
  v7 = objc_msgSend_contactStore(v4, v5, v6);
  v14 = 0;
  v9 = objc_msgSend_identifierWithError_(v7, v8, &v14);
  v10 = v14;

  if (v9)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%i %@", 16, v9);
  }

  else
  {
    if (v10)
    {
      objc_msgSend_setSyncAvailable_(self, v11, 0);
      if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
      {
        sub_2334C3F94();
      }
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)validateKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_delegate(self, v5, v6);
  v10 = objc_msgSend_expectedSyncKeyPrefix(v7, v8, v9);
  hasPrefix = objc_msgSend_hasPrefix_(v4, v11, v10);

  if ((hasPrefix & 1) == 0)
  {
    v13 = *MEMORY[0x277CEF0D0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
    {
      sub_2334C4010(v13);
    }

    v16 = MEMORY[0x277CBEAD8];
    v17 = objc_msgSend_expectedSyncKeyPrefix(v7, v14, v15);
    objc_msgSend_raise_format_(v16, v18, @"wrong key", @"expecting key prefix %@", v17);
  }

  return 1;
}

- (void)registerChangeHistoryClientIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_delegate(self, v5, v6);
  v10 = objc_msgSend_contactStore(v7, v8, v9);
  v14 = 0;
  objc_msgSend_registerChangeHistoryClientIdentifier_error_(v10, v11, v4, &v14);
  v12 = v14;

  if (v12)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
    {
      sub_2334C40B4();
    }

    objc_msgSend_setSyncAvailable_(self, v13, 0);
  }
}

- (void)unregisterChangeHistoryClientIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_delegate(self, v5, v6);
  v10 = objc_msgSend_contactStore(v7, v8, v9);
  v14 = 0;
  objc_msgSend_unregisterChangeHistoryClientIdentifier_error_(v10, v11, v4, &v14);
  v12 = v14;

  if (v12)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
    {
      sub_2334C4130();
    }

    objc_msgSend_setSyncAvailable_(self, v13, 0);
  }
}

- (ABAssistantSyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end