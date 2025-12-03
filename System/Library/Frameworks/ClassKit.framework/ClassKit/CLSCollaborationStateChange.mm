@interface CLSCollaborationStateChange
- (BOOL)_addStateForDomain:(int64_t)domain domainVersion:(int64_t)version state:(int64_t)state flags:(unint64_t)flags note:(id)note assetURL:(id)l assets:(id)assets;
- (BOOL)addStates:(id)states;
- (BOOL)addValidStates:(id)states;
- (BOOL)setAssetURL:(id)l forDomain:(int64_t)domain;
- (BOOL)setClassID:(id)d forDomain:(int64_t)domain;
- (BOOL)setDomainVersion:(int64_t)version forDomain:(int64_t)domain;
- (BOOL)setFlags:(unint64_t)flags forDomain:(int64_t)domain;
- (BOOL)setInfoValue:(id)value forKey:(id)key forDomain:(int64_t)domain;
- (BOOL)setNote:(id)note forDomain:(int64_t)domain;
- (BOOL)setState:(int64_t)state forDomain:(int64_t)domain;
- (BOOL)validateObject:(id *)object;
- (CLSCollaborationStateChange)initWithCoder:(id)coder;
- (CLSCollaborationStateChange)initWithObject:(id)object ownerPersonID:(id)d targetClassID:(id)iD recipientPersonID:(id)personID;
- (id)_init;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stateForDomain:(int64_t)domain;
- (void)encodeWithCoder:(id)coder;
- (void)mergeChangesFrom:(id)from;
- (void)mergeWithObject:(id)object;
- (void)removeStateForDomain:(int64_t)domain;
@end

@implementation CLSCollaborationStateChange

- (id)_init
{
  v8.receiver = self;
  v8.super_class = CLSCollaborationStateChange;
  _init = [(CLSObject *)&v8 _init];
  if (_init)
  {
    v3 = objc_opt_new();
    v4 = _init[19];
    _init[19] = v3;

    v5 = objc_opt_new();
    v6 = _init[20];
    _init[20] = v5;
  }

  return _init;
}

- (CLSCollaborationStateChange)initWithObject:(id)object ownerPersonID:(id)d targetClassID:(id)iD recipientPersonID:(id)personID
{
  objectCopy = object;
  dCopy = d;
  iDCopy = iD;
  personIDCopy = personID;
  v27.receiver = self;
  v27.super_class = CLSCollaborationStateChange;
  _init = [(CLSObject *)&v27 _init];
  if (_init)
  {
    v17 = objc_msgSend_objectID(objectCopy, v14, v15);
    targetObjectID = _init->_targetObjectID;
    _init->_targetObjectID = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    targetEntityName = _init->_targetEntityName;
    _init->_targetEntityName = v20;

    objc_storeStrong(&_init->_ownerPersonID, d);
    objc_storeStrong(&_init->_targetClassID, iD);
    objc_storeStrong(&_init->_recipientPersonID, personID);
    v22 = objc_opt_new();
    changedDomains = _init->_changedDomains;
    _init->_changedDomains = v22;

    v24 = objc_opt_new();
    states = _init->_states;
    _init->_states = v24;
  }

  return _init;
}

