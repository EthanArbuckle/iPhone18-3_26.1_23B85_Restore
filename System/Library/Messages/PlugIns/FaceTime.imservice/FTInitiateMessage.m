@interface FTInitiateMessage
- (FTInitiateMessage)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation FTInitiateMessage

- (FTInitiateMessage)init
{
  v9.receiver = self;
  v9.super_class = FTInitiateMessage;
  v2 = [(FTFaceTimeMessage *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_setTimeout_(v2, v3, v4, v5, v6, 35.0);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = FTInitiateMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTInitiateMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addObject_(v2, v3, @"self-push-token", v4, v5);
  objc_msgSend_addObject_(v2, v6, @"self-blob", v7, v8);
  objc_msgSend_addObject_(v2, v9, @"self-nat-ip", v10, v11);
  objc_msgSend_addObject_(v2, v12, @"self-nat-type", v13, v14);
  objc_msgSend_addObject_(v2, v15, @"peers", v16, v17);

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_sessionToken(self, v4, v5, v6, v7);
  if (v8)
  {
    CFDictionarySetValue(v3, @"session-token", v8);
  }

  v13 = objc_msgSend_regionInformation(self, v9, v10, v11, v12);
  if (v13)
  {
    CFDictionarySetValue(v3, @"service-data", v13);
  }

  v18 = objc_msgSend_clientInfo(self, v14, v15, v16, v17);
  if (v18)
  {
    CFDictionarySetValue(v3, @"client-data", v18);
  }

  v23 = objc_msgSend_selfPushToken(self, v19, v20, v21, v22);
  if (v23)
  {
    CFDictionarySetValue(v3, @"self-push-token", v23);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF934();
  }

  v28 = objc_msgSend_selfBlob(self, v24, v25, v26, v27);
  if (v28)
  {
    CFDictionarySetValue(v3, @"self-blob", v28);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFA44();
  }

  v33 = objc_msgSend_selfNatIP(self, v29, v30, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v3, @"self-nat-ip", v33);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFACC();
  }

  v38 = MEMORY[0x277CCABB0];
  v39 = objc_msgSend_selfNATType(self, v34, v35, v36, v37);
  v44 = objc_msgSend_intValue(v39, v40, v41, v42, v43);
  v48 = objc_msgSend_numberWithInt_(v38, v45, v44, v46, v47);
  if (v48)
  {
    CFDictionarySetValue(v3, @"self-nat-type", v48);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF9BC();
  }

  v53 = objc_msgSend_peers(self, v49, v50, v51, v52);
  if (v53)
  {
    CFDictionarySetValue(v3, @"peers", v53);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFF34();
  }

  v58 = objc_msgSend_pushTokensToExclude(self, v54, v55, v56, v57);
  if (v58)
  {
    CFDictionarySetValue(v3, @"exclude-peers", v58);
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v7 = objc_msgSend_objectForKey_(a3, a2, @"session-token", v3, v4);
  if (v7)
  {
    objc_msgSend_setSessionToken_(self, v8, v7, v9, v10);
  }

  v11 = objc_msgSend_objectForKey_(a3, v8, @"peers", v9, v10);
  if (v11)
  {
    objc_msgSend_setCanonicalizedPeers_(self, v12, v11, v13, v14);
  }

  v15 = objc_msgSend_objectForKey_(a3, v12, @"alert", v13, v14);

  MEMORY[0x2821F9670](self, sel_setResponseAlertInfo_, v15, v16, v17);
}

@end