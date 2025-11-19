@interface CLSContextProviderExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)getMainAppContextPathWithCompletion:(id)a3;
- (void)updateDescendantsOfContext:(id)a3 completion:(id)a4;
- (void)updateDescendantsOfContextPath:(id)a3 completion:(id)a4;
@end

@implementation CLSContextProviderExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (qword_280B2A2E0 != -1)
  {
    dispatch_once(&qword_280B2A2E0, &unk_284A078A8);
  }

  v3 = qword_280B2A2E8;

  return v3;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_280B2A2F0 != -1)
  {
    dispatch_once(&qword_280B2A2F0, &unk_284A076A8);
  }

  v3 = qword_280B2A2F8;

  return v3;
}

- (void)getMainAppContextPathWithCompletion:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_shared(CLSDataStore, v4, v5);
  v10 = objc_msgSend_mainAppContext(v6, v7, v8);
  if (v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_236F9F910;
    v19[3] = &unk_278A182E0;
    v21 = v3;
    v20 = v10;
    objc_msgSend_saveWithCompletion_(v6, v11, v19);

    v12 = v21;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"Failed to create main app context path");
    v23[0] = v14;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v23, &v22, 1);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v17, @"com.apple.ClassKit", 100, v16);

    (*(v3 + 2))(v3, 0, v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateDescendantsOfContextPath:(id)a3 completion:(id)a4
{
  v63[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_shared(CLSDataStore, v8, v9);
  v13 = objc_msgSend_mainAppContext(v10, v11, v12);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_236F9FD78;
  v60 = sub_236F9FD88;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_236F9FD78;
  v54 = sub_236F9FD88;
  v55 = 0;
  if (!objc_msgSend_count(v6, v14, v15))
  {
    v29 = v57;
    v30 = v13;
    v20 = v29[5];
    v29[5] = v30;
    goto LABEL_12;
  }

  v20 = objc_msgSend_firstObject(v6, v16, v17);
  if (!v20)
  {
    v31 = objc_msgSend_identifier(v13, v18, v19);
    if (v31)
    {

      v20 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v23 = objc_msgSend_identifier(v13, v18, v19);
  if (v23)
  {
    v24 = objc_msgSend_identifier(v13, v21, v22);
    isEqualToString = objc_msgSend_isEqualToString_(v20, v25, v24);

    if (isEqualToString)
    {
LABEL_9:
      if (objc_msgSend_count(v6, v27, v28) == 1)
      {
        objc_storeStrong(v57 + 5, v13);
      }

      else
      {
        v32 = dispatch_block_create(0, &unk_284A076C8);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = sub_236F9FD94;
        v45[3] = &unk_278A18308;
        v48 = &v50;
        v46 = v6;
        v49 = &v56;
        v33 = v32;
        v47 = v33;
        objc_msgSend_contextsMatchingIdentifierPath_completion_(v10, v34, v46, v45);
        dispatch_block_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

LABEL_12:

  v36 = v57[5];
  if (v36)
  {
    objc_msgSend_updateDescendantsOfContext_completion_(self, v35, v36, v7);
  }

  else
  {
    if (!v51[5])
    {
      v37 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA450];
      v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"Invalid context path: %@", v6);
      v63[0] = v38;
      v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v63, &v62, 1);
      v42 = objc_msgSend_errorWithDomain_code_userInfo_(v37, v41, @"com.apple.ClassKit", 2, v40);
      v43 = v51[5];
      v51[5] = v42;
    }

    if (v7)
    {
      v7[2](v7, v51[5]);
    }
  }

  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  v44 = *MEMORY[0x277D85DE8];
}

- (void)updateDescendantsOfContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend__principalObject(self, v8, v9);
  objc_msgSend_updateDescendantsOfContext_completion_(v11, v10, v7, v6);
}

@end