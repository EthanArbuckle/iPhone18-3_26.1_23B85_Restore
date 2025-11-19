@interface KeychainWrapper
+ (id)keychainPasswordForMACAddress:(id)a3;
+ (id)keychainWrapperWithMACAddress:(id)a3;
+ (void)removeKeychainPasswordForMACAddress:(id)a3;
- (KeychainWrapper)initWithAccountName:(id)a3 serviceName:(id)a4;
- (id)genericPassword;
- (id)genericPasswordQuery;
- (id)getGenericPassword;
- (id)getPasswordFromQuery:(id)a3;
- (int)addGenericPassword:(id)a3 withLabel:(id)a4 andDescription:(id)a5;
- (void)dealloc;
- (void)removeGenericPassword;
@end

@implementation KeychainWrapper

+ (id)keychainWrapperWithMACAddress:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [KeychainWrapper alloc];
  v6 = sub_23EB6D320(a3, 0, v5);
  v7 = sub_23EB6CD3C(@"keychainBaseStationType", @"AirPortSettings");
  v9 = objc_msgSend_initWithAccountName_serviceName_(v4, v8, v6, v7);

  return v9;
}

- (KeychainWrapper)initWithAccountName:(id)a3 serviceName:(id)a4
{
  v13.receiver = self;
  v13.super_class = KeychainWrapper;
  v6 = [(KeychainWrapper *)&v13 init];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setAccountName_(v6, v7, a3);
    objc_msgSend_setServiceName_(v8, v9, a4);
    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    objc_msgSend_setLock_(v8, v11, v10);
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_setAccountName_(self, a2, 0);
  objc_msgSend_setServiceName_(self, v3, 0);
  objc_msgSend_setLock_(self, v4, 0);
  v5.receiver = self;
  v5.super_class = KeychainWrapper;
  [(KeychainWrapper *)&v5 dealloc];
}

+ (id)keychainPasswordForMACAddress:(id)a3
{
  if (!objc_msgSend_length(a3, a2, a3))
  {
    return 0;
  }

  v5 = objc_msgSend_keychainWrapperWithMACAddress_(KeychainWrapper, v4, a3);
  if (!v5)
  {
    return 0;
  }

  return MEMORY[0x2821F9670](v5, sel_genericPassword, v6);
}

+ (void)removeKeychainPasswordForMACAddress:(id)a3
{
  if (objc_msgSend_length(a3, a2, a3))
  {
    v5 = objc_msgSend_keychainWrapperWithMACAddress_(KeychainWrapper, v4, a3);
    if (v5)
    {

      objc_msgSend_removeGenericPassword(v5, v6, v7);
    }
  }
}

- (id)genericPasswordQuery
{
  result = objc_msgSend_accountName(self, a2, v2);
  if (result)
  {
    v7 = MEMORY[0x277CBEAC0];
    v8 = *MEMORY[0x277CDC238];
    v9 = *MEMORY[0x277CDC228];
    v10 = objc_msgSend_accountName(self, v5, v6);
    return objc_msgSend_dictionaryWithObjectsAndKeys_(v7, v11, v8, v9, v10, *MEMORY[0x277CDBF20], 0, @"sync", 0);
  }

  return result;
}

- (id)getPasswordFromQuery:(id)a3
{
  result = 0;
  if (!a3)
  {
    return 0;
  }

  v34 = 0;
  v12 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v34, "{%##O%kO=%O}", v3, v4, v5, v6, v7, a3);
  v13 = v34;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v34 == 0;
  }

  if (v14)
  {
    goto LABEL_17;
  }

  if (dword_27E383290 <= 800)
  {
    if (dword_27E383290 != -1 || (v15 = sub_23EB74AC8(&dword_27E383290, 0x320u), v13 = v34, v15))
    {
      sub_23EB75374(&dword_27E383290, "[KeychainWrapper getPasswordFromQuery:]", 800, "SecItemCopyMatching tempDict: %@\n", v8, v9, v10, v11, v13);
      v13 = v34;
    }
  }

  v22 = SecItemCopyMatching(v13, &result);
  if (v34)
  {
    CFRelease(v34);
    v34 = 0;
  }

  if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
  {
    sub_23EB75374(&dword_27E383290, "[KeychainWrapper getPasswordFromQuery:]", 800, "SecItemCopyMatching err: %#m\n", v18, v19, v20, v21, v22);
  }

  if (v22 == -25300)
  {
LABEL_17:
    v23 = 0;
  }

  else
  {
    v23 = 0;
    if (objc_msgSend_length(result, v16, v17) && !v22)
    {
      v25 = objc_alloc(MEMORY[0x277CCACA8]);
      v28 = objc_msgSend_bytes(result, v26, v27);
      v31 = objc_msgSend_length(result, v29, v30);
      v23 = objc_msgSend_initWithBytes_length_encoding_(v25, v32, v28, v31, 4);
    }
  }

  if (result)
  {
    CFRelease(result);
  }

  return v23;
}

- (id)getGenericPassword
{
  result = objc_msgSend_genericPasswordQuery(self, a2, v2);
  if (result)
  {

    return MEMORY[0x2821F9670](self, sel_getPasswordFromQuery_, result);
  }

  return result;
}