- (BOOL)validateObject:(id *)object
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = CLSCollaborationStateChange;
  if ([(CLSObject *)&v19 validateObject:?])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_states;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v20, 16);
    if (v7)
    {
      v9 = v7;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v5);
          }

          if (!objc_msgSend_validateObject_(*(*(&v15 + 1) + 8 * i), v8, object, v15))
          {
            v12 = 0;
            goto LABEL_13;
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v20, 16);
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_13:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (CLSCollaborationStateChange)initWithCoder:(id)coder
{
  v50[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = CLSCollaborationStateChange;
  v5 = [(CLSObject *)&v48 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"targetObjectID");
    targetObjectID = v5->_targetObjectID;
    v5->_targetObjectID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"targetEntityName");
    targetEntityName = v5->_targetEntityName;
    v5->_targetEntityName = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"ownerPersonID");
    ownerPersonID = v5->_ownerPersonID;
    v5->_ownerPersonID = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"senderPersonID");
    senderPersonID = v5->_senderPersonID;
    v5->_senderPersonID = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"targetClassID");
    targetClassID = v5->_targetClassID;
    v5->_targetClassID = v24;

    v26 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v27, v26, @"recipientPersonID");
    recipientPersonID = v5->_recipientPersonID;
    v5->_recipientPersonID = v28;

    v30 = MEMORY[0x277CBEB98];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v50, 2);
    v34 = objc_msgSend_setWithArray_(v30, v33, v32);
    v36 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v35, v34, @"changedDomains");
    changedDomains = v5->_changedDomains;
    v5->_changedDomains = v36;

    v38 = MEMORY[0x277CBEB98];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v49, 2);
    v42 = objc_msgSend_setWithArray_(v38, v41, v40);
    v44 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v43, v42, @"states");
    states = v5->_states;
    v5->_states = v44;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CLSCollaborationStateChange;
  [(CLSObject *)&v14 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_targetObjectID, @"targetObjectID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_targetEntityName, @"targetEntityName");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_ownerPersonID, @"ownerPersonID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_senderPersonID, @"senderPersonID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_targetClassID, @"targetClassID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, self->_changedDomains, @"changedDomains");
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_states, @"states");
  recipientPersonID = self->_recipientPersonID;
  if (recipientPersonID)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v12, recipientPersonID, @"recipientPersonID");
  }
}

