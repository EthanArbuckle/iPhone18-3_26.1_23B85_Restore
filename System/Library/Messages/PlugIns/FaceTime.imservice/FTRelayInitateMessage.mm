@interface FTRelayInitateMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTRelayInitateMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTRelayInitateMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTRelayInitateMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v30.receiver = self;
  v30.super_class = FTRelayInitateMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v30 requiredKeys];
  v7 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v6);
  objc_msgSend_addObject_(v7, v8, @"self-push-token", v9, v10);
  objc_msgSend_addObject_(v7, v11, @"self-nat-type", v12, v13);
  objc_msgSend_addObject_(v7, v14, @"self-nat-ip", v15, v16);
  objc_msgSend_addObject_(v7, v17, @"peer-id", v18, v19);
  objc_msgSend_addObject_(v7, v20, @"peer-push-token", v21, v22);
  objc_msgSend_addObject_(v7, v23, @"peer-nat-type", v24, v25);
  objc_msgSend_addObject_(v7, v26, @"peer-nat-ip", v27, v28);
  return v7;
}

- (id)messageBody
{
  v70.receiver = self;
  v70.super_class = FTRelayInitateMessage;
  messageBody = [(FTFaceTimeMessage *)&v70 messageBody];
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
  v19 = objc_msgSend_selfNatType(self, v14, v15, v16, v17);
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

  v33 = objc_msgSend_selfNATIP(self, v29, v30, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v8, @"self-nat-ip", v33);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFACC();
  }

  v38 = objc_msgSend_peerID(self, v34, v35, v36, v37);
  if (v38)
  {
    CFDictionarySetValue(v8, @"peer-id", v38);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
  }

  v43 = objc_msgSend_peerPushToken(self, v39, v40, v41, v42);
  if (v43)
  {
    CFDictionarySetValue(v8, @"peer-push-token", v43);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v48 = MEMORY[0x277CCABB0];
  v49 = objc_msgSend_peerNatType(self, v44, v45, v46, v47);
  v54 = objc_msgSend_intValue(v49, v50, v51, v52, v53);
  v58 = objc_msgSend_numberWithInt_(v48, v55, v54, v56, v57);
  if (v58)
  {
    CFDictionarySetValue(v8, @"peer-nat-type", v58);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFC64();
  }

  v63 = objc_msgSend_peerNATIP(self, v59, v60, v61, v62);
  if (v63)
  {
    CFDictionarySetValue(v8, @"peer-nat-ip", v63);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFD74();
  }

  v68 = objc_msgSend_relayCandidateID(self, v64, v65, v66, v67);
  if (v68)
  {
    CFDictionarySetValue(v8, @"relay-candidate-id", v68);
  }

  return v8;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v7 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_objectForKey_(dictionary, a2, @"relay-type", v3, v4);
  v13 = objc_msgSend_intValue(v8, v9, v10, v11, v12);
  v17 = objc_msgSend_numberWithInt_(v7, v14, v13, v15, v16);
  objc_msgSend_setRelayType_(self, v18, v17, v19, v20);
  v24 = objc_msgSend_objectForKey_(dictionary, v21, @"relay-connection-id", v22, v23);
  objc_msgSend_setRelayConnectionId_(self, v25, v24, v26, v27);
  v31 = objc_msgSend_objectForKey_(dictionary, v28, @"relay-transaction-id-alloc", v29, v30);
  objc_msgSend_setRelayTransactionIdAlloc_(self, v32, v31, v33, v34);
  v38 = objc_msgSend_objectForKey_(dictionary, v35, @"relay-token-alloc-req", v36, v37);
  objc_msgSend_setRelayTokenAllocReq_(self, v39, v38, v40, v41);
  v45 = objc_msgSend_objectForKey_(dictionary, v42, @"self-relay-ip", v43, v44);
  objc_msgSend_setSelfRelayIP_(self, v46, v45, v47, v48);
  v49 = MEMORY[0x277CCABB0];
  v53 = objc_msgSend_objectForKey_(dictionary, v50, @"self-relay-port", v51, v52);
  v58 = objc_msgSend_intValue(v53, v54, v55, v56, v57);
  v62 = objc_msgSend_numberWithInt_(v49, v59, v58, v60, v61);
  objc_msgSend_setSelfRelayPort_(self, v63, v62, v64, v65);
  v69 = objc_msgSend_objectForKey_(dictionary, v66, @"peer-relay-ip", v67, v68);
  objc_msgSend_setPeerRelayIP_(self, v70, v69, v71, v72);
  v73 = MEMORY[0x277CCABB0];
  v77 = objc_msgSend_objectForKey_(dictionary, v74, @"peer-relay-port", v75, v76);
  v82 = objc_msgSend_intValue(v77, v78, v79, v80, v81);
  v87 = objc_msgSend_numberWithInt_(v73, v83, v82, v84, v85);

  objc_msgSend_setPeerRelayPort_(self, v86, v87, v88, v89);
}

@end