- (id)genericPassword
{
  v4 = objc_msgSend_lock(self, a2, v2);
  objc_msgSend_lock(v4, v5, v6);
  GenericPassword = objc_msgSend_getGenericPassword(self, v7, v8);
  v12 = objc_msgSend_lock(self, v10, v11);
  objc_msgSend_unlock(v12, v13, v14);
  return GenericPassword;
}

- (int)addGenericPassword:(id)a3 withLabel:(id)a4 andDescription:(id)a5
{
  cf = 0;
  v10 = objc_msgSend_genericPasswordQuery(self, a2, a3);
  if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
  {
    objc_msgSend_serviceName(self, v8, v9);
    objc_msgSend_accountName(self, v11, v12);
    sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "query: %@ self.serviceName: %@ self.accountName: %@\n", v13, v14, v15, v16, v10);
  }

  v17 = objc_msgSend_serviceName(self, v8, v9);
  if (objc_msgSend_length(v17, v18, v19))
  {
    v22 = objc_msgSend_accountName(self, v20, v21);
    LODWORD(v26) = 0;
    if (objc_msgSend_length(v22, v23, v24) && v10)
    {
      query = 0;
      v27 = objc_msgSend_dataUsingEncoding_(a3, v25, 4);
      if (v27)
      {
        v30 = v27;
        if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
        {
          v31 = objc_msgSend_length(v30, v28, v29);
          sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "data (length): %ld\n", v32, v33, v34, v35, v31);
        }

        v36 = objc_msgSend_lock(self, v28, v29);
        objc_msgSend_lock(v36, v37, v38);
        v39 = *MEMORY[0x277CBECE8];
        v45 = sub_23EB6F348(*MEMORY[0x277CBECE8], &query, "{%##O%kO=%O%kO=%O}", v40, v41, v42, v43, v44, v10);
        if (v45)
        {
          goto LABEL_14;
        }

        v56 = query;
        if (query)
        {
          if (dword_27E383290 <= 800)
          {
            if (dword_27E383290 != -1 || (v57 = sub_23EB74AC8(&dword_27E383290, 0x320u), v56 = query, v57))
            {
              sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "SecItemCopyMatching tempDict: %@\n", v48, v49, v50, v51, v56);
              v56 = query;
            }
          }

          v26 = SecItemCopyMatching(v56, &cf);
          if (query)
          {
            CFRelease(query);
            query = 0;
          }

          if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
          {
            sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "SecItemCopyMatching err: %#m\n", v60, v61, v62, v63, v26);
          }

          if (v26 == -25300)
          {
            LODWORD(v26) = 0;
          }

          if (cf)
          {
            v64 = *MEMORY[0x277CDC5E8];
            v65 = objc_msgSend_objectForKey_(cf, v58, *MEMORY[0x277CDC5E8]);
            if (objc_msgSend_isEqual_(v65, v66, v30))
            {
              v73 = objc_msgSend_objectForKey_(cf, v67, *MEMORY[0x277CDC080]);
              if (objc_msgSend_isEqual_(v73, v74, a4))
              {
                goto LABEL_15;
              }
            }

            v45 = sub_23EB6F348(v39, &query, "{%kO=%O%kO=%O}", v68, v69, v70, v71, v72, v64);
            if (v45)
            {
              goto LABEL_14;
            }

            v46 = query;
            if (query)
            {
              v26 = SecItemUpdate(v10, query);
              if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
              {
                sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "SecItemUpdate err: %#m\n", v75, v76, v77, v78, v26);
              }

LABEL_49:
              if (query)
              {
                CFRelease(query);
                query = 0;
              }

              goto LABEL_15;
            }
          }

          else
          {
            objc_msgSend_serviceName(self, v58, v59);
            v45 = sub_23EB6F348(v39, &query, "{%##O%kO=%O%kO=%O%kO=%O%kO=%O}", v79, v80, v81, v82, v83, v10);
            if (v45)
            {
LABEL_14:
              LODWORD(v26) = v45;
LABEL_15:
              v52 = objc_msgSend_lock(self, v46, v47);
              objc_msgSend_unlock(v52, v53, v54);
              goto LABEL_18;
            }

            if (query)
            {
              v26 = SecItemAdd(query, 0);
              if (dword_27E383290 <= 800 && (dword_27E383290 != -1 || sub_23EB74AC8(&dword_27E383290, 0x320u)))
              {
                sub_23EB75374(&dword_27E383290, "[KeychainWrapper addGenericPassword:withLabel:andDescription:]", 800, "SecItemAdd err: %#m\n", v84, v85, v86, v87, v26);
              }

              goto LABEL_49;
            }
          }
        }

        LODWORD(v26) = -6728;
        goto LABEL_15;
      }

      LODWORD(v26) = -6705;
    }
  }

  else
  {
    LODWORD(v26) = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

- (void)removeGenericPassword
{
  v4 = objc_msgSend_genericPasswordQuery(self, a2, v2);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_lock(self, v5, v6);
    objc_msgSend_lock(v8, v9, v10);
    SecItemDelete(v7);
    v13 = objc_msgSend_lock(self, v11, v12);

    objc_msgSend_unlock(v13, v14, v15);
  }
}

@end