- (void)mergeWithObject:(id)object
{
  v23[8] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = CLSCollaborationStateChange;
  [(CLSObject *)&v21 mergeWithObject:objectCopy];
  v23[0] = @"targetObjectID";
  v23[1] = @"targetEntityName";
  v23[2] = @"ownerPersonID";
  v23[3] = @"senderPersonID";
  v23[4] = @"recipientPersonID";
  v23[5] = @"targetClassID";
  v23[6] = @"changedDomains";
  v23[7] = @"states";
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v23, 8);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v22, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = objc_msgSend_valueForKey_(objectCopy, v9, v13, v17);
        objc_msgSend_setValue_forKey_(self, v15, v14, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v17, v22, 16);
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)stateForDomain:(int64_t)domain
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_states;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_domain(v12, v7, v8, v16) == domain)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)addValidStates:(id)states
{
  v65 = *MEMORY[0x277D85DE8];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = states;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v60, v64, 16);
  if (!v7)
  {
    LOBYTE(v12) = 1;
    goto LABEL_51;
  }

  v10 = v7;
  v11 = *v61;
  v12 = 1;
  v49 = *v61;
  do
  {
    v13 = 0;
    do
    {
      if (*v61 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v60 + 1) + 8 * v13);
      v17 = objc_msgSend_parentObjectID(v14, v8, v9);
      if (!v17)
      {
        v57 = objc_msgSend_targetObjectID(self, v15, v16);
        if (!v57)
        {
          v56 = v4;
          v57 = 0;
          v55 = 0;
          goto LABEL_17;
        }
      }

      v3 = objc_msgSend_parentObjectID(v14, v15, v16);
      if (!v3)
      {
        v58 = 0;
        goto LABEL_38;
      }

      v5 = objc_msgSend_targetObjectID(self, v18, v19);
      if (v5)
      {
        v4 = objc_msgSend_parentObjectID(v14, v20, v21);
        v24 = objc_msgSend_targetObjectID(self, v22, v23);
        v52 = v24;
        if (objc_msgSend_isEqualToString_(v4, v25, v24))
        {
          v56 = v4;
          v55 = 1;
LABEL_17:
          v28 = objc_msgSend_ownerPersonID(v14, v15, v16);
          v58 = v3;
          if (!v28)
          {
            v51 = objc_msgSend_ownerPersonID(self, v26, v27);
            if (!v51)
            {
              v51 = 0;
              LODWORD(v3) = 1;

              goto LABEL_36;
            }
          }

          v53 = v5;
          v29 = v10;
          v30 = objc_msgSend_ownerPersonID(v14, v26, v27);
          if (v30)
          {
            v33 = v30;
            v34 = objc_msgSend_ownerPersonID(self, v31, v32);
            if (v34)
            {
              v37 = v34;
              v50 = v12;
              v38 = objc_msgSend_ownerPersonID(v14, v35, v36);
              v41 = objc_msgSend_ownerPersonID(self, v39, v40);
              LODWORD(v3) = objc_msgSend_isEqualToString_(v38, v42, v41);

              if (v28)
              {
                v11 = v49;
                v10 = v29;
                v12 = v50;
LABEL_30:

                v5 = v53;
                goto LABEL_36;
              }

              v11 = v49;
              v10 = v29;
              v5 = v53;
              v12 = v50;
              goto LABEL_35;
            }

            LODWORD(v3) = 0;
            if (v28)
            {
              v11 = v49;
              goto LABEL_29;
            }

            v11 = v49;
          }

          else
          {
            LODWORD(v3) = 0;
            if (v28)
            {
LABEL_29:
              v10 = v29;
              goto LABEL_30;
            }
          }

          v10 = v29;
          v5 = v53;
LABEL_35:

LABEL_36:
          v4 = v56;
          if (v55)
          {
          }

LABEL_38:
          if (v17)
          {

            if (!v3)
            {
              goto LABEL_43;
            }
          }

          else
          {

            if ((v3 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          v43 = objc_msgSend_domain(v14, v8, v9);
          v45 = objc_msgSend_stateForDomain_(self, v44, v43);

          if (!v45)
          {
            objc_msgSend_addObject_(self->_states, v8, v14);
            goto LABEL_44;
          }

LABEL_43:
          v12 = 0;
LABEL_44:
          v3 = v58;
          goto LABEL_45;
        }
      }

      if (v17)
      {
      }

      else
      {
      }

      v12 = 0;
LABEL_45:
      ++v13;
    }

    while (v10 != v13);
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v60, v64, 16);
    v10 = v46;
  }

  while (v46);
LABEL_51:

  v47 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (void)mergeChangesFrom:(id)from
{
  v35 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = objc_msgSend_changedDomains(fromCopy, v5, v6, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v29, v34, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v30;
      do
      {
        v15 = 0;
        do
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = objc_msgSend_integerValue(*(*(&v29 + 1) + 8 * v15), v11, v12);
          v19 = objc_msgSend_stateForDomain_(v7, v17, v16);
          if (v19)
          {
            objc_msgSend_removeStateForDomain_(self, v18, v16);
            v33 = v19;
            v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, &v33, 1);
            valid = objc_msgSend_addValidStates_(self, v22, v21);

            if (valid)
            {
              changedDomains = self->_changedDomains;
              v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, v16);
              objc_msgSend_addObject_(changedDomains, v27, v26);
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v29, v34, 16);
      }

      while (v13);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)addStates:(id)states
{
  selfCopy = self;
  states = self->_states;
  statesCopy = states;
  objc_msgSend_removeAllObjects(states, v6, v7);
  objc_msgSend_removeAllObjects(selfCopy->_changedDomains, v8, v9);
  LOBYTE(selfCopy) = objc_msgSend_addValidStates_(selfCopy, v10, statesCopy);

  return selfCopy;
}

- (BOOL)_addStateForDomain:(int64_t)domain domainVersion:(int64_t)version state:(int64_t)state flags:(unint64_t)flags note:(id)note assetURL:(id)l assets:(id)assets
{
  v63 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  lCopy = l;
  assetsCopy = assets;
  v19 = objc_msgSend_stateForDomain_(self, v18, domain);

  if (!v19)
  {
    versionCopy = version;
    v20 = [CLSCollaborationState alloc];
    targetObjectID = self->_targetObjectID;
    v22 = NSClassFromString(self->_targetEntityName);
    v24 = objc_msgSend_initForObjectWithID_targetClass_ownerPersonID_domain_state_flags_(v20, v23, targetObjectID, v22, self->_ownerPersonID, domain, state, flags);
    objc_msgSend_setDomainVersion_(v24, v25, versionCopy);
    v57 = noteCopy;
    objc_msgSend_setNote_(v24, v26, noteCopy);
    v55 = lCopy;
    objc_msgSend_setAssetURL_(v24, v27, lCopy);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v28 = assetsCopy;
    v29 = assetsCopy;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v58, v62, 16);
    if (v31)
    {
      v34 = v31;
      v35 = *v59;
      do
      {
        v36 = 0;
        do
        {
          if (*v59 != v35)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(*(&v58 + 1) + 8 * v36);
          v38 = objc_msgSend_assetsToAddOrUpdate(v24, v32, v33);
          objc_msgSend_addObject_(v38, v39, v37);

          ++v36;
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v58, v62, 16);
      }

      while (v34);
    }

    v42 = objc_msgSend_targetClassID(self, v40, v41);
    objc_msgSend_setClassID_(v24, v43, v42);

    objc_msgSend_addObject_(self->_states, v44, v24);
    changedDomains = self->_changedDomains;
    v46 = MEMORY[0x277CCABB0];
    v49 = objc_msgSend_domain(v24, v47, v48);
    v51 = objc_msgSend_numberWithInteger_(v46, v50, v49);
    objc_msgSend_addObject_(changedDomains, v52, v51);

    lCopy = v55;
    noteCopy = v57;
    assetsCopy = v28;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (void)removeStateForDomain:(int64_t)domain
{
  v9 = objc_msgSend_stateForDomain_(self, a2, domain);
  if (v9)
  {
    objc_msgSend_removeObject_(self->_states, v5, v9);
  }

  changedDomains = self->_changedDomains;
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, domain);
  objc_msgSend_removeObject_(changedDomains, v8, v7);
}

- (BOOL)setDomainVersion:(int64_t)version forDomain:(int64_t)domain
{
  v9 = objc_msgSend_stateForDomain_(self, a2, domain);
  if (v9)
  {
    objc_msgSend_lock(self, v7, v8);
    if (objc_msgSend_domainVersion(v9, v10, v11) != version)
    {
      objc_msgSend_setDomainVersion_(v9, v12, version);
      objc_msgSend_setModified_(self, v14, 1);
    }

    objc_msgSend_unlock(self, v12, v13);
    objc_msgSend_lock(self, v15, v16);
    v19 = objc_msgSend_date(MEMORY[0x277CBEAA8], v17, v18);
    v22 = objc_msgSend_dateLastModified(v9, v20, v21);
    if (!(v22 | v19))
    {
      goto LABEL_11;
    }

    v25 = v22;
    v26 = objc_msgSend_dateLastModified(v9, v23, v24);
    v29 = v26;
    if (v26 && v19)
    {
      v30 = objc_msgSend_dateLastModified(v9, v27, v28);
      isEqualToDate = objc_msgSend_isEqualToDate_(v30, v31, v19);

      if (isEqualToDate)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    objc_msgSend_setDateLastModified_(v9, v23, v19);
    objc_msgSend_setModified_(self, v33, 1);
LABEL_11:
    objc_msgSend_unlock(self, v23, v24);

    changedDomains = self->_changedDomains;
    v36 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, domain);
    objc_msgSend_addObject_(changedDomains, v37, v36);
  }

  return v9 != 0;
}

- (BOOL)setState:(int64_t)state forDomain:(int64_t)domain
{
  v9 = objc_msgSend_stateForDomain_(self, a2, domain);
  if (v9)
  {
    objc_msgSend_lock(self, v7, v8);
    if (objc_msgSend_state(v9, v10, v11) != state)
    {
      objc_msgSend_setState_(v9, v12, state);
      objc_msgSend_setModified_(self, v14, 1);
    }

    objc_msgSend_unlock(self, v12, v13);
    objc_msgSend_lock(self, v15, v16);
    v19 = objc_msgSend_date(MEMORY[0x277CBEAA8], v17, v18);
    v22 = objc_msgSend_dateLastModified(v9, v20, v21);
    if (!(v22 | v19))
    {
      goto LABEL_11;
    }

    v25 = v22;
    v26 = objc_msgSend_dateLastModified(v9, v23, v24);
    v29 = v26;
    if (v26 && v19)
    {
      v30 = objc_msgSend_dateLastModified(v9, v27, v28);
      isEqualToDate = objc_msgSend_isEqualToDate_(v30, v31, v19);

      if (isEqualToDate)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    objc_msgSend_setDateLastModified_(v9, v23, v19);
    objc_msgSend_setModified_(self, v33, 1);
LABEL_11:
    objc_msgSend_unlock(self, v23, v24);

    changedDomains = self->_changedDomains;
    v36 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, domain);
    objc_msgSend_addObject_(changedDomains, v37, v36);
  }

  return v9 != 0;
}

- (BOOL)setFlags:(unint64_t)flags forDomain:(int64_t)domain
{
  v9 = objc_msgSend_stateForDomain_(self, a2, domain);
  if (v9)
  {
    objc_msgSend_lock(self, v7, v8);
    if (objc_msgSend_flags(v9, v10, v11) != flags)
    {
      objc_msgSend_setFlags_(v9, v12, flags);
      objc_msgSend_setModified_(self, v14, 1);
    }

    objc_msgSend_unlock(self, v12, v13);
    objc_msgSend_lock(self, v15, v16);
    v19 = objc_msgSend_date(MEMORY[0x277CBEAA8], v17, v18);
    v22 = objc_msgSend_dateLastModified(v9, v20, v21);
    if (!(v22 | v19))
    {
      goto LABEL_11;
    }

    v25 = v22;
    v26 = objc_msgSend_dateLastModified(v9, v23, v24);
    v29 = v26;
    if (v26 && v19)
    {
      v30 = objc_msgSend_dateLastModified(v9, v27, v28);
      isEqualToDate = objc_msgSend_isEqualToDate_(v30, v31, v19);

      if (isEqualToDate)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    objc_msgSend_setDateLastModified_(v9, v23, v19);
    objc_msgSend_setModified_(self, v33, 1);
LABEL_11:
    objc_msgSend_unlock(self, v23, v24);

    changedDomains = self->_changedDomains;
    v36 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, domain);
    objc_msgSend_addObject_(changedDomains, v37, v36);
  }

  return v9 != 0;
}

- (BOOL)setClassID:(id)d forDomain:(int64_t)domain
{
  dCopy = d;
  v10 = objc_msgSend_stateForDomain_(self, v7, domain);
  if (v10)
  {
    objc_msgSend_lock(self, v8, v9);
    v11 = dCopy;
    v14 = objc_msgSend_classID(v10, v12, v13);
    if (!(v11 | v14))
    {
      goto LABEL_9;
    }

    v17 = v14;
    v18 = objc_msgSend_classID(v10, v15, v16);
    v21 = v18;
    if (v11 && v18)
    {
      v22 = objc_msgSend_classID(v10, v19, v20);
      isEqualToString = objc_msgSend_isEqualToString_(v22, v23, v11);

      if (isEqualToString)
      {
LABEL_9:
        objc_msgSend_unlock(self, v15, v16);

        objc_msgSend_lock(self, v26, v27);
        v30 = objc_msgSend_date(MEMORY[0x277CBEAA8], v28, v29);
        v33 = objc_msgSend_dateLastModified(v10, v31, v32);
        if (v33 | v30)
        {
          v36 = v33;
          v37 = objc_msgSend_dateLastModified(v10, v34, v35);
          v40 = v37;
          if (v37 && v30)
          {
            v41 = objc_msgSend_dateLastModified(v10, v38, v39);
            isEqualToDate = objc_msgSend_isEqualToDate_(v41, v42, v30);

            if (isEqualToDate)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }

          objc_msgSend_setDateLastModified_(v10, v34, v30);
          objc_msgSend_setModified_(self, v44, 1);
        }

LABEL_16:
        objc_msgSend_unlock(self, v34, v35);

        changedDomains = self->_changedDomains;
        v47 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v46, domain);
        objc_msgSend_addObject_(changedDomains, v48, v47);

        goto LABEL_17;
      }
    }

    else
    {
    }

    objc_msgSend_setClassID_(v10, v15, v11);
    objc_msgSend_setModified_(self, v25, 1);
    goto LABEL_9;
  }

LABEL_17:

  return v10 != 0;
}

