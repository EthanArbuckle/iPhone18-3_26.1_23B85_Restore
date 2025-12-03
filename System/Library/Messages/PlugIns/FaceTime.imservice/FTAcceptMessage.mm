@interface FTAcceptMessage
- (FTAcceptMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTAcceptMessage

- (FTAcceptMessage)init
{
  v9.receiver = self;
  v9.super_class = FTAcceptMessage;
  v2 = [(FTFaceTimeMessage *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_setTimeout_(v2, v3, v4, v5, v6, 60.0);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTAcceptMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTAcceptMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v36.receiver = self;
  v36.super_class = FTAcceptMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v36 requiredKeys];
  v10 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v6);
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  objc_msgSend_addObject_(v10, v7, @"self-push-token", v8, v9);
  objc_msgSend_addObject_(v10, v11, @"self-nat-type", v12, v13);
  objc_msgSend_addObject_(v10, v14, @"self-blob", v15, v16);
  objc_msgSend_addObject_(v10, v17, @"self-nat-ip", v18, v19);
  objc_msgSend_addObject_(v10, v20, @"peer-id", v21, v22);
  objc_msgSend_addObject_(v10, v23, @"peer-push-token", v24, v25);
  objc_msgSend_addObject_(v10, v26, @"peer-nat-type", v27, v28);
  objc_msgSend_addObject_(v10, v29, @"peer-blob", v30, v31);
  objc_msgSend_addObject_(v10, v32, @"peer-nat-ip", v33, v34);
  return v10;
}

- (id)messageBody
{
  v75.receiver = self;
  v75.super_class = FTAcceptMessage;
  messageBody = [(FTFaceTimeMessage *)&v75 messageBody];
  v8 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v7);
  v13 = objc_msgSend_selfPushToken(self, v9, v10, v11, v12);
  if (v13)
  {
    CFDictionarySetValue(v8, @"self-push-token", v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF934();
  }

  v18 = MEMORY[0x277CCABB0];
  v19 = objc_msgSend_selfNATType(self, v14, v15, v16, v17);
  v24 = objc_msgSend_intValue(v19, v20, v21, v22, v23);
  v28 = objc_msgSend_numberWithInt_(v18, v25, v24, v26, v27);
  if (v28)
  {
    CFDictionarySetValue(v8, @"self-nat-type", v28);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF9BC();
  }

  v33 = objc_msgSend_selfBlob(self, v29, v30, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v8, @"self-blob", v33);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFA44();
  }

  v38 = objc_msgSend_selfNATIP(self, v34, v35, v36, v37);
  if (v38)
  {
    CFDictionarySetValue(v8, @"self-nat-ip", v38);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFACC();
  }

  v43 = objc_msgSend_peerID(self, v39, v40, v41, v42);
  if (v43)
  {
    CFDictionarySetValue(v8, @"peer-id", v43);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
  }

  v48 = objc_msgSend_peerPushToken(self, v44, v45, v46, v47);
  if (v48)
  {
    CFDictionarySetValue(v8, @"peer-push-token", v48);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v53 = MEMORY[0x277CCABB0];
  v54 = objc_msgSend_peerNATType(self, v49, v50, v51, v52);
  v59 = objc_msgSend_intValue(v54, v55, v56, v57, v58);
  v63 = objc_msgSend_numberWithInt_(v53, v60, v59, v61, v62);
  if (v63)
  {
    CFDictionarySetValue(v8, @"peer-nat-type", v63);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFC64();
  }

  v68 = objc_msgSend_peerBlob(self, v64, v65, v66, v67);
  if (v68)
  {
    CFDictionarySetValue(v8, @"peer-blob", v68);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFCEC();
  }

  v73 = objc_msgSend_peerNATIP(self, v69, v70, v71, v72);
  if (v73)
  {
    CFDictionarySetValue(v8, @"peer-nat-ip", v73);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFD74();
  }

  return v8;
}

- (void)handleResponseDictionary:(id)dictionary
{
  if (objc_msgSend_objectForKey_(dictionary, a2, @"relay-type", v3, v4))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = objc_msgSend_objectForKey_(dictionary, v7, @"relay-type", v8, v9);
    v16 = objc_msgSend_intValue(v11, v12, v13, v14, v15);
    v20 = objc_msgSend_numberWithInt_(v10, v17, v16, v18, v19);
    objc_msgSend_setRelayType_(self, v21, v20, v22, v23);
    v27 = objc_msgSend_objectForKey_(dictionary, v24, @"relay-connection-id", v25, v26);
    objc_msgSend_setRelayConnectionId_(self, v28, v27, v29, v30);
    v34 = objc_msgSend_objectForKey_(dictionary, v31, @"relay-transaction-id-alloc", v32, v33);
    objc_msgSend_setRelayTransactionIdAlloc_(self, v35, v34, v36, v37);
    v41 = objc_msgSend_objectForKey_(dictionary, v38, @"relay-token-alloc-req", v39, v40);
    objc_msgSend_setRelayTokenAllocReq_(self, v42, v41, v43, v44);
    v48 = objc_msgSend_objectForKey_(dictionary, v45, @"self-relay-ip", v46, v47);
    objc_msgSend_setSelfRelayIP_(self, v49, v48, v50, v51);
    v52 = MEMORY[0x277CCABB0];
    v56 = objc_msgSend_objectForKey_(dictionary, v53, @"self-relay-port", v54, v55);
    v61 = objc_msgSend_intValue(v56, v57, v58, v59, v60);
    v65 = objc_msgSend_numberWithInt_(v52, v62, v61, v63, v64);
    objc_msgSend_setSelfRelayPort_(self, v66, v65, v67, v68);
    v72 = objc_msgSend_objectForKey_(dictionary, v69, @"peer-relay-ip", v70, v71);
    objc_msgSend_setPeerRelayIP_(self, v73, v72, v74, v75);
    v76 = MEMORY[0x277CCABB0];
    v80 = objc_msgSend_objectForKey_(dictionary, v77, @"peer-relay-port", v78, v79);
    v85 = objc_msgSend_intValue(v80, v81, v82, v83, v84);
    v90 = objc_msgSend_numberWithInt_(v76, v86, v85, v87, v88);

    objc_msgSend_setPeerRelayPort_(self, v89, v90, v91, v92);
  }
}

@end