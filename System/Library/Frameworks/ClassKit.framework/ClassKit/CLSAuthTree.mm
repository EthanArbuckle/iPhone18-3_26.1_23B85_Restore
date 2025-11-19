@interface CLSAuthTree
- (CLSAuthTree)init;
- (CLSAuthTree)initWithCoder:(id)a3;
- (CLSAuthTree)initWithOverridingStatus:(int64_t)a3;
- (CLSAuthTree)initWithStatus:(int64_t)a3 statusID:(id)a4 identifier:(id)a5;
- (int64_t)authStatusAtIdentifierPath:(id)a3;
- (int64_t)authStatusFor:(id)a3;
- (void)_addNode:(id)a3 parentStatusID:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setAuthStatus:(int64_t)a3 forIdentifier:(id)a4 statusID:(id)a5 parentStatusID:(id)a6;
@end

@implementation CLSAuthTree

- (CLSAuthTree)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v8, @"The method [%@ %@] is not available.", v6, v7);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CLSAuthTree)initWithOverridingStatus:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = CLSAuthTree;
  v5 = [(CLSAuthTree *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v4, a3);
    overridingStatus = v5->_overridingStatus;
    v5->_overridingStatus = v6;
  }

  return v5;
}

- (CLSAuthTree)initWithStatus:(int64_t)a3 statusID:(id)a4 identifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = CLSAuthTree;
  v10 = [(CLSAuthTree *)&v18 init];
  if (v10)
  {
    v11 = objc_opt_new();
    graph = v10->_graph;
    v10->_graph = v11;

    v13 = [CLSAuthTreeNode alloc];
    v15 = objc_msgSend_initWithStatusID_identifier_status_(v13, v14, v8, v9, a3);
    objc_msgSend__addNode_parentStatusID_(v10, v16, v15, @"__ROOT__");
  }

  return v10;
}

- (CLSAuthTree)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CLSAuthTree;
  v5 = [(CLSAuthTree *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_initWithObjects_(v6, v11, v7, v8, v9, v10, 0);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v13, v12, @"graph");
    v17 = objc_msgSend_mutableCopy(v14, v15, v16);
    graph = v5->_graph;
    v5->_graph = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"overridingStatus");
    overridingStatus = v5->_overridingStatus;
    v5->_overridingStatus = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  graph = self->_graph;
  v7 = a3;
  objc_msgSend_encodeObject_forKey_(v7, v5, graph, @"graph");
  objc_msgSend_encodeObject_forKey_(v7, v6, self->_overridingStatus, @"overridingStatus");
}

- (void)setAuthStatus:(int64_t)a3 forIdentifier:(id)a4 statusID:(id)a5 parentStatusID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [CLSAuthTreeNode alloc];
  v16 = objc_msgSend_initWithStatusID_identifier_status_(v13, v14, v11, v12, a3);

  objc_msgSend__addNode_parentStatusID_(self, v15, v16, v10);
}

- (int64_t)authStatusAtIdentifierPath:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  overridingStatus = self->_overridingStatus;
  if (overridingStatus)
  {
    v8 = objc_msgSend_integerValue(overridingStatus, v4, v5);
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v39 = v6;
    obj = v6;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v50, v55, 16);
    if (v42)
    {
      v43 = *v51;
      v11 = @"__ROOT__";
      v41 = self;
      while (2)
      {
        v12 = 0;
        v13 = v11;
        do
        {
          if (*v51 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v44 = v12;
          v45 = v13;
          v14 = *(*(&v50 + 1) + 8 * v12);
          v15 = objc_msgSend_objectForKeyedSubscript_(self->_graph, v10, v13);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v16 = v15;
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v46, v54, 16);
          if (!v18)
          {
LABEL_28:

            v8 = 2;
            v11 = v45;
            goto LABEL_30;
          }

          v21 = v18;
          v22 = *v47;
LABEL_10:
          v23 = 0;
          while (1)
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(v16);
            }

            v24 = *(*(&v46 + 1) + 8 * v23);
            v25 = objc_msgSend_identifier(v24, v19, v20);
            if (!(v25 | v14))
            {
              break;
            }

            v26 = v25;
            v27 = objc_msgSend_identifier(v24, v19, v20);
            v30 = v27;
            if (v27)
            {
              v31 = v14 == 0;
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
            }

            else
            {
              v32 = objc_msgSend_identifier(v24, v28, v29);
              isEqualToString = objc_msgSend_isEqualToString_(v32, v33, v14);

              if (isEqualToString)
              {
                break;
              }
            }

            if (v21 == ++v23)
            {
              v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v46, v54, 16);
              if (v21)
              {
                goto LABEL_10;
              }

              goto LABEL_28;
            }
          }

          v8 = objc_msgSend_status(v24, v19, v20);
          v11 = objc_msgSend_statusID(v24, v35, v36);

          if ((v8 - 3) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_30;
          }

          v12 = v44 + 1;
          v13 = v11;
          self = v41;
        }

        while (v44 + 1 != v42);
        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v50, v55, 16);
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = @"__ROOT__";
      v8 = 2;
    }

LABEL_30:

    v6 = v39;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)authStatusFor:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  overridingStatus = self->_overridingStatus;
  if (overridingStatus)
  {
    v8 = objc_msgSend_integerValue(overridingStatus, v4, v5);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(self->_graph, v4, @"__ROOT__");
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v32 = 0u;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v29, v33, 16);
    if (v11)
    {
      v14 = v11;
      v15 = *v30;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = objc_msgSend_identifier(v17, v12, v13, v29);
          if (!(v6 | v18))
          {
LABEL_17:
            v8 = objc_msgSend_status(v17, v12, v13);
            goto LABEL_18;
          }

          v19 = v18;
          v20 = objc_msgSend_identifier(v17, v12, v13);
          v23 = v20;
          if (v6 && v20)
          {
            v24 = objc_msgSend_identifier(v17, v21, v22);
            isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v6);

            if (isEqualToString)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v29, v33, 16);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v8 = 2;
LABEL_18:
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_addNode:(id)a3 parentStatusID:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v7)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(self->_graph, v6, v7);
    if (!v9)
    {
      v9 = objc_opt_new();
      objc_msgSend_setObject_forKeyedSubscript_(self->_graph, v10, v9, v7);
    }

    objc_msgSend_addObject_(v9, v8, v11);
  }
}

@end