- (BOOL)setNote:(id)note forDomain:(int64_t)domain
{
  noteCopy = note;
  v10 = objc_msgSend_stateForDomain_(self, v7, domain);
  if (v10)
  {
    objc_msgSend_lock(self, v8, v9);
    v11 = noteCopy;
    v14 = objc_msgSend_note(v10, v12, v13);
    if (!(v11 | v14))
    {
      goto LABEL_9;
    }

    v17 = v14;
    v18 = objc_msgSend_note(v10, v15, v16);
    v21 = v18;
    if (v11 && v18)
    {
      v22 = objc_msgSend_note(v10, v19, v20);
      isEqualToString = objc_msgSend_isEqualToString_(v22, v23, v11);

      if (isEqualToString)
      {
LABEL_9:
        objc_msgSend_unlock(self, v15, v16);

        objc_msgSend_lock(self, v26, v27);
        v30 = objc_msgSend_date(MEMORY[0x277CBEAA8], v28, v29);
        v33 = objc_msgSend_dateLastModified(v10, v31, v32);
        if (v33 | v30)
        {
          v36 = v33;
          v37 = objc_msgSend_dateLastModified(v10, v34, v35);
          v40 = v37;
          if (v37 && v30)
          {
            v41 = objc_msgSend_dateLastModified(v10, v38, v39);
            isEqualToDate = objc_msgSend_isEqualToDate_(v41, v42, v30);

            if (isEqualToDate)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }

          objc_msgSend_setDateLastModified_(v10, v34, v30);
          objc_msgSend_setModified_(self, v44, 1);
        }

LABEL_16:
        objc_msgSend_unlock(self, v34, v35);

        changedDomains = self->_changedDomains;
        v47 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v46, domain);
        objc_msgSend_addObject_(changedDomains, v48, v47);

        goto LABEL_17;
      }
    }

    else
    {
    }

    objc_msgSend_setNote_(v10, v15, v11);
    objc_msgSend_setModified_(self, v25, 1);
    goto LABEL_9;
  }

LABEL_17:

  return v10 != 0;
}

- (BOOL)setAssetURL:(id)l forDomain:(int64_t)domain
{
  lCopy = l;
  v10 = objc_msgSend_stateForDomain_(self, v7, domain);
  if (v10)
  {
    objc_msgSend_lock(self, v8, v9);
    v11 = lCopy;
    v14 = objc_msgSend_assetURL(v10, v12, v13);
    if (!(v11 | v14))
    {
      goto LABEL_9;
    }

    v17 = v14;
    v18 = objc_msgSend_assetURL(v10, v15, v16);
    v21 = v18;
    if (v11 && v18)
    {
      v22 = objc_msgSend_assetURL(v10, v19, v20);
      v25 = objc_msgSend_absoluteString(v22, v23, v24);
      v28 = objc_msgSend_absoluteString(v11, v26, v27);
      v55 = objc_msgSend_caseInsensitiveCompare_(v25, v29, v28);

      if (!v55)
      {
LABEL_9:
        objc_msgSend_unlock(self, v15, v16);

        objc_msgSend_lock(self, v31, v32);
        v35 = objc_msgSend_date(MEMORY[0x277CBEAA8], v33, v34);
        v38 = objc_msgSend_dateLastModified(v10, v36, v37);
        if (v38 | v35)
        {
          v41 = v38;
          v42 = objc_msgSend_dateLastModified(v10, v39, v40);
          v45 = v42;
          if (v42 && v35)
          {
            v46 = objc_msgSend_dateLastModified(v10, v43, v44);
            isEqualToDate = objc_msgSend_isEqualToDate_(v46, v47, v35);

            if (isEqualToDate)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }

          objc_msgSend_setDateLastModified_(v10, v39, v35);
          objc_msgSend_setModified_(self, v49, 1);
        }

LABEL_16:
        objc_msgSend_unlock(self, v39, v40);

        changedDomains = self->_changedDomains;
        v52 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v51, domain);
        objc_msgSend_addObject_(changedDomains, v53, v52);

        goto LABEL_17;
      }
    }

    else
    {
    }

    objc_msgSend_setAssetURL_(v10, v15, v11);
    objc_msgSend_setModified_(self, v30, 1);
    goto LABEL_9;
  }

LABEL_17:

  return v10 != 0;
}

- (BOOL)setInfoValue:(id)value forKey:(id)key forDomain:(int64_t)domain
{
  v38[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  v11 = objc_msgSend_stateForDomain_(self, v10, domain);
  v14 = v11;
  if (v11)
  {
    v15 = objc_msgSend_info(v11, v12, v13);

    if (v15)
    {
      v18 = objc_msgSend_info(v14, v16, v17);
      v21 = objc_msgSend_mutableCopy(v18, v19, v20);

      if (valueCopy)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v21, v22, valueCopy, keyCopy);
      }

      else
      {
        v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v22, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v21, v28, v27, keyCopy);
      }

      v29 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v24, v21);
      objc_msgSend_setInfo_(v14, v30, v29);

      goto LABEL_10;
    }

    if (valueCopy)
    {
      v37 = keyCopy;
      v38[0] = valueCopy;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v38, &v37, 1);
      objc_msgSend_setInfo_(v14, v25, v21);
LABEL_10:

      changedDomains = self->_changedDomains;
      v33 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v32, domain);
      objc_msgSend_addObject_(changedDomains, v34, v33);

      v26 = 1;
      goto LABEL_11;
    }
  }

  v26 = 0;
LABEL_11:

  v35 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = CLSCollaborationStateChange;
  v3 = [(CLSObject *)&v16 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_appendFormat_(v6, v7, @" (targetObjectID: %@)", self->_targetObjectID);
  objc_msgSend_appendFormat_(v6, v8, @" (targetEntityName: %@)", self->_targetEntityName);
  objc_msgSend_appendFormat_(v6, v9, @" (ownerPersonID: %@)", self->_ownerPersonID);
  objc_msgSend_appendFormat_(v6, v10, @" (senderPersonID: %@)", self->_senderPersonID);
  objc_msgSend_appendFormat_(v6, v11, @" (targetClassID: %@)", self->_targetClassID);
  objc_msgSend_appendFormat_(v6, v12, @" (changedDomains: %@)", self->_changedDomains);
  objc_msgSend_appendFormat_(v6, v13, @" (states: %@)", self->_states);
  if (self->_recipientPersonID)
  {
    objc_msgSend_appendFormat_(v6, v14, @" (recipientPersonID: %@)", self->_recipientPersonID);
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v14.receiver = self;
  v14.super_class = CLSCollaborationStateChange;
  dictionaryRepresentation = [(CLSObject *)&v14 dictionaryRepresentation];
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v4, self->_targetObjectID, @"targetObjectID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v5, self->_targetEntityName, @"targetEntityName");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v6, self->_ownerPersonID, @"ownerPersonID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v7, self->_senderPersonID, @"senderPersonID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v8, self->_targetClassID, @"targetClassID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v9, self->_changedDomains, @"changedDomains");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v10, self->_states, @"states");
  recipientPersonID = self->_recipientPersonID;
  if (recipientPersonID)
  {
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v11, recipientPersonID, @"recipientPersonID");
  }

  return dictionaryRepresentation;
}